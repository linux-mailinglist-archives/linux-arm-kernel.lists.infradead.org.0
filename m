Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A196C71EBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oo1fEdGgKO2ebLg7GuXxU1WFDSGPFxDrnqrZzcKVTY=; b=Ydvniu9236pCcL
	THbRbPLC/tyJg2p8gYqK0ugPtkdLYASLOYJdjWy0Sgg+mdYuBLLGAXHUloV88KAyE1zCUnzzRAx8Z
	GN58YTH+EoJ2vk7dWhIm86aUgWm7sFOStb6DJ2EGuUlA3hGDgv5U/cPWtAb65KIloFCnxSBqODvTq
	ygiJh6Otkk7Yfnzg0sIK5knvWqwHoYkBoleU7Wain8UA7gcpJI4QJtRQNavu9s9u6vYw1DS3r8tp7
	3wNliRIA6GSuKseV2kA3xVe5o0iXAhtK8pe3B4XdXgVTjS23Lc1EPN1nTnU1zc25x7nm2j/ITrRiV
	XEzrt+YaYkiNvq3Zp/1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzEy-0000N7-1A; Tue, 23 Jul 2019 18:10:20 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzEh-0008Cc-HU
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:10:05 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 85BCA805CF;
 Tue, 23 Jul 2019 20:10:01 +0200 (CEST)
Date: Tue, 23 Jul 2019 20:10:00 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/3] RFT: PL111 DRM conversion of nspire
Message-ID: <20190723181000.GA24663@ravnborg.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723133755.22677-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=MYpsXI3zmkKylij2SYoA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_111003_764686_38B339CF 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus.

On Tue, Jul 23, 2019 at 03:37:52PM +0200, Linus Walleij wrote:
> So this is a cold-coded attempt to move the TI nspire over to
> using DRM. It is more or less the last user of the old fbdev
> driver so it is a noble cause and interesting usecase.

Do we need to support arm,pl11x,tft-r0g0b0-pads before
we can obsolete fbdev stuff?
Just checked and cannot see it in use today.

Looked through the patches.
1 and 3 are:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

As in - the patches looked fine to me - but I do not know the code in detail.
But obviously need some testing feedback before they are applied.

Posted some comments on patch 2.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
