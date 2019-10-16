Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D49ED8872
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 08:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqEZRIQw24yWhiGZcB9yMlgupGcC9m5zVN/JRwWW4Vk=; b=hxVOPDMyItPVQJ
	SEGQzhvf1LQPQTnl1u5GgW3FLkCg77ZqoDJzIZfJJREaLSFVsE5iKdgAOhexaR5RmUPmXhohWMuVb
	tIaWWAtCMajuhwwyv3gpvWG5H3D7joZ5/WDpxTzIyrpflGfxMhgPdNkXUnmzLpU54ZvOT2N+1849n
	oL6jtg1x8y2KhWBDMqnxrtZCQgMH6a7xWW0veJkFwSZuEcIoMaKAAnI9/6gMBYfZjuLfybte6Zme6
	cOhcTaIgwPqESVYmUsbSQ3eXFslXlpEOq8Mm3su13KbS1z+B152ScvG7eiBSteYfaa50vNP4fmPyi
	TDRbgSdk3fICyVOXS1Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKcPY-0001uB-8o; Wed, 16 Oct 2019 06:03:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKcPQ-0001th-GB
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 06:03:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id p12so4278610pgn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 23:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T3AaA+xd4mdUluLNxKlBwgWXimT50aOOjAm086WDcRg=;
 b=k14SKKFhg+MCKc7BkdTTbY/cz6o/SmHSY8ToObQ0N3Ebxydl6rVf5aFzX7VN6car4K
 MVLvLuo5tPDV1vE2Y1g0BfCdHJLPN9IkyNreQ6v3qLFCXgz+OndJti7vTbUVkurFv98N
 VLVYRHiPkPB10KrEmCxI+DOIuzVE28mfq1VacfbhjBxQlrdyZ0ucWQQuIJSMhggmP4S5
 /XupeyH/jxzmR9mNFa9jdSxMGEUpFhm/gq2qcmvUSmanqapuzD+B4kCS66LqLc/YWS15
 W92yFJU1W4GTbix9eHzEB6/PeZJa+5lUgC4KWiOVo8JPqgyQGGyZrCAxByTKeAZW75yg
 ZJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T3AaA+xd4mdUluLNxKlBwgWXimT50aOOjAm086WDcRg=;
 b=MIyTRIi5NW6G8/TsV8NfT2uvi9GNeCT0ccomMSJd2GCqGdh5FPoYbLmgm27xY6nW/m
 RshIFInB6tQB05kX5JlR+j0d0hw79PD01c6IUnoQKOiWtvjxmNQpJrG1Qb9hgsF9JzyR
 W+slFmFeVCbXCJkzqBo/cEktkjs2D/ydSnPkm4Dmxu0ha9Lstp7b0uFbVII7KOoAAxhD
 l6IxEKWWJSI/kuv1srf/ud2d4gU4OhOt+abj/LZrFtrz5qXxvlTphvPJePH68ltBi3uG
 WHnpKAMhwaxq7EyGmY8tPMZLz3TRs2zQHtMzX/meB87/+clxoW/NgHoFMWBCpyqnHlaS
 qTrg==
X-Gm-Message-State: APjAAAW3bHnkr08nYqmQ59zVHbvoGCUWbjrv6++AgOE12/zXoE4RHfNJ
 aGMusjl9Ykkw5kcDNwvVe0VlVg==
X-Google-Smtp-Source: APXvYqzLK05iyhTKyl1v2KloPGgrLB7LEacVf7SN+L9WsqFPB+PouwGTpqa5kkyY5DfZba02HDvQOg==
X-Received: by 2002:a65:6091:: with SMTP id t17mr398775pgu.159.1571205822925; 
 Tue, 15 Oct 2019 23:03:42 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p24sm9426321pgc.72.2019.10.15.23.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 23:03:42 -0700 (PDT)
Date: Tue, 15 Oct 2019 23:03:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Olof Johansson <olof@lixom.net>, Maxime Ripard <mripard@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH] arm64: defconfig: Enable Qualcomm remoteproc dependencies
Message-ID: <20191016060339.GB4731@tuxbook-pro>
References: <20191009001442.15719-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009001442.15719-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_230344_545526_D5B554ED 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Alex Elder <elder@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 08 Oct 17:14 PDT 2019, Bjorn Andersson wrote:

> Enable the the power domains, reset controllers and remote block device
> memory access drivers necessary to boot the Audio, Compute and Modem
> DSPs on Qualcomm SDM845.
> 
> None of the power domains are system critical, but needs to be builtin
> as the driver core prohibits probe deferal past late initcall.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Thanks Alex & Vinod!

Applied.

> ---
>  arch/arm64/configs/defconfig | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index c9a867ac32d4..42f042ba1039 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -732,10 +732,13 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
>  CONFIG_RPMSG_QCOM_SMD=y
>  CONFIG_RASPBERRYPI_POWER=y
>  CONFIG_IMX_SCU_SOC=y
> +CONFIG_QCOM_AOSS_QMP=y
>  CONFIG_QCOM_COMMAND_DB=y
>  CONFIG_QCOM_GENI_SE=y
>  CONFIG_QCOM_GLINK_SSR=m
> +CONFIG_QCOM_RMTFS_MEM=m
>  CONFIG_QCOM_RPMH=y
> +CONFIG_QCOM_RPMHPD=y
>  CONFIG_QCOM_SMEM=y
>  CONFIG_QCOM_SMD_RPM=y
>  CONFIG_QCOM_SMP2P=y
> @@ -780,6 +783,8 @@ CONFIG_PWM_ROCKCHIP=y
>  CONFIG_PWM_SAMSUNG=y
>  CONFIG_PWM_SUN4I=m
>  CONFIG_PWM_TEGRA=m
> +CONFIG_RESET_QCOM_AOSS=y
> +CONFIG_RESET_QCOM_PDC=m
>  CONFIG_RESET_TI_SCI=y
>  CONFIG_PHY_XGENE=y
>  CONFIG_PHY_SUN4I_USB=y
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
