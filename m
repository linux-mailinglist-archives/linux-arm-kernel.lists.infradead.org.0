Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9F7135535
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:09:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reO9139jVrzquNeHgZBPcBbQelOGl/41gWVDZbjKjf4=; b=eo59DM6owBrxNM
	7AaZAtfpgNCzAY5oCSMvP3Oq5pxglVNoF5dDr/U9uL+OTxIhI0rtFpMXMFrehzL6C/hs2fPJKRsI8
	QsETHjsdxX1VsAfZFnPwysug4OsSZHalng1sjZhsnzYZjrjRF6llkbs3kzGPB59ZUsi3Wqh6mya1I
	/AqnW2HslWlENqjVkRNh/YufPgU5e6Hp6gAVKM4pMLQG3hTA1m719GdcCZY9PGmXHCSdfCB+AbWBx
	306MjOyClc1U6i+Mf+PbATInbFtt8oecvLxEa7aThKzpPqlZCZw1Iso6GOBuekdsNcOzVWO2zu0Pb
	/1cABE2biOshIBv8KRJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipToT-0004Qh-Ce; Thu, 09 Jan 2020 09:09:09 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipToI-0004PL-No
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:09:00 +0000
Received: by mail-qt1-x843.google.com with SMTP id e5so5278159qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 01:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iWKF4KF9Y1CtiEun++0rxUUQMRPGqGyeC6hWhJkdSUc=;
 b=QGT9LAJanjfXKoCERl6lGxDO5mX9gXrEuQ7sDttgSjCnzBSKSYfwnG4X9f+Ngw4O1v
 Jkhrpm+DlIJNPfdLLVhSKTc7QDIodBcyMEhHwaxzV8RY5q+Ffgk+1IFXnbZvNBlyfPV8
 UQwFDYjv97NNGovIbt5sPou5JjNNOYGlmCfeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iWKF4KF9Y1CtiEun++0rxUUQMRPGqGyeC6hWhJkdSUc=;
 b=uhAbpxChJzlxKeSJOsmM5eQ1qGyZb4QeoOcgLf+oMCFzP1dv6mUA8RA+2IxjZ2pQkz
 V2AHFK+QurbgMlKV6bvyVVNBW4GJ4qRjS+3GQURUQjnOLLY4Wh2V9N4GLeOonpS4natp
 IUCI5QuZa+pdprI30cBEv+1+U86U5SilzBuR5PkuWIDDpRir+uTk30xEyffdRHKa2Bfn
 LTAoaznOwC/Gt377lgJTnjrnVjZZS6DDy1GMg5Pc77HJVH+7iobZqzn7XJLrYjNe7yA8
 20WU7fB+Z50E6eadefl2aj6obgfz7+0hCqUVd9+FHBzpXj4mskIJK+fGbguAeW2zEMYG
 D4Kg==
X-Gm-Message-State: APjAAAUbcXaPgBhLk7lB5IIB3hUHtxMXwChl7yCjMJlxCDEQTxjSuE6r
 guaXkBEWY3VUJic/61iDl6TCzJzBQ07JvcpLFp0leQ==
X-Google-Smtp-Source: APXvYqzHUEojTodwcrGuQpgaBY41guNbk/ZtFyS1AoJQRt5Iu+x8Niu+YYkIDEdBurliWcTM+tgf2nUl95GTV1rYpXA=
X-Received: by 2002:aed:2f45:: with SMTP id l63mr7382614qtd.221.1578560937298; 
 Thu, 09 Jan 2020 01:08:57 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 9 Jan 2020 17:08:46 +0800
Message-ID: <CANMq1KCKuOTvyDxhnL1baEeRSxnaPdgMp9Lj2pcHwj-30n2-5g@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_010858_810349_5E702926 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 1:23 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> Hi!
>
> Sorry for the long delay since https://patchwork.kernel.org/patch/11132381/,
> finally got around to give this a real try.
>
> The main purpose of this series is to upstream the dts change and the binding
> document, but I wanted to see how far I could probe the GPU, to check that the
> binding is indeed correct. The rest of the patches are RFC/work-in-progress, but
> I think some of them could already be picked up.
>
> So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
> backports to get the latest panfrost driver (I should probably try on
> linux-next at some point but this was the path of least resistance).
>
> I tested it as a module as it's more challenging (originally probing would
> work built-in, on boot, but not as a module, as I didn't have the power
> domain changes, and all power domains are on by default during boot).
>
> Probing logs looks like this, currently:
> [  221.867726] panfrost 13040000.gpu: clock rate = 511999970
> [  221.867929] panfrost 13040000.gpu: Linked as a consumer to regulator.14
> [  221.868600] panfrost 13040000.gpu: Linked as a consumer to regulator.31
> [  221.870586] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
> [  221.871492] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
> [  221.871866] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
> [  221.872427] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
> [  221.872439] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
> [  221.872445] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
> [  221.872449] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
> [  221.873526] panfrost 13040000.gpu: error powering up gpu stack
> [  221.878088] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2
> [  221.940817] panfrost 13040000.gpu: error powering up gpu stack
> [  222.018233] panfrost 13040000.gpu: error powering up gpu stack
> (repeated)
>
> So the GPU is probed, but there's an issue when powering up the STACK, not
> quite sure why, I'll try to have a deeper look, at some point.

Just as a follow-up to that one. stack_present=0x00000007 on my GPU.

However, the ARM-provided driver I use on this platform doesn't have
CONFIG_MALI_CORESTACK enabled so the "stack" is never turned on.
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/drivers/gpu/arm/midgard/Kconfig#101
. So possibly this does not need to be done on Bifrost GPUs (and the
error should be harmless).

> Thanks!
>
> Nicolas
>
> v2:
>  - Use sram instead of mali_sram as SRAM supply name.
>  - Rename mali@ to gpu@.
>  - Add dt-bindings changes
>  - Stacking patches after the device tree change that allow basic
>    probing (still incomplete and broken).
>
> Nicolas Boichat (7):
>   dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
>   arm64: dts: mt8183: Add node for the Mali GPU
>   drm/panfrost: Improve error reporting in panfrost_gpu_power_on
>   drm/panfrost: Add support for a second regulator for the GPU
>   drm/panfrost: Add support for multiple power domain support
>   RFC: drm/panfrost: Add bifrost compatible string
>   RFC: drm/panfrost: devfreq: Add support for 2 regulators
>
>  .../bindings/gpu/arm,mali-bifrost.yaml        |  20 ++++
>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 ++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 104 +++++++++++++++++
>  drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  18 +++
>  drivers/gpu/drm/panfrost/panfrost_device.c    | 108 ++++++++++++++++--
>  drivers/gpu/drm/panfrost/panfrost_device.h    |   7 ++
>  drivers/gpu/drm/panfrost/panfrost_drv.c       |   1 +
>  drivers/gpu/drm/panfrost/panfrost_gpu.c       |  15 ++-
>  8 files changed, 267 insertions(+), 13 deletions(-)
>
> --
> 2.24.1.735.g03f4e72817-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
