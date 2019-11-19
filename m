Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3875A102732
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSFVmm/exJxuWdjOtXI6clMPo8frEED+f2TI2UTjkFM=; b=q1gAoMw83xhx/k
	MsuEEuSUttEYJPVN9Rg6HqYo4pe1TwOzJmzwkecLpKZBGefLzd9s4ZdsQuRTWyZ9gbZwUi4qKysba
	cxPydOsG9EAkoRGe/XjfcEKdeVImXpR0/nEL1GP0U49M4epusLnmEjycOzfBNVFGk2zoROseJFvyQ
	Zw702gnwum47vzhhdw86/hwYEfa/A9ztwtMbJwrN3xDsAcPX6DqYMcCfHzsF9/L60myZPhXr+hMVT
	Tjz2jr3Nx3XwZ/3ArydC02tFXB8pvka2hrjtGFhyn0eEmzpR+mm+EcOIGbIp2zC4Kou2fUSIRnUYy
	QlfBGO/0sUFg8qi3P5Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4l0-0001WB-Va; Tue, 19 Nov 2019 14:45:30 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4ks-0001VP-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:45:24 +0000
Received: by mail-lj1-x242.google.com with SMTP id t5so23658379ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 06:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XQaroAqPBTv3cn0AH8FgZ1yA4zFjMEz2UzMs9ENgnOY=;
 b=tmFnzR8KAYYT2cz8AM2wpk1wEy0sDjU3EzQf4HEBut+VQLxsepLk3/6/8cpc0VKxLq
 UfBrdhDT0xWQNkjBUnKRlzyypOt/BY5REJAP9S/LmH6jD8CWEHzFu3yh/QI7rrH9c82e
 iOt7YT8gMCBns69s891at8X4YmHIMz2VpY9I1lQAe/X3WWXGwq823m2aLhnBu4X3O85I
 WByjYcsMltQgesQBh6DEP72LIobgzQSZGowIUlSYGAJVCNg2J146FEQgsxz9eta1yCFC
 CTo26Eu8TPrW1IcY/Qsml+CosSfQYjV/nsh+d789DkAOExNjaGSuq32wAlu8OnexIfOF
 2V5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XQaroAqPBTv3cn0AH8FgZ1yA4zFjMEz2UzMs9ENgnOY=;
 b=uETV0oS3XREZkUhEBJkTIACy+4RH8blHRPjq+jc3NUEn9uZXDppzeRfF79HwQpZtaa
 HPEDcFOZ7rluWT+avj+rMEyoeBRiMK3UB/7oDhyLF3Ea7ByRp8RU+Wudk1sbchd1nAyq
 yKJfmYZiwyWf0NVmQ2uQPATcixvVpcQiSdz/vCFgmX4J5VY62srjOJsL/gEL+8KcmZl0
 jHPbGEgj3HiBM8igSVzJ5gH7wZgk0mU7UcLnbj87NfFjaVKhC2U9FQ9rQUo13LX7Ar2Z
 iFVJeRsXpyzkx/JyUGK0pR6/dQHaVlth18Xxy1bF7vBeRJzC5UsljdMSiUoNgOgKYNUY
 0ptQ==
X-Gm-Message-State: APjAAAVYNrTlKvJFgh+LzJfJaJhxsMbdxiJ6b4oF4TFXJZhWo5pXuXvK
 1ulKgmiqpcSzTx6uL1AE6YNZlg==
X-Google-Smtp-Source: APXvYqy0eb5ynSNYwUa8gfy7iZEtLluEz02LdKIzvGkrxBilNLqPeX629CLSfKICOpAV0jkH6KffEQ==
X-Received: by 2002:a2e:974a:: with SMTP id f10mr1615866ljj.25.1574174720904; 
 Tue, 19 Nov 2019 06:45:20 -0800 (PST)
Received: from centauri.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id z20sm11772338ljj.85.2019.11.19.06.45.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 06:45:20 -0800 (PST)
Date: Tue, 19 Nov 2019 15:45:18 +0100
From: Niklas Cassel <niklas.cassel@linaro.org>
To: Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: Re: [PATCH v5 5/5] arm64: defconfig: enable
 CONFIG_ARM_QCOM_CPUFREQ_NVMEM
Message-ID: <20191119144518.GA17086@centauri.ideon.se>
References: <20191115121544.2339036-1-niklas.cassel@linaro.org>
 <20191115121544.2339036-6-niklas.cassel@linaro.org>
 <aed0bac0-ca9d-febd-ac57-120e60e99e0d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aed0bac0-ca9d-febd-ac57-120e60e99e0d@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_064522_856926_11144AE0 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: ulf.hansson@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 sboyd@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, bjorn.andersson@linaro.org, vireshk@kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 02:44:03PM +0200, Stanimir Varbanov wrote:
> Hi Niklas,
> 
> On 11/15/19 2:15 PM, Niklas Cassel wrote:
> > Enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM.
> 
> Shouldn't this be selected from qcom-cpr.c Kconfig ?

Hello Stan,

I can see where this is coming from.

If e.g. CONFIG_ARM_QCOM_CPUFREQ_NVMEM is selected but
CONFIG_QCOM_CPR is not, then the cpufreq driver will
return -EPROBE_DEFER, and will never probe successfully.

However, I don't really see a difference to any other
driver using a framework that the user has not enabled.
The driver will then use that framework's stubs, which
usually only return -ENODEV or similar.

So even though these both need to be enabled to work as
intended, they can be compiled/build tested separately.


Kind regards,
Niklas

> 
> > 
> > Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 4385033c0a34..09aaffd473a0 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -88,6 +88,7 @@ CONFIG_ACPI_CPPC_CPUFREQ=m
> >  CONFIG_ARM_ARMADA_37XX_CPUFREQ=y
> >  CONFIG_ARM_SCPI_CPUFREQ=y
> >  CONFIG_ARM_IMX_CPUFREQ_DT=m
> > +CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
> >  CONFIG_ARM_QCOM_CPUFREQ_HW=y
> >  CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
> >  CONFIG_ARM_TEGRA186_CPUFREQ=y
> > 
> 
> -- 
> regards,
> Stan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
