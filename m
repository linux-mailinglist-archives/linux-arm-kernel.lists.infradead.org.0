Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9872A1C98A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 20:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fCmmTd9ZGmvpBlYj1vC10GlvOsTDMinD8u6/V4rARrE=; b=qMCs9QPgP+EmgmXmADGXORnKo
	4ssLozwUQEAiSUZpHyOyGavwUp+18VoMfhzfHsb5NFuabLlhS8rmZp/FK2XFQA7r1BZJE2CwLrqfC
	NiK9FPOuvol7z/t3DC0QBuO6PiBgEZZX560qM0mPUJBCyQVVcXSjfn+Y6eXKUlFrhqgwgL8J/hx4s
	G8y4Iqh8lOiw97JUyZnaaSgWkxz1lhgzu3c8cHkZKHhwg0Ly7oWSnBLtbXeWG7awxALnQYkamyPfN
	g6ZSMXrmgg1pcP0o1adPjiNYN7Mf80LOyBZ5P5XD6fyHuNBoKZ2Y3zzS2IPh+i1zbOdE3ZHoXYXhz
	E+67iJJjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWksS-0004vN-4o; Thu, 07 May 2020 18:04:08 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWksH-0004tr-ER
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 18:03:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588874637; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=jxc6IOMXReaSlkhn51fI24AkRcV8/V9PR5zPvCqwQdw=;
 b=lQ7LrqFYpf9Q2a8Idi+pzbHVvC75eapdjXw8ePY+N0saSD+cIgeAdGatnYVns3zXkQld8yQ/
 hiQhN2cgycwbgLpQ8Q2L+fMLTv+dummWIN+4afYpgJEKP39VaEWgCX+zz2M1hx02Zch4mfsR
 OFJbEjdQaFdQmhvpVnkZdkd65XE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb44d8c.7f183f857df8-smtp-out-n05;
 Thu, 07 May 2020 18:03:56 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 87126C432C2; Thu,  7 May 2020 18:03:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rishabhb)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9FFB5C433D2;
 Thu,  7 May 2020 18:03:55 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 11:03:55 -0700
From: rishabhb@codeaurora.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 4/4] arm64: defconfig: Remove QCOM_GLINK_SSR
In-Reply-To: <20200423003736.2027371-5-bjorn.andersson@linaro.org>
References: <20200423003736.2027371-1-bjorn.andersson@linaro.org>
 <20200423003736.2027371-5-bjorn.andersson@linaro.org>
Message-ID: <a783c4f600ea40b9242ccd383f464bb2@codeaurora.org>
X-Sender: rishabhb@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_110358_067964_26CC6487 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc-owner@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Lew <clew@codeaurora.org>,
 Andy Gross <agross@kernel.org>, Sibi <sibis@codeaurora.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-22 17:37, Bjorn Andersson wrote:
> Remove the QCOM_GLINK_SSR option from the arm64 defconfig, as the 
> module
> is assimilated by QCOM_GLINK - which is selected by other means.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Acked-by: Rishabh Bhatnagar <rishabhb@codeaurora.org>

>  arch/arm64/configs/defconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/configs/defconfig 
> b/arch/arm64/configs/defconfig
> index f9eefb5940ca..f26a0b6ea0e8 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -838,7 +838,6 @@ CONFIG_FSL_MC_DPIO=y
>  CONFIG_IMX_SCU_SOC=y
>  CONFIG_QCOM_AOSS_QMP=y
>  CONFIG_QCOM_GENI_SE=y
> -CONFIG_QCOM_GLINK_SSR=m
>  CONFIG_QCOM_RMTFS_MEM=m
>  CONFIG_QCOM_RPMH=y
>  CONFIG_QCOM_RPMHPD=y

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
