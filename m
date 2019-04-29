Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80976E2AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 14:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gy5D4+byLc8YPsWtz7lemVAkb8HFD+CaJFURlJc+6i0=; b=JeyTRlKsgPwQHb
	35qJHWy48aKU4j8QFYjyLUXp5V7UWoTLspH0TegWBAFjIdmarGbQCUEOVTRRwNeM6yz6AVbvuX1lx
	Ey6oDzVKMP22LeJIY/hkaeK1/uQ7rAS5YVE7aJb8b646AcT9dLjYcXTn/kTRSTbZlUNN78xWmX7c+
	78WmemRJ4HlumSN4KA9kMYZV/TE3soVutbAix/9fEzXmMUIDlUrrs0ZXjNVWyD86LRpMA92Pk3A9h
	XQF1Ap9tA9zE4NMclmgVaQOxrW4ySmeFeop99e/L3chaos/jLu0j6+Ngn190tQioA0so74QKwf4HL
	75ima8YTPYuKrEqYf2PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5S6-00055z-A5; Mon, 29 Apr 2019 12:32:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5Rw-000552-8t
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 12:32:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id a12so15748539wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 05:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=J+R3ULFuivqCroDmyHdR6QeN5i6XybMa9wYXAD9HdoI=;
 b=FhjN1q4D9xSQdKRvKqLb6bXiE4x8oKWApJ29y4vHLBKgXmgz/mvifY8jTyLX9LKKOK
 FFpa8rkgEQ1oXBrAb/K59Q/0KVoNsLIftYHqK7KxMhWKW2CKe6eEcCKdA1okcKsd7EUl
 rvKEnvGKtF8H+fRnT6Phc80jJj0a6hs02LBsJKgBLWET6tCQE37IKZL3spAPNTXqBO88
 TeEwb2BSHa5CN1ciFqzdaZdhDt9VzyqaJTE4bROGhFwz+rXDtKMc08DrZKde+/FOWgiC
 AdsvmfHZrsHWCfXQiX6B3eLWz1+30BdOmaSgoGg2+udivvgyGrsYfT9OhzKvSIsgivBh
 R8PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=J+R3ULFuivqCroDmyHdR6QeN5i6XybMa9wYXAD9HdoI=;
 b=ScEoGE+WCnRrOpaFssbGEA90vj074YaD1eYBwz7NXl78vSgUx6KlilCjnydayWqNwN
 vHkPNn1t8qtAkWp+ZaRni9HlLCUPVBWQMBG05Jqz6P/2ZStgpP5mCAttID+aKvCxVLyU
 EMrzjxfxTLbqIz+pJQAnLr92CMCWlrcqLyo5qtEXcP8AWCnMNCFnM9PhCz5ay67EgQxr
 D0XysfFh8EIdoarE2UNRJiEV/qSo953ALiUMVKOWH7FJE4c+2OHriPx6suxMyi8aDW+H
 lU+w7HPCGoToiYxDkViybr+qaMit3iaRIwapd1vvpliGQ+fEoXBYl1zeTdpWoHBWL0p3
 XVpg==
X-Gm-Message-State: APjAAAWFabLaJmnpzbB/JRs4HRuvTL9U7zpEbF7E6Fl0t5+ae/docEbV
 2n+Fz+NMiWnisB0YYU7v2aXhRA==
X-Google-Smtp-Source: APXvYqzJTCXEuZ49M7Ut3ACdg7WkhG5ySWXB30Pkc5rXI9tabDQxJUF/Ps+PvdWhhZ9XTwdMl0EnaA==
X-Received: by 2002:a05:6000:c2:: with SMTP id
 q2mr3339535wrx.324.1556541118263; 
 Mon, 29 Apr 2019 05:31:58 -0700 (PDT)
Received: from [192.168.1.2] (200.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.200])
 by smtp.gmail.com with ESMTPSA id j13sm24846129wrd.88.2019.04.29.05.31.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 05:31:57 -0700 (PDT)
Subject: Re: [PATCH 2/3] drivers: regulator: qcom: add PMS405 SPMI regulator
To: Mark Brown <broonie@kernel.org>
References: <1548675904-18324-1-git-send-email-jorge.ramirez-ortiz@linaro.org>
 <1548675904-18324-3-git-send-email-jorge.ramirez-ortiz@linaro.org>
 <20190204090301.GC23441@sirena.org.uk>
 <95276ca0-6896-a595-867a-184a518fa31f@linaro.org>
 <20190425183736.GF23183@sirena.org.uk>
 <022b3c6a-e356-3c5a-3c46-c6edcf4f8cd5@linaro.org>
 <20190427182113.GL14916@sirena.org.uk>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <a3c281d5-d30e-294f-71ab-957decde2ba0@linaro.org>
Date: Mon, 29 Apr 2019 14:31:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190427182113.GL14916@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_053202_690396_3BA71AA5 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vinod.koul@linaro.org,
 linux-kernel@vger.kernel.org, khasim.mohammed@linaro.org, lgirdwood@gmail.com,
 bjorn.andersson@linaro.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 niklas.cassel@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/27/19 20:21, Mark Brown wrote:
> On Thu, Apr 25, 2019 at 09:44:00PM +0200, Jorge Ramirez wrote:
> 
>> the way I see it, if I follow your suggestion and since we are not
>> allowed to extend spmi_regulator_find_range(), the only options are:
> 
>> 1) duplicate verbatim this whole function
>> (spmi_regulator_select_voltage_same_range) with a minor change (this
>> amount of code duplication in the kernel seems rather unnecessary to me)
> 
>> 2) modify the struct spmi_regulator definition with a new operation that
>> calls a different implementation of find range (seems a massive overkill)
> 
> Since the point of this change is AFAICT that this regulator only has a
> single linear range it seems like it should just be able to use the
> existing generic functions shouldn't it?  

yes that would have been ideal but it does not seem to be the case for
this hardware.

The register that stores the voltage range for all other SPMI regulators
(SPMI_COMMON_REG_VOLTAGE_RANGE 0x40) is used by something else in the
HFS430: SPMI_HFS430_REG_VOLTAGE_LB 0x40 stores the voltage level in two
bytes 0x40 and 0x41;

This overlap really what is creating the pain: HFS430 cant use 0x40 to
store the range (even if it is only one)

so yeah, most of the changes in the patch are working around this fact.

enum spmi_common_regulator_registers {
	SPMI_COMMON_REG_DIG_MAJOR_REV		= 0x01,
	SPMI_COMMON_REG_TYPE			= 0x04,
	SPMI_COMMON_REG_SUBTYPE			= 0x05,
	SPMI_COMMON_REG_VOLTAGE_RANGE		= 0x40, ******
	SPMI_COMMON_REG_VOLTAGE_SET		= 0x41,
	SPMI_COMMON_REG_MODE			= 0x45,
	SPMI_COMMON_REG_ENABLE			= 0x46,
	SPMI_COMMON_REG_PULL_DOWN		= 0x48,
	SPMI_COMMON_REG_SOFT_START		= 0x4c,
	SPMI_COMMON_REG_STEP_CTRL		= 0x61,
};

enum spmi_hfs430_registers {
	SPMI_HFS430_REG_VOLTAGE_LB		= 0x40, *******
	SPMI_HFS430_REG_VOLTAGE_VALID_LB	= 0x42,
	SPMI_HFS430_REG_MODE			= 0x45,
};

It just needs it's own
> set/get_voltage_sel() operations.  As far as I can see the main thing
> the driver is doing with the custom stuff is handling the fact that
> there's multiple ranges but that's not an issue for this regulator.
> It's possible I'm missing something there but that was the main thing
> (and we do have some generic support for multiple linear ranges in the
> helper code already, can't remember why this driver isn't using that -
> the ranges overlap IIRC?).
> 
> TBH looking at the uses of find_range() I'm not sure they're 100%
> sensible as they are - the existing _time_sel() is assuming we only need
> to work out the ramp time between voltages in the same range which is
> going to have trouble.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
