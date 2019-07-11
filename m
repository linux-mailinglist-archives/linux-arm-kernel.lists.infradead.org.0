Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D52865A6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HseRFdnGMjOSGFHzvuVQNPL1F5pRh27gk+VK7uW2px8=; b=dIEptkfqZsR6pu
	bzVznPz/NRFsVxYkm+6JuiLnVuU9VWa0hl1EVHicJQuZ9SGrAV90PPew6AD/EcwCmEEbWJ9it69MU
	2bwRBtZ0ohgzB+NVDgZiXSWyphdqCET0G9Fl1BegzsSjSFnx8E7xGQ7jEIPN7SnwNAFI/JnBEriD/
	XFUNZDGf04VGgN922hu/ARH8UbkBL/0L1Er9L+47hXEkBh6zhgNfgnUy21W1e3m/q5d9cpTA++7Jw
	39/Pg4kEmz4BKdOIECTZGh4M6kIZG33/ZcCkkg0qFUaYDQc9Q2Mtl6/Bwepklp6uGwF5qjuhcFYET
	VIHiwsny6LRt6HCZI/hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlay6-000753-V6; Thu, 11 Jul 2019 15:26:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaxh-0006zM-DL
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:26:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so3191874pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 08:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xDOt/R012GpKF8HFEzGHxZ6VjWpUHMuTKXU3bjn70dk=;
 b=XSctE8NXzUrCLSA48gznsH/hlb0BzkA5MbyTNJycR46hL6HiqrgU/6XHxtjagPCsv0
 Vo4OMLScsUWTecg2LnFFpgUXJx7kXpn2DKRdohk/ZxtTbLQTwScsWKBBA/fqN09ZwpZH
 vL25IK6OAQx/Lydn0fgtrOITuktmovLNBnzi7SMhC1mwfgd6PJlGsLNEaFv8FC4zaaDB
 2ZoY2vdtm1JzNKi22EAZ8IjEMtitc645F+sidjRLsoP/lvLgDVE7c6oT+9Q0uQLSUvQ5
 pSTsqU1epdgnfCqfXlB4MjudmmiF77Nmvf1V4DYhkuIQPpNh9YBKJj3cB7MG57BETduu
 Gb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xDOt/R012GpKF8HFEzGHxZ6VjWpUHMuTKXU3bjn70dk=;
 b=JFRMPzC7PXs/fIsTuE0DNO2gYCQrrR+jJ/SBvQL3G5ZRAs45eao+wbEml9Y13y0KCM
 0Dy4S2bGtegNgFsyX+1f6oH1DkkWplm0qu896rAW8Pkgb/NMO6A7uoCBjNUahYk5BzMP
 vgxpK3/1obXP2zni1XvVPXQNeJAh702N4XzLSvBl97bXOx482AM0HlWYU7MKLtHsAYa2
 aDfjL5Pp9/SidEkYWKQdE+/0zhwsMHTZX955ln8tzwxNrVb6HEFtedWA2/KWutdM4ukH
 XhYETbccha+uwfs5HQigI869tDSg3uOqbyMam8c47IG+KMTpmKlYe/JrJFUreg1lxEgi
 Zm7g==
X-Gm-Message-State: APjAAAU2kkWs/DywEFYLi/U8muparIRcgVV754GmJTIs8khnVCjeMddR
 dSk/KQHoihphi0qJPkurQuK1gQ==
X-Google-Smtp-Source: APXvYqwBujVJjsQORJ3cp1UkTkrULW8ipykYaV1DbpWN8jqWqpo9mYpGbrYwdO7z3fWkki2TUSWFgQ==
X-Received: by 2002:a17:902:b713:: with SMTP id
 d19mr5304484pls.267.1562858780510; 
 Thu, 11 Jul 2019 08:26:20 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id c98sm5642922pje.1.2019.07.11.08.26.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:26:19 -0700 (PDT)
Date: Thu, 11 Jul 2019 08:27:30 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v3 14/14] arm64: defconfig: Enable HFPLL
Message-ID: <20190711152730.GN7234@tuxbook-pro>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-15-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625164733.11091-15-jorge.ramirez-ortiz@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_082621_772029_F4E8C67A 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:

> The high frequency pll is required on compatible Qualcomm SoCs to
> support the CPU frequency scaling feature.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index fbbc065415d4..7cc4ad24dfe5 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -671,6 +671,7 @@ CONFIG_MSM_MMCC_8996=y
>  CONFIG_MSM_GCC_8998=y
>  CONFIG_QCS_GCC_404=y
>  CONFIG_SDM_GCC_845=y
> +CONFIG_QCOM_HFPLL=y
>  CONFIG_HWSPINLOCK=y
>  CONFIG_HWSPINLOCK_QCOM=y
>  CONFIG_ARM_MHU=y
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
