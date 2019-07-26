Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301D076C05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2lGQhwTgtcPA+6Of9+beVUQzn7ZKzJreJzoBrV9c4I=; b=Jk6lp++Kp5cwzr
	ou+lTaihhq0IqGxq8Z4UZxjTC28DaMrg+KdFfJ3WkKwptQDum1ftl1CaunqPXuJyiHZAB2slyY9TE
	Wrw94b1k15dwalhTBLcMeoxk9dYojhrg0XPdvySZnMtL/8oKOezxSAXzlW9k3CGolrv+HEVE2MsAr
	YHWHNffwEBNSRWCC87gOkMomKIcETBeK6RYWZ2uHan5pqe+quHFPUWsyXvDaDtzd8s8utQ1a3ELCo
	io9Sw1+EpFHzt74f5blQo0glHk3yzsy/Zjj7anndaxl7Wi72H1Xa/VfDHAiY/AFVjDjmKi+CfbvPR
	36IVfL/4iaifzrr4Q3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr1Ye-0007nX-2A; Fri, 26 Jul 2019 14:50:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr1YT-0007mS-El
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:50:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so54700557wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 07:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=a0n4mnKNRrQNy/2VfzrWjzbEghGsJIBqYj/z50ouAs0=;
 b=PC/gHFJAq9Kh/M6H8rEmeo7deeJghlqO+THzvxibXYzERapPIKj1x7CB37/V0/+lsZ
 2l3RalJ7QVaMd9LJyhi6b6Fxw8FYFS0jEDldEc+nwb+6vAe0riBreHYO/GqsqR9LEe+i
 t4cJsS9ZHCnk1msNjd49huCpmlgqyk+QuE3oUp8Aa4zOZhA29Z1hKiBjpwd2vChD0R1x
 LyK0GukDeaFlg/8xaRhuNMHRdY9wdPhKRXkFKYx+0o9ROBgrkGXERQj9Uh36A/x8pLR0
 ygoEQ3xJj+wNp/iY45Cve3dfMSa5txdkCUBdP1zfK9my9DEVay7EyZeQsQN1eJ1MbOiM
 Io7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=a0n4mnKNRrQNy/2VfzrWjzbEghGsJIBqYj/z50ouAs0=;
 b=hnzkEJpD8FgD8SzPNijhuzfJ//CMVVwqZXmp2T322GDCGYRzzJkxWfeSvbhBjUXwPw
 ZhU/pSnvcbcSxsAsFcU/bj1Wji548Qnl79i+gD/zHXLTMJNiJx1e7SRQXklk8JFRNqNZ
 i4WmUl8VO7wmneE+NKJl7DFG5LNM0yUIYyUZAVG1B6WfrWLvkpwfka4RwYr2qeDgmN1A
 1PTOR/q5zu4nhm8ezTi/qZ+7LGgMR//kW7ZD8kqc45rDbDnT42T76ozFJnuI8CiOXCCx
 bLUaAo/LAQFbzl5pcT1XzNlXwK7hw9DlTbUYQfIB1gPQ2ZjT1vC5/si9rc1T8vXztNOJ
 mRkg==
X-Gm-Message-State: APjAAAVwuCtBt/v69x2EKr6DbMWVEU9sWOFoZ/JHoG0o1WMow1E+LWC/
 S4G/Bl+ti+22XGZf+yFOlyLfrg==
X-Google-Smtp-Source: APXvYqzVF7UaszaZThpcwP/mBiYzhQJibP9lwwp0ljTIA2no0X9LulYS0zbIt5k4uc5K0OHJwDRP8Q==
X-Received: by 2002:a5d:54c7:: with SMTP id x7mr72996717wrv.39.1564152643033; 
 Fri, 26 Jul 2019 07:50:43 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x20sm116948047wrg.10.2019.07.26.07.50.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 07:50:42 -0700 (PDT)
Subject: Re: [RFC/RFT v3 04/14] clk: meson: eeclk: add setup callback
To: Jerome Brunet <jbrunet@baylibre.com>, khilman@baylibre.com
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-5-narmstrong@baylibre.com>
 <1jh8836w49.fsf@starbuckisacylon.baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <55ce9b5e-de2f-9da3-8eec-13b5ead23e6c@baylibre.com>
Date: Fri, 26 Jul 2019 16:50:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1jh8836w49.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_075045_567432_0863F544 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/07/2019 16:17, Jerome Brunet wrote:
> On Mon 01 Jul 2019 at 11:12, Neil Armstrong <narmstrong@baylibre.com> wrote:
> 
>> Add a setup() callback in the eeclk structure, to call an optional
>> call() function at end of eeclk probe to setup clocks.
>>
>> It's used for the G12A clock controller to setup the CPU clock
>> notifiers.
> 
> I'd prefer if you implement the probe function in the related controller
> have this probe function call meson_eeclkc_probe() for the common part
> 
> In your case, I suppose it means implementing the g12a controller probe
> to deal with the notifiers

Sure, but with this eeclk setup callback I can provide a different setup() callback
for g12a and g12b (and later sm1), without this means adding a top data struct
containing a setup() callback pointer and the soc meson_eeclkc_data struct to be able
to call a setup() for each family like done actually, but this will broke eeclk since
the match_data data won't be a meson_eeclkc_data() struct anymore.

If you still prefer this, I can rework it like that.

I'm rebasing all the stuff on v5.3-rc1 and plan to repost an updated version
shortly, solving this would be easier.

Neil

> 
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  drivers/clk/meson/meson-eeclk.c | 6 ++++++
>>  drivers/clk/meson/meson-eeclk.h | 1 +
>>  2 files changed, 7 insertions(+)
>>
>> diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
>> index 6ba2094be257..81fd2abcd173 100644
>> --- a/drivers/clk/meson/meson-eeclk.c
>> +++ b/drivers/clk/meson/meson-eeclk.c
>> @@ -61,6 +61,12 @@ int meson_eeclkc_probe(struct platform_device *pdev)
>>  		}
>>  	}
>>  
>> +	if (data->setup) {
>> +		ret = data->setup(pdev);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>  	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>>  					   data->hw_onecell_data);
>>  }
>> diff --git a/drivers/clk/meson/meson-eeclk.h b/drivers/clk/meson/meson-eeclk.h
>> index 9ab5d6fa7ccb..7fdf424f71a6 100644
>> --- a/drivers/clk/meson/meson-eeclk.h
>> +++ b/drivers/clk/meson/meson-eeclk.h
>> @@ -20,6 +20,7 @@ struct meson_eeclkc_data {
>>  	const struct reg_sequence	*init_regs;
>>  	unsigned int			init_count;
>>  	struct clk_hw_onecell_data	*hw_onecell_data;
>> +	int				(*setup)(struct platform_device *pdev);
>>  };
>>  
>>  int meson_eeclkc_probe(struct platform_device *pdev);
>> -- 
>> 2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
