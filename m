Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F277433F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 04:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwVSCDfTdZH8n8pulh1gYnXBuTgb27ZLsj+AR40KEaM=; b=bXSNKZIEZZUAbV
	j5wemQhYeD8LbnqI4ksON0vQtyy46htC0SQ3+ASxzAv1W8N3cIzyMstCDvhwWG/vYkljfHKN1l/bF
	32vv4mpRqGLm8b1qofVcHi3XC3Q4Ty1FwnMaUqXF7/bvjQ0j8hW3Tua/Ayd5c4PRh7QaiaPMlyG8E
	sD87TM1mZPugjPoiLoQiqBTGlQLH/nauZpJ1X957zWgygCBi2fHYPxMILbetQE+tvwkM8ns0cQ4Tv
	L4bNi6nBA0ZaA26/HNfyUlSD8cirnBq8hY7z6dkJ3UoB9OYDeKC/f1ma2nsJUpluNTLs1CrNrdP3H
	wRQ1LDNvV/Zvo/tlvcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqTQI-000102-Hs; Thu, 25 Jul 2019 02:24:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqTQ5-0000z7-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 02:23:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so21887444pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 19:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f2gYhr2xF9eqfzuK1I6ByZW/6E+IIFIf49moUqSig44=;
 b=UWpYFZCqApaDNfrjdA5KtekES5UJ5GTU1kmcTFDFb2FLfRCDcNFDgvronSImr9dgD9
 0mFTlZI7X35xO1vEdd3Gki5LIf98gKG5QhKxb/Y4+VDIDhfB1gwWeVXBqiLEyWL2EkgW
 NT11Oz6vHpCvPOjC1YKTKmUoFKun/2NxPqpp1JkpL65nRxlStWUN4lRLXspUzJnsSUs7
 f0W+td0YgaR8ANRf2sKNe+yfU85x4p815cUUDhoDA7GMXy2XLaBS0z1jQB9wcs/VHaCv
 7pV5B+RTx3CuZ/R9xi/w3tBHDvXglw6aX/anI5anp/fOKcEQncy2ECQwLBNYPNc9rUd9
 Z5QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f2gYhr2xF9eqfzuK1I6ByZW/6E+IIFIf49moUqSig44=;
 b=fK/6OY4ShiF7fU+JNlvASVbl+I9mssoiZ+ybn+JYrRk8uS0AMvcgdFOLXVLL4xXXzD
 wexj13H2AQLY69jC6IJflpIIQVr/INEoSdZtn3P3I3IPAP6ob3qzJVrDKTJE2RJJW/h3
 DUTCNBKcqO5jdhHLw3OyphIKFiIZQxIIc1+80/9lrf5VBdI0yLSBLKpa6tZJnVMBbEmZ
 vNCcCM2YDo3lgwHfJt1eVaKVhqFrq3JYjypuGx+DZ/sxpmyE7A16lWGjIYjIqxng5uvZ
 jUQJSkj3bP40VdIqnVNv8iaCgnyU/0rE/sBx8sqIXNuxq1jci8L1cEMGc26YyU+/k7v8
 FgJQ==
X-Gm-Message-State: APjAAAWepXVhf+PAuJkyFhGbcD/LmU5l7MNrwaAjZwKh5zkYKuhz8Xup
 6bfr4c2yyeZ3+GqG4cQmrHvUTQ==
X-Google-Smtp-Source: APXvYqzXNlrdXx1C+X0/1qZx+FxwGsBmRDCWeiwCURuT22GPdQ5YuJbOB5TOiPQUDU7gUhGBG6bBRQ==
X-Received: by 2002:a62:750c:: with SMTP id q12mr14690753pfc.59.1564021427936; 
 Wed, 24 Jul 2019 19:23:47 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id k25sm37963077pgt.53.2019.07.24.19.23.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 19:23:46 -0700 (PDT)
Date: Thu, 25 Jul 2019 07:53:43 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_192349_584744_25C6BC1D 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 krzk@kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 pankaj.dubey@samsung.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-07-19, 15:10, Marek Szyprowski wrote:
> Hi Viresh,
> 
> On 2019-07-23 04:04, Viresh Kumar wrote:
> > On 18-07-19, 16:30, Sylwester Nawrocki wrote:
> >> This is second iteration of patch series adding ASV (Adaptive Supply
> >> Voltage) support for Exynos SoCs. The first one can be found at:
> >> https://lore.kernel.org/lkml/20190404171735.12815-1-s.nawrocki@samsung.com
> >>
> >> The main changes comparing to the first (RFC) version are:
> >>   - moving ASV data tables from DT to the driver,
> >>   - converting the chipid and the ASV drivers to use regmap,
> >>   - converting the ASV driver to proper platform driver.
> >>
> >> I tried the opp-supported-hw bitmask approach as in the Qualcomm CPUFreq
> >> DT bindings but it resulted in too many OPPs and DT nodes, around 200
> >> per CPU cluster. So the ASV OPP tables are now in the ASV driver, as in
> >> downstream kernels.
> > Hmm. Can you explain why do you have so many OPPs? How many
> > frequencies do you actually support per cluster and what all varies
> > per frequency based on hw ? How many hw version do u have ?
> 
> For big cores there are 20 frequencies (2100MHz .. 200MHz). Each SoC 
> might belong to one of the 3 production 'sets' and each set contains 14 
> so called 'asv groups', which assign the certain voltage values for each 
> of those 20 frequencies (the lower asv group means lower voltage needed 
> for given frequency).

There is another property which might be useful in this case:
"opp-microvolt-<name>" and then you can use API
dev_pm_opp_set_prop_name() to choose which voltage value to apply to
all OPPs.

opp-supported-hw property is more useful for the cases where only a
subset of frequencies will be supported for different versions of the
SoC. And what you need is a different voltage value for all
frequencies based on some h/w version.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
