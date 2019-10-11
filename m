Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA78D3F81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXQyluBAR0k+sGyIbj+UTQ3yL2OLSSofnWzq5UU8FAc=; b=U8nqxSpifDfJrz
	c5yf5ZXU0pfKmXpl6SmO4iEXfV50yi1zlLsjmcohTA3lqQQhBbRD7vTWiiiGatjkkgqGfMtOyickI
	YTam2sw4QZScP1A1RDJIbLFFEnCslyci0QpUsP4MBvJ3CwvbNV9BjtfUKgiKQXFAvT4fp+pKJ2L0a
	CF7QYkZlB3tLLY8LH87RXXu1nu30x7wVv5AYaGJKEBhJuXZ1v65wqR8khcYgWVvMcV1xDSUPLTZNa
	MgUD7sfmhVF217QxnCcweddURRCZJVrsSpduqhBog5dzdZ8B5365GY8IB7W1Vth7cagceDUaE9v7D
	6856kPBK9NMv1oxTUrrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIu1t-0000r1-M2; Fri, 11 Oct 2019 12:28:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIu1k-0000qB-3V; Fri, 11 Oct 2019 12:28:14 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3C474290EF4;
 Fri, 11 Oct 2019 13:28:08 +0100 (BST)
Date: Fri, 11 Oct 2019 14:28:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: =?UTF-8?B?Q8OpZHJpYw==?= Le Goater <clg@kaod.org>
Subject: Re: [PATCH 04/16] mtd: spi-nor: aspeed: Add read training
Message-ID: <20191011142805.6cc3905c@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20191004115919.20788-5-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-5-clg@kaod.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_052812_417485_AFFA1FAD 
X-CRM114-Status: GOOD (  17.51  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAgNCBPY3QgMjAxOSAxMzo1OTowNyArMDIwMApDw6lkcmljIExlIEdvYXRlciA8Y2xn
QGthb2Qub3JnPiB3cm90ZToKCj4gKyNkZWZpbmUgQVNQRUVEX1NNQ19IQ0xLX0RJVihpKSBcCj4g
KwkoYXNwZWVkX3NtY19oY2xrX2RpdnNbKGkpIC0gMV0gPDwgQ09OVFJPTF9DTE9DS19GUkVRX1NF
TF9TSElGVCkKPiArCj4gK3N0YXRpYyB1MzIgYXNwZWVkX3NtY19kZWZhdWx0X3JlYWQoc3RydWN0
IGFzcGVlZF9zbWNfY2hpcCAqY2hpcCkKPiArewo+ICsJLyoKPiArCSAqIEtlZXAgdGhlIDRCeXRl
IGFkZHJlc3MgbW9kZSBvbiB0aGUgQVNUMjQwMCBTUEkgY29udHJvbGxlci4KPiArCSAqIE90aGVy
IGNvbnRyb2xsZXJzIHNldCB0aGUgNEJ5dGUgbW9kZSBpbiB0aGUgQ0UgQ29udHJvbAo+ICsJICog
UmVnaXN0ZXIKPiArCSAqLwo+ICsJdTMyIGN0bF9tYXNrID0gY2hpcC0+Y29udHJvbGxlci0+aW5m
byA9PSAmc3BpXzI0MDBfaW5mbyA/Cj4gKwkJIENPTlRST0xfSU9fQUREUkVTU180QiA6IDA7Cj4g
Kwo+ICsJcmV0dXJuIChjaGlwLT5jdGxfdmFsW3NtY19yZWFkXSAmIGN0bF9tYXNrKSB8Cj4gKwkJ
KDB4MDAgPDwgMjgpIHwgLyogU2luZ2xlIGJpdCAqLwo+ICsJCSgweDAwIDw8IDI0KSB8IC8qIENF
IyBtYXggKi8KPiArCQkoMHgwMyA8PCAxNikgfCAvKiB1c2Ugbm9ybWFsIHJlYWRzICovCj4gKwkJ
KDB4MDAgPDwgIDgpIHwgLyogSENMSy8xNiAqLwo+ICsJCSgweDAwIDw8ICA2KSB8IC8qIG5vIGR1
bW15IGN5Y2xlICovCj4gKwkJKDB4MDApOyAgICAgICAgLyogbm9ybWFsIG1vZGUgKi8KCklJVUMs
IHlvdSdyZSB1c2luZyBhIFNQSU5PUl9PUF9SRUFEIG9wZXJhdGlvbiB0byByZWFkIHRoZSBnb2xk
ZW4KYnVmZmVyLCBhbmQgaWYgSSdtIHJpZ2h0LCB5b3Ugc3RhcnQgcmVhZGluZyBhdCBvZmZzZXQg
MCBvZiB0aGUgZGlybWFwCndpbmRvdyAob2Zmc2V0IDAgaW4gdGhlIGZsYXNoKSwgc28gYmFzaWNh
bGx5IHRoZSBmaXJzdCBibG9jayBpbiB0aGUgTk9SLgpXaGF0IGhhcHBlbnMgaWYgdGhpcyBibG9j
ayBpcyBlcmFzZWQ/IEluIHRoYXQgY2FzZSB5b3VyIGdvbGRlbiBidWYgd2lsbApjb250YWluIG9u
bHkgMHhmZiB2YWx1ZXMsIGFuZCB0aGUgcmVhZCBjYWxpYnJhdGlvbiBpcyBsaWtlbHkgdG8gYmUK
dXNlbGVzcyAoaG93IGNhbiB5b3UgZGV0ZXJtaW5lIGlmIHRpbWluZ3MgYXJlIGdvb2Qgd2hlbiBJ
TyBwaW5zIGFsd2F5cwpzdGF5IGhpZ2gpLiBEb24ndCB3ZSBoYXZlIGEgY29tbWFuZCB0aGF0IHJl
dHVybiBub24tZmYvbm9uLTAgZGF0YSB3aGlsZQpzdGlsbCBiZWluZyBwcmVkaWN0YWJsZSBhbmQg
aW1tdXRhYmxlPyBEbyB5b3UgZXhwZWN0IHVzZXJzIHRvIGFsd2F5cwpmbGFzaCBhIHBhdHRlcm4g
dGhhdCBoZWxwcyBjYWxpYnJhdGluZyB0aG9zZSBkZWxheXM/Cgo+ICt9Cj4gKwo+ICtzdGF0aWMg
aW50IGFzcGVlZF9zbWNfb3B0aW1pemVfcmVhZChzdHJ1Y3QgYXNwZWVkX3NtY19jaGlwICpjaGlw
LAo+ICsJCQkJICAgIHUzMiBtYXhfZnJlcSkKPiArewo+ICsJdTggKmdvbGRlbl9idWYsICp0ZXN0
X2J1ZjsKPiArCWludCBpLCByYywgYmVzdF9kaXYgPSAtMTsKPiArCXUzMiBzYXZlX3JlYWRfdmFs
ID0gY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF07Cj4gKwl1MzIgYWhiX2ZyZXEgPSBjaGlwLT5jb250
cm9sbGVyLT5jbGtfZnJlcXVlbmN5Owo+ICsKPiArCWRldl9kYmcoY2hpcC0+bm9yLmRldiwgIkFI
QiBmcmVxdWVuY3k6ICVkIE1IeiIsIGFoYl9mcmVxIC8gMTAwMDAwMCk7Cj4gKwo+ICsJdGVzdF9i
dWYgPSBrbWFsbG9jKENBTElCUkFURV9CVUZfU0laRSAqIDIsIEdGUF9LRVJORUwpOwo+ICsJZ29s
ZGVuX2J1ZiA9IHRlc3RfYnVmICsgQ0FMSUJSQVRFX0JVRl9TSVpFOwo+ICsKPiArCS8qIFdlIHN0
YXJ0IHdpdGggdGhlIGR1bWJlc3Qgc2V0dGluZyAoa2VlcCA0Qnl0ZSBiaXQpIGFuZCByZWFkCj4g
KwkgKiBzb21lIGRhdGEKPiArCSAqLwo+ICsJY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0gPSBhc3Bl
ZWRfc21jX2RlZmF1bHRfcmVhZChjaGlwKTsKPiArCj4gKwl3cml0ZWwoY2hpcC0+Y3RsX3ZhbFtz
bWNfcmVhZF0sIGNoaXAtPmN0bCk7Cj4gKwo+ICsJbWVtY3B5X2Zyb21pbyhnb2xkZW5fYnVmLCBj
aGlwLT5haGJfYmFzZSwgQ0FMSUJSQVRFX0JVRl9TSVpFKTsKPiArCj4gKwkvKiBFc3RhYmxpc2gg
b3VyIHJlYWQgbW9kZSB3aXRoIGZyZXEgZmllbGQgc2V0IHRvIDAgKEhDTEsvMTYpICovCj4gKwlj
aGlwLT5jdGxfdmFsW3NtY19yZWFkXSA9IHNhdmVfcmVhZF92YWwgJiAweGZmZmZmMGZmOwo+ICsK
PiArCS8qIENoZWNrIGlmIGNhbGlicmF0aW9uIGRhdGEgaXMgc3VpdGFibGUgKi8KPiArCWlmICgh
YXNwZWVkX3NtY19jaGVja19jYWxpYl9kYXRhKGdvbGRlbl9idWYsIENBTElCUkFURV9CVUZfU0la
RSkpIHsKPiArCQlkZXZfaW5mbyhjaGlwLT5ub3IuZGV2LAo+ICsJCQkgIkNhbGlicmF0aW9uIGFy
ZWEgdG9vIHVuaWZvcm0sIHVzaW5nIGxvdyBzcGVlZCIpOwo+ICsJCXdyaXRlbChjaGlwLT5jdGxf
dmFsW3NtY19yZWFkXSwgY2hpcC0+Y3RsKTsKPiArCQlrZnJlZSh0ZXN0X2J1Zik7Cj4gKwkJcmV0
dXJuIDA7Cj4gKwl9Cj4gKwo+ICsJLyogTm93IHdlIGl0ZXJhdGUgdGhlIEhDTEsgZGl2aWRlcnMg
dW50aWwgd2UgZmluZCBvdXIgYnJlYWtpbmcgcG9pbnQgKi8KPiArCWZvciAoaSA9IEFSUkFZX1NJ
WkUoYXNwZWVkX3NtY19oY2xrX2RpdnMpOyBpID4gMDsgaS0tKSB7Cj4gKwkJdTMyIHR2LCBmcmVx
Owo+ICsKPiArCQkvKiBDb21wYXJlIHRpbWluZyB0byBtYXggKi8KPiArCQlmcmVxID0gYWhiX2Zy
ZXEgLyBpOwo+ICsJCWlmIChmcmVxID4gbWF4X2ZyZXEpCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiAr
CQkvKiBTZXQgdGhlIHRpbWluZyAqLwo+ICsJCXR2ID0gY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0g
fCBBU1BFRURfU01DX0hDTEtfRElWKGkpOwo+ICsJCXdyaXRlbCh0diwgY2hpcC0+Y3RsKTsKPiAr
CQlkZXZfZGJnKGNoaXAtPm5vci5kZXYsICJUcnlpbmcgSENMSy8lZC4uLiIsIGkpOwo+ICsJCXJj
ID0gYXNwZWVkX3NtY19jYWxpYnJhdGVfcmVhZHMoY2hpcCwgaSwgZ29sZGVuX2J1ZiwgdGVzdF9i
dWYpOwo+ICsJCWlmIChyYyA9PSAwKQo+ICsJCQliZXN0X2RpdiA9IGk7Cj4gKwl9Cj4gKwlrZnJl
ZSh0ZXN0X2J1Zik7Cj4gKwo+ICsJLyogTm90aGluZyBmb3VuZCA/ICovCj4gKwlpZiAoYmVzdF9k
aXYgPCAwKSB7Cj4gKwkJZGV2X3dhcm4oY2hpcC0+bm9yLmRldiwgIk5vIGdvb2QgZnJlcXVlbmN5
LCB1c2luZyBkdW1iIHNsb3ciKTsKPiArCX0gZWxzZSB7Cj4gKwkJZGV2X2RiZyhjaGlwLT5ub3Iu
ZGV2LCAiRm91bmQgZ29vZCByZWFkIHRpbWluZ3MgYXQgSENMSy8lZCIsCj4gKwkJCWJlc3RfZGl2
KTsKPiArCQljaGlwLT5jdGxfdmFsW3NtY19yZWFkXSB8PSBBU1BFRURfU01DX0hDTEtfRElWKGJl
c3RfZGl2KTsKPiArCX0KPiArCj4gKwl3cml0ZWwoY2hpcC0+Y3RsX3ZhbFtzbWNfcmVhZF0sIGNo
aXAtPmN0bCk7Cj4gKwlyZXR1cm4gMDsKPiArfQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
