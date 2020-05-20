Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0EA1DAC25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hf4m1+3QqBJEMotuitfYtyODllfrvQCpIjfA8WfQZOg=; b=ZPA3Zo6sp+lolF
	TC3aGSUXNKgaTWplotpW7IZIyISokkDGuaQ70wznQYBs89MMj31ZAY0CKwSLjuXI5J5/OAaPnejoC
	a6fTw0pLdR+o3HO1+eqNIJab+GnHTIqVt8H0UwIBeMcX1m3RbvIB14o5bAEHr22zAYpEZpEgiBxRX
	Mu5uw2qo4F6owI1BjFP7u5aJBWT0mDaEbamT9I/Dq0u2/OPJi9kEnOh6CrgUrhsBmXBsuoZ4aO6nT
	4+aaZGmtnVRbi6LzZ5lweOG6OdANmkxW9jttoDo4/GU8DWZXnF5aYHSsQTFui+HxZJNYZp8aUstik
	WqfaAJ0/fClnnhgn7efw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJBU-0007oZ-Dv; Wed, 20 May 2020 07:30:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJB5-0007lp-Vp
 for linux-arm-kernel@bombadil.infradead.org; Wed, 20 May 2020 07:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=7QnxAPMxYiFYDEhgYWfI0oQ3Qn6LWsicljZhX5L/INw=; b=ZOExHZ77WX7beYViG5D2lNqOhe
 6nGLhN5QFV6u8+BvA9Eby+dDoWGDm7sLVyXo9IxSd0vNEIfnD3AhVOMAVhZgTN10XMhtwC9ZQHZPw
 Xi0cnAY1HT2NyCoFuy3oHwWrQzKyiazIbR8BaVCbPZ0k6fkUTXiuBVkz4la4UTrc/VK8fm/G26B5k
 OGOjdQhUlg4i1uYwMcVh2h1PO74R9ZF/8i+lF6KDjFg56ureNa5EfEEjux+oQ14uQWpW7u5l8rcab
 l6XyIZ9yltiOx0oIE4h85J/8irW82CYdyWkssB920Eo5CElmBBl5bN90uk4HIHyoGf3PMh3kl/dsP
 d3wCALtw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJB2-0004AF-67
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:30:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1jbJ8m-0005fd-1O; Wed, 20 May 2020 09:27:48 +0200
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1jbJ8l-00021e-8e; Wed, 20 May 2020 09:27:47 +0200
Date: Wed, 20 May 2020 09:27:47 +0200
From: Philipp Zabel <pza@pengutronix.de>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 07/15] PCI: brcmstb: Add control of rescal reset
Message-ID: <20200520072747.GB5213@pengutronix.de>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-8-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519203419.12369-8-james.quinlan@broadcom.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:17:38 up 90 days, 14:48, 112 users,  load average: 0.07, 0.35,
 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_083008_389984_A6D11ACB 
X-CRM114-Status: GOOD (  25.28  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmltLAoKT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDQ6MzQ6MDVQTSAtMDQwMCwgSmltIFF1
aW5sYW4gd3JvdGU6Cj4gRnJvbTogSmltIFF1aW5sYW4gPGpxdWlubGFuQGJyb2FkY29tLmNvbT4K
PiAKPiBTb21lIFNUQiBjaGlwcyBoYXZlIGEgc3BlY2lhbCBwdXJwb3NlIHJlc2V0IGNvbnRyb2xs
ZXIgbmFtZWQKPiBSRVNDQUwgKHJlc2V0IGNhbGlicmF0aW9uKS4gIFRoaXMgY29tbWl0IGFkZHMg
dGhlIGNvbnRyb2wKPiBvZiBSRVNDQUwgYXMgd2VsbCBhcyB0aGUgYWJpbGl0eSB0byBzdGFydCBh
bmQgc3RvcCBpdHMKPiBvcGVyYXRpb24gZm9yIFBDSWUgSFcuCj4gCj4gU2lnbmVkLW9mZi1ieTog
SmltIFF1aW5sYW4gPGpxdWlubGFuQGJyb2FkY29tLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2llLWJyY21zdGIuYyB8IDgxICsrKysrKysrKysrKysrKysrKysrKysrKysr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgODAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtYnJjbXN0Yi5jIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLWJyY21zdGIuYwo+IGluZGV4IDJjNDcwMTA0YmEzOC4u
MDc4N2U4ZjZmN2U1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1i
cmNtc3RiLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtYnJjbXN0Yi5jClsu
Li5dCj4gQEAgLTExMDAsNiArMTE2NCwyMSBAQCBzdGF0aWMgaW50IGJyY21fcGNpZV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCWRldl9lcnIoJnBkZXYtPmRldiwgImNv
dWxkIG5vdCBlbmFibGUgY2xvY2tcbiIpOwo+ICAJCXJldHVybiByZXQ7Cj4gIAl9Cj4gKwlwY2ll
LT5yZXNjYWwgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X3NoYXJlZCgmcGRldi0+ZGV2LCAicmVz
Y2FsIik7Cj4gKwlpZiAoSVNfRVJSKHBjaWUtPnJlc2NhbCkpIHsKPiArCQlpZiAoUFRSX0VSUihw
Y2llLT5yZXNjYWwpID09IC1FUFJPQkVfREVGRVIpCj4gKwkJCXJldHVybiAtRVBST0JFX0RFRkVS
Owo+ICsJCXBjaWUtPnJlc2NhbCA9IE5VTEw7CgpUaGlzIGlzIGVmZmVjdGl2ZWx5IGFuIG9wdGlv
bmFsIHJlc2V0IGNvbnRyb2wsIHNvIGl0IGlzIGJldHRlciB0byB1c2U6CuKGtQoJcGNpZS0+cmVz
Y2FsID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9zaGFyZWQoJnBkZXYtPmRldiwK
CQkJCQkJCSAgICAgICJyZXNjYWwiKTvihrUKCWlmIChJU19FUlIocGNpZS0+cmVzY2FsKSkKCQly
ZXR1cm4gUFRSX0VSUihwY2llLT5yZXNjYWwpOwoKPiArCX0gZWxzZSB7Cj4gKwkJcmV0ID0gcmVz
ZXRfY29udHJvbF9kZWFzc2VydChwY2llLT5yZXNjYWwpOwo+ICsJCWlmIChyZXQpCj4gKwkJCWRl
dl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBkZWFzc2VydCAncmVzY2FsJ1xuIik7Cj4gKwl9
CgpyZXNldF9jb250cm9sXyogY2FuIGhhbmRsZSByc3RjID09IE5VTEwgcGFyYW1ldGVycyBmb3Ig
b3B0aW9uYWwgcmVzZXQKY29udHJvbHMsIHNvIHRoaXMgY2FuIGJlIGRvbmUgdW5jb25kaXRpb25h
bGx5OgoKCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocGNpZS0+cmVzY2FsKTvihrUKCWlm
IChyZXQp4oa1CgkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGRlYXNzZXJ0ICdyZXNj
YWwnXG4iKTvihrUKCklzIHJlc2NhbCBoYW5kbGVkIGJ5IHRoZSByZXNldC1icmNtc3RiLXJlc2Nh
bCBkcml2ZXI/IFNpbmNlIHRoYXQgb25seQppbXBsZW1lbnRzIHRoZSAucmVzZXQgb3AsIEkgd291
bGQgZXhwZWN0IHJlc2V0X2NvbnRyb2xfcmVzZXQoKSBoZXJlLgpPdGhlcndpc2UgdGhpcyBsb29r
cyBsaWtlIGl0J2QgYmUgbWlzc2luZyBhIHJlc2V0X2NvbnRyb2xfYXNzZXJ0IGluCnJlbW92ZS4K
CnJlZ2FyZHMKUGhpbGlwcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
