Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16387C01A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oJr+VqPGStg7MeFy/q1m29nstjKc3XWVZJYaV6SIOA=; b=NytbEUtameRauG
	i/nCzFC2FS9exyNEi1wyDNoqzfitX1GocsGXv3fe+T5f3OdIOAayktYUxOnC8ABSnZhqvnA2/8X10
	ApP7j/7rUFYs5bJfg/lGB0ou0+kPuu0zn3mpMZMdH9Tgwjqv8aTPKIVkiYNFZlSz5Vfo9vem0SzI6
	v8Dc/IJU3WmxWbf5jYtC1LHzMjZ6i1M54GLHLV412uoNvuYofRC574WOFHNntnUbg/+Afhcze96vx
	qO3TzyycNXxd5e2UPfJWM3a5NWeGd64++MhVdE1CRRpYN48g640V4bN8m42U/660wyWEjdwEl8mcM
	CYC3hFN0Lb02jL2VZGNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmtP-0007w9-Vs; Wed, 31 Jul 2019 11:35:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmtD-0007nV-66
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:35:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94AC6206A2;
 Wed, 31 Jul 2019 11:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564572925;
 bh=lux5DZPmxvBAoBQ0d6YhXntq6x2LZoKUchiyEmnGTQU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uSDRohHUPNOb+f9HhmfWB7Bwg39eYk3Ch35FM+/DZX7rsQrZdVBAbpyT/V0mHW13o
 g5/k/OZykPTdPtj7gpE3FSjHOF+HBureoFs2AfJX5Ve0Z670jDfLMx/3UXeJb53WkY
 3tIzRdwkZF1PkkJOb5wldYBGN5oosfezOYi0A6HY=
Date: Wed, 31 Jul 2019 13:35:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13 errors, 
 1174 warnings (next-20190731)
Message-ID: <20190731113522.GA3426@kroah.com>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
 <20190731112441.GB4369@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731112441.GB4369@sirena.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_043527_297010_2430262B 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, kernel-build-reports@lists.linaro.org,
 netdev@vger.kernel.org, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTI6MjQ6NDFQTSArMDEwMCwgTWFyayBCcm93biB3cm90
ZToKPiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAwNDowNzo0MUFNIC0wNzAwLCBrZXJuZWxjaS5v
cmcgYm90IHdyb3RlOgo+IAo+IFRvZGF5J3MgLW5leHQgZmFpbHMgdG8gYnVpbGQgYW4gQVJNIGFs
bG1vZGNvbmZpZyBkdWUgdG86Cj4gCj4gPiBhbGxtb2Rjb25maWcgKGFybSwgZ2NjLTgpIOKAlCBG
QUlMLCAxIGVycm9yLCA0MCB3YXJuaW5ncywgMCBzZWN0aW9uIG1pc21hdGNoZXMKPiA+IAo+ID4g
RXJyb3JzOgo+ID4gICAgIGRyaXZlcnMvbmV0L3BoeS9tZGlvLWNhdml1bS5oOjExMTozNjogZXJy
b3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICd3cml0ZXEnOyBkaWQgeW91IG1l
YW4gJ3dyaXRlbCc/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+IAo+
IGFzIGEgcmVzdWx0IG9mIHRoZSBjaGFuZ2VzIHRoYXQgaW50cm9kdWNlZDoKPiAKPiBXQVJOSU5H
OiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNRElPX09DVEVPTgo+ICAg
RGVwZW5kcyBvbiBbbl06IE5FVERFVklDRVMgWz15XSAmJiBNRElPX0RFVklDRSBbPW1dICYmIE1E
SU9fQlVTIFs9bV0gJiYgNjRCSVQgJiYgSEFTX0lPTUVNIFs9eV0gJiYgT0ZfTURJTyBbPW1dCj4g
ICBTZWxlY3RlZCBieSBbbV06Cj4gICAtIE9DVEVPTl9FVEhFUk5FVCBbPW1dICYmIFNUQUdJTkcg
Wz15XSAmJiAoQ0FWSVVNX09DVEVPTl9TT0MgJiYgTkVUREVWSUNFUyBbPXldIHx8IENPTVBJTEVf
VEVTVCBbPXldKQo+IAo+IHdoaWNoIGlzIHRyaWdnZXJlZCBieSB0aGUgc3RhZ2luZyBPQ1RFT05f
RVRIRVJORVQgZHJpdmVyIHdoaWNoIG1pc3NlcyBhCj4gNjRCSVQgZGVwZW5kZW5jeSBidXQgYWRk
ZWQgQ09NUElMRV9URVNUIGluIDE3MWE5YmFlNjhjNzJmMgo+IChzdGFnaW5nL29jdGVvbjogQWxs
b3cgdGVzdCBidWlsZCBvbiAhTUlQUykuCgpBIHBhdGNoIHdhcyBwb3N0ZWQgZm9yIHRoaXMsIGJ1
dCBpdCBuZWVkcyB0byBnbyB0aHJvdWdoIHRoZSBuZXRkZXYgdHJlZQphcyB0aGF0J3Mgd2hlcmUg
dGhlIG9mZmVuZGluZyBwYXRjaGVzIGFyZSBjb21pbmcgZnJvbS4KCnRoYW5rcywKCmdyZWcgay1o
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
