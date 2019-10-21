Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A3FDE5B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fw5Kf5GceYU/+g2mtq+tsCAZbcIEWeLQk79yPZ+7mpE=; b=YjuVMCX9fBYRcw
	G1SwMjtkDGV8Sj0/H39xwoUSlmllFeq521oQwW0n7IDxGidGXGsa1wZFjnSVy4Q7AzFkfphYeVrzq
	oIEgkoAmkqNiPF2gzeXCEiE407InZlgyPLbQHt5Kskf+t6hy5xRL7jrhW2bS8PdjSNhwigt3dwYsU
	Nbp/vm7HjVtdHOhJt5KTyx5wIbeb9bGCyRC14blyebgOR+wJ3K1QS+71EG8TQ7DQg9f20gjNRTpMA
	Y/OKvrS56ZHXDpYiWDd732BJ4ALsyd+68WQTn8PEIPs3B6GGW0mHQseMZVRKS2E9GV1upwkvspl6e
	Mhht58TOwdvTfNHGsXIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSd3-0000sw-4m; Mon, 21 Oct 2019 08:01:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMScu-0000sP-0V; Mon, 21 Oct 2019 08:01:17 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F298A2808D3;
 Mon, 21 Oct 2019 09:01:13 +0100 (BST)
Date: Mon, 21 Oct 2019 10:01:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: spear_smi: Fix nonalignment not handled in
 memcpy_toio
Message-ID: <20191021100105.0f06b212@collabora.com>
In-Reply-To: <20191018143643.29676-1-miquel.raynal@bootlin.com>
References: <20191018143643.29676-1-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_010116_315453_41266CAE 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, stable@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxOCBPY3QgMjAxOSAxNjozNjo0MyArMDIwMApNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKCj4gQW55IHdyaXRlIHdpdGggZWl0aGVyIGRkIG9y
IGZsYXNoY3AgdG8gYSBkZXZpY2UgZHJpdmVuIGJ5IHRoZQo+IHNwZWFyX3NtaS5jIGRyaXZlciB3
aWxsIHBhc3MgdGhyb3VnaCB0aGUgc3BlYXJfc21pX2NweV90b2lvKCkKPiBmdW5jdGlvbi4gVGhp
cyBmdW5jdGlvbiB3aWxsIGdldCBjYWxsZWQgZm9yIGNodW5rcyBvZiB1cCB0byAyNTYgYnl0ZXMu
Cj4gSWYgdGhlIGFtb3VudCBvZiBkYXRhIGlzIHNtYWxsZXIsIHdlIG1heSBoYXZlIGEgcHJvYmxl
bSBpZiB0aGUgZGF0YQo+IGxlbmd0aCBpcyBub3QgNC1ieXRlIGFsaWduZWQuIEluIHRoaXMgc2l0
dWF0aW9uLCB0aGUga2VybmVsIHBhbmljcwo+IGR1cmluZyB0aGUgbWVtY3B5Ogo+IAo+ICAgICAj
IGRkIGlmPS9kZXYvdXJhbmRvbSBicz0xMDAxIGNvdW50PTEgb2Y9L2Rldi9tdGQ2Cj4gICAgIHNw
ZWFyX3NtaV9jcHlfdG9pbyBbNjIwXSBkZXN0IGM5MDcwMDAwLCBzcmMgYzdiZTg4MDAsIGxlbiAy
NTYKPiAgICAgc3BlYXJfc21pX2NweV90b2lvIFs2MjBdIGRlc3QgYzkwNzAxMDAsIHNyYyBjN2Jl
ODkwMCwgbGVuIDI1Ngo+ICAgICBzcGVhcl9zbWlfY3B5X3RvaW8gWzYyMF0gZGVzdCBjOTA3MDIw
MCwgc3JjIGM3YmU4YTAwLCBsZW4gMjU2Cj4gICAgIHNwZWFyX3NtaV9jcHlfdG9pbyBbNjIwXSBk
ZXN0IGM5MDcwMzAwLCBzcmMgYzdiZThiMDAsIGxlbiAyMzMKPiAgICAgVW5oYW5kbGVkIGZhdWx0
OiBleHRlcm5hbCBhYm9ydCBvbiBub24tbGluZWZldGNoICgweDgwOCkgYXQgMHhjOTA3MDNlOAo+
ICAgICBbLi4uXQo+ICAgICBQQyBpcyBhdCBtZW1jcHkrMHhjYy8weDMzMAoKQ2FuIHlvdSBmaW5k
IG91dCB3aGljaCBpbnN0cnVjdGlvbiBpcyBhdCBtZW1jcHkrMHhjYy8weDMzMD8gRm9yIHRoZQpy
ZWNvcmQsIHRoZSBhc3NlbWJseSBpcyBoZXJlIFsxXS4KCj4gCj4gV29ya2Fyb3VuZCB0aGlzIGlz
c3VlIGJ5IHVzaW5nIHRoZSBhbHRlcm5hdGUgX21lbWNweV90b2lvKCkgbWV0aG9kCj4gd2hpY2gg
YXQgbGVhc3QgZG9lcyBub3QgcHJlc2VudCB0aGUgc2FtZSBwcm9ibGVtLgo+IAo+IEZpeGVzOiBm
MThkYmJiMWJmZTAgKCJtdGQ6IFNUIFNQRUFyOiBBZGQgU01JIGRyaXZlciBmb3Igc2VyaWFsIE5P
UiBmbGFzaCIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBTdWdnZXN0ZWQtYnk6IEJv
cmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+CgpJIGRvbid0IHJl
bWVtYmVyIHN1Z2dlc3RpbmcgdGhhdCBhcyBhIGZpbmFsIHNvbHV0aW9uLiBJIHByb2JhYmx5CnN1
Z2dlc3RlZCB0byB0ZXN0IHdpdGggX21lbWNweV90b2lvKCkgdG8gc2VlIGlmIHVzaW5nIGEgYnl0
ZSBhY2Nlc3Nvcgp3YXMgZml4aW5nIHRoZSBwcm9ibGVtLCBidXQgaXQncyBkZWZpbml0ZWx5IG5v
dCB0aGUgcmlnaHQgc29sdXRpb24KKHVzaW5nIGJ5dGUgYWNjZXNzIHdpdGggYSBtZW1vcnkgYmFy
cmllciBmb3IgMjU2IGJ5dGVzIGJ1ZmZlcnMgaXMgbGlrZWx5CnRvIGNhdXNlIGEgaHVnZSBwZXJm
IHBlbmFsdHkpLgoKPiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFs
QGJvb3RsaW4uY29tPgo+IC0tLQo+IAo+IEhlbGxvLAo+IAo+IFRoaXMgcGF0Y2ggY291bGQgbm90
IGJlIHRlc3RlZCB3aXRoIGEgbWFpbmxpbmUga2VybmVsIChvbmx5IGNvbXBpbGVkKQo+IGJ1dCB3
YXMgdGVzdGVkIHdpdGggYSBzdGFibGUgNC4xNC54IGtlcm5lbC4gSSBoYXZlIHJlYWxseSBubyBp
ZGVhIHdoeQo+IG1lbWNweSBmYWlscyBpbiB0aGlzIHNpdHVhdGlvbiB0aGF0J3Mgd2h5IEkgcHJv
cG9zZSB0aGlzIHdvcmthcm91bmQKPiBidXQgSSBiZXQgdGhlcmUgaXMgc29tZXRoaW5nIGRlZXBl
ciBub3Qgd29ya2luZy4KPiAKPiBUaGFua3MsCj4gTWlxdcOobAo+IAo+ICBkcml2ZXJzL210ZC9k
ZXZpY2VzL3NwZWFyX3NtaS5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvZGV2aWNlcy9z
cGVhcl9zbWkuYyBiL2RyaXZlcnMvbXRkL2RldmljZXMvc3BlYXJfc21pLmMKPiBpbmRleCA5ODZm
ODFkMmY5M2UuLmQ4ODg2MjVhMzI0NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9kZXZpY2Vz
L3NwZWFyX3NtaS5jCj4gKysrIGIvZHJpdmVycy9tdGQvZGV2aWNlcy9zcGVhcl9zbWkuYwo+IEBA
IC02MTQsNyArNjE0LDcgQEAgc3RhdGljIGlubGluZSBpbnQgc3BlYXJfc21pX2NweV90b2lvKHN0
cnVjdCBzcGVhcl9zbWkgKmRldiwgdTMyIGJhbmssCj4gIAljdHJscmVnMSA9IHJlYWRsKGRldi0+
aW9fYmFzZSArIFNNSV9DUjEpOwo+ICAJd3JpdGVsKChjdHJscmVnMSB8IFdCX01PREUpICYgflNX
X01PREUsIGRldi0+aW9fYmFzZSArIFNNSV9DUjEpOwo+ICAKPiAtCW1lbWNweV90b2lvKGRlc3Qs
IHNyYywgbGVuKTsKPiArCV9tZW1jcHlfdG9pbyhkZXN0LCBzcmMsIGxlbik7Cj4gIAo+ICAJd3Jp
dGVsKGN0cmxyZWcxLCBkZXYtPmlvX2Jhc2UgKyBTTUlfQ1IxKTsKPiAgCgpbMV1odHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC92NS40LXJjMi9zb3VyY2UvYXJjaC9hcm0vbGliL21lbWNw
eS5TCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
