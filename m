Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590E6C3A02
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIkbm0YHaHRQl8GY0lMv9EiUG4YT2BQWWErE0xIDTok=; b=F+FBBx/5+At/p6
	CtqepbSTGf8xFHQiWIvOs9VLzfMcFBeLI1OPpH+ZWicwo23s8zBCWVhONuX1jlojqabBsfOMkQPCH
	4Sbz+M563iAWFJRdLi3mj71CML8lR8floCKFIBjudMGJBehTY+G2QwI5XaoQPSuChEb/t8OOGQ6eQ
	Lg+Bj/MIXh24ZZE3dqUfgZ5oMcfygXhisK+qIstaJCDRY51ecWpnCl4LPENk/F6ARJXFTLCUl4G4L
	fGkEQuwKbzMBdyXC0piM/m6sXzC8P3SI3+91LNvu68riJRxQo9lCYI51fhvDJ8TH/oX/7isMDe3+/
	e62K062005BBidI1J3qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKiD-0001JY-EB; Tue, 01 Oct 2019 16:09:17 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKi2-0001I9-Oy
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:09:09 +0000
Received: from [199.195.250.187] (port=44262 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFKht-0002VY-Ek; Tue, 01 Oct 2019 17:09:01 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id B54A982889;
 Tue,  1 Oct 2019 16:08:52 +0000 (UTC)
Date: Wed, 02 Oct 2019 00:08:39 +0800
In-Reply-To: <20191001.090651.796983023328992596.davem@davemloft.net>
References: <20191001082912.12905-1-icenowy@aosc.io>
 <20191001.090651.796983023328992596.davem@davemloft.net>
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] Pine64+ specific hacks for RTL8211E Ethernet PHY
To: linux-arm-kernel@lists.infradead.org,David Miller <davem@davemloft.net>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <2CCD0856-433E-4602-A079-9F7F5F2E00D6@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_090906_833277_75A9A404 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, wens@csie.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEw5pyIMuaXpSBHTVQrMDg6MDAg5LiK5Y2IMTI6MDY6NTEsIERhdmlkIE1p
bGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4g5YaZ5YiwOgo+RnJvbTogSWNlbm93eSBaaGVuZyA8
aWNlbm93eUBhb3NjLmlvPgo+RGF0ZTogVHVlLCAgMSBPY3QgMjAxOSAxNjoyOTowOSArMDgwMAo+
Cj4+IFRoZXJlJ3JlIHNvbWUgUGluZTY0KyBib2FyZHMga25vd24gdG8gaGF2ZSBicm9rZW4gUlRM
ODIxMUUgY2hpcHMsIGFuZAo+PiBhIGhhY2sgaXMgZ2l2ZW4gYnkgUGluZTY0Kywgd2hpY2ggaXMg
c2FpZCB0byBiZSBmcm9tIFJlYWx0ZWsuCj4+IAo+PiBUaGlzIHBhdGNoc2V0IGFkZHMgdGhlIGhh
Y2suCj4+IAo+PiBUaGUgaGFjayBpcyB0YWtlbiBmcm9tIFUtQm9vdCwgYW5kIGl0IGNvbnRhaW5z
IG1hZ2ljIG51bWJlcnMgd2l0aG91dAo+PiBhbnkgZG9jdW1lbnQuCj4KPlBsZWFzZSBjb250YWN0
IFJlYWx0ZWsgYW5kIHRyeSB0byBnZXQgYW4gZXhwbGFuYXRpb24gYWJvdXQgdGhpcy4KClNvcnJ5
LCBidXQgUmVhbHRlayBuZXZlciBzaG93cyBhbnkgaWRlYSB0byBhZGQgbW9yZSBpbmZvbWF0aW9u
IGFib3V0IHRoaXMuCgpUaGVzZSBoYWNrcyBoYWQgZXhpc3RlZCBhbmQgd29ya2VkIGZvciB5ZWFy
cy4KCj4KPkkgdW5kZXJzdGFuZCB0aGF0IGV2ZW50dWFsbHkgd2UgbWF5IG5vdCBnZXQgYSBwcm9w
ZXIgZXhwbGFuYXRpb24KPmJ1dCBJIHJlYWxseSB3YW50IHlvdSB0byBwdXQgZm9ydGggcmVhbCBl
ZmZvcnQgdG8gbmFpbCBkb3duIHdoYXRzCj5nb2luZyBvbiBoZXJlIGJlZm9yZSBJIGV2ZW4gY29u
c2lkZXIgdGhlc2UgcGF0Y2hlcyBzZXJpb3VzbHkuCj4KPlRoYW5rIHlvdS4KPgo+X19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0Cj5saW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
