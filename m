Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1BA20075C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hu82ln3zX1jU7FBzj67w15wSpqrls0Hyxtjy6Ber148=; b=oSMzmtf1AmdSzy
	5vxnII53h3lQb/iffraaCSxtPydR/w7ay7kpu0ApSRJA53rX493kvbWgi/WOFHh9BPBmz38IkDtee
	yIcBEUOMrmUgbh5PpP+LsGWSn694l/ar3v2mgMq9Xzym7tlKWOsnmVvl3RHTDFzEZmUkXSWNz7lj5
	WNyrkoJ/UOtqv/EsTioXUQEy5+6qV3rj9tzPV4GU8MnXAgIn1PuUz2ipKR3hT9GqyZOL/FlXEpiE9
	MUA+E46sTT1OkuQPmXemKryD66BjU+wrGHdUrRCoI0u2DPho7vcvag+KtV9EQ2uxfBwM2KLJLSkyk
	xX43QwNg7VXWSk/kDEDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEhM-0003mW-GH; Fri, 19 Jun 2020 10:56:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEh4-0003m6-3U
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:56:23 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE88A2070A;
 Fri, 19 Jun 2020 10:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592564181;
 bh=lV1+A7bMoEGDBQ8uA1/9V3ySmJlveKx+p0zRy9lWR3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pgwsv5aJtotabI2+zSJ7wHUq4N42CoxNVJGMzfX6UzU/YPThQpKRVLnDN3UAmzTs6
 WqxQaGQU3ToNaal7MfirJJD9yTzcqKrpte1lJ+tNmAQ/K6PZQlzN26lcuP6LKpdQRB
 B4hu1N48nRwqYrGhx9ZW9IszvzcwExuuKUUY6a1Y=
Received: by pali.im (Postfix)
 id 9E2FD820; Fri, 19 Jun 2020 12:56:18 +0200 (CEST)
Date: Fri, 19 Jun 2020 12:56:18 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>,
 Tomasz Maciej Nowak <tmn505@gmail.com>, Xogium <contact@xogium.me>
Subject: Re: [PATCH] PCI: aardvark: Indicate error in 'val' when config read
 fails
Message-ID: <20200619105618.aksoivu4gb5ex3s3@pali>
References: <20200601130315.18895-1-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601130315.18895-1-pali@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_035622_167036_31BCE4AD 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gTG9yZW56byEgQ291bGQgeW91IHBsZWFzZSByZXZpZXcgdGhpcyBwYXRjaD8KCk9uIE1v
bmRheSAwMSBKdW5lIDIwMjAgMTU6MDM6MTUgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gTW9zdCBjYWxs
ZXJzIG9mIGNvbmZpZyByZWFkIGRvIG5vdCBjaGVjayBmb3IgcmV0dXJuIHZhbHVlLiBCdXQgbW9z
dCBvZiB0aGUKPiBvbmVzIHRoYXQgZG8sIGNoZWNrcyBmb3IgZXJyb3IgaW5kaWNhdGlvbiBpbiAn
dmFsJyB2YXJpYWJsZS4KPiAKPiBUaGlzIHBhdGNoIHVwZGF0ZXMgZXJyb3IgaGFuZGxpbmcgaW4g
YWR2a19wY2llX3JkX2NvbmYoKSBmdW5jdGlvbi4gSWYgUElPCj4gdHJhbnNmZXIgZmFpbHMgdGhl
biAndmFsJyB2YXJpYWJsZSBpcyBzZXQgdG8gMHhmZmZmZmZmZiB3aGljaCBpbmRpY2F0ZXMKPiBm
YWlsdHVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3Jn
PgoKSSBzaG91bGQgYWRkIGNyZWRpdCBmb3IgQmpvcm4gYXMgaGUgZm91bmQgdGhpcyBpc3N1ZQoK
UmVwb3J0ZWQtYnk6IEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4KCj4gLS0tCj4g
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMgfCA0ICsrKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+IGluZGV4IDUzYTRjZmQ3ZDM3Ny4uNzgzYTdmMWYyYzQ0
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPiAr
KysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4gQEAgLTY5MSw4ICs2
OTEsMTAgQEAgc3RhdGljIGludCBhZHZrX3BjaWVfcmRfY29uZihzdHJ1Y3QgcGNpX2J1cyAqYnVz
LCB1MzIgZGV2Zm4sCj4gIAlhZHZrX3dyaXRlbChwY2llLCAxLCBQSU9fU1RBUlQpOwo+ICAKPiAg
CXJldCA9IGFkdmtfcGNpZV93YWl0X3BpbyhwY2llKTsKPiAtCWlmIChyZXQgPCAwKQo+ICsJaWYg
KHJldCA8IDApIHsKPiArCQkqdmFsID0gMHhmZmZmZmZmZjsKPiAgCQlyZXR1cm4gUENJQklPU19T
RVRfRkFJTEVEOwo+ICsJfQo+ICAKPiAgCWFkdmtfcGNpZV9jaGVja19waW9fc3RhdHVzKHBjaWUp
Owo+ICAKPiAtLSAKPiAyLjIwLjEKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
