Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0B339A4D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXrtg7F4sZ+is8k2DoXXrTZU1U+c9aV/ETJ6bEmKfN8=; b=TLyc2aofa2CeXC
	r+j30vxk19LRMmXzXvWSQD4kSwcsVTvmZtg7yQtKYCHJ2InQU4EKax1NGRqZdQ/GtUqbP5460G2np
	Jq6dsIRUoxpIRcOL2p2LF8ZLZLvuHLQORPXW170fjApemmXeUkpjbUIuchoUnbEd4NBOiYb4o2Qhk
	qsWaBecwLzSDtI+fVtXr1fXLDq5UdSTrO7wXcM12TLo0525XljZqTveUfcHspLgxn4/7m08Asl8fb
	taFA4W/FU3ThXKZ7+JG1lrSmAt3hl4GAddZ+39rpZQWdjY+HH5olwl/PCRkwj1mBA0A5ZVHNmbg8L
	eR7ntVCF5dr/E+NXg1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZS6L-0001Jx-2y; Sat, 08 Jun 2019 03:33:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZS6C-0001Iq-U6
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:32:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so1527442plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OC4ha/gavEmQ9A1g/pl9ZGbgw4r/3XC6pB7BtZ0jhE0=;
 b=m6KBNxDE2SKGyhMty2QeqhwjxXrI8BuN494ubr8ejix2tRtzacu7vJAR9Hs5i2q5F8
 5mjBF6z9SHYnxu+ReKYZyAQW2MDGYXCVdFAwVfYP4Vpc2/OJxR2lLEu4zl+yc6t3r7u7
 R7Gql7Y81TjdALjHPpYhruVZauxUVGFFLKTh+Pf0y9JtDWux7EITRf5FZ76ii8YKY+bc
 rFINbch2+tJrIKuq6FUllUvcrZLYZrGKhqKv94s0ErCZUtCtUSzVAn3aqdvQt+RjrfTP
 JHRlX4E9kdnYolMBVwq/phhgqpnmvu7sTuVSX6d8RwzRbBvvHkRxzFyid/W4ur35QzDK
 RAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OC4ha/gavEmQ9A1g/pl9ZGbgw4r/3XC6pB7BtZ0jhE0=;
 b=BNpVcJAUv+xYzML3uPKgHA5iKVYDsBAHz+ZyP6tcVDX+cJXq2kZixL4QJ5Ujmlz6ML
 QwI1pHnyrR2BUMIh8vMc1SI3jhfZlm/4I92sjwS+UsEvG1dTQPtmSRE2QAi/zLUXnxgW
 BMWlWDFKgZz7s4fV4CEA9fsswiD6IvPGLaFek5fRRnhHgOnMWuhjfTIERX9ovg+CZyIj
 R+FF8+9gh08+YWstTTLE30OcA5VisaMRerart0JMlO93j4+F5sTTQ9AkcGkQgyjk5wbj
 Cok2dQbzteS9VkfFAufMaWUcyx5pYsOLO805zQW5M0/hPOs6BGAWO3d9OArveTQR8Z85
 0cMw==
X-Gm-Message-State: APjAAAXD+XbylQTSD2LWtUck/vgNHG2H/Fjf915k4PzS06SqL/Kv1EwD
 tMcFLSgxcZyOTbPPrilxDCSgwg==
X-Google-Smtp-Source: APXvYqyvURItZPpNCAxXxcxVo3Fg5EhKFWFD5HtYD68smQYpsMoXzfLjZs+9l9buosxYpioclI20Ww==
X-Received: by 2002:a17:902:6b03:: with SMTP id
 o3mr59043693plk.85.1559964776069; 
 Fri, 07 Jun 2019 20:32:56 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m6sm3546820pjl.18.2019.06.07.20.32.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:32:55 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:32:53 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 6/6] arm64: defconfig: Enable qcom ipq6018 clock and
 pinctrl
Message-ID: <20190608033253.GF24059@builder>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-7-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559754961-26783-7-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_203256_995145_978E1392 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, sboyd@codeaurora.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Jun 10:16 PDT 2019, Sricharan R wrote:

> These configs are required for booting kernel in qcom
> ipq6018 boards.
> 
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 4d58351..abf64ee 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -373,6 +373,7 @@ CONFIG_PINCTRL_MAX77620=y
>  CONFIG_PINCTRL_IMX8MQ=y
>  CONFIG_PINCTRL_IMX8QXP=y
>  CONFIG_PINCTRL_IPQ8074=y
> +CONFIG_PINCTRL_IPQ6018=y
>  CONFIG_PINCTRL_MSM8916=y
>  CONFIG_PINCTRL_MSM8994=y
>  CONFIG_PINCTRL_MSM8996=y
> @@ -646,6 +647,7 @@ CONFIG_COMMON_CLK_QCOM=y
>  CONFIG_QCOM_CLK_SMD_RPM=y
>  CONFIG_QCOM_CLK_RPMH=y
>  CONFIG_IPQ_GCC_8074=y
> +CONFIG_IPQ_GCC_6018=y
>  CONFIG_MSM_GCC_8916=y
>  CONFIG_MSM_GCC_8994=y
>  CONFIG_MSM_MMCC_8996=y
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
