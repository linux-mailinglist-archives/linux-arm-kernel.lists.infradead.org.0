Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F9F13D088
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 00:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3wAxfd8b2q2tHodXXGAj+VyzQGgL+jtN22EkhFcIBo=; b=NTcj2BBBQklYml
	7gtm2CUFnFVYry/u2+WwbQjMXNHFdZMbpIv8DtrGhgC7kXyQTfDTGnPAJzAu/wBD8rQn4CPsBqe0s
	0YOLel7G8kGgEyFKUefJMwGfXoD2ApGrMyRvidfRWYEfuxwKGUteMMVmDL24FQgEnBN1KIhLhRDOY
	69aTW8JSB7f4WJhR6926YRoZX2EzPxG6o/ZKO2slgM/ZQAPkocRBiDZop/Tw9kXjTvwLPuEQsPL1d
	w7FwHmvh4bDTSlS5RU3+4cuAp7tbAgoh9WlyxpN4HHjS+V01BW2LxGsR13Gc5w4WV0Q4gPbZM8yY8
	ajMCPgdo8dqZSnGHJ/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irroo-0004X3-1z; Wed, 15 Jan 2020 23:11:22 +0000
Received: from mailoutvs48.siol.net ([185.57.226.239] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irroa-0004W5-1I
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 23:11:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 7ECF95229C0;
 Thu, 16 Jan 2020 00:10:59 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id G8KZ7vYm0PJ9; Thu, 16 Jan 2020 00:10:59 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 2E8355229D0;
 Thu, 16 Jan 2020 00:10:59 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id C0A525229C0;
 Thu, 16 Jan 2020 00:10:58 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: add OrangePi 3 with eMMC
Date: Thu, 16 Jan 2020 00:10:58 +0100
Message-ID: <4200557.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <CAL_JsqK-KBd9PF7nKK976vVYjRwfm-ZxJSnEbhiWC=X3AnvpeA@mail.gmail.com>
References: <20200115194216.173117-1-jernej.skrabec@siol.net>
 <20200115194216.173117-2-jernej.skrabec@siol.net>
 <CAL_JsqK-KBd9PF7nKK976vVYjRwfm-ZxJSnEbhiWC=X3AnvpeA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_151108_235312_7AFE3F09 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.239 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 15. januar 2020 ob 22:57:31 CET je Rob Herring napisal(a):
> On Wed, Jan 15, 2020 at 1:42 PM Jernej Skrabec <jernej.skrabec@siol.net> 
wrote:
> > OrangePi 3 can optionally have eMMC. Add a compatible for it.
> 
> Is this just a population option or a different board layout? If the
> former, I don't think you need a new compatible, just add/enable a
> node for the eMMC.

I have only board with eMMC but I imagine it's the former. Even so, current 
approach with Allwinner boards is to have two different board DT files, one for 
each variant. This can be seen from Documentation/devicetree/bindings/arm/
sunxi.yaml which has a lot of compatibles ending with "-emmc". I guess reason 
for that is to avoid having MMC controller being powered on for no reason.

Best regards,
Jernej





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
