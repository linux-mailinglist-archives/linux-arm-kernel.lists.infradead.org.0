Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FC21358BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KpITneWX65oIT/sSEKEhgu7axoMtd4TYvKaKRmiNpK8=; b=Co+CwdN+zFTw8W0DTKVYJiXkS
	oppJ6Dj/AhqIRYRaYmeoXcN2++aIJaMB19DYg7Uipp8sHczyWhAll+dL2+FCdl5lPcoByURKnysdt
	ilNXO8aq9+347nMYTJqm0lN7mC1YYOna2j6GHXDaIyrv9KUdawDerruvNNzb6NdNybNOqDPhxuE+q
	YjYeepcAlIKFOsxY4IOd4bFO/F1z9NUEvlFPmkz6InatjYmWWUyB70n5OlXz4avJsq5UexP8HwfXT
	JcZmOvSJERLLk96iyNcLKYfhuqBoTONuf39OqnWjCzRfh0b19IVW9kjsM8cbTxTnYoWZERKKmMUu1
	TVBzQTrUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWVb-0005Sz-4P; Thu, 09 Jan 2020 12:01:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWVT-0005S0-6U; Thu, 09 Jan 2020 12:01:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E422D31B;
 Thu,  9 Jan 2020 04:01:41 -0800 (PST)
Received: from [10.1.32.29] (e122027.cambridge.arm.com [10.1.32.29])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF2CD3F534;
 Thu,  9 Jan 2020 04:01:38 -0800 (PST)
Subject: Re: [PATCH v2 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
To: Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh+dt@kernel.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <79fe7055-c11b-c9f6-64e5-48e3d5687dfe@arm.com>
Date: Thu, 9 Jan 2020 12:01:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_040143_327230_5CF51F16 
X-CRM114-Status: GOOD (  25.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/01/2020 05:23, Nicolas Boichat wrote:
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

It's interesting that it's only the stack that is failing. In hardware there's a dependency: L2->stack->shader - so in theory the shader cores shouldn't be able to power up either. There are some known hardware bugs here though[1]:

	MODULE_PARM_DESC(corestack_driver_control,
			"Let the driver power on/off the GPU core stack independently "
			"without involving the Power Domain Controller. This should "
			"only be enabled on platforms for which integration of the PDC "
			"to the Mali GPU is known to be problematic.");

[1] https://github.com/ianmacd/d2s/blob/master/drivers/gpu/arm/b_r16p0/backend/gpu/mali_kbase_pm_driver.c#L57

It might be worth just dropping the code for powering up/down stacks and let the GPU's own dependency management handle it.

Steve

> 
> So the GPU is probed, but there's an issue when powering up the STACK, not
> quite sure why, I'll try to have a deeper look, at some point.
> 
> Thanks!
> 
> Nicolas
> 
> v2:
>   - Use sram instead of mali_sram as SRAM supply name.
>   - Rename mali@ to gpu@.
>   - Add dt-bindings changes
>   - Stacking patches after the device tree change that allow basic
>     probing (still incomplete and broken).
> 
> Nicolas Boichat (7):
>    dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
>    arm64: dts: mt8183: Add node for the Mali GPU
>    drm/panfrost: Improve error reporting in panfrost_gpu_power_on
>    drm/panfrost: Add support for a second regulator for the GPU
>    drm/panfrost: Add support for multiple power domain support
>    RFC: drm/panfrost: Add bifrost compatible string
>    RFC: drm/panfrost: devfreq: Add support for 2 regulators
> 
>   .../bindings/gpu/arm,mali-bifrost.yaml        |  20 ++++
>   arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 ++
>   arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 104 +++++++++++++++++
>   drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  18 +++
>   drivers/gpu/drm/panfrost/panfrost_device.c    | 108 ++++++++++++++++--
>   drivers/gpu/drm/panfrost/panfrost_device.h    |   7 ++
>   drivers/gpu/drm/panfrost/panfrost_drv.c       |   1 +
>   drivers/gpu/drm/panfrost/panfrost_gpu.c       |  15 ++-
>   8 files changed, 267 insertions(+), 13 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
