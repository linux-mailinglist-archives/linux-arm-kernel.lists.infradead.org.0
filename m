Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951F56C2E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 00:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/lgZGyB2x5/OhMxl5KqGjITPQm4m2rLbze71H+9YvQ=; b=FH7fWbnf/LgkBe
	JO1Xmu2ETi+xYnWMKXRR8WAGLt5NE8UPemDQehbLyCy8hQdLwXagG5iGVTtzfWgLQIovDbYwfL0v3
	WnKC/4a4pnQOdTgS4MP5JoccQxvVq/7sPimU+H8zFm3QN5jCl7eZ3xOb/b8kaJZd0U6SpAllprBkh
	M4y9HczFvCmhKii86uHd6KpwmxkY2f5zKaBFxfxkFgGkZfmCgWHNpMMM3JYdpusi8kcOSF9Cl+WDA
	DlRZ70TN9cmrBR69BwZPJ6bUJr+l+ydhSuo0mjGzwDhCtilgkkulGNzjYM7i55fpbebPrxk5x4GEx
	nbC1hyFsrbCeCztYK7eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrzK-0001yv-F1; Wed, 17 Jul 2019 22:01:26 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrz7-0001yF-IW
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 22:01:15 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so27812308edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 15:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FFb+F89wb7hJSMQiJHwk7hej5OffexidUMya9XbA7hk=;
 b=oOO4HCySfdifrLOFYEtyfSEuKfjxMIFRyMI8fT/5OdTEpF7FBFdmqAO/U14jAVGyJs
 ol/8VhuynlOXcSYginVwm/AA1KPANThLMlWhsK5gYQEAxxnx1WsksfASUevRzWFLTPqS
 dgg6ztBunGG4vHcdj/eQJvwHWeXjb0FqcZo2i81Dmldi5r59CLwsWZJ8bf1UhOzY1ORL
 xC+WVbLsPeRxgAmYpvH2ObpmymYkF43iV/SpQBz5PujA885rxkpK7Mtjt4ub9TKi0SHw
 jhUnuIO1cu+8D9DhSuzh8dTVE7srb0lu1aPo9wgtiIhfF0F3kdcQWf8cmpZf37FJ44Hi
 Q2Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FFb+F89wb7hJSMQiJHwk7hej5OffexidUMya9XbA7hk=;
 b=ebiiJw2T8lEuLd5WysgeM8Bfd61npkY1Qtzta7hmeMlcAEsTSKuRc1/MKvWQuBA+mM
 9eGaI6xt0hsdL+DJuAAwBuyKk17OgPzllY8dOivhz/hhTSaEceHGtgy14LnF36YbekCp
 d7Y/ygtRtpvYITJdVrMmj4tKrgObzWpewZ0+plFEOeI9uXDofcsQZFVJxNOIMsTYrDXB
 ZQKCdDD6crjzT3msB6WO/3SUHlFteOHOorVdntMX3TGa1zTooNgmymrgYa5O4s/Ec3R/
 PUf6Cd56izlkCFjmEln/gLHqd0+yYab3bb/UuMzYrOFUgMbmJO2HvCkMkm27TsX1tpzX
 FXYA==
X-Gm-Message-State: APjAAAWfglyTqoiTEfe4ccUgmPrfqiZpVSP8iSjaJek0gwW/j90wWdD5
 mq8YqaZ9f02Fas93nQF41rorVMvpI/WitDPQFWsjsHgZ61g=
X-Google-Smtp-Source: APXvYqxOAb62gP6sqSSMuNm8xnIBPbG9G8d5bXEYaqpixv6l9xNpJqCvvczP1b0HDVKm9l8TsPv/yUL7Iez4jU/cNLw=
X-Received: by 2002:a50:a544:: with SMTP id z4mr36784507edb.71.1563400871020; 
 Wed, 17 Jul 2019 15:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <5d2f063c.1c69fb81.69fe8.9d45@mx.google.com>
 <20190717121002.GD4459@sirena.org.uk>
In-Reply-To: <20190717121002.GD4459@sirena.org.uk>
From: Rob Clark <robdclark@gmail.com>
Date: Wed, 17 Jul 2019 15:00:59 -0700
Message-ID: <CAF6AEGv0xjUD17-4=EHe=xOnMnkQgmtp94g473tTr2fDH0aa0A@mail.gmail.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 243 passed with 4
 offline, 1 conflict (next-20190717)
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_150113_640430_86D0AF5D 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 kernel-build-reports@lists.linaro.org, David Airlie <airlied@linux.ie>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 5:10 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Jul 17, 2019 at 04:27:56AM -0700, kernelci.org bot wrote:
>
> Today's -next fails to boot on a couple of apq8064 boards:
>
> > arm:
> >     qcom_defconfig:
> >         gcc-8:
> >             qcom-apq8064-cm-qs600: 1 failed lab
> >             qcom-apq8064-ifc6410: 1 failed lab
>
> In both cases it looks like the error handling when we fail to get the
> firmware for the GPU is broken, we get a crash in the initialization
> code shortly after failing to load some firmware:
>
> [    4.608279] msm 5100000.mdp: Direct firmware load for qcom/a300_pm4.fw failed with error -2
> [    4.614916] msm 5100000.mdp: [drm:adreno_request_fw] *ERROR* failed to load a300_pm4.fw
> [    4.623229] 8<--- cut here ---
> [    4.631111] Unable to handle kernel NULL pointer dereference at virtual address 00000088
>
> ...
>
> [    4.665947] Workqueue: events deferred_probe_work_func
> [    4.670532] PC is at msm_open+0x64/0x90
> [    4.675656] LR is at _raw_write_unlock+0x20/0x4c
>
> ...
>
> [    4.949553] [] (msm_open) from [] (drm_file_alloc+0x134/0x21c)
> [    4.957703] [] (drm_file_alloc) from [] (drm_client_init+0xa8/0x124)
> [    4.965162] [] (drm_client_init) from [] (drm_fb_helper_init.part.0+0x30/0x3c)
> [    4.973411] [] (drm_fb_helper_init.part.0) from [] (msm_fbdev_init+0x50/0xb4)
> [    4.982173] [] (msm_fbdev_init) from [] (msm_drm_bind+0x560/0x638)
>
> Full details (including full boot logs) at:
>
>         https://kernelci.org/boot/id/5d2ede2359b514a54b49e91b/
>         https://kernelci.org/boot/id/5d2ede2759b514a54749e91d/


jfyi, Jordan tracked this down to needing:
https://patchwork.freedesktop.org/patch/314397/

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
