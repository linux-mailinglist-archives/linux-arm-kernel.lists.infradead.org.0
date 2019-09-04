Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE73A7F59
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wvs2VaKtPY0LEeE8tOpCstBPNlb0kTdJjFhGE1VRzY=; b=BFxaN5MllvtwlK
	3A265qpIKUnOaNDFGBkUo890d0KzgFX3aMQCsr0Nl4JAFpNMtKIHzZ2aP5DlKyJu7KdrklVkbxzND
	rx5aXUX8BDSWIKaGSYGhuVfrG2MBDNtg+syW9fgwgSH6SQBNiI9EgY5/ig8yuXFSOeklHiuYHUu0l
	+j32Q4zbIujhCwQiQUmFDkQ1RVDuzm2OwPYcxJbU25gKLO/wtPTCc7tVYNViUvxr2Kd04k2YPO04/
	egli/YyE7lMPXw8wCha4lHR7FJ1tWPH2iQtuU5kNn/csNNEgtxwo1x/7EPbEzMPnc2t6yjCuR1/EP
	UC3zdKaBO/qPMh7PpLxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ray-0004k9-Nk; Wed, 04 Sep 2019 09:28:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Rae-0004cZ-BZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:28:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id s18so20489223wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6fL1hpfLYe08Ws3YBIXWyZd5f0wTH/9sezUAVRLte9Y=;
 b=tUQsvJFXQvKqEiJDJHEDJlgbSnmzprzTucKnhqbHQF1csLTBlYAa4nzFCMoRIgfUAv
 1SFnCiJi3bB3wMMC71e2yvGhUP2J6FxsbE7TheQr0xEwVp7VM1u81j4SWNwJTQZFnjk1
 2PPj7WcvulyZC5qFUZ9JxSKaHb+KUACogizum5JkRFIAJIdbt41Buu+r+f2qsGKMi9pZ
 1yimNwftFLDxlZWmYy2QdBvHWOuAUmNpDZfqu5SNhxpb4rtl0A9HL9UXMK7ZO7R9aAms
 dF2M4HLmUq4RN783TokZilzZdoKeJet4RymKLkaaCBKMv1z3Y5xqWmA9Hfs/ti8KC/P9
 ijsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6fL1hpfLYe08Ws3YBIXWyZd5f0wTH/9sezUAVRLte9Y=;
 b=Gp/mThkZBvjW8Co5azOaQpAJfM5qzbwl3SQFMhLHoKMhZmc/3sTS29pBuKO03tEdwV
 Q8AM7/c/Sf3/FBCdeegDHod9QLpTvyT9MSdDv9lhZdQLL+f7tuUozqnzvHxr1t7Zo92s
 qc0cw1HtV5+rI3mMfWjTHge7u1mbFI80Te64nUJI9PcHbQrpQUSz9d+RCBbkhFRIT1Yg
 8QIzYUVHJwIaiCWFcDZsBxguRiH7ax7jJDp1nuIhgb/v0/y9VJ2J+uS4zbgxp2BvtlLs
 +ozXT2Rh1NNAAk3VoTSz3gBMZC6Hxb/ZmBEQz39N1SWmvc/TDP8BRTvRNVLxVq3cbjpb
 aJvQ==
X-Gm-Message-State: APjAAAX5tbkFCNYqIR0gDeDEALuYsm/W67nzPoWPghQhlK09JJkyv2rW
 f4Z4AlLqtm0Kz5xCKYEs57c5Ow==
X-Google-Smtp-Source: APXvYqzucI4nn7YutWvX8L0uE//H9lUG6xI41cD+IcPFnSMlnTrRp12aMq5GDHQ7A5tyjYtBqPXG2A==
X-Received: by 2002:a5d:4742:: with SMTP id o2mr1107006wrs.253.1567589314143; 
 Wed, 04 Sep 2019 02:28:34 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm41635607wra.79.2019.09.04.02.28.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 02:28:33 -0700 (PDT)
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: Cheng-yi Chiang <cychiang@chromium.org>
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <1a167659-2eb1-d9be-c1ae-4958ac3f7929@baylibre.com>
Date: Wed, 4 Sep 2019 11:28:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFv8NwKHZM+zTu7GF_J0Xk6hubA2JK4cCsdhsDPOGk=3rnbCZw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_022836_461218_8BEF86EE 
X-CRM114-Status: GOOD (  28.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Doug Anderson <dianders@chromium.org>,
 kuninori.morimoto.gx@renesas.com, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Yakir Yang <ykk@rock-chips.com>, sam@ravnborg.org,
 Xing Zheng <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 cain.cai@rock-chips.com, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 04/09/2019 11:09, Cheng-yi Chiang wrote:
> Hi,
> 
> On Tue, Sep 3, 2019 at 5:53 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Hi,
>>
>> On 03/09/2019 07:51, Cheng-Yi Chiang wrote:
>>> From: Yakir Yang <ykk@rock-chips.com>
>>>
>>> When transmitting IEC60985 linear PCM audio, we configure the
>>> Audio Sample Channel Status information of all the channel
>>> status bits in the IEC60958 frame.
>>> Refer to 60958-3 page 10 for frequency, original frequency, and
>>> wordlength setting.
>>>
>>> This fix the issue that audio does not come out on some monitors
>>> (e.g. LG 22CV241)
>>>
>>> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
>>> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
>>> ---
>>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
>>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
>>>  2 files changed, 79 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> index bd65d0479683..34d46e25d610 100644
>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> @@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
>>>       return n;
>>>  }
>>>
>>> +static void hdmi_set_schnl(struct dw_hdmi *hdmi)
>>> +{
>>> +     u8 aud_schnl_samplerate;
>>> +     u8 aud_schnl_8;
>>> +
>>> +     /* These registers are on RK3288 using version 2.0a. */
>>> +     if (hdmi->version != 0x200a)
>>> +             return;
>>
>> Are these limited to the 2.0a version *in* RK3288, or 2.0a version on all
>> SoCs ?
>>
> 
> In the original patch by Yakir,
> 
> https://lore.kernel.org/patchwork/patch/539653/   (sorry, I should
> have added this link in the "after the cut" note)
> 
> The fix is limited to version 2.0.
> Since I am only testing on RK3288 with 2.0a, I change the check to 2.0a only.
> I can not test 2.0a version on other SoCs.
> The databook I have at hand is 2.0a (not specific to RK3288) so I
> think all 2.0a should have this register.
> 
> As for other version like version 1.3 on iMX6, there is no such
> register, as stated by Russell
> 
> http://lkml.iu.edu/hypermail/linux/kernel/1501.3/06268.html.

Russell assumes the registers are not present on the iMX6 IP not having
the I2S registers, but they are present on the IPs configured with I2S
at any versions.

My databook version (1.40.a) specifies :

fc_audschnls0 to fc_audschnls8

```
When transmitting IEC60958 linear PCM audio, this registers allow to configure the channel status
information of all the channel status bits in the IEC60958 frame. For the moment this configuration is only
used when the I2S audio interface, General Purpose Audio (GPA), or AHB audio DMA (AHBAUDDMA)
interface is active (for S/PDIF interface this information comes from the stream).
```

But the databook Revision History shows these registers were present since version 1.10a.

I propose you remove the version check, but you only setup these registers when I2S is enabled:
(hdmi_readb(hdmi, HDMI_CONFIG0_ID) & HDMI_CONFIG0_I2S) until a AHBAUDDMA user needs this,
with a small comment explaining the situation.

Neil

> 
> So at least we should check the version.
> Maybe we can set the criteria as version 2.0 or above to make it a safe patch ?
> If there is the same need on other SoC with version < 2.0, it can be
> added later.
> Presumably, there will be databook of that version to help confirming
> this setting.
> 
> Thanks!
>>> +
>>> +     switch (hdmi->sample_rate) {
>>> +     case 32000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
>>> +             break;
>>> +     case 44100:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
>>> +             break;
>>> +     case 48000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
>>> +             break;
>>> +     case 88200:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
>>> +             break;
>>> +     case 96000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
>>> +             break;
>>> +     case 176400:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
>>> +             break;
>>> +     case 192000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
>>> +             break;
>>> +     case 768000:
>>> +             aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
>>> +             break;
>>> +     default:
>>> +             dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
>>> +                      hdmi->sample_rate);
>>> +             return;
>>> +     }
>>> +
>>> +     /* set channel status register */
>>> +     hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
>>> +               HDMI_FC_AUDSCHNLS7);
>>> +
>>> +     /*
>>> +      * Set original frequency to be the same as frequency.
>>> +      * Use one-complement value as stated in IEC60958-3 page 13.
>>> +      */
>>> +     aud_schnl_8 = (~aud_schnl_samplerate) <<
>>> +                     HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
>>> +
>>> +     /* This means word length is 16 bit. Refer to IEC60958-3 page 12. */
>>> +     aud_schnl_8 |= 2 << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
>>> +
>>> +     hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
>>> +}
>>> +
>>>  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
>>>       unsigned long pixel_clk, unsigned int sample_rate)
>>>  {
>>> @@ -620,6 +677,8 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
>>>       hdmi->audio_cts = cts;
>>>       hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
>>>       spin_unlock_irq(&hdmi->audio_lock);
>>> +
>>> +     hdmi_set_schnl(hdmi);
>>>  }
>>>
>>>  static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
>>> index 6988f12d89d9..619ebc1c8354 100644
>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
>>> @@ -158,6 +158,17 @@
>>>  #define HDMI_FC_SPDDEVICEINF                    0x1062
>>>  #define HDMI_FC_AUDSCONF                        0x1063
>>>  #define HDMI_FC_AUDSSTAT                        0x1064
>>> +#define HDMI_FC_AUDSV                           0x1065
>>> +#define HDMI_FC_AUDSU                           0x1066
>>> +#define HDMI_FC_AUDSCHNLS0                      0x1067
>>> +#define HDMI_FC_AUDSCHNLS1                      0x1068
>>> +#define HDMI_FC_AUDSCHNLS2                      0x1069
>>> +#define HDMI_FC_AUDSCHNLS3                      0x106a
>>> +#define HDMI_FC_AUDSCHNLS4                      0x106b
>>> +#define HDMI_FC_AUDSCHNLS5                      0x106c
>>> +#define HDMI_FC_AUDSCHNLS6                      0x106d
>>> +#define HDMI_FC_AUDSCHNLS7                      0x106e
>>> +#define HDMI_FC_AUDSCHNLS8                      0x106f
>>>  #define HDMI_FC_DATACH0FILL                     0x1070
>>>  #define HDMI_FC_DATACH1FILL                     0x1071
>>>  #define HDMI_FC_DATACH2FILL                     0x1072
>>> @@ -706,6 +717,15 @@ enum {
>>>  /* HDMI_FC_AUDSCHNLS7 field values */
>>>       HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
>>>       HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
>>> +     HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
>>>
>>>  /* HDMI_FC_AUDSCHNLS8 field values */
>>>       HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
>>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
