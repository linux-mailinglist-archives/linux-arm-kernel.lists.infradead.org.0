Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E408A597
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 20:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Content-ID:MIME-Version
	:References:In-reply-to:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnWCFjUnlcAmHXqczBYSO0Ef4wwFJdNCWUkA60Ddm+s=; b=Zy6g42g4cwUSqZ
	LCVD0EWSD9JCaL6IIgEdQgDm1dheqEufM6NwynAhWjIGZkV3WftvXyyb/h+icgE5Up8OkXVYVVi90
	XkPXv4p3WyHvZyiDnWn8WV2mulHI9nY426JUxtT1ckxj/nTxC8nrS1MoiCvzRbn7v4kIUbMrB0w8h
	+cPz50aK1XxxNpke7c/n0cuN4KiuUO6qISSlcNa8E3vUVZSaHXJ9dZaX8fWPueMvfawei+qpR8Mn9
	WbBC7sI2pdbVClJPbKq1G+NAHSBzRCZJAdZRalQRNZCkzIQXsNhhV7NAyyxNi5+W/aRl5fjjj5NjK
	F2wrmw01eeIcFV6VCupQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxExu-0003CR-Sg; Mon, 12 Aug 2019 18:22:42 +0000
Received: from h1.radempa.de ([176.9.142.194] helo=mail.cosmopool.net)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxExj-0003C2-O9
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 18:22:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.cosmopool.net (Postfix) with ESMTP id 28F2D9015B3;
 Mon, 12 Aug 2019 20:22:26 +0200 (CEST)
Received: from mail.cosmopool.net ([127.0.0.1])
 by localhost (mail.b.radempa.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4hjgN7k4gbJC; Mon, 12 Aug 2019 20:22:25 +0200 (CEST)
Received: from stardust.g4.wien.funkfeuer.at
 (77.117.157.197.wireless.dyn.drei.com [77.117.157.197])
 by mail.cosmopool.net (Postfix) with ESMTPSA id E3A73900A78;
 Mon, 12 Aug 2019 20:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ccbib.org; s=201902;
 t=1565634145; bh=YrhzTzt/Mu0KjVU/f+O9Ej/nusykzxNs4OSCY7R9K/0=;
 h=From:To:cc:Subject:In-reply-to:References:Date:From;
 b=CazKyEzkkG473S618bt/N9eryEZp7G8i2ZqbSJq2gsvjyTjU7aMngrwE6FOWmJjSp
 /V6ePVxXrIInoQNrfUTOwFgPBmOYFh6++1h+wJVcH/Gijy4nLfsWjXw+m3Cnl/yJBI
 6g441hrQ466GBbDSbPLZsODDq+j1XtEUFoxvlPNY=
Received: from lambda by stardust.g4.wien.funkfeuer.at with local (Exim 4.89)
 (envelope-from <harald@ccbib.org>)
 id 1hxExZ-0000O7-46; Mon, 12 Aug 2019 20:22:21 +0200
From: Harald Geyer <harald@ccbib.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
In-reply-to: <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
References: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
Comments: In-reply-to Vasily Khoruzhick <anarsoul@gmail.com>
 message dated "Mon, 12 Aug 2019 11:01:51 -0700."
MIME-Version: 1.0
Content-ID: <1493.1565634140.1@stardust.g4.wien.funkfeuer.at>
Date: Mon, 12 Aug 2019 20:22:20 +0200
Message-Id: <E1hxExZ-0000O7-46@stardust.g4.wien.funkfeuer.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_112231_934208_DEF2E8B0 
X-CRM114-Status: UNSURE (   6.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VmFzaWx5IEtob3J1emhpY2sgd3JpdGVzOgo+IE9LLCBzbyB3aGF0IHNob3VsZCB3ZSBkbz8gJ3Bl
cmYgdG9wJy8ncGVyZiByZWNvcmQnIHdvcmsgZmluZSBpZiBQTVUKPiBub2RlIGlzIGRyb3BwZWQs
IGJ1dCB0aGV5IGRvbid0IHdvcmsgaWYgUE1VIG5vZGUgaXMgcHJlc2VudCAoZXZlbiB3aXRoCj4g
aW50ZXJydXB0cyBkcm9wcGVkKS4KClJlYWxseT8gRXZlbiBpZiB5b3UgdGVsbCBpdCB0byBvbmx5
IGxpc3RlbiB0byBzb2Z0d2FyZSBldmVudHM/IChXaGljaAppcyB0aGUgb25seSB0aGluZyB5b3Ug
Z2V0IHdpdGhvdXQgYSBQTVUgYW55d2F5LCBJIGJlbGlldmUuKQoKPiBJJ2QgcHJlZmVyIHRvIGhh
dmUgJ3BlcmYgdG9wJyBhbmQgJ3BlcmYgcmVjb3JkJwo+IHdvcmtpbmcgaW5zdGVhZCBvZiAncGVy
ZiBzdGF0JwoKSSB0aGluaywgaWYgYSBicm9rZW4gUE1VIGNvbmZ1c2VzICdwZXJmIHRvcCcgYmV5
b25kIHVzYWJpbGl0eSwgaXQKc2hvdWxkIGJlIGZpeGVkLgoKSGFyYWxkCgotLSAKTmF0aW9uYWxy
YXRzd2FobDogSWNoIHRyZXRlIGFscyB1bmFiaMOkbmdpZ2VyIEV4cGVydGUgZsO8ciBLbGltYXNj
aHV0egp1bmQgZnJlaWUgU29mdHdhcmUgYW4hIEljaCB3aWxsIG1pdCBWb3J6dWdzc3RpbW1lbiBp
bnMgUGFybGFtZW50IGtvbW1lbiwKd2VpbCB3ZW5uIGljaCBlcyBuaWNodCBtYWNoZSwga8O8bW1l
cnQgc2ljaCB3b23DtmdsaWNoIG5pZW1hbmQgZGFydW0uCmh0dHBzOi8vaGFyYWxkZ2V5ZXIuYXQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
