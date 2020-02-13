Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D817A15BFDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 14:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5LaZn5/AuVfBaaloQiTjldGlmy3ZEY8Jx+kw4vtChY=; b=tvnEyESHhYJngm
	1UOmIAyDUMiV4569RLyPdrCMzRMWr3wWWBvMtTuU2KgjTei/8zxPcNlLvCPa2WWjZUfarATaVj8tq
	AAksHBVTV2eVl77RVb/s110opLu8DBIqGpK1wgwV5+fPFa/bI0CW/l5LX5PYnqy52Lu5MvIjjBSoD
	qs0HFps0x5DNVBTH51D5kIB3ETOnYpgNbQ0FkrdY6ZVJzaM2t8nGO1d3I3tFplYnHm21dd/w3vfVw
	q0TLJ1ZPw/GuqQdbeRZg6w8jTmkZ+k5id2NKhO9ZYtUCxOpQgFc/JlDWaZN+yPVNLYQTbpP8QMuHj
	W5l+m4+NEdK9Bt1Qd04g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Ez4-0004ha-TW; Thu, 13 Feb 2020 13:56:51 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Eyx-0004gs-FY
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 13:56:44 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v141so3589644vsv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 05:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PCoft5ObisT71H4xmSYRVNKBPX8Jl8Mr5dppLPtilek=;
 b=Q/GZN67crjT8Xs6iOqA4ZpaNNgkuaruNKfj3stKYuI1PmiVlj4To/buvTkLMP4nyfo
 6QjMFqJ8oF2lpFv+W9pwdAAYNh0H11t0X6C3DXFZinyJiS5JhZrJ93t0LydGcYKpQQ16
 QKYOsVMopJacgNgxcN8UrE3thjVRr6HztEQLHAv6mIIjkHxrnfkJKcsNMPOCaU8qpr3O
 h4meXVjeoQGkwD9y4PBTOg3mWD5XPab2yXFC8L+3TT5KDjoTww0N3pc59jCZR7Rt7ri1
 bBTBcjcRUh3eUKW+SDN7yrZQLwIFEI/jvip5Wclto+E0ugQ3Hvh7Qu/3FeyGBofWAt9z
 41dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PCoft5ObisT71H4xmSYRVNKBPX8Jl8Mr5dppLPtilek=;
 b=LVcxNvsV41x9mnwnzANgbNwIM+sNLFD4PYRxi4Chh/nrYr57PrdVvXA/fEwoJK4eFC
 gbBxKbIxWn+ekgFPxA2SQKpNtcXjyHMGuujUt/OqmeYhbki9994XRVeJ/XFc294R6qvC
 dtrZK3URHteYjz0qQhj4y3vChWL6UgPQmPwEdI2QklgMbXPpDG6z+g3YwmV11nR2Wwe8
 3Xw/daPma/mxgaeXaLyFOxHRe7trp/WQcGSlS1sfXbWNYbfBxENGIJoOUDrTEcf/BSUA
 uXG8nbDlmMbEv7M9U/S99G9Drn+XZ+qmcImpfBa6qSuG2a5ptUtXLGHMgiuDZRAMpoAu
 RyAw==
X-Gm-Message-State: APjAAAXHzEMaFbv/e1QX1TYTA+sgxCsqrlyrnSBtNhFg++IECqK+hoDN
 RbfAqNTBLwvp49RrV0tGd7BVTd6hIUawVitZI4FZtg==
X-Google-Smtp-Source: APXvYqzQbZ5bwymEDWh1zy9a2prr4kVYX5IT0scZFKGQpBOFt4KixIzGS3syqqyoz0UW0bsqYw5/pCJMrPLpBLXQRHs=
X-Received: by 2002:a67:ee02:: with SMTP id f2mr14962183vsp.165.1581602201921; 
 Thu, 13 Feb 2020 05:56:41 -0800 (PST)
MIME-Version: 1.0
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 13 Feb 2020 14:56:06 +0100
Message-ID: <CAPDyKFqS+9j++9RugFxNS4gKWuH_TpgbL-RXuudg92b-j_kvtQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] Enhancements and Bug Fixes in ZynqMP SDHCI
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_055643_523549_F664FDD3 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tejas.patel@xilinx.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Adrian Hunter <adrian.hunter@intel.com>, jolly.shah@xilinx.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 at 11:21, Manish Narani <manish.narani@xilinx.com> wrote:
>
> This patch series includes:
> -> Mark the Tap Delay Node as valid for ioctl calls
> -> Add support for DLL reset in firmware driver
> -> Add support to reset DLL from Arasan SDHCI driver for ZynqMP platform
> -> Fix incorrect base clock reporting issue
>
> Manish Narani (4):
>   firmware: xilinx: Add ZynqMP Tap Delay setup ioctl to the valid list
>   firmware: xilinx: Add DLL reset support
>   mmc: sdhci-of-arasan: Add support for DLL reset for ZynqMP platforms
>   sdhci: arasan: Remove quirk for broken base clock
>
>  drivers/firmware/xilinx/zynqmp.c     |  2 +
>  drivers/mmc/host/sdhci-of-arasan.c   | 59 +++++++++++++++++++++++++++-
>  include/linux/firmware/xlnx-zynqmp.h |  9 ++++-
>  3 files changed, 68 insertions(+), 2 deletions(-)
>
> --
> 2.17.1
>

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
