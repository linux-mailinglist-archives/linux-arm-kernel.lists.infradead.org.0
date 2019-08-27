Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42B19E41A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYg0XRRVhOdx5qEctbvv+AaccjVXWqaVoCkqgiBkgoM=; b=jdXnAn2erN5qEU
	1TSValJFqbeueStT2J8IVFZe3dawBjDr9SJMX5J8nyF9lon2iEZUcvLSlRo0G0+X62CXK+trB3/dC
	hiT/nBFN/15dxSxix2fsBio3PMszByGUjbcI8CF/h2ckCPhcpPn8k0o1qyYeYuendA66yC0wfo+1A
	HlxYTkGaUuI6kot6gXdSLVH23VmzFFHFNye9piZU2WG6oTLaSQrGrCn9qb0UPshL7KWe8FLr8JJAX
	FFulpVP4JtqndPMH4KVzwA1kHkaf+dxzrbZ4TchD7kR9jvJR9auF/krsPzow3ZZG1FG+3ja7jaRJ2
	namLhsPaY0C/x4jJW/0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Xjg-0003jB-Qn; Tue, 27 Aug 2019 09:25:57 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XjM-0003hx-1D
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:25:38 +0000
Received: by mail-ed1-f68.google.com with SMTP id f22so30438694edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:25:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v1Hq21GWlHfVsAHB0YA3+1WJiGcX5YVFh0QLDfo8rZM=;
 b=GPdaBhMgR0GiBSCj3KBcJJuhBZgR4BLa7Z8+jakyvW0tvw43LXviFGzGuzwoh+jI3f
 BzdypFL/E499ZNAMiluxwlsu2lKVgHTNJ2yB5ZSmovOSHBYckxzJr3Xrk147pAN7wBWO
 ebIOELX4d7SYmm0wrVLhv5Cos/9fVAXWLNxRSUQMD8+uLFrFtdpPeLYe/xnA0WDv0KsV
 N1iU0VqcgyWawkcEy7J517ftCnqLWBxxWjye5Ub+J52MBJ4Uv3TlYM+zuYgZaJ50fSzv
 rlmtesCbFfyb8v79wlndxWhNkfDZ/ZAMlzfXj81YifpjorD115DCSEI+fGQJN+ycQoLQ
 uarw==
X-Gm-Message-State: APjAAAXwe1O1KLLIHon1rY//awfe7IXCwIQ8bpYG/W7h1ardm3YQCnVq
 nRqri7ISuHawFBdQ8bGRtLSdKxanN0k=
X-Google-Smtp-Source: APXvYqyQrtOlIy8H/Wc0aVpb7ScZbCDZ1m3OfffgdSj0Ub/LeyuQ+4a18Bj+Q6JhN8LDTUweDqA+mQ==
X-Received: by 2002:aa7:c552:: with SMTP id s18mr23686508edr.0.1566897933840; 
 Tue, 27 Aug 2019 02:25:33 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id w10sm3400566ejv.88.2019.08.27.02.25.33
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2019 02:25:33 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id u16so18054507wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 02:25:33 -0700 (PDT)
X-Received: by 2002:adf:e941:: with SMTP id m1mr2612297wrn.279.1566897933029; 
 Tue, 27 Aug 2019 02:25:33 -0700 (PDT)
MIME-Version: 1.0
References: <0e5b4abf06cd3202354315201c6af44caeb20236.1566242458.git-series.maxime.ripard@bootlin.com>
 <20190820174105.96899274314F@ypsilon.sirena.org.uk>
In-Reply-To: <20190820174105.96899274314F@ypsilon.sirena.org.uk>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 27 Aug 2019 17:25:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v64vzcZbXqfW27cgobpQ-AXQjb2zanqotAR0ezw+6KCdpw@mail.gmail.com>
Message-ID: <CAGb2v64vzcZbXqfW27cgobpQ-AXQjb2zanqotAR0ezw+6KCdpw@mail.gmail.com>
Subject: Re: Applied "ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer
 SoCs" to the asoc tree
To: Mark Brown <broonie@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_022536_071965_C12C803E 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Marcus Cooper <codekipper@gmail.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Aug 21, 2019 at 1:41 AM Mark Brown <broonie@kernel.org> wrote:
>
> The patch
>
>    ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs
>
> has been applied to the asoc tree at
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4
>
> All being well this means that it will be integrated into the linux-next
> tree (usually sometime in the next 24 hours) and sent to Linus during
> the next merge window (or sooner if it is a bug fix), however if
> problems are discovered then the patch may be dropped or reverted.
>
> You may get further e-mails resulting from automated or manual testing
> and review of the tree, please engage with people reporting problems and
> send followup patches addressing any issues that are reported if needed.
>
> If any updates are required or you are submitting further changes they
> should be sent as incremental updates against current git, existing
> patches will not be replaced.
>
> Please add any relevant lists and maintainers to the CCs when replying
> to this mail.
>
> Thanks,
> Mark
>
> From c1d3a921d72bd21f266ca28c15213fbe78160a4b Mon Sep 17 00:00:00 2001
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> Date: Mon, 19 Aug 2019 21:25:16 +0200
> Subject: [PATCH] ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs
>
> From: Marcus Cooper <codekipper@gmail.com>

The authorship of this patch looks to be wrong. Maybe it's a tooling issue.
I imagine it might have happened if Maxime created the patches using
`git format-patch` with his @bootlin.com address, then sent them with his
@kernel.org address, and `git send-email` swapped out the "From:" header
and prepended it to the body.

Either way the "From:" line looks odd in the commit log.

ChenYu

> The clock division dividers have changed between the older (A10/A31) and
> newer (H3, A64, etc) SoCs.
>
> While this was addressed through an offset on some SoCs, it was missing
> some dividers as well, so the support wasn't perfect. Let's introduce a
> pointer in the quirk structure for the divider calculation functions to use
> so we can have the proper range now.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> [Maxime: Fix the commit log, use a field in the quirk structure]
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> Link: https://lore.kernel.org/r/0e5b4abf06cd3202354315201c6af44caeb20236.1566242458.git-series.maxime.ripard@bootlin.com
> Signed-off-by: Mark Brown <broonie@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
