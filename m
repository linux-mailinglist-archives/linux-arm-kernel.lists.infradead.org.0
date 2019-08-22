Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C738992F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 14:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h76W4giJJ9ZcWWDN38WKC91DeAK9sZodG3/d7+Whs70=; b=j7T1TxnFAGgxxP
	EMnfm2GriSJV3MMV/0AflFfK8LxfEPcH27yFE0geK0eafC8vyx2uiG4UOvNHin04x8uJSj2Ha3nZA
	EDkA2ZONyYoYs63WSIfqttEZ8W27hP9AopEADwCwnc6JR9L9XOa+UdGBegVwfO2grGxtzmV0S8rZv
	9l+sC5SH9UgE8IGxVj3um094JGXZ3Ywfz7DTT/jF1E6DqTN8/1/rPJAylYHx+fq5asvhwix/GKC85
	lTsmgy9fUjvKSklmZAbNevT+KJmV5nmyt1EvH5SIt8ba6SGRYsm4UuggterF9wbJTUNLeErfThIFi
	wlLzEukzlfcRU3LfkanA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lyo-0001mr-3A; Thu, 22 Aug 2019 12:14:14 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lyG-0001ZL-FD
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 12:13:41 +0000
Received: by mail-vs1-xe41.google.com with SMTP id s5so3656366vsi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 05:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Ly6KX3kvL/W0ycoaNLTVk5Ihkvoe8Wnu3biVwC7K5k=;
 b=e+s77JT2cpzLx6Bok8gRYEyL3sIJy4MY0tlRRujMgKNbw6Z8D3adtcuYtllumK+DjH
 LrHgjsL1mpImPi9hm6KbpBAAchu2bX0CfUzY6uYJjTeSuNqn6Wcgz2KcEnwVw6Pe/JpD
 oKBN8X226wmaOyQuFVPK5p8PY+SwbN9m5mTaOL+YUCPd9ztzxrq/fneELEak3mkQUbRD
 MYNbzBNBfg0IIdZfwMJqM9/zCu0TyPnJ89zkl32BKEuddVAN7XgJLendjEh+3sU1emMB
 Q9iajclIOnQww/YNvGzunL8wkFKWjd3INZO0vdCfiVEOCPZMpO7URRy4oOPu0Mi57523
 ZeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Ly6KX3kvL/W0ycoaNLTVk5Ihkvoe8Wnu3biVwC7K5k=;
 b=gBOAdtoZgxFuRUSgQBQK6BW3LfE9Ls+Hdvi7l+TteWtxraTmHqNxrlu3jSRcX/wYaP
 O0KZDnFWJtg6/jgf66EMdvUaAZ1yuH1q5akggDCSccUY7+G5jSUZxGGEuvCkDD0GSpwx
 M3Qn1SzwLBGwRqoTh+onVK0l/3kVuXotWC2u1dgY/bHpE8aZph/YDQSXukNz7P0NnU4l
 Q/p2HVxuzJgErBG1VVy6A1hr3Igoy4/g5g7AB8vWR9li3Bka2DHVGnrZvilQ0Znobota
 kuvENZBtrPwnbtcFZ6vqCx+9R41bS4SFgfD+BmBrrQzYhniBYIiMTOWsbusXa5q80JHY
 VP6Q==
X-Gm-Message-State: APjAAAWS6guPpTfaq4Q0jRBo2Mr4AntSOIS9q0mEju722w6CjkkIBz09
 qi6IrloLlFZd448k5Sv5ZJS59q4OZkWKH7VCKDRVyg==
X-Google-Smtp-Source: APXvYqytHCOMHR5M9lts8SdpAxk1X76n5u7WLvfmxOXVJUEBRHaXV9qwemPTTdfSZATLeZEry7/4cv0gzsDJKxqcftg=
X-Received: by 2002:a67:61c7:: with SMTP id
 v190mr24652042vsb.165.1566476019397; 
 Thu, 22 Aug 2019 05:13:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190814072649.8237-1-yinbo.zhu@nxp.com>
 <20190814072649.8237-4-yinbo.zhu@nxp.com>
In-Reply-To: <20190814072649.8237-4-yinbo.zhu@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Aug 2019 14:13:03 +0200
Message-ID: <CAPDyKFpwGGPAShEoXPK8Ksg5FPEVrbD3-HfeTSMACPsDC_V5FA@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] mmc: sdhci-of-esdhc: add erratum A011334 support
 in ls1028a 1.0 SoC
To: Yinbo Zhu <yinbo.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_051340_634015_F535DC44 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Catalin Horghidan <catalin.horghidan@nxp.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 DTML <devicetree@vger.kernel.org>, Rajesh Bhagat <rajesh.bhagat@nxp.com>,
 Alison Wang <alison.wang@nxp.com>, Ashish Kumar <Ashish.Kumar@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Amit Jain <amit.jain_1@nxp.com>, Alex Marginean <alexandru.marginean@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rajat Srivastava <rajat.srivastava@nxp.com>,
 Yangbo Lu <yangbo.lu@nxp.com>, Jiafei Pan <jiafei.pan@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, Xiaobo Xie <xiaobo.xie@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 at 09:24, Yinbo Zhu <yinbo.zhu@nxp.com> wrote:
>
> This patch is to add erratum A011334 support in ls1028a 1.0 SoC
>
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-esdhc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-esdhc.c b/drivers/mmc/host/sdhci-of-esdhc.c
> index b16f7d440f78..eb2b290447fc 100644
> --- a/drivers/mmc/host/sdhci-of-esdhc.c
> +++ b/drivers/mmc/host/sdhci-of-esdhc.c
> @@ -1006,6 +1006,7 @@ static struct soc_device_attribute soc_incorrect_hostver[] = {
>  static struct soc_device_attribute soc_fixup_sdhc_clkdivs[] = {
>         { .family = "QorIQ LX2160A", .revision = "1.0", },
>         { .family = "QorIQ LX2160A", .revision = "2.0", },
> +       { .family = "QorIQ LS1028A", .revision = "1.0", },
>         { },
>  };
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
