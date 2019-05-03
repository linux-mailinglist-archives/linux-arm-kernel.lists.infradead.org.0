Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 548261349E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 23:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hM02odgn0gnvf4srzKLWx/7iElphTiMUcZis/NGr74o=; b=EsK4KIsycOsn+Q
	YJTm6Ge5aX0Ipmy/vnpogiHPIpaIyXa1kbil/+2kBXiQtjrX6qt6fgmKCaUNyzG/rntd3hdXr3Oaq
	AFwVXKxRT6rDbDCFQY+cmvxAxr34FKkcpaqfyAY0t2M+lXbBMax/7AWXMj60K1AQCoi4Smf/sp+ZP
	pxlkXTTW+JeAsnlNlO73lSmRTYSh56VjWsicwhMJMZypDYQW53OW4MTatvmIAIkemCRl8xwdO0Bj7
	Ph9gnwez1devjIsFCwoLyS9VCWzxGEp+yH+TQfAdAB3MBk1bFu7YuyOv25lSdgvZ049CSd+Z5+GK5
	Va9XP2KfAddJuXkQMWTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfMM-0004u1-9e; Fri, 03 May 2019 21:04:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfMF-0004tb-6V
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 21:04:40 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 162FF2081C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 May 2019 21:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556917478;
 bh=JZCFnc067dKfhEib7cBD2TbcPo3mqnplGNRx6MkaGnY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OBFI5kytvk0xfv4Cyl6T8JFPgs1BPjdH/kjMrYJky4rvSep2i52OVFXOwgSHZjwgA
 FK6cYstSyOk2dQin2sdUYLE4p3Glf41bfCgh61KQvluNWw9yQhWLxNs5eTDUTuAWCD
 17i/VEgPmo667pFdLuqE4r4lnH5f/pi35HOJxkeY=
Received: by mail-qt1-f180.google.com with SMTP id d13so8367318qth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 14:04:38 -0700 (PDT)
X-Gm-Message-State: APjAAAXPH/GPmaocFdi06A2sHDIbNwvMepz3WE2BqGx5X/LXk9U1CUir
 E4ZDWKnuR65vR1jhZXAHbE3peKhkt/HFCH8QpA==
X-Google-Smtp-Source: APXvYqzDhtomvD/UG5VnDEpd3rpo/VWczm2g7M/gKQWkAodiJL3Pto+4N35kj/6+1fphl2pHAnNd4smJ9Xi0ZDsKGXk=
X-Received: by 2002:aed:37a1:: with SMTP id j30mr10600080qtb.144.1556917477297; 
 Fri, 03 May 2019 14:04:37 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556195258.git.robin.murphy@arm.com>
In-Reply-To: <cover.1556195258.git.robin.murphy@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 3 May 2019 16:04:26 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+-21xWqPhSTeG8Juk1fhfsBDWy9-pFwVuHgGq7JnEs-w@mail.gmail.com>
Message-ID: <CAL_Jsq+-21xWqPhSTeG8Juk1fhfsBDWy9-pFwVuHgGq7JnEs-w@mail.gmail.com>
Subject: Re: [PATCH 0/4] drm/panfrost: Misc. fixes and cleanups
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_140439_299771_25BBC70F 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 10:31 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi,
>
> These are a few trivial fixes and cleanups from playing with the
> panfrost kernel driver on an Arm Juno board. Not that anyone has ever
> cared much about the built-in GPU on Juno, but it's at least a somewhat
> interesting platform from the kernel driver perspective for having
> I/O coherency, RAM above 4GB, and DVFS abstracted behind a firmware
> interface.
>
> Robin.
>
>
> Robin Murphy (4):
>   drm/panfrost: Set DMA masks earlier
>   drm/panfrost: Disable PM on probe failure
>   drm/panfrost: Don't scream about deferred probe
>   drm/panfrost: Show stored feature registers
>
>  drivers/gpu/drm/panfrost/panfrost_drv.c | 12 +++++-------
>  drivers/gpu/drm/panfrost/panfrost_gpu.c | 19 ++++++++++++-------
>  2 files changed, 17 insertions(+), 14 deletions(-)

Series applied to drm-misc-next-fixes.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
