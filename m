Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE73B266D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 22:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdAQs1X7tuObCPZVNFlAoIwdUCC6E7ssP0flBXDuOCE=; b=eZWH3bcMxkaXKz
	3Fz4vqI0ZQWqhrP8Sm0nVBdr6pd0V39+gSUWDtkBAsG3EiYTyu8si9Zs83eI0/MXT+2HDhM19R2Sw
	DBa/uWs+q0ZN1F76RbkonPXm7DRf+yDrVhWtqlx0tbHX93U4AfqrsBBOn6MT2RFZDGGYPo2ag8hny
	XTtC5WTOovzNchhKAXHt4F2SehywUVKZrhfuOu7e4E/bvPteV9gUyFEUe5cT5RrfdvCwtKDSHg6IO
	U64nwn29yY/crMyUYqambEM5E5Xyi1Ic/sh8k/1M9q3hYQb9iyPrYOLnaOzcwKsWlfuHoD+R4MXpp
	J/2FATiirhFOcxIKL0fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8rq7-0006eM-4u; Fri, 13 Sep 2019 20:06:43 +0000
Received: from mailoutvs49.siol.net ([185.57.226.240] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8rpu-0006dB-Ht
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 20:06:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 1A96A522590;
 Fri, 13 Sep 2019 22:06:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Yu6tDdrqQ1J6; Fri, 13 Sep 2019 22:06:18 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id B54C1522597;
 Fri, 13 Sep 2019 22:06:18 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id D201E522590;
 Fri, 13 Sep 2019 22:06:16 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 5/6] media: sun4i: Add H3 deinterlace driver
Date: Fri, 13 Sep 2019 22:06:15 +0200
Message-ID: <6033065.vD0Azduf8t@jernej-laptop>
In-Reply-To: <20190913091147.42nsldzxwzfjoiak@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <4613446.95M5L3lKvs@jernej-laptop>
 <20190913091147.42nsldzxwzfjoiak@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_130630_749290_A73C4632 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgcGV0ZWssIDEzLiBzZXB0ZW1iZXIgMjAxOSBvYiAxMToxMTo0NyBDRVNUIGplIE1h
eGltZSBSaXBhcmQgbmFwaXNhbChhKToKPiBIaSwKPiAKPiBPbiBUaHUsIFNlcCAxMiwgMjAxOSBh
dCAxMDo0MzoyOFBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBEbmUgxI1ldHJ0
ZWssIDEyLiBzZXB0ZW1iZXIgMjAxOSBvYiAyMjoyNjo0NyBDRVNUIGplIE1heGltZSBSaXBhcmQg
Cm5hcGlzYWwoYSk6Cj4gPiA+ID4gKwljbGtfc2V0X3JhdGUoZGV2LT5tb2RfY2xrLCAzMDAwMDAw
MDApOwo+IAo+IEkganVzdCByZWFsaXplZCBJIG1pc3NlZCB0aGlzIHRvby4gSWYgeW91IHJlYWxs
eSBuZWVkIHRoZSByYXRlIHRvIGJlCj4gZml4ZWQsIGFuZCBpZiB0aGUgY29udHJvbGxlciBjYW5u
b3Qgb3BlcmF0ZSBwcm9wZXJseSBhdCBhbnkgb3RoZXIKPiBmcmVxdWVuY3ksIHlvdSBwcm9iYWJs
eSB3YW50IHRvIHVzZSBjbGtfc2V0X3JhdGVfZXhjbHVzaXZlIHRoZXJlLgoKSSBkb24ndCB0aGlu
ayB0aGF0J3MgbmVlZGVkLiBQYXJlbnRzIG9mIGRlaW50ZXJsYWNlIGNsb2NrIGFyZSBwbGwtcGVy
aXBoMCBhbmQgCnBsbC1wZXJpcGgxIHdoaWNoIGJvdGggaGF2ZSBmaXhlZCBjbG9jayBhbmQgdGh1
cyBkZWludGVybGFjZSBjbG9jayB3aWxsIG5ldmVyIApiZSBjaGFuZ2VkLiBJIGp1c3Qgc2V0IGl0
IHRvIHNhbWUgZnJlcXVlbmN5IGFzIGl0IGlzIHNldCBpbiBCU1AgZHJpdmVyLiBJIAp0aGluayBp
dCB3b3JrcyB3aXRoIDYwMCBNSHogdG9vLCBidXQgdGhhdCdzIG92ZXJraWxsLgoKQmVzdCByZWdh
cmRzLApKZXJuZWogCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
