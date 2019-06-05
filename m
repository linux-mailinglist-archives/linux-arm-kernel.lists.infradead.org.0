Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD418364D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U01q7qceq6WGp/1k8oAg273c7Z1osYECmDb4RVxV7z0=; b=IWnVqCMBe+ACyd
	Xm6YDhhvAlq5yr6RjAId0LR0S8QHbxKF1vXBwg8Gc6yRCVfegqnuq59whGt+//wf95mlCiqS7RY5S
	x58+/LHNHvvP4ECBfe9Dc+exz4Wnw3+hmtuPJTy2TiMPhd2LfM8ZnBneJPPyoWYXutEylSdVQM53P
	4iA9bns+EWND4upOoJIBZT35ZgMkJoYzgeM77MoHL9cF96/drYYMRPz+XoitZ3Xsf33U/X7APS16n
	EXwuAdoE7I5Q1HD7YxSLk2WtPmjVQ2WNVWQbyNvlly2GFYS9JgdwfDz7w1UM4/0V1UzelB4KW+kyn
	V/SMPTasPKnLRpoTsb2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbib-0001Wc-Vz; Wed, 05 Jun 2019 19:37:06 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbiU-0001Vr-4q; Wed, 05 Jun 2019 19:37:00 +0000
Received: by mail-it1-f196.google.com with SMTP id a186so5406226itg.0;
 Wed, 05 Jun 2019 12:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kwLHe6pw2ihYaqYwiNpoJsGqzozTnZa4V+fIZmXgIP4=;
 b=OUBvd39QETSt3/jGmgvOX+N3aKGB/wBnllY7dvrYEdZiiSRWCwbe9bpuljCGgr779s
 AEYmhF9kJ3w6ClF7aNMD0R9Lu6X6W9uWgK3SEs/O02XmlRPhFll6ZKT/dII8bHnfQkP1
 yisRJP1d/m/WvRBoAYW9gbqpbI1UskzJvqFfY8w6KtrV8qVkeqpSkM/QGxdC0kQAZEzw
 KsKEERYiWziDsFp+8ktTfjFHJBn7FRlsEF3nLr59uGq7ZMCaYYUCyK1PuajWYmSIRa2m
 v6oQduxKbgIR9ZdueHIyrx1j4q0+AYy2WWLS8j24oyRjDW2ark499MiE/kjX56XFt3Gs
 uwWQ==
X-Gm-Message-State: APjAAAVOOAXzPeIlfNeU3X4/EmWcsUul2Bc/MYcjwYtDB72jvMIDfu8o
 zb+odnfsezw9Q2glEmdAkE1hLWZASLEHS82pdyM=
X-Google-Smtp-Source: APXvYqx6Oah+YT6T5psZ1qhPIYRGZiWlfwqb5jPRk8MHOTrYaBqYOjTVp1LlSMJ3g0urFLpxp888Ebd0l1PeShpDBNg=
X-Received: by 2002:a24:7f0d:: with SMTP id r13mr25805755itc.28.1559763415651; 
 Wed, 05 Jun 2019 12:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190412105320.2924-1-kernel@esmil.dk>
 <20190508103358.5C7EB440010@finisterre.sirena.org.uk>
In-Reply-To: <20190508103358.5C7EB440010@finisterre.sirena.org.uk>
From: Emil Renner Berthing <kernel@esmil.dk>
Date: Wed, 5 Jun 2019 21:36:44 +0200
Message-ID: <CANBLGcxiXR7KqKn4U-2PgefuxpBFX=yR06cw6A5GEALuqa54FA@mail.gmail.com>
Subject: Re: Applied "spi: rockchip: turn down tx dma bursts" to the spi tree
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_123658_192039_9BE6BACF 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.renner.berthing[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vicente Bergas <vicencb@gmail.com>, linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark

On Wed, 8 May 2019 at 12:34, Mark Brown <broonie@kernel.org> wrote:
>
> The patch
>
>    spi: rockchip: turn down tx dma bursts
>
> has been applied to the spi tree at
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git
>
> All being well this means that it will be integrated into the linux-next
> tree (usually sometime in the next 24 hours) and sent to Linus during
> the next merge window (or sooner if it is a bug fix), however if
> problems are discovered then the patch may be dropped or reverted.

I've tried looking in the for-next and for-5.x branches here, and I
can't seem to find this patch.
Am I missing something?

It fixes a problem introduced in 4.19, so it'd be nice if it could
make it to stable trees eventually.

/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
