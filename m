Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C981BAE89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mdi1szUf/f2CCYcCz+EnyBSoES+3hobI91+irpNelVc=; b=sXG1Gqp3GWimlIvLe7lNUzuKi
	s10Mf17fDWESlucoNXNv8I7Ce3R3nFf+VQPjq3+gZ5kDYyjDxQmbSsfuS/6IXqAd7lTYkQTvwcmk4
	xENECIPjCSvpkWaFu0BTLkHVNlGnmhBLgZlXrkq6Vpu0AMaOiFji8MdroPYR/kDUxugWIIuQ/Rm8W
	+hMWDyxdHcJlm2Fne4ExAJeEBKF8ChlboI/nOMoHSq3qH3ZbA7cLi4vaj1HOFnVPeZBWuOgNlrnLB
	B6BZB/UDvzl/rrzpvDfzZ4nE8gmBHhEmxGDvgBFk9Bx6E15erU1da/J0lhZOh63Iz9vtHdmU/RPF1
	4eu9w5GzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9ps-0006wu-2N; Mon, 27 Apr 2020 19:54:36 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9pi-0006wS-Sc
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:54:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RJsDMO007386;
 Mon, 27 Apr 2020 14:54:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588017253;
 bh=dwly5aN+uAHdquqvnejrhvQPF5JgoVydz5AkBpeUbCI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=K3QM6nurhmKSBibvGWCs0BBJ8FGXQGmtn2TASc56KnQTAqVf0IG5ni6P6f52VSRzM
 gZZIdiWq1bmYtxQG0MkSjgY5f4x8b777rx/bpX4Y4Tg+RnYbla+LWoCd4aizR16aQO
 fBugqJ99DU6sWe/if/S3ljKYaNfit6OM5ZRjsVB4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RJsDBm005665;
 Mon, 27 Apr 2020 14:54:13 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 14:54:12 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 14:54:12 -0500
Received: from [10.250.48.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RJsBYI080761;
 Mon, 27 Apr 2020 14:54:11 -0500
Subject: Re: [PATCH 4/4] remoteproc/k3-dsp: Add support for C71x DSPs
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-5-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <59ac4e15-205a-7205-d013-da91b7426688@ti.com>
Date: Mon, 27 Apr 2020 14:54:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200325204701.16862-5-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_125426_999201_17B8C603 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/25/20 3:47 PM, Suman Anna wrote:
> The Texas Instrument's K3 J721E SoCs have a newer next-generation
> C71x DSP Subsystem in the MAIN voltage domain in addition to the
> previous generation C66x DSP subsystems. The C71x DSP subsystem is
> based on the TMS320C71x DSP CorePac module. The C71x CPU is a true
> 64-bit machine including 64-bit memory addressing and single-cycle
> 64-bit base arithmetic operations and supports vector signal processing
> providing a significant lift in DSP processing power over C66x DSPs.
> J721E SoCs use a C711 (a one-core 512-bit vector width CPU core) DSP
> that is cache coherent with the A72 Arm cores.
> 
> Each subsystem has one or more Fixed/Floating-Point DSP CPUs, with 32 KB
> of L1P Cache, 48 KB of L1D SRAM that can be configured and partitioned as
> either RAM and/or Cache, and 512 KB of L2 SRAM configurable as either RAM
> and/or Cache. The CorePac also includes a Matrix Multiplication Accelerator
> (MMA), a Stream Engine (SE) and a C71x Memory Management Unit (CMMU), an
> Interrupt Controller (INTC) and a Powerdown Management Unit (PMU) modules.
> 
> Update the existing K3 DSP remoteproc driver to add support for this C71x
> DSP subsystem. The firmware loading support is provided by using the newly
> added 64-bit ELF loader support, and is limited to images using only
> external DDR memory at the moment. The L1D and L2 SRAMs are used as scratch
> memory when using as RAMs, and cannot be used for loadable segments. The
> CMMU is also not supported to begin with, and the driver is designed to
> treat the MMU as if it is in bypass mode.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>   drivers/remoteproc/ti_k3_dsp_remoteproc.c | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> index 7b712ef74611..48d26f7d5f48 100644
> --- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> +++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
> @@ -649,6 +649,9 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
>   
>   	rproc->has_iommu = false;
>   	rproc->recovery_disabled = true;
> +	/* C71x is a 64-bit processor, so plug in generic .sanity_check ops */
> +	rproc->ops->sanity_check = rproc_elf_sanity_check;
> +

Will drop this on the next version, this is no longer needed after 
commit e29ff72b7794 ("remoteproc: remove rproc_elf32_sanity_check") 
currently on rproc-next.

regards
Suman


>   	kproc = rproc->priv;
>   	kproc->rproc = rproc;
>   	kproc->dev = dev;
> @@ -789,6 +792,12 @@ static const struct k3_dsp_mem_data c66_mems[] = {
>   	{ .name = "l1dram", .dev_addr = 0xf00000 },
>   };
>   
> +/* C71x cores only have a L1P Cache, there are no L1P SRAMs */
> +static const struct k3_dsp_mem_data c71_mems[] = {
> +	{ .name = "l2sram", .dev_addr = 0x800000 },
> +	{ .name = "l1dram", .dev_addr = 0xe00000 },
> +};
> +
>   static const struct k3_dsp_dev_data c66_data = {
>   	.mems = c66_mems,
>   	.num_mems = ARRAY_SIZE(c66_mems),
> @@ -796,8 +805,16 @@ static const struct k3_dsp_dev_data c66_data = {
>   	.uses_lreset = true,
>   };
>   
> +static const struct k3_dsp_dev_data c71_data = {
> +	.mems = c71_mems,
> +	.num_mems = ARRAY_SIZE(c71_mems),
> +	.boot_align_addr = SZ_2M,
> +	.uses_lreset = false,
> +};
> +
>   static const struct of_device_id k3_dsp_of_match[] = {
>   	{ .compatible = "ti,j721e-c66-dsp", .data = &c66_data, },
> +	{ .compatible = "ti,j721e-c71-dsp", .data = &c71_data, },
>   	{ /* sentinel */ },
>   };
>   MODULE_DEVICE_TABLE(of, k3_dsp_of_match);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
