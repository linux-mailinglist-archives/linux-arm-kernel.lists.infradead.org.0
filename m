Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F52B1130FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYe1nS234KSkkkGwpIDbkUVs3whdGvzfN4mx7mG5Jfw=; b=X480dsY4IKUu1M
	bbsbdJfMiiWAI5PCkhaoix7+m6mNwUMaGVC7TICyrYifPBM2L+RV0wY7ltDDLKPz/kwMntxhxNJaU
	t4FhsBkQ4KT/hlMSdisF6b715BiAharkaoOuAqcBNWYbGziKBAwusrQ3D5JcKFO+mAjLW7NEEoEbm
	wpz0xMbcO4vFGsyzIOB32Uj2TWD0AkhVu24Imy86yPrQ7IEY+li10gUwy17EahnnjrqZRmC0EooRm
	rr8e6MfikVRrbu0BSuLfCCx7P42br0UXaBp4ZqA0f/ibDCDjTnR/zYtR7/s11BCXiwjFjAQ/0fGvO
	Fv8e9hwWlMIWLBLahffA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYft-0004hY-Bs; Wed, 04 Dec 2019 17:42:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYfl-0004f6-N1
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 17:42:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id d19so12446pls.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 09:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gCV6yJBGuyI3vqteKeYvrMOHA0Ztd5PLf6lc7lYjUNk=;
 b=TLpV5L/EebJf1lWmnOuhW6jmepaUXb1nk4R93u/it/HPpUOCoBjO1EBwVnh6S+h4Vi
 VwqfcPoHdtwkpZqTZDP1DiOlIxicjBSip/i/xke3gCbbcXbmRU2r13MwOrJso6EGr5j/
 4wDLEPCHzujzV+bv28wfDL/9JI+/n5NgiLLM0efgfFeKTLjiB1gJIc4LyFteOgSvNjQl
 sdWw4mai3pK0olNwEF1sR0zuF61FC+AHMxW7zLMCkhuHWc10g03MBJM1/f0IWn0B3zuJ
 2u/zhK7hTV2fezaF7qQJf0T6dY2iRoj0zw5G4QY7s/7YYxOMt9sL8U7FpUPTlapgFrUe
 sljA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=gCV6yJBGuyI3vqteKeYvrMOHA0Ztd5PLf6lc7lYjUNk=;
 b=W+NzWa0T11wn1xkiK5dhacBocnOj8tyh5OFs8mLph4132iIRR9UsYTW8xqQmkQgI70
 VN17iikbGxAjavZbqJHBjAfsKoAZ5whrM1LEMm5U9CD4zYYUFIi3kYUrLU7mSIhVZ+dM
 VO7iXpN3kUzEMd08MxmUG9UuUZAdmwk9f1dC3PF+Pe3rNWrq2fL8x/PoyHNjj8TchyK8
 w/PLDIz8LjdxGDHX/PXJItpJfejylMBNSsDTIof8vQgvNQ2OKgI+YGRjcHyHEMYyJtSH
 GPJBBhWTXiSayaTyDDhQxvRK/IgrnOcFPF1YKyvkGldbrr/YajWhtQL/+ANSrPA0fBxs
 Gk2Q==
X-Gm-Message-State: APjAAAVeldmoomaZTPunDyJtAi29wKrPA2WDNzC3sjIA2mOmb7TcAxDZ
 SJ+dagCUm/WsJxcR1FWBMDYXWnsF
X-Google-Smtp-Source: APXvYqxPMbSelxk2QoaTS4IEPQI6HFh2Et2riPZYOgFGt5+FQY5h5OrWMiWswdFFIeXUEDXwUnOVYA==
X-Received: by 2002:a17:90a:f005:: with SMTP id
 bt5mr4565729pjb.16.1575481363552; 
 Wed, 04 Dec 2019 09:42:43 -0800 (PST)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id n12sm7861367pgb.32.2019.12.04.09.42.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 09:42:42 -0800 (PST)
Subject: Re: [PATCH 1/6] thermal: brcmstb_thermal: Do not use DT coefficients
To: Amit Kucheria <amit.kucheria@verdurent.com>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
 <20191030182132.25763-2-f.fainelli@gmail.com>
 <CAHLCerP6ricempeG=x-a2_aA6__YqADPKAEG5y7qPYNcD2=47Q@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <9adf0bd8-99ee-0f38-4608-67c92ba42c88@gmail.com>
Date: Wed, 4 Dec 2019 09:41:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAHLCerP6ricempeG=x-a2_aA6__YqADPKAEG5y7qPYNcD2=47Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_094245_753210_1D1556BA 
X-CRM114-Status: GOOD (  26.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/4/19 12:41 AM, Amit Kucheria wrote:
> On Wed, Oct 30, 2019 at 11:51 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>>
>> At the time the brcmstb_thermal driver and its binding were merged, the
>> DT binding did not make the coefficients properties a mandatory one,
>> therefore all users of the brcmstb_thermal driver out there have a non
>> functional implementation with zero coefficients. Even if these
>> properties were provided, the formula used for computation is incorrect.
>>
>> The coefficients are entirely process specific (right now, only 28nm is
>> supported) and not board or SoC specific, it is therefore appropriate to
>> hard code them in the driver given the compatibility string we are
>> probed with which has to be updated whenever a new process is
>> introduced.
>>
>> We remove the existing coefficients definition since subsequent patches
>> are going to add support for a new process and will introduce new
>> coefficients as well.
>>
>> Fixes: 9e03cf1b2dd5 ("thermal: add brcmstb AVS TMON driver")
> 
> I think you should fix the computation formula as the first patch and
> then merge the rest of this patch into your second patch.
> 
> I don't think the intermediate state of converting named constants to
> magic numbers is needed just to convert it over to another set of
> parameters.

ok, so you would rather see this patch using the defined constants while
fixing the formula, and in a subsequent patch getting rid of the
constant names since they are going to be added to a per-process table,
does that sound reasonable?

> 
> Regards,
> Amit
> 
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/thermal/broadcom/brcmstb_thermal.c | 37 ++++------------------
>>  1 file changed, 6 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
>> index 5825ac581f56..42482af0422e 100644
>> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
>> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
>> @@ -48,15 +48,6 @@
>>  #define AVS_TMON_TEMP_INT_CODE         0x1c
>>  #define AVS_TMON_TP_TEST_ENABLE                0x20
>>
>> -/* Default coefficients */
>> -#define AVS_TMON_TEMP_SLOPE            -487
>> -#define AVS_TMON_TEMP_OFFSET           410040
>> -
>> -/* HW related temperature constants */
>> -#define AVS_TMON_TEMP_MAX              0x3ff
>> -#define AVS_TMON_TEMP_MIN              -88161
>> -#define AVS_TMON_TEMP_MASK             AVS_TMON_TEMP_MAX
>> -
>>  enum avs_tmon_trip_type {
>>         TMON_TRIP_TYPE_LOW = 0,
>>         TMON_TRIP_TYPE_HIGH,
>> @@ -108,23 +99,11 @@ struct brcmstb_thermal_priv {
>>         struct thermal_zone_device *thermal;
>>  };
>>
>> -static void avs_tmon_get_coeffs(struct thermal_zone_device *tz, int *slope,
>> -                               int *offset)
>> -{
>> -       *slope = thermal_zone_get_slope(tz);
>> -       *offset = thermal_zone_get_offset(tz);
>> -}
>> -
>>  /* Convert a HW code to a temperature reading (millidegree celsius) */
>>  static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>>                                         u32 code)
>>  {
>> -       const int val = code & AVS_TMON_TEMP_MASK;
>> -       int slope, offset;
>> -
>> -       avs_tmon_get_coeffs(tz, &slope, &offset);
>> -
>> -       return slope * val + offset;
>> +       return (410040 - (int)((code & 0x3FF) * 487));
>>  }
>>
>>  /*
>> @@ -136,20 +115,16 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>>  static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
>>                                         int temp, bool low)
>>  {
>> -       int slope, offset;
>> -
>> -       if (temp < AVS_TMON_TEMP_MIN)
>> -               return AVS_TMON_TEMP_MAX; /* Maximum code value */
>> -
>> -       avs_tmon_get_coeffs(tz, &slope, &offset);
>> +       if (temp < -88161)
>> +               return 0x3FF;   /* Maximum code value */
>>
>> -       if (temp >= offset)
>> +       if (temp >= 410040)
>>                 return 0;       /* Minimum code value */
>>
>>         if (low)
>> -               return (u32)(DIV_ROUND_UP(offset - temp, abs(slope)));
>> +               return (u32)(DIV_ROUND_UP(410040 - temp, 487));
>>         else
>> -               return (u32)((offset - temp) / abs(slope));
>> +               return (u32)((410040 - temp) / 487);
>>  }
>>
>>  static int brcmstb_get_temp(void *data, int *temp)
>> --
>> 2.17.1
>>


-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
