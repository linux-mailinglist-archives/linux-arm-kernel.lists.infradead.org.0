Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A9221E4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 21:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZfZfSkMtC8UKaO2yAbqI8/2kJMyfXn7g7WU0VeZIsU=; b=HZ3dzy4/hII+BH
	JCw0wgUvnpi6bnb+h2ewu11LrZwEsdvG/1pSIcQwE10ps+RK83vNJlv4wCp+b5735CNp3y2PMPZGk
	B/D5fSoQxZj/SNOPLIDDexgp5YlJaDfOiLMGYNN6BmCF++69iP45gdRVW3gGegK3JMT4T/7amh6V0
	7A/bSXdmN++qk+sWrB6k+YQvWrTzt+raqnuCP3uqVd4G0iwH+gMHZHFxBO2Fso521ko1OZL5rMMbQ
	js3KZyNQMuj5r86ynqwZHw+0tbInzYXMKkRk9pASsJGgowg3CxkS84gb2tudJ0g8OcNLTsSDmkRdp
	uevkMq6kRLrk4Ah9wm0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRiaB-00057t-JV; Fri, 17 May 2019 19:31:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRia4-00057i-9h
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 May 2019 19:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pXKUIHN7Bd6Fwstcqz3XxziR+g3KX/mic2VHMzGQ2lI=; b=mOcuItVSf6gu35m3XxilhLN43A
 8ypx4e6+icrP5PCZUjoe2E15lemby71yM62iA5w/uYVgVoOLM2gvv2f7sYZEQ71qsClcqCvOfeReo
 F7pVU/aIQu60sJluF7beIbPdqiKe2sZbMpKV15SYaIxqEFpohmqzgRb5jJF0AAYF+guBDox+tfeNA
 EE6mAlT+R1vFlrF1coFNlg18EvyecyXg8D0fuqYygxtAsQUrcgKtfJPWJmXZbGDo7RjUcmWwAA5Cx
 TwtJaxiYMvIpHxwSf/8c9W5mC1hs/W3kNScFqQ0zIhI2svqLAXyflmvctLF+861Inl5dAPMhHGijx
 hMSK0/4Q==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRia0-0007gD-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 19:31:46 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 05DB5FF803;
 Fri, 17 May 2019 19:31:02 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Jan =?utf-8?Q?Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
In-Reply-To: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
Date: Fri, 17 May 2019 21:31:01 +0200
Message-ID: <87pnogzxmy.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_203144_445185_C004FFC4 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFuIEt1bmRyw6F0LAoKPiBDb21wYXJlZCB0byBrZXJuZWwgNS4xLCBwYXRjaGVzIG1lcmdl
ZCBmb3IgNS4yIGFkZGVkIHN1cHBvcnQgZm9yIEEzOHgnCj4gUEhZIGd1YXJkZWQgYnkgYSBjb25m
aWcgb3B0aW9uIHdoaWNoIHdhcyBub3QgZW5hYmxlZCBieSBkZWZhdWx0LiBBcyBhCj4gcmVzdWx0
LCB0aGVyZSB3YXMgbm8gZXRoMSBhbmQgZXRoMiBvbiBhIFNvbGlkIFJ1biBDbGVhcmZvZyBCYXNl
Lgo+Cj4gRW5zdXJlIHRoYXQgQTM4eCBQSFkgaXMgZW5hYmxlZCBvbiBtdmVidS4KPgoKQXBwbGll
ZCBvbiBtdmVidS9hcm0tNS4zCgpUaGFua3MsCgpHcmVnb3J5Cgo+IFNpZ25lZC1vZmYtYnk6IEph
biBLdW5kcsOhdCA8amFuLmt1bmRyYXRAY2VzbmV0LmN6Pgo+IENjOiBCYXJ1Y2ggU2lhY2ggPGJh
cnVjaEB0a29zLmNvLmlsPgo+IENjOiBHcmVnb3J5IENMRU1FTlQgPGdyZWdvcnkuY2xlbWVudEBi
b290bGluLmNvbT4KPiBDYzogUnVzc2VsbCBLaW5nIDxybWsra2VybmVsQGFybWxpbnV4Lm9yZy51
az4KPiBDYzogRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+IENjOiBNYXhp
bWUgQ2hldmFsbGllciA8bWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20+Cj4gLS0tCj4gIGFy
Y2gvYXJtL2NvbmZpZ3MvbXZlYnVfdjdfZGVmY29uZmlnIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NvbmZpZ3MvbXZlYnVf
djdfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9tdmVidV92N19kZWZjb25maWcKPiBpbmRl
eCA0OGY3YjQyNzdiOGQuLjNhYzJlODRmZGVhYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9jb25m
aWdzL212ZWJ1X3Y3X2RlZmNvbmZpZwo+ICsrKyBiL2FyY2gvYXJtL2NvbmZpZ3MvbXZlYnVfdjdf
ZGVmY29uZmlnCj4gQEAgLTEzMSw2ICsxMzEsNyBAQCBDT05GSUdfTVZfWE9SPXkKPiAgIyBDT05G
SUdfSU9NTVVfU1VQUE9SVCBpcyBub3Qgc2V0Cj4gIENPTkZJR19NRU1PUlk9eQo+ICBDT05GSUdf
UFdNPXkKPiArQ09ORklHX1BIWV9NVkVCVV9BMzhYX0NPTVBIWT15Cj4gIENPTkZJR19FWFQ0X0ZT
PXkKPiAgQ09ORklHX0lTTzk2NjBfRlM9eQo+ICBDT05GSUdfSk9MSUVUPXkKPiAtLSAKPiAyLjIx
LjAKPgo+CgotLSAKR3JlZ29yeSBDbGVtZW50LCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBL
ZXJuZWwgZW5naW5lZXJpbmcKaHR0cDovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
