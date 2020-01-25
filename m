Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB4514949B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 11:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6CkrVR1bt8mu/hlWwUaMmDucfoutkb+/kHAa7UN4ek=; b=oHsLM2p9hEM4ei
	EkfQ7VFpyZzDcaSQLm3ilK7w+DcGINleikA6HuIlSvXTvNr0NlYBqSumzeEPT2igHuMp+wiVHT5Ek
	E3u6u1qiZxzm3T/2gdY/DII2fNV0UqX8taGk1EfMnqlwcarXyxQ06lL0ABZxaPdZQwTxxIkGjxfpz
	1M6zxJCiTXjqY/OiyYwI51ZN87/easZGZL0cTYHmFHwD9ssj+2a6oyg7JQkZ4qj/VBKSi5YT21zLR
	IBXoKKbkzKcKnRBByvvLy/4XLdwyqh0IqQ1EbFqoBwiLnScuQHxh6yCW0U4736CD5cL1gTB2megou
	SiC5SDmiB9pvNWts1zhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivIxb-0001H7-2b; Sat, 25 Jan 2020 10:46:39 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivIxQ-0001GW-M9
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 10:46:29 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id C7F323EA42;
 Sat, 25 Jan 2020 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1579949186;
 bh=20OLpT9AQImoBtwxHWnQUH6B+FTQGj1F0WZXTR5Jw4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K3SyMX5cFR0sr1VBUvV0khHYzaXHHW/So/Kx2ccr2Yv2fYzu7jfEfFzybpz850Oov
 N5vmlOnIY3GOaFALeSK5M2fqmHFVBybX8GzsQhb5lsaQiq5c/jSRoAH0xGLFwEABuN
 3ktfx6GbKoZhHN46ngr80N0fqG38WVmUDdSV49Ko=
Date: Sat, 25 Jan 2020 05:46:25 -0500
From: Brian Masney <masneyb@onstation.org>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH 2/2] ARM: qcom_defconfig: Enable QRTR
Message-ID: <20200125104625.GB5646@onstation.org>
References: <20191104210943.101393-1-luca@z3ntu.xyz>
 <20191104210943.101393-2-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104210943.101393-2-luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_024628_783231_E16EA280 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Andy Gross <agross@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luca,

On Mon, Nov 04, 2019 at 10:09:41PM +0100, Luca Weiss wrote:
> This option is useful on msm8974, so enable it.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm/configs/qcom_defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
> index 94d5e1a8c61a..a71201fdc8c9 100644
> --- a/arch/arm/configs/qcom_defconfig
> +++ b/arch/arm/configs/qcom_defconfig
> @@ -45,6 +45,8 @@ CONFIG_IP_ROUTE_VERBOSE=y
>  CONFIG_IP_PNP=y
>  CONFIG_IP_PNP_DHCP=y
>  # CONFIG_IPV6 is not set
> +CONFIG_QRTR=y
> +CONFIG_QRTR_SMD=y

Both of these should be modules. I verified on the Nexus 5 that booting
the modem works in this configuration.

Thanks for your work on the modem!

Brian

>  CONFIG_CFG80211=m
>  CONFIG_MAC80211=m
>  CONFIG_RFKILL=y
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
