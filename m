Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EE56D3F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycGou60JCcw0dN72FsEtrG5VCFWNGOUKXM7+xyAmpJs=; b=cNL9icNDnV2IuP
	ihmgVDsuYtFIrERDiWlttquCpAWbYFxxQJmySwlVrqbX2TcrVUOb6yclTYzBDXmocBieuammDM5xo
	miIPjCDOmarDZpv//HM5n7RrIb90uydy69tayiN22HVkwhwtDMC1YuecMzQAZh+aksdkUhM1fccPw
	Z7/1ussO4gaFsFLOCo0JNyBlUNUUht0PRCsGGSWfTt5AU/SbAjqSOqqYoyruNe7fEWNRG4PbpT/CC
	fHdyIodLW4U7aGLZZvIu5jWNMXPFRy7CTyw0xKsELcBg5D6SMqqqWw6/uonHhCDvabRaOYpd+7GLW
	7NAjA/FgUaYGWMro2+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBBQ-0006J8-8F; Thu, 18 Jul 2019 18:31:12 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBB7-0006GC-3l
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 18:30:54 +0000
Received: by mail-qt1-x843.google.com with SMTP id h21so28216841qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 11:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=in+k2EJ0yUgEcWfMOCLX6vtt4xp7gnH3JFGCqlQ3fNY=;
 b=Bg6jaOgG9du1wnY3AakkRHNi1vr5x6MttHcc8/z0LrY8OApHgsOiUtYwm0yiR1LKF0
 z2MmA/nGKAJrt1OLbX+ieHspwY5WF9Q3wk28PkzatbhA0Hev59GwPDQEMFhoWrSq5cRR
 z01TDj/2sNwKRrZZUQbtS+lMvnJwwgfNnD/wUqPiPCF48THrCA7mGgUhTmhbWRG0Q9Zk
 WRp05TxbCeh2ls/yjXftohPGzg4OCShCl8YrRN5xIrxAz2oMNNsyF4TQGeY6CjU4Gww6
 0ywzytZkX7NXZ5smdo9S5Q7CXKt48Ab/MxBuGD3mM03WGXnN6GT+7XSBl9p8BSlb+pEx
 8HTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=in+k2EJ0yUgEcWfMOCLX6vtt4xp7gnH3JFGCqlQ3fNY=;
 b=fb17/3fDl8IuSdfB0KUHRpBmUae4BHKEVtLlJbFkond8iTdo8CGqtrIUxLvIpGqi7e
 FNTnW3aSie+Oo2adVOabs/5KgpeUH1CzDCONfByNSgTObUWFFn0SB3g2Ei+K4mSAsq2r
 7f1cVK+e6aDkIZ25AHV5vS3Xzgz0JrNUI8MOojM/ZDDfTaFPcaY0BXP52R/+vFQi7vKZ
 bUFpbhfLlVnOTVlzN8kwkL56rqGJMeIvggVeqxKk3IxM2ekb2UU3VshSfDmYWzAr3bJh
 DO7jSMhYkAfQR5XpEd6CDTs9nEGrAy1UmxDyB3p7Lo8T/Kg21eZgnNeI4hQgOkeZX49k
 Q5ow==
X-Gm-Message-State: APjAAAUZXkRoDpHtUzp8tgoGFJjU3UB07/vsk1WjFzFMJ4Eexdi1wSFP
 EcwlH/kdIWt9T0gB6WbUN9Nj6A==
X-Google-Smtp-Source: APXvYqyBLppEZZyvT5K/qJOtPAJP26Q7Zq17101bVCjXPdYuHpTMV6yKtYIcA/OhY2zXrQ5+No6vUQ==
X-Received: by 2002:a0c:ad76:: with SMTP id v51mr34949407qvc.232.1563474651240; 
 Thu, 18 Jul 2019 11:30:51 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id r40sm15578032qtr.57.2019.07.18.11.30.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 11:30:50 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:30:50 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 04/11] drm/ati_pcigart: drop dependency on
 drm_os_linux.h
Message-ID: <20190718183050.GA104440@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-5-sam@ravnborg.org>
 <20190718174905.GG31819@art_vandelay>
 <20190718181135.GA5612@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718181135.GA5612@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_113053_164035_FF7FD06F 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Chunming Zhou <david1.zhou@amd.com>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 08:11:35PM +0200, Sam Ravnborg wrote:
> Hi Sean.
> > 
> > Any plans for the other users of DRM_WRITE<N>()? It seems like it'd be trivial
> > to fix it up for via and mga. I don't really have any background on
> > drm_os_linux.h, but it doesn't seem like it'd be that much more effort to just
> > remove the whole thing.
> 
> During the drmP.h removal I also took care of drm_os_linux.h,
> so when the patches land then there will be no users left.
> I look forward to delete that file.
> 
> For via I only just posted the patches today.
> For mga they already landed in drm-misc-next.
> 

Awesome! I think I was looking at drm-next instead of -misc-next, so happy to
hear the future is bright :)

Reviewed-by: Sean Paul <sean@poorly.run>


> I expect that we after next merge window can delete
> both drm_os_linux.h and drmP.h.
> 
> 	Sam

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
