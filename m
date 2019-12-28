Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29B912BD94
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 13:48:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaIXjdD1fvuCpyWtGU8/5pqLnI78e+1paEq/4TcFhts=; b=WBb5FiE6bl+YLl
	cCrj2DmlbRc4ZY7/f7MntCMDqTY6WDFTuVEG9I3NBEJxM3y1d7JnNTBmZC7Z678QWymhgi1w5P5OP
	17Zkst3fTQLKoKh0a/vYerjMEVzAHczpQn/LEXtY0BGd5+WkITT18aomgEyDkW8EbA8jq4nwyYTJg
	v7HsZe5/ZqsAqvnSRDu/MnFFBspQB8xr1KAzApn3MPdCrtWhZ22HWJ+Wxh4OQR5HYQVB3zo7M1KMc
	J2Xfio3d+fuWPYrX3l87CMIraEA8QmZ+L9KlN3XU05ZfbNcjllhZscn5O9ANnGFSrHOA/x7/Vanuy
	Rz9Kyj9Mw7M4OlPk5qSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilBVf-0004Ny-A9; Sat, 28 Dec 2019 12:47:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilBVU-0004NI-95
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 12:47:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id q8so16049364pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 04:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pI3bHdhVC4jD/lCQfsvWohXAM7HBD6rFo3cPOHaRtUA=;
 b=QVkGkqqEH87ZRVIkAEShKMvsKKVZNX3dS2U0uju+4fPWtxkNOzqcSBsgWgH/qH0xx7
 6ABx1O2t8a111JC8iprulan++JxYGdfgd8eAAEOe8SlCcgI4xzG+4HxLJTLkZzbYpgEu
 Q12NgaT8kiSSsge8TFG315XsnQEsCkX/ij05bS1KgMkPTXyOso8IUTyb8p6OyOOhc4DV
 EvvLkucc9tFKXhCfY53doHLlw/iFswMpc4pVCf3yJ8UHEOcghpjz6P093iO0G9H1Le+d
 RGbDr+BgnufQ9veq9n0dia+mxDpqqML2sQYx/N89OXntI2NhisxWaY304KxnrXqDUm0r
 DfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pI3bHdhVC4jD/lCQfsvWohXAM7HBD6rFo3cPOHaRtUA=;
 b=SBm+kPNOG5aVeQWxNz6tnMHw1hrNeOPzJpBuGCWb6QQMPMOW6iWheqkwad8GvOWKgt
 xLSOq7lOwnKZXN1SuemPxFfDlUfQkWOrSLpIqMsnsv8wcAWVHJGJ/SiMbZ+ebUhHXRdn
 uTxKrpihXP1sFt3e7Jj9risASw3h93/hE7Kxr3jYdCNZi69l6Wra03uF/xv5SazYp750
 l+XHFSkJXFxBvycqc53ob/v+2C5mIr5bnDQV2YvU2jFGsKGtqcvaWc0LIQaUV3U+qETs
 K1Kza+Gf6dm6oLLGGy/0XnI1KNtN5sw4JObVipDEF7Mt+DRWoMG6TZ5oJaYsnRKlEZsE
 ZnRA==
X-Gm-Message-State: APjAAAV5p/DMWbGdOc/cMuNFtZhuRrLe7fBihGPHqHOQPoIMHVHrcSsi
 6feop1xF4b7llXgoAPT7cmQ=
X-Google-Smtp-Source: APXvYqy0MYnN0gshVmCs8u0rVFEs4Ra4zcPjqBFATbA/kqGev/XZffwqJFL5m+vwVEEOZ44bOiSHfg==
X-Received: by 2002:a63:1e47:: with SMTP id p7mr59163570pgm.339.1577537266826; 
 Sat, 28 Dec 2019 04:47:46 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id e19sm17900399pjr.10.2019.12.28.04.47.45
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 28 Dec 2019 04:47:46 -0800 (PST)
Date: Sat, 28 Dec 2019 20:47:44 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: mmayer@broadcom.com, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 f.fainelli@gmail.com
Subject: Re: [PATCH] cpufreq: brcmstb-avs-cpufreq: avoid a stuck risk and UAF
 issue in brcm_avs_cpufreq_get()
Message-ID: <20191228124744.GA3491@cqw-OptiPlex-7050>
References: <1577513730-14254-1-git-send-email-qiwuchen55@gmail.com>
 <201912281807.gbP6xHJ1%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201912281807.gbP6xHJ1%lkp@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_044748_346944_196104F9 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 28, 2019 at 06:20:25PM +0800, kbuild test robot wrote:
> Hi,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on pm/linux-next]
> [also build test ERROR on v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/qiwuchen55-gmail-com/cpufreq-brcmstb-avs-cpufreq-avoid-a-stuck-risk-and-UAF-issue-in-brcm_avs_cpufreq_get/20191228-141943
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
> config: arm-allmodconfig (attached as .config)
> compiler: arm-linux-gnueabi-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from include/linux/pm_qos.h:10:0,
>                     from include/linux/cpufreq.h:16,
>                     from drivers/cpufreq/brcmstb-avs-cpufreq.c:44:
>    drivers/cpufreq/brcmstb-avs-cpufreq.c: In function 'brcm_avs_cpufreq_get':
> >> drivers/cpufreq/brcmstb-avs-cpufreq.c:459:12: error: 'dev' undeclared (first use in this function); did you mean 'sev'?
>       dev_warn(dev, "cpu %d: CPUFreq policy not found\n", cpu);
>                ^
>    include/linux/device.h:1776:12: note: in definition of macro 'dev_warn'
>      _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                ^~~
>    drivers/cpufreq/brcmstb-avs-cpufreq.c:459:12: note: each undeclared identifier is reported only once for each function it appears in
>       dev_warn(dev, "cpu %d: CPUFreq policy not found\n", cpu);
>                ^
>    include/linux/device.h:1776:12: note: in definition of macro 'dev_warn'
>      _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                ^~~
>    In file included from include/uapi/linux/posix_types.h:5:0,
>                     from include/uapi/linux/types.h:14,
>                     from include/linux/compiler.h:180,
>                     from include/linux/err.h:5,
>                     from include/linux/clk.h:12,
>                     from include/linux/cpufreq.h:11,
>                     from drivers/cpufreq/brcmstb-avs-cpufreq.c:44:
> >> include/linux/stddef.h:8:14: warning: return makes integer from pointer without a cast [-Wint-conversion]
>     #define NULL ((void *)0)
>                  ^
> >> drivers/cpufreq/brcmstb-avs-cpufreq.c:460:10: note: in expansion of macro 'NULL'
>       return NULL;
>              ^~~~
> >> include/linux/stddef.h:8:14: warning: return makes integer from pointer without a cast [-Wint-conversion]
>     #define NULL ((void *)0)
>                  ^
>    drivers/cpufreq/brcmstb-avs-cpufreq.c:465:10: note: in expansion of macro 'NULL'
>       return NULL;
>              ^~~~
> --
>    In file included from include/linux/pm_qos.h:10:0,
>                     from include/linux/cpufreq.h:16,
>                     from drivers//cpufreq/brcmstb-avs-cpufreq.c:44:
>    drivers//cpufreq/brcmstb-avs-cpufreq.c: In function 'brcm_avs_cpufreq_get':
>    drivers//cpufreq/brcmstb-avs-cpufreq.c:459:12: error: 'dev' undeclared (first use in this function); did you mean 'sev'?
>       dev_warn(dev, "cpu %d: CPUFreq policy not found\n", cpu);
>                ^
>    include/linux/device.h:1776:12: note: in definition of macro 'dev_warn'
>      _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                ^~~
>    drivers//cpufreq/brcmstb-avs-cpufreq.c:459:12: note: each undeclared identifier is reported only once for each function it appears in
>       dev_warn(dev, "cpu %d: CPUFreq policy not found\n", cpu);
>                ^
>    include/linux/device.h:1776:12: note: in definition of macro 'dev_warn'
>      _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                ^~~
>    In file included from include/uapi/linux/posix_types.h:5:0,
>                     from include/uapi/linux/types.h:14,
>                     from include/linux/compiler.h:180,
>                     from include/linux/err.h:5,
>                     from include/linux/clk.h:12,
>                     from include/linux/cpufreq.h:11,
>                     from drivers//cpufreq/brcmstb-avs-cpufreq.c:44:
> >> include/linux/stddef.h:8:14: warning: return makes integer from pointer without a cast [-Wint-conversion]
>     #define NULL ((void *)0)
>                  ^
>    drivers//cpufreq/brcmstb-avs-cpufreq.c:460:10: note: in expansion of macro 'NULL'
>       return NULL;
>              ^~~~
> >> include/linux/stddef.h:8:14: warning: return makes integer from pointer without a cast [-Wint-conversion]
>     #define NULL ((void *)0)
>                  ^
>    drivers//cpufreq/brcmstb-avs-cpufreq.c:465:10: note: in expansion of macro 'NULL'
>       return NULL;
>              ^~~~
> 
> vim +459 drivers/cpufreq/brcmstb-avs-cpufreq.c
> 
>    452	
>    453	static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
>    454	{
>    455		struct cpufreq_policy *policy = cpufreq_cpu_get_raw(cpu);
>    456		struct private_data *priv;
>    457	
>    458		if (!policy) {
>  > 459			dev_warn(dev, "cpu %d: CPUFreq policy not found\n", cpu);
>  > 460			return NULL;
>    461		}
>    462	
>    463		priv = policy->driver_data;
>    464		if (!priv || !priv->base)
>    465			return NULL;
>    466	
>    467		return brcm_avs_get_frequency(priv->base);
>    468	}
>    469	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

So sorry, I sent the wrong patch file, and resend correct patch which compile ok.

Thanks!
Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
