Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C598811D893
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 22:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCiYa9DpPB+D+ial7lPwRGj9HYzL9lr6/y3lBHN9SZI=; b=nGZLrZhF/0uI5x
	ZLyR982FRTJGmt36aQ8lGvYi01vnni8nrZQFy4O3yAOUSoOjiN3vdyqU8zc0CsJ4QfdWEY1sU66sD
	eRau0LhGU+PDNspf07t7tpVI1+eNRo1xGc9cmcZmxIWGS2Q9mkCXfruLcenx7uyWhp6D9lDUWZfTc
	wFP3R+YhhLDpcvcTHyBjkpTrPz3j732breHr85b6Qft1BZ1PetUnFfCyxnOzRGqF91pwrUkayNsnQ
	Kl9T5CO48CHpLxol4Rkn/WOt7lEKsXjtVb0o3JMZ3kx4yjVhK9Y9vroN3Fnm1XFc7ZF9s4XxxJbyO
	YjWG2xVWUOJxUZKOoHAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifW2z-0005cp-8B; Thu, 12 Dec 2019 21:30:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifW2k-0005aN-2K
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 21:30:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so4374815wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 13:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Ar3WGUfhwEDSSCq+9U1VZWrSE5XYUNVdZnayKnIhqMo=;
 b=tohT6lXBhBc2QJ3oUJgFUSmQ7INkSx6FdEKCFGb0sJVtpqkXC+tujNgxj/fj2RPgvC
 /ojbALCKFzuioc5m2Oc5vymHLHGEc1677h4HuhZrW9jfDHZOVEJgtMRcb3dSSvjHnkvu
 cnn2i2s9LuMyaFISELlYzr70zXQ+oHotcglIWaf7KuMdUj0mikYSoHWHeQMZE0a4gs3E
 c8MHuf4nOcEzqckIyTI7p0PVThKQ0grDjWKV7smF3qVSELFnMMsW1jxkx9ZEbrlwcHMV
 GeV3IATLxC5H7dJ0BUR96f3PGXYDZ6dqb0OpaIxx7YWvLonmEEpd2alYGb1eqgcvn1CG
 As8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Ar3WGUfhwEDSSCq+9U1VZWrSE5XYUNVdZnayKnIhqMo=;
 b=LYhGF07ZOprPQ1s6ySTy1SWVq8WfGQZSkvrfKZZVHCjdXJ3WoBNvdtSfiomiBsoJoj
 sytQE9jLelQlgrOIWJ1B2aAe/nBKzuf7gu33waAkB/CR7aeczM00FEM25VyaTN8Hn8a6
 x7uwJYNWYAs45SRFmdhULDJPKSbKiKxPcaaXRCYPU/vd7YP3IT2Qn/1E7WxzA55iKeGu
 pLdhnLRXGgDlmofNdj0CJm/PM0tuYL47yTChSSVaUY2gjg3CdGAJD6D5yCafkI0AuO/l
 g7tH9lLCMBj+sSZ2yAWI4a9woPiD0UNmLCOeYeC+irHm9X2L5KMeB6g8/ffYEk1aQLnz
 xmjw==
X-Gm-Message-State: APjAAAXCTJ2+A7w7Iu5klYdH2qoRdGpH72X3gocg8csg0wlVdVNb1Na5
 oDC2W1SU9moRSTrtQI1Mcwgktg==
X-Google-Smtp-Source: APXvYqxdK6wPYL6bpRlBDpDABeuKHmVhx787FfsFi1e5hzInLniJKOGj9A9UNuqksGO6GoeLEepgOA==
X-Received: by 2002:adf:e3c1:: with SMTP id k1mr8247798wrm.151.1576186240242; 
 Thu, 12 Dec 2019 13:30:40 -0800 (PST)
Received: from ?IPv6:2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca?
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id n8sm7605285wrx.42.2019.12.12.13.30.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2019 13:30:39 -0800 (PST)
Subject: Re: [PATCH 3/3] media: platform: meson-ao-cec-g12a: add wakeup support
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20191212145925.32123-1-glaroque@baylibre.com>
 <20191212145925.32123-4-glaroque@baylibre.com>
 <CAFBinCDjfzQX=ZG=cgTYo=icGNU-t4Kqnu0Bu5qRLsRk_s6S_Q@mail.gmail.com>
From: guillaume La Roque <glaroque@baylibre.com>
Message-ID: <b923c0f0-3627-121a-fa4f-49bd0c40825b@baylibre.com>
Date: Thu, 12 Dec 2019 22:30:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCDjfzQX=ZG=cgTYo=icGNU-t4Kqnu0Bu5qRLsRk_s6S_Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_133042_225648_E036CEBA 
X-CRM114-Status: GOOD (  15.99  )
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org, hverkuil-cisco@xs4all.nl,
 linux-amlogic@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,


thanks for review

On 12/12/19 8:57 PM, Martin Blumenstingl wrote:
> Hi Guillaume,
>
> (I don't know the specifics of this hardware but I have two general
> comments below)
>
> On Thu, Dec 12, 2019 at 4:00 PM Guillaume La Roque
> <glaroque@baylibre.com> wrote:
>> +#define CECB_FUNC_CFG_REG              0xA0
>> +#define CECB_FUNC_CFG_MASK             GENMASK(6, 0)
>> +#define CECB_FUNC_CFG_CEC_ON           0x01
>> +#define CECB_FUNC_CFG_OTP_ON           0x02
>> +#define CECB_FUNC_CFG_AUTO_STANDBY     0x04
>> +#define CECB_FUNC_CFG_AUTO_POWER_ON    0x08
>> +#define CECB_FUNC_CFG_ALL              0x2f
>> +#define CECB_FUNC_CFG_NONE             0x0
>> +
>> +#define CECB_LOG_ADDR_REG      0xA4
>> +#define CECB_LOG_ADDR_MASK     GENMASK(22, 16)
> do these registers have some RTI_* prefix in the datasheet?
> that would make it easier to spot that these registers belong to AO /
> RTI (while all other registers belong to the CEC controller)

as i say register info come from amlogic BSP.

nothing in datasheet unfortunately. in amlogic code , this register are called AO_DEBUG_REG0 and AO_DEBUG_REG1 in amlogic BSP...

>
> [...]
>> +       if (ao_cec->regmap_ao_sysctrl)
>> +               ret |= regmap_update_bits(ao_cec->regmap_ao_sysctrl,
>> +                                        CECB_LOG_ADDR_REG,
>> +                                         CECB_FUNC_CFG_MASK,
> why do we need to mask CECB_FUNC_CFG_MASK (from register 0xa0) in the
> CECB_LOG_ADDR_REG register (0xa4)?
good point, it's an error i will fix
>
>> +                                         logical_addr << CECB_LOG_ADDR_SHIFT);
> FIELD_PREP(CECB_FUNC_CFG_MASK, logical_addr) would make it consistent
> with the rest of the driver
> then you can also drop the #define CECB_LOG_ADDR_SHIFT
i will
>
> Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
