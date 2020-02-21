Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E91316866B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2GYgCS3kloMrA0mqx9vjXJLPT9zC8Zp8BRa6Wj//2I=; b=jOfnR8ecWr/Owe
	lKyyJFZSRAChBY88F6rJlA9DHK6q/SdJqvw+S/V4syV+kS8cADn5SZVRzKIV54RTG4zfNMkUL9zHI
	7eSRE7ISJ0CKea4hJhLc0RNPhMR1gv1pruQk3efZSyhsZD2T59nupMlPA0m4IWc/nvG5Shr2y2io1
	8Z1ALBu1qhj43egMSffcbYgHWZdQzPvpoyrwL3PNC8ghJWpxROKdn9dWzo5coUAuAQZCLQ9Md6rdp
	YKFBiJ5TSJok4HycR0nk5YGwCAwks4HC+50esU+8vB+DJUrDFeegwpAL6LCbs7ow6SxF2tOF/kOdf
	bKBC1l8PEwxa3R8lwsQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Cy9-0000yd-NU; Fri, 21 Feb 2020 18:24:09 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Cxz-0000y6-8h
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:24:00 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01LINRiC077066;
 Fri, 21 Feb 2020 12:23:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582309407;
 bh=lchlnnPAjiiKU0zsPssvMafzXIOdA8V9mB6SQZdccDY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TcfMptJAW10/RSN9gYSAENew7FvPV1wKijAcbae0IROyrUGNJEapJoak9NxhKEX6N
 Qmov/8AsKwv1hwWMzbiQJMhUf6m1QJZtlwYszadlI0M0sS+FngBKPls6kvesiLkw6T
 PH+16H596W45mZv2RGQqhUdPKLPFdSzDy8ZZWtqw=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01LINR1u042631
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 21 Feb 2020 12:23:27 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 21
 Feb 2020 12:23:27 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 21 Feb 2020 12:23:27 -0600
Received: from [10.250.77.18] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01LINQtH088349;
 Fri, 21 Feb 2020 12:23:26 -0600
Subject: Re: [PATCH] ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not
 set
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20200221180901.15812-1-tony@atomide.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <a811c0d7-5458-ea2e-cb39-4d6aafa3df87@ti.com>
Date: Fri, 21 Feb 2020 13:23:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200221180901.15812-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_102359_392502_E140E892 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, kbuild test robot <lkp@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Marc Zyngier <maz@kernel.org>, Steven Price <steven.price@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/21/20 1:09 PM, Tony Lindgren wrote:
> Recent omap changes added runtime checks to use omap_smccc_smc()
> when optee is configured in dts. As the omap-secure code can be
> built for ARMv6 only without ARMv7 and use custom smc calls, we
> now get a build error:
> 
> omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'
> 
> Let's just ifdef out omap_smccc_smc() unless the CPU has selected
> CONFIG_HAVE_ARM_SMCCC. The other option discussed was to add an
> inline function to arm-smccc.h, but we'd still also have to add
> ifdef around omap_smccc_smc() to avoid a warning for uninitialized
> value for struct arm_smccc_res in omap_smccc_smc(). And we probably
> should not start initializing values in arm-smccc.h if disabled.
> 
> Let's also warn on trying to use omap_smccc_smc() if disabled as
> suggested by Andrew F. Davis <afd@ti.com>.
> 
> Fixes: 48840e16c299 ("ARM: OMAP2+: Use ARM SMC Calling Convention when OP-TEE is available")
> Reported-by: kbuild test robot <lkp@intel.com>
> Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
> Cc: Andrew F. Davis <afd@ti.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Russell King <rmk+kernel@arm.linux.org.uk>
> Cc: Steven Price <steven.price@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---


Looks good to me,

Acked-by: Andrew F. Davis <afd@ti.com>


>  arch/arm/mach-omap2/omap-secure.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/mach-omap2/omap-secure.c b/arch/arm/mach-omap2/omap-secure.c
> --- a/arch/arm/mach-omap2/omap-secure.c
> +++ b/arch/arm/mach-omap2/omap-secure.c
> @@ -77,6 +77,7 @@ u32 omap_secure_dispatcher(u32 idx, u32 flag, u32 nargs, u32 arg1, u32 arg2,
>  	return ret;
>  }
>  
> +#ifdef CONFIG_HAVE_ARM_SMCCC
>  void omap_smccc_smc(u32 fn, u32 arg)
>  {
>  	struct arm_smccc_res res;
> @@ -85,6 +86,12 @@ void omap_smccc_smc(u32 fn, u32 arg)
>  		      0, 0, 0, 0, 0, 0, &res);
>  	WARN(res.a0, "Secure function call 0x%08x failed\n", fn);
>  }
> +#else
> +void omap_smccc_smc(u32 fn, u32 arg)
> +{
> +	WARN_ONCE(1, "smccc is disabled\n");
> +}
> +#endif
>  
>  void omap_smc1(u32 fn, u32 arg)
>  {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
