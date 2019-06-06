Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831E1381BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 01:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKbczYr7Yt+8Su7aQ+QrNk6L5tLloGsKXmv/2uxRUws=; b=rcYaB5y7QJZ5Md
	qL4pOZ3efd+Rw0F8C+vpyMVyZp2ubNpK8jr/RLpBhh69IQ3vVksrurw2uq4AVHRZbHZbEraq8bz6r
	ZUhZZ/P7OthRNjyaMtNAAP7oGX0NHGUbLOUxSSOO0WqtrpO7mMmEcQVI5n8fs6TEcHbHxufH/jwdC
	hQURsKwhK3LOeViE6DDdKHp7a0Q2WRyf54OkkDPrTssXdVmQXNcEVDmhRTxoRby4n6ui2H0SY1xKT
	/aEyioB+/5g4b0X+im/9i6Qb6ml8xX6asYrtPi/dN3b6zrqhvZsevr3NSooyZ6kRuTWoPh3LG8aRt
	2fypnYgnbAWXwey/qUxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1fS-0001nt-B9; Thu, 06 Jun 2019 23:19:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1Wt-0000ZC-JS
 for linux-arm-kernel@bombadil.infradead.org; Thu, 06 Jun 2019 23:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WrR8a0nd7OqHeGMYq59lvGgYOhTcXv05lY92PTWM2CQ=; b=oGpZKv7v1449BYsCbjNBM23I59
 AeS10K3WrsuNY4wsvrv1v35sohJrGMRvaGQEKNq3MdRM8lvHiWBOBBBoPxXt+FXCQN5Fnem47OjSY
 Qzwa3F1vokFNDVeBNOtxbdTgUvwUk7VOD/k/FinOC44l2cTTG0crQ1sWOAIpg3/Jiq9Y4yiW0I9Aw
 WGO/zPFTdSE6bCX6qM5sF9XMPGXawRE5EctHBBcCVoct1Leh53VSTvD20ebDJhUzjIzEeDd4v3a1q
 zUAlixJtXCC1UQp7bOmgCiTpB1DT/LPw8z15jOb8ERhJ/KtT9nqL0MQW22vuzZ1QlwiEUEPuabx4m
 BH/G2evQ==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=dragon.dunlab)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ1Wn-0007f1-Gj; Thu, 06 Jun 2019 23:10:37 +0000
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
To: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <92ca6e6e-2ebd-cec4-4f75-2674fd2c3d99@infradead.org>
Date: Thu, 6 Jun 2019 16:10:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
Content-Language: en-US
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi82LzE5IDg6MzggQU0sIFPDqWJhc3RpZW4gU3p5bWFuc2tpIHdyb3RlOgo+IGkuTVg3IGFu
ZCBpLk1YNlVML0wgaGF2ZSB0aGUgc2FtZSBDU0kgY29udHJvbGxlci4gU28gYWRkIGkuTVg2VUwv
TCBzdXBwb3J0Cj4gdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4K
PiAtLS0KPiAKPiBDaGFuZ2VzIGZvciB2MjoKPiAgLSByZWJhc2Ugb24gdG9wIG9mIGxpbnV4dHYv
bWFzdGVyCj4gIC0gbWVudGlvbiBpLk1YNlVML0wgaW4gaGVhZGVyIGFuZCBLY29uZmlnIGhlbHAg
dGV4dAo+ICAtIHJlbmFtZSBjc2lfdHlwZSB0byBjc2lfc29jX2lkCj4gCj4gIGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9pbXgvS2NvbmZpZyAgICAgICAgICB8ICA0ICstCj4gIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYyB8IDYyICsrKysrKysrKysrKysrKystLS0tLS0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4gaW5kZXggYWQzZDdkZjZiYjNjLi44YjZkYzQy
YzM5ZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4g
KysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnCj4gQEAgLTIyLDExICsyMiwx
MSBAQCBjb25maWcgVklERU9fSU1YX0NTSQo+ICAJICBBIHZpZGVvNGxpbnV4IGNhbWVyYSBzZW5z
b3IgaW50ZXJmYWNlIGRyaXZlciBmb3IgaS5NWDUvNi4KPiAgCj4gIGNvbmZpZyBWSURFT19JTVg3
X0NTSQo+IC0JdHJpc3RhdGUgImkuTVg3IENhbWVyYSBTZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIK
PiArCXRyaXN0YXRlICJpLk1YNlVML0wgLyBpLk1YNyBDYW1lcmEgU2Vuc29yIEludGVyZmFjZSBk
cml2ZXIiCj4gIAlkZXBlbmRzIG9uIFZJREVPX0lNWF9NRURJQSAmJiBWSURFT19ERVYgJiYgSTJD
Cj4gIAlkZWZhdWx0IHkKCkhpLApJIHJlYWxpemUgdGhhdCB0aGlzICJkZWZhdWx0IHkiIGlzIG5v
dCBwYXJ0IG9mIHRoaXMgcGF0Y2ggc2V0LCBidXQgd2UgaGF2ZQpwcmV0dHkgc3Ryb25nIGd1aWRh
bmNlIHRoYXQgYSBkcml2ZXIgc2hvdWxkIG5vdCBkZWZhdWx0IHRvICd5JyB1bmxlc3MgaXQgaXMK
bmVlZGVkIGZvciBhIHN5c3RlbSB0byBib290LiAgSWYgdGhpcyBkcml2ZXIgaXMgb3B0aW9uYWws
IHRoZW4gcGxlYXNlIGRyb3AKdGhlIDIgb2NjdXJyZW5jZXMgb2YgImRlZmF1bHQgeSIgaW4gdGhp
cyBLY29uZmlnIGZpbGUuCgp0aGFua3MuCj4gIAloZWxwCj4gIAkgIEVuYWJsZSBzdXBwb3J0IGZv
ciB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBkcml2ZXIgZm9yCj4gLQkgIGku
TVg3Lgo+ICsJICBpLk1YNlVML0wgb3IgaS5NWDcuCj4gIGVuZG1lbnUKPiAgZW5kaWYKCgotLSAK
flJhbmR5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
