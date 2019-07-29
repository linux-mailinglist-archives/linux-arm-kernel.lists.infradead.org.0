Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38EB78681
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aotJY7RXRRHebAMX1+IDFvR5gbRzxWGAYE2xB75nPxI=; b=oRycmx6A1KwlCs
	iYiPIOo5eT0jPYUQYzZ/eFwEyWYdBfYNHqOW0iHxW/MuoD6Q43tWL+mDRA7a8zwt9aX86xsLUk5Ds
	Rl9gLdm6ollLMhczlZeKE0F/KcuvNxt6Fg3JQD9ANT7AQzhJK9kINS77MvAdgOIUI/m/x4ZkfZKgm
	QR0rr72RP85lL5hGtWRDe1ZOAKyPkloHAClBlE5pJ4u8JSri50FDeN2e6Z4v2Vojs5XA/Yv1A2L5d
	Q8+EEnNkv8vJ3z3UbUJ+2fU0Xnq1sZNpJ9S7JOscmN/FkfkV9h73adDGJ7FJqMTW/RL3DSvi9iIKC
	nQPAP0YqxUhotsASwSzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0JN-0007sA-Fl; Mon, 29 Jul 2019 07:43:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Ir-0007og-Ki
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:42:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so7480777wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 00:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=qcDHQ1YIyua0Lz0XKlvtzGchQOF/q8YhLFhQTQqfSnA=;
 b=02iwdyH22+odFMvWr/fUSOWV/YsZSHqKDJDdL3e/jHLksFamrMNdydoLixPsostjig
 yYzQEFDjoaLkJAPyPt/dX5djgi4pTpVW7k5O+EuK9vRV4b+kvVD3KdHyP+fHdAXOLJZw
 fs4K6etimfyGJgHmMkzEWYXpz0YXtnA5d3Ujv3pcGXoUovVU2fuxrFw2Zx9N+4HQJ2Xh
 6ZfZtL98PhcYOUCA0uf9O/gU8Ho3Ar5Xd5LTTZyfiGybMwcM7ykT0tlFaILBVDsfNIyn
 qOJAT7FJydgp4as6OIcwX3bPsXYJAYc4F7EkgbuacqIjLhJho48k5LzbAupoJo3tSI69
 B2mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=qcDHQ1YIyua0Lz0XKlvtzGchQOF/q8YhLFhQTQqfSnA=;
 b=hVoQ0qGAm02Ow77sficCowKXQQNivgAj98K1vTDdEFxvgmMTQirJevtN6Lq69W50cu
 DmrptEPkNg3jTQeQv0QBarJqor5ZQT+xyVadbUexm3BQFtv6LONMNYDzW98eSQykCIpZ
 OaThLT8jWYzh40NoSleob7eaQfqYTDWN+YHklKk6nmwckVwk2/wCqXCK5ItXztzTn4HW
 bA62F2NxBBYmgxa3iUrTPW8/yumK+Wj1tdlo1DGGt9EK2Z0qLMVmf1G7OnUT6TRb5mPJ
 Xy4yCvtFnJEqoHSj/qSls4gAV8V/UopwYHI65QzNq3FZSOHYo90ADNA9snzB6iBKl01H
 IFcw==
X-Gm-Message-State: APjAAAVt3tSX9V3aVvzENtciicN3uUD7lK/x02szwxiR+Bs85eYWSJOz
 WsE1LtNih9JZodSGhOF1Ox+Kag==
X-Google-Smtp-Source: APXvYqyu0KuT71WZYrYu+y1RASylJuxEoqAUq39HAC9JSxF3uZuROG3LU/D595xuazk7xstMkJnTUA==
X-Received: by 2002:adf:cd04:: with SMTP id w4mr69069194wrm.230.1564386159762; 
 Mon, 29 Jul 2019 00:42:39 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
 by smtp.gmail.com with ESMTPSA id m24sm37058830wmi.39.2019.07.29.00.42.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:42:39 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com
Subject: Re: [RFC/RFT v3 04/14] clk: meson: eeclk: add setup callback
In-Reply-To: <55ce9b5e-de2f-9da3-8eec-13b5ead23e6c@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-5-narmstrong@baylibre.com>
 <1jh8836w49.fsf@starbuckisacylon.baylibre.com>
 <55ce9b5e-de2f-9da3-8eec-13b5ead23e6c@baylibre.com>
Date: Mon, 29 Jul 2019 09:42:37 +0200
Message-ID: <1j1ry9s2vm.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004241_683735_05E7D77A 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 26 Jul 2019 at 16:50, Neil Armstrong <narmstrong@baylibre.com> wrote:

> On 03/07/2019 16:17, Jerome Brunet wrote:
>> On Mon 01 Jul 2019 at 11:12, Neil Armstrong <narmstrong@baylibre.com> wrote:
>> 
>>> Add a setup() callback in the eeclk structure, to call an optional
>>> call() function at end of eeclk probe to setup clocks.
>>>
>>> It's used for the G12A clock controller to setup the CPU clock
>>> notifiers.
>> 
>> I'd prefer if you implement the probe function in the related controller
>> have this probe function call meson_eeclkc_probe() for the common part
>> 
>> In your case, I suppose it means implementing the g12a controller probe
>> to deal with the notifiers
>
> Sure, but with this eeclk setup callback I can provide a different setup() callback
> for g12a and g12b (and later sm1), without this means adding a top data struct
> containing a setup() callback pointer and the soc meson_eeclkc_data struct to be able
> to call a setup() for each family like done actually, but this will broke eeclk since
> the match_data data won't be a meson_eeclkc_data() struct anymore.

meson_eeclkc_probe is an helper we added to factorize common code out of the
clock controllers we had. I don't like the idea to now add callback in it
deal with the specifics of each SoCs. It feels like we are going in circles.

I think SoC/controller specific stuff should be dealt with in
related probe function of each clock controller which would then call
the 'common helper' if necessary.

If the common part interface needs to be reworked, maybe changing
the parameters, I'm ok with it.

>
> If you still prefer this, I can rework it like that.
>
> I'm rebasing all the stuff on v5.3-rc1 and plan to repost an updated version
> shortly, solving this would be easier.
>
> Neil
>
>> 
>>>
>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>>> ---
>>>  drivers/clk/meson/meson-eeclk.c | 6 ++++++
>>>  drivers/clk/meson/meson-eeclk.h | 1 +
>>>  2 files changed, 7 insertions(+)
>>>
>>> diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
>>> index 6ba2094be257..81fd2abcd173 100644
>>> --- a/drivers/clk/meson/meson-eeclk.c
>>> +++ b/drivers/clk/meson/meson-eeclk.c
>>> @@ -61,6 +61,12 @@ int meson_eeclkc_probe(struct platform_device *pdev)
>>>  		}
>>>  	}
>>>  
>>> +	if (data->setup) {
>>> +		ret = data->setup(pdev);
>>> +		if (ret)
>>> +			return ret;
>>> +	}
>>> +
>>>  	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>>>  					   data->hw_onecell_data);
>>>  }
>>> diff --git a/drivers/clk/meson/meson-eeclk.h b/drivers/clk/meson/meson-eeclk.h
>>> index 9ab5d6fa7ccb..7fdf424f71a6 100644
>>> --- a/drivers/clk/meson/meson-eeclk.h
>>> +++ b/drivers/clk/meson/meson-eeclk.h
>>> @@ -20,6 +20,7 @@ struct meson_eeclkc_data {
>>>  	const struct reg_sequence	*init_regs;
>>>  	unsigned int			init_count;
>>>  	struct clk_hw_onecell_data	*hw_onecell_data;
>>> +	int				(*setup)(struct platform_device *pdev);
>>>  };
>>>  
>>>  int meson_eeclkc_probe(struct platform_device *pdev);
>>> -- 
>>> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
