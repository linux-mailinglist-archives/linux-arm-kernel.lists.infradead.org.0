Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC9B1E6795
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 18:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wgp6gUVXZXU3nf93vrxNgpg2fnJZrJHglDG6d9Nz58o=; b=XO2EtTGiXySbn4
	nueK4BLnyX4AD7YsHZoXJBzUwzHsMLzcQOGTdq96ZWjDlxr3FZ4JahoiTYcwdZJ1VRlL3iFLEkExe
	nk8QOSNmbctDS+/nMEb2Smjdpee5wp++CtUNyYSsLM6/BEfvNcGo0VgVtDq6M4JN018MsDo7mtZSp
	iA0JlGRhDe00skuAWOu+4sn6V6Qu7YGg+Fk3lQD3X5e08QTh5caRU2BzVp8tUKXL5lx2k4ni9cmy+
	WCz8Q/yN9gh8ZjAlzE/aa80dr9j5UV6sk7EQRzMxJ2oha6WbHG3TEcpGLN9QSxoNd57vM9LNbV06r
	qlKRlA8eOeasCa056Dxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLXx-0003kg-Lt; Thu, 28 May 2020 16:38:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLXo-0003i6-Ma
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 16:38:13 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C30A1207F5;
 Thu, 28 May 2020 16:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590683891;
 bh=rYOzZYw6qVcWw1+Bgcj/D7ePhlH1Yu7bCEXs98o9kyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KM4GsGGiBme8F3C1xykXFeOmV5RsIvJclB1FhdnudGbtu6HE7QAttcQ9C9wzj09yO
 UquC0s0Yti69s9yLYQ7Ii2DKASs4aCyPR4iyHiiSBUCsc1wgoCd6WcXVh1xiKkEWe+
 rHtIXrxYPUbQszvc85RV9TksBsRhjb9YRRZSzF/g=
Received: by pali.im (Postfix)
 id 6CB79865; Thu, 28 May 2020 18:38:09 +0200 (CEST)
Date: Thu, 28 May 2020 18:38:09 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH] PCI: aardvark: Don't touch PCIe registers if no card
 connected
Message-ID: <20200528163809.54f5ldvphrjg3zg3@pali>
References: <20200528143141.29956-1-pali@kernel.org>
 <20200528162604.GA323482@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528162604.GA323482@bjorn-Precision-5520>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_093812_782744_C2165DCB 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1cnNkYXkgMjggTWF5IDIwMjAgMTE6MjY6MDQgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiBP
biBUaHUsIE1heSAyOCwgMjAyMCBhdCAwNDozMTo0MVBNICswMjAwLCBQYWxpIFJvaMOhciB3cm90
ZToKPiA+IFdoZW4gdGhlcmUgaXMgbm8gUENJZSBjYXJkIGNvbm5lY3RlZCBhbmQgYWR2a19wY2ll
X3JkX2NvbmYoKSBvcgo+ID4gYWR2a19wY2llX3dyX2NvbmYoKSBpcyBjYWxsZWQgZm9yIFBDSSBi
dXMgd2hpY2ggZG9lc24ndCBiZWxvbmcgdG8gZW11bGF0ZWQKPiA+IHJvb3QgYnJpZGdlLCB0aGUg
YWFyZHZhcmsgZHJpdmVyIHRocm93cyB0aGUgZm9sbG93aW5nIGVycm9yIG1lc3NhZ2U6Cj4gPiAK
PiA+ICAgYWR2ay1wY2llIGQwMDcwMDAwLnBjaWU6IGNvbmZpZyByZWFkL3dyaXRlIHRpbWVkIG91
dAo+ID4gCj4gPiBPYnZpb3VzbHkgYWNjZXNzaW5nIFBDSWUgcmVnaXN0ZXJzIG9mIGRpc2Nvbm5l
Y3RlZCBjYXJkIGlzIG5vdCBwb3NzaWJsZS4KPiA+IAo+ID4gRXh0ZW5kIGNoZWNrIGluIGFkdmtf
cGNpZV92YWxpZF9kZXZpY2UoKSBmdW5jdGlvbiBmb3IgdmFsaWRhdGluZwo+ID4gYXZhaWxhYmls
aXR5IG9mIFBDSWUgYnVzLiBJZiBQQ0llIGxpbmsgaXMgZG93biwgdGhlbiB0aGUgZGV2aWNlIGlz
IG1hcmtlZAo+ID4gYXMgTm90IEZvdW5kIGFuZCB0aGUgZHJpdmVyIGRvZXMgbm90IHRyeSB0byBh
Y2Nlc3MgdGhlc2UgcmVnaXN0ZXJzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOh
ciA8cGFsaUBrZXJuZWwub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYyB8IDMgKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZh
cmsuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPiA+IGluZGV4IDkw
ZmYyOTFjMjRmMC4uNTNhNGNmZDdkMzc3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktYWFyZHZhcmsuYwo+ID4gQEAgLTY0NCw2ICs2NDQsOSBAQCBzdGF0aWMgYm9vbCBhZHZrX3Bj
aWVfdmFsaWRfZGV2aWNlKHN0cnVjdCBhZHZrX3BjaWUgKnBjaWUsIHN0cnVjdCBwY2lfYnVzICpi
dXMsCj4gPiAgCWlmICgoYnVzLT5udW1iZXIgPT0gcGNpZS0+cm9vdF9idXNfbnIpICYmIFBDSV9T
TE9UKGRldmZuKSAhPSAwKQo+ID4gIAkJcmV0dXJuIGZhbHNlOwo+ID4gIAo+ID4gKwlpZiAoYnVz
LT5udW1iZXIgIT0gcGNpZS0+cm9vdF9idXNfbnIgJiYgIWFkdmtfcGNpZV9saW5rX3VwKHBjaWUp
KQo+ID4gKwkJcmV0dXJuIGZhbHNlOwo+IAo+IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyB0aGUgcmln
aHQgZml4LiAgVGhpcyBtYWtlcyBpdCByYWN5IGJlY2F1c2UgdGhlCj4gbGluayBtYXkgZ28gZG93
biBhZnRlciB3ZSBjYWxsIGFkdmtfcGNpZV92YWxpZF9kZXZpY2UoKSBidXQgYmVmb3JlIHdlCj4g
cGVyZm9ybSB0aGUgY29uZmlnIHJlYWQuCgpZZXMsIGl0IGlzIHJhY3ksIGJ1dCBJIGRvIG5vdCB0
aGluayBpdCBjYXVzZSBwcm9ibGVtcy4gVHJ5aW5nIHRvIHJlYWQKUENJZSByZWdpc3RlcnMgd2hl
biBkZXZpY2UgaXMgbm90IGNvbm5lY3RlZCBjYXVzZSBqdXN0IHRob3NlIHRpbWVvdXRzLApwcmlu
dGluZyBlcnJvciBtZXNzYWdlIGFuZCBpbmNyZWFzZWQgZGVsYXkgaW4gYWR2a19wY2llX3dhaXRf
cGlvKCkgZHVlCnRvIHBvbGxpbmcgbG9vcC4gVGhpcyBwYXRjaCByZWR1Y2UgdW5uZWNlc3Nhcnkg
YWNjZXNzIHRvIFBDSWUgcmVnaXN0ZXJzCndoZW4gYWR2a19wY2llX3dhaXRfcGlvKCkgcG9sbGlu
ZyBqdXN0IGZhaWwuCgpJIHRoaW5rIGl0IGlzIGEgZ29vZCBpZGVhIHRvIG5vdCBjYWxsIGJsb2Nr
aW5nIGFkdmtfcGNpZV93YWl0X3BpbygpIHdoZW4KaXQgaXMgbm90IG5lZWRlZC4gV2UgY291bGQg
aGF2ZSBmYXN0ZXIgZW51bWVyYXRpb24gb2YgUENJZSBidXNlcyB3aGVuCmNhcmQgaXMgbm90IGNv
bm5lY3RlZC4KCj4gSSBoYXZlIG5vIG9iamVjdGlvbiB0byByZW1vdmluZyB0aGUgImNvbmZpZyBy
ZWFkL3dyaXRlIHRpbWVkIG91dCIKPiBtZXNzYWdlLiAgVGhlICJyZXR1cm4gUENJQklPU19TRVRf
RkFJTEVEIiBpbiB0aGUgcmVhZCBjYXNlIHByb2JhYmx5Cj4gc2hvdWxkIGJlIGF1Z21lbnRlZCBi
eSBzZXR0aW5nICIqdmFsID0gMHhmZmZmZmZmZiIuCj4gCj4gPiAgCXJldHVybiB0cnVlOwo+ID4g
IH0KPiA+ICAKPiA+IC0tIAo+ID4gMi4yMC4xCj4gPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
