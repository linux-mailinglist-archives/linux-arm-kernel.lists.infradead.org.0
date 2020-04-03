Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AAD19CFEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 07:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDNOZKKKe9GEvgs/gpEcmfRADp4e/1a/c2AThNIumrE=; b=AC4JGXwtaRcmBu
	49Wn2JN8HIo6hKcS28MKYIxfA4//2MEJru7FWF2cva7iw7mvxdWrlyRpmfyNAGl9gH53sZhDsNRRw
	+qb7B18oX0Y9iSt00zye44e9GwSB5eNoyAESk0zEx6ombwBvmIe6rx44oJTSm7/AIFFvoXL39qAwI
	QTdXfh0wv0mR2ZJVtftVKYiEpVJKqIf1ClouHf8fgarfYTTnZR+EahP4Ix9xX1IhdxdeiS1DDGBhX
	yDvfApduhC8a1XXA3uFfdNVDKMyn122NSGDz952PKJJ8mZcRCJbY41wFJtLCpAX+i1vfPPd2iaW2I
	764lV7qb/e3sK8y3N+cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFCS-0008VT-61; Fri, 03 Apr 2020 05:49:04 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFCJ-0008V5-VL
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 05:48:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id k191so2980724pgc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 22:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lEuCnG1hC7hkoMeTpMkJ0ZOk4ZF8anIyWsJ+Bib4RJ0=;
 b=HWMgdrTg/4e1ihpCNZekctF8+royp5qDM1p33E2eOKXySwQQ2En/uDVttrXIAyWHaL
 PMnfwUshIQSoDhv/c1zJNKTVJN9UVnmvJCxLtoYn3RBZ/Ah6EKigavNaC/AYLBlR36d6
 em4RzAE/FtI5uPKmSEjXsKn13EI1pf1mUHwVDBjNb7f1xBzqQbewdm8onbDSNakKaYPF
 +EMx1Rw2WYwNFg6ue8MwGd4ZU4CASY/6/tVzjrR1ydQqtEeVdACUnXKGal2lx+G8W4bQ
 fyDVXBKuUP2MvaZPbRJ24tclCtRaVSudXvULkDSTV3WWvh6hVot/cHda+m6ucwNoV7ZO
 QO3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lEuCnG1hC7hkoMeTpMkJ0ZOk4ZF8anIyWsJ+Bib4RJ0=;
 b=rexzjw8V+kpMIxRzHwMvfSfXK4p9ewatRXqQqFRqUaPJI/lHhxfRAx3POsJwfyuc51
 /iQnn+mjZJO7eaAAO74VqM/wvwcEpcFKaLToxBT2bX9yJy29n7UP6+yynmtOUuw8RApj
 i5MdcKbLO11naa5s+8MTSTphu7YcvLiG0JJsN7x1rejECWiEM2JxM5ZuKIiyFUrNkP46
 0vrJWTBSk7ekcyNWHAzBGw+1LelVqaaScecsIRLxTnYE+8VhxprHWqaySQUOEL7COkYb
 uY0yiZ/VSBHFOghdq9x2qsZhfMWSY/a1UeD2apwCGC8tVAhVwrgJoPsCTW/GlA4VH+mD
 5zNA==
X-Gm-Message-State: AGi0PuaMuTiD5CMxNliYC4mxVduL0X1kLLSTH7+gD2KKqCtLVhd2fay1
 WDR4ctkEFClJpGcNFVZpYHzvxXOBtb8=
X-Google-Smtp-Source: APiQypKsdkC9AIQMLLAQSU0jy4LZoi7FwFTrBBdJUcSopHnRoHBK/wTF3hx/pHxFe0Cc1gfYJ2khhw==
X-Received: by 2002:a63:230f:: with SMTP id j15mr4139593pgj.393.1585892934786; 
 Thu, 02 Apr 2020 22:48:54 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id p22sm4646330pgn.73.2020.04.02.22.48.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 22:48:54 -0700 (PDT)
Date: Fri, 3 Apr 2020 11:18:52 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] cpufreq: Select schedutil when using big.LITTLE
Message-ID: <20200403054852.cx5sv27kt7wjgfa5@vireshk-i7>
References: <20200402080239.7471-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402080239.7471-1-linus.walleij@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_224856_529361_5C8D0782 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02-04-20, 10:02, Linus Walleij wrote:
> When we are using a system with big.LITTLE HMP
> configuration, we need to use EAS to schedule the
> system.
> 
> As can be seen from kernel/sched/topology.c:
> 
>  "EAS can be used on a root domain if it meets all the following conditions:
>   1. an Energy Model (EM) is available;
>   2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
>   3. no SMT is detected.
>   4. the EM complexity is low enough to keep scheduling overheads low;
>   5. schedutil is driving the frequency of all CPUs of the rd;"
> 
> This means that at the very least, schedutil needs to be
> available as a scheduling policy for EAS to work on these
> systems. Make this explicit by defaulting to the schedutil
> governor if BIG_LITTLE is selected.
> 
> Currently users of the TC2 board (like me) has to figure these
> dependencies out themselves and it is not helpful.
> 
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Cc: Vincent Guittot <vincent.guittot@linaro.org>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/cpufreq/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/Kconfig b/drivers/cpufreq/Kconfig
> index bff5295016ae..873aefd96cf2 100644
> --- a/drivers/cpufreq/Kconfig
> +++ b/drivers/cpufreq/Kconfig
> @@ -36,6 +36,7 @@ config CPU_FREQ_STAT
>  
>  choice
>  	prompt "Default CPUFreq governor"
> +	default CPU_FREQ_DEFAULT_GOV_SCHEDUTIL if BIG_LITTLE
>  	default CPU_FREQ_DEFAULT_GOV_USERSPACE if ARM_SA1100_CPUFREQ || ARM_SA1110_CPUFREQ
>  	default CPU_FREQ_DEFAULT_GOV_PERFORMANCE
>  	help

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
