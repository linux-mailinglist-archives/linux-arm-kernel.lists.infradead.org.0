Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A9DDC77B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xK+ZjkEzV9WcqN2lthjCUJ8SWsK2OdF3hYJY0jQ2a9M=; b=FCZnRllLsqXKGA
	NGKYbzZDbEvJQ/gNCxkaDeI/4N/kTMJ2+fVeWSEWCsJR/6/oPAxfE3m/6RI3/zQ5UaYYqAM18Tg3C
	UuRk5ONAXSho4PttJiRpQUHQzJY82MG2F8PWzO4UUQVUP/OThqIb3GejkmLNrxXH0rxW/G+Mmf9vm
	WYMQ9pdmA6MFIMEF+YS29IzMVR+69UYH5T0znl93WXsplQ+jDQVJumx1vKAhIwaVZDMtQTnjeUAlY
	tj01YHAM4rO2eGwOwEhMpmG3HxDDR4Ta0RTWxgwcPRCOrDRcUJ8/rKXfbweNitk7Hp10gPrp5mHkr
	+oPEPxMdJGq+ISkC4/fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTNE-0006FQ-06; Fri, 18 Oct 2019 14:37:00 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTN3-0006EI-SK; Fri, 18 Oct 2019 14:36:51 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 31813E0014;
 Fri, 18 Oct 2019 14:36:45 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH] mtd: spear_smi: Fix nonalignment not handled in memcpy_toio
Date: Fri, 18 Oct 2019 16:36:43 +0200
Message-Id: <20191018143643.29676-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_073650_046786_EB784C6A 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stable@vger.kernel.org, Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW55IHdyaXRlIHdpdGggZWl0aGVyIGRkIG9yIGZsYXNoY3AgdG8gYSBkZXZpY2UgZHJpdmVuIGJ5
IHRoZQpzcGVhcl9zbWkuYyBkcml2ZXIgd2lsbCBwYXNzIHRocm91Z2ggdGhlIHNwZWFyX3NtaV9j
cHlfdG9pbygpCmZ1bmN0aW9uLiBUaGlzIGZ1bmN0aW9uIHdpbGwgZ2V0IGNhbGxlZCBmb3IgY2h1
bmtzIG9mIHVwIHRvIDI1NiBieXRlcy4KSWYgdGhlIGFtb3VudCBvZiBkYXRhIGlzIHNtYWxsZXIs
IHdlIG1heSBoYXZlIGEgcHJvYmxlbSBpZiB0aGUgZGF0YQpsZW5ndGggaXMgbm90IDQtYnl0ZSBh
bGlnbmVkLiBJbiB0aGlzIHNpdHVhdGlvbiwgdGhlIGtlcm5lbCBwYW5pY3MKZHVyaW5nIHRoZSBt
ZW1jcHk6CgogICAgIyBkZCBpZj0vZGV2L3VyYW5kb20gYnM9MTAwMSBjb3VudD0xIG9mPS9kZXYv
bXRkNgogICAgc3BlYXJfc21pX2NweV90b2lvIFs2MjBdIGRlc3QgYzkwNzAwMDAsIHNyYyBjN2Jl
ODgwMCwgbGVuIDI1NgogICAgc3BlYXJfc21pX2NweV90b2lvIFs2MjBdIGRlc3QgYzkwNzAxMDAs
IHNyYyBjN2JlODkwMCwgbGVuIDI1NgogICAgc3BlYXJfc21pX2NweV90b2lvIFs2MjBdIGRlc3Qg
YzkwNzAyMDAsIHNyYyBjN2JlOGEwMCwgbGVuIDI1NgogICAgc3BlYXJfc21pX2NweV90b2lvIFs2
MjBdIGRlc3QgYzkwNzAzMDAsIHNyYyBjN2JlOGIwMCwgbGVuIDIzMwogICAgVW5oYW5kbGVkIGZh
dWx0OiBleHRlcm5hbCBhYm9ydCBvbiBub24tbGluZWZldGNoICgweDgwOCkgYXQgMHhjOTA3MDNl
OAogICAgWy4uLl0KICAgIFBDIGlzIGF0IG1lbWNweSsweGNjLzB4MzMwCgpXb3JrYXJvdW5kIHRo
aXMgaXNzdWUgYnkgdXNpbmcgdGhlIGFsdGVybmF0ZSBfbWVtY3B5X3RvaW8oKSBtZXRob2QKd2hp
Y2ggYXQgbGVhc3QgZG9lcyBub3QgcHJlc2VudCB0aGUgc2FtZSBwcm9ibGVtLgoKRml4ZXM6IGYx
OGRiYmIxYmZlMCAoIm10ZDogU1QgU1BFQXI6IEFkZCBTTUkgZHJpdmVyIGZvciBzZXJpYWwgTk9S
IGZsYXNoIikKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKU3VnZ2VzdGVkLWJ5OiBCb3JpcyBC
cmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBN
aXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgotLS0KCkhlbGxvLAoKVGhp
cyBwYXRjaCBjb3VsZCBub3QgYmUgdGVzdGVkIHdpdGggYSBtYWlubGluZSBrZXJuZWwgKG9ubHkg
Y29tcGlsZWQpCmJ1dCB3YXMgdGVzdGVkIHdpdGggYSBzdGFibGUgNC4xNC54IGtlcm5lbC4gSSBo
YXZlIHJlYWxseSBubyBpZGVhIHdoeQptZW1jcHkgZmFpbHMgaW4gdGhpcyBzaXR1YXRpb24gdGhh
dCdzIHdoeSBJIHByb3Bvc2UgdGhpcyB3b3JrYXJvdW5kCmJ1dCBJIGJldCB0aGVyZSBpcyBzb21l
dGhpbmcgZGVlcGVyIG5vdCB3b3JraW5nLgoKVGhhbmtzLApNaXF1w6hsCgogZHJpdmVycy9tdGQv
ZGV2aWNlcy9zcGVhcl9zbWkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL2RldmljZXMvc3BlYXJf
c21pLmMgYi9kcml2ZXJzL210ZC9kZXZpY2VzL3NwZWFyX3NtaS5jCmluZGV4IDk4NmY4MWQyZjkz
ZS4uZDg4ODYyNWEzMjQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9kZXZpY2VzL3NwZWFyX3Nt
aS5jCisrKyBiL2RyaXZlcnMvbXRkL2RldmljZXMvc3BlYXJfc21pLmMKQEAgLTYxNCw3ICs2MTQs
NyBAQCBzdGF0aWMgaW5saW5lIGludCBzcGVhcl9zbWlfY3B5X3RvaW8oc3RydWN0IHNwZWFyX3Nt
aSAqZGV2LCB1MzIgYmFuaywKIAljdHJscmVnMSA9IHJlYWRsKGRldi0+aW9fYmFzZSArIFNNSV9D
UjEpOwogCXdyaXRlbCgoY3RybHJlZzEgfCBXQl9NT0RFKSAmIH5TV19NT0RFLCBkZXYtPmlvX2Jh
c2UgKyBTTUlfQ1IxKTsKIAotCW1lbWNweV90b2lvKGRlc3QsIHNyYywgbGVuKTsKKwlfbWVtY3B5
X3RvaW8oZGVzdCwgc3JjLCBsZW4pOwogCiAJd3JpdGVsKGN0cmxyZWcxLCBkZXYtPmlvX2Jhc2Ug
KyBTTUlfQ1IxKTsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
