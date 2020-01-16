Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C285513DECB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:33:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sv06YVO1NGnXwEuipBOVKAOsoM7FVvMkuopmhD0K3K0=; b=NldBkx6Q83LEmg
	drDdftca0fxpgW8cCEhW7hJtMJQ6HoIJtBJO6xoL2gCv3iduAiajtvEX9vZjVL7NLUtgJJkxftoa8
	lhWPvhyDKXkgc2ufABXf+UHbGmTO7syi8o4q+mRDWXDu9lnw3rQTTY8rgajhiABlGzf2uMrQcpovN
	0uUG/SV9kOj/8MWaiO9bqCaij18rdoYcW/LxgEEXr5Fl8LIlm0j5o0xlZQ8F1R+2PDhqT3EfrbD9V
	jdkRD012MgKbWLakpjwzsGQv/sLH6qrhLBIpORfpcZyJacTPsuAc118O1WbuNzIIFoRbp41cobBGO
	XEFGxhAonQUmHBfcR20w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is78h-0006T9-PG; Thu, 16 Jan 2020 15:32:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is78W-0006SR-7Q
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:32:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 557F42081E;
 Thu, 16 Jan 2020 15:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579188763;
 bh=2KRjK1V41mmh2xoe9yYAj/6+Sq91KlveZCbfKn1X4x0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SldGcIE8mha8oKPdrIJb8hthCy0q6gcgCf67U/lpFtQ/XcsdwrAw3YY2m97nPOltB
 FkCxoc/5h7MIqK71DwsGfEgIyrYs6sWdsl2zuc/d8GPBOM+D8muFITxxgPfy62MAfT
 HCM5EYBCOfA46QiSbtnvOL1lIN51VTMvF2KX2IDM=
Date: Thu, 16 Jan 2020 15:32:38 +0000
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, jhugo@codeaurora.org
Subject: Re: [PATCH] arm64: Add KRYO{3,4}XX CPU cores to spectre-v2 safe list
Message-ID: <20200116153235.GA18909@willie-the-truck>
References: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_073244_291067_29405DE9 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, James Morse <james.morse@arm.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Jeffrey]

On Thu, Jan 16, 2020 at 07:49:12PM +0530, Sai Prakash Ranjan wrote:
> KRYO3XX silver CPU cores and KRYO4XX silver, gold CPU cores
> are not affected by Spectre variant 2. Add them to spectre_v2
> safe list to correct ARM_SMCCC_ARCH_WORKAROUND_1 warning and
> vulnerability sysfs value.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  arch/arm64/include/asm/cputype.h | 6 ++++++
>  arch/arm64/kernel/cpu_errata.c   | 3 +++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
> index aca07c2f6e6e..7219cddeba66 100644
> --- a/arch/arm64/include/asm/cputype.h
> +++ b/arch/arm64/include/asm/cputype.h
> @@ -85,6 +85,9 @@
>  #define QCOM_CPU_PART_FALKOR_V1		0x800
>  #define QCOM_CPU_PART_FALKOR		0xC00
>  #define QCOM_CPU_PART_KRYO		0x200
> +#define QCOM_CPU_PART_KRYO_3XX_SILVER	0x803
> +#define QCOM_CPU_PART_KRYO_4XX_GOLD	0x804
> +#define QCOM_CPU_PART_KRYO_4XX_SILVER	0x805

Jeffrey is the only person I know who understands the CPU naming here, so
I've added him in case this needs either renaming or extending to cover
other CPUs. I wouldn't be at all surprised if we need a function call
rather than a bunch of table entries...

That said, the internet claims that KRYO4XX gold is based on Cortex-A76,
and so CSV2 should be set...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
