Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B2E3339E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qdcdyj6rxruRK7udoV9SMgpelMPv77d+up7STt8wgoU=; b=nXXGSXCUkDdWAc
	zdds7wQ3TXyDudrWglcPdepU/7PurfmrJPQbPuwh7m9UW4Y/TzvSXMWOmyt5cY3xnPu/FJvI7sfD+
	3fozSnK/FWbyiedlYT8G23qV7hzHW7ME+vrMs/H8Dgd2fmaPc62EHvkaorwJQAtRfDIIpNhDJFdd7
	oHkZ35rneQE6Cz6lV25iL5DNHrP3Gk2HD2pzvqNH31Y4V/u+fvWDYZA5mIOYzbnIM8bLni+GgJ3An
	J8jCaUGxTDJft2O1r+34mkkC97ei1xxihjdpHebezCNZiQA1DFNV5P9EKMlM9B7ldByDrsUVIpRR1
	SklpJ39PSk2zE4nK1LLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoyi-0008AF-02; Mon, 03 Jun 2019 15:34:28 +0000
Received: from mailoutvs42.siol.net ([185.57.226.233] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoyb-00089f-UZ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:34:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7973A521018;
 Mon,  3 Jun 2019 17:34:05 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id I185maW5QRX1; Mon,  3 Jun 2019 17:34:05 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 10534520F7B;
 Mon,  3 Jun 2019 17:34:05 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id A9764520F69;
 Mon,  3 Jun 2019 17:34:03 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/7] media: cedrus: Fix H264 default reference index count
Date: Mon, 03 Jun 2019 17:34:03 +0200
Message-ID: <8861995.Bqp6Xp4pol@jernej-laptop>
In-Reply-To: <20190603114620.vsvbxz6gyhg3tn7b@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-3-jernej.skrabec@siol.net>
 <20190603114620.vsvbxz6gyhg3tn7b@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_083422_145730_1960C3BC 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca,
 paul.kocialkowski@bootlin.com, wens@csie.org, boris.brezillon@collabora.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 03. junij 2019 ob 13:46:20 CEST je Maxime Ripard napisal(a):
> On Thu, May 30, 2019 at 11:15:11PM +0200, Jernej Skrabec wrote:
> > Reference index count in VE_H264_PPS reg should come from PPS control.
> > However, this is not really important because reference index count is
> > in our case always overridden by that from slice header.
> > 
> > Cc: nicolas@ndufresne.ca
> > Cc: boris.brezillon@collabora.com
> > Cc: jonas@kwiboo.se
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> 
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> > ---
> > We have to decide if we drop pps->num_ref_idx_l0_default_active_minus1
> > and pps->num_ref_idx_l1_default_active_minus1 fields or add
> > num_ref_idx_l0_active_override_flag and
> > num_ref_idx_l0_active_override_flag
> > to slice control.

Actually only one flag is in bitstream valid for both l0 and l1 ref list.

> > 
> > Current control doesn't have those two flags, so in Cedrus override flag
> > is
> > always set and we rely on userspace to set
> > slice->num_ref_idx_l0_active_minus1 and
> > slice->num_ref_idx_l1_active_minus1 to correct values. This means that
> > values stored in PPS are not needed and always ignored by VPU.
> > 
> > If I understand correctly, algorithm is very simple:
> > 
> > ref_count = PPS->ref_count
> > if (override_flag)
> > 
> > 	ref_count = slice->ref_count
> > 
> > It seems that VAAPI provides only final value. In my opinion we should do
> > the same - get rid of PPS default ref index count fields.
> 
> The rationale was to be as conservative as possible and just expose
> everything that is in the bitstream in those controls to accomodate
> for as many weird hardware as possible.

Ok, so then we should add that override flag, which would align with h264 specs 
and you can still do same trick in VAAPI library which it's currently used in 
Cedrus driver - always set override flag and fill out only slice reflist count. 
At the end it shouldn't matter for proper decoding in any driver.

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
