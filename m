Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF2CCA9C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MTZfjIXjNvImD0SiHR1sKF/A/z4sZNhThXCGbuY5DgE=; b=IfX797l0PkscWgdeQlCN3y4CP
	R92pkgnbfzPtgyRtb9tF6yBtA3i0CYBG+YErtidwADghICN5r1gr/9YiAbMi/esl8Mb86dbkowEnS
	QvfsNBqzxFM5AkPaGNC60rAJqrjm4vALKSE5pCqWDwZEMg/PP5Cf3Mc3IfVS6d46FGViEP4veuCUJ
	SrfjN3rfQSmWV3QzhK/ZmYHsIDPwhZk8gA6FV8+87PjDvbOUeh+nJpIMPuS4Dr5psuvdNiARFOp9o
	5tfaVf/0c9aZMqeQT8FnIXwcgWj7WehFi9YlMQ+3jtzci6zvjhQ832+gX0hXi7OCqTYpEHo8gx4Jc
	fxKOygObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGlKU-0006V8-Nj; Sat, 05 Oct 2019 14:46:42 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGlKN-0006Uj-6K; Sat, 05 Oct 2019 14:46:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id s17so4550041plp.6;
 Sat, 05 Oct 2019 07:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2GBi70vECOwhvce3BLHU/TuI7brFfv83/feCAkJLZ/c=;
 b=UKtEXJel0u05+vlSu3xZpzDAWFVP3LWyjOaJSTpUd/sc07UrcEjRjQz3K1Hrp47pnq
 IgOc3c7udWwb7ObmkWeyotAPTVVkWJGlG+DHJilRYLdaCXmAzdHVLAU2M2XPuczpt+hB
 S9x0fC9QxsnYkh0BWetanvmy4YOtfm24DnwS4g72/Qujah1WSvAMvuU/yqk0Y3Pgi0wi
 YBaKjRTKWwcsVo2m4G9gR6rzYsIO16hP0S+Uv3TBH1UGfDkYx6bSiYrFEN3H5HmSIOkd
 NlW90npX6MThEl7ilkxkubw+LMkPCJkC2sbC12WB87SUErtbt2C9kY3rgZP0dlihY/pP
 Bymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2GBi70vECOwhvce3BLHU/TuI7brFfv83/feCAkJLZ/c=;
 b=rXDwJhcp6RYwQ3ufIG5F1x9CoCTUP6I66fYc1g17DDmIhFstKNGgWH5fEKKsrXH5Yi
 cQENX1st8QxJC9XGeZJ8SeUcwcK+quDBXw4Ti6VUaKP6xv4lguZ5IBIFniMHckVCmw1m
 1Di1Ty+pZ5kwJy6nqqV9ulv9S7EV4qzLGTlb+KpZ0gVmjOQu4FdUJOiwaNLlzAYZOciY
 yhg8DPoofNsIMEzTCvDhiwTdkdxfaowR/A3Hk+RFox/e8vu36o703getK2RbHvoxkiHk
 dgyC3m07LNtEBIYxXL5JlwaCe4iEzYzg4jeZeIQWcZMGbCNsd/WC3283lZG+9BURH19q
 nqQQ==
X-Gm-Message-State: APjAAAVOTxh+PmH4rSSJIu4rkA0cPpS3XY6GUmFUIgCUxovpKo5CslwZ
 zkyw+jxgZFdIn7dSYLvnTiw=
X-Google-Smtp-Source: APXvYqy5nnJWpToIzpmPi2+B9C1Dqm2j3J7M5hxdQH8GNYd8wNm8nJ3WWc4HSSeAVwLdt3kRX8x5zg==
X-Received: by 2002:a17:902:ff12:: with SMTP id
 f18mr21218570plj.266.1570286793693; 
 Sat, 05 Oct 2019 07:46:33 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 16sm9934352pfi.55.2019.10.05.07.46.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 05 Oct 2019 07:46:32 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] watchdog: mtk_wdt: mt8183: Add reset controller
To: Yingjoe Chen <yingjoe.chen@mediatek.com>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-3-git-send-email-jiaxin.yu@mediatek.com>
 <a0b2e9a3-ca77-814f-b7bd-edc69f00fce2@roeck-us.net>
 <1570255179.29077.24.camel@mtksdaap41>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <70b77fb3-7186-734d-3415-64acb30bab8f@roeck-us.net>
Date: Sat, 5 Oct 2019 07:46:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570255179.29077.24.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_074635_255577_4A47B82D 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, broonie@kernel.org,
 yong.liang@mediatek.com, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 lgirdwood@gmail.com, tzungbi@google.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 eason.yen@mediatek.com, perex@perex.cz, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/4/19 10:59 PM, Yingjoe Chen wrote:
> On Thu, 2019-10-03 at 06:49 -0700, Guenter Roeck wrote:
>> On 9/27/19 3:31 AM, Jiaxin Yu wrote:
> 
> <snip..>
> 
> 
>>> +static int toprgu_reset_assert(struct reset_controller_dev *rcdev,
>>> +			       unsigned long id)
>>> +{
>>> +	unsigned int tmp;
>>> +	unsigned long flags;
>>> +	struct toprgu_reset *data = container_of(rcdev,
>>> +				struct toprgu_reset, rcdev);
>>> +
>>> +	spin_lock_irqsave(&data->lock, flags);
>>> +
>>> +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
>>> +	tmp |= BIT(id);
>>> +	tmp |= WDT_SWSYS_RST_KEY;
>>> +	writel(tmp, data->toprgu_swrst_base + data->regofs);
>>> +
>>> +	spin_unlock_irqrestore(&data->lock, flags);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int toprgu_reset_deassert(struct reset_controller_dev *rcdev,
>>> +				 unsigned long id)
>>> +{
>>> +	unsigned int tmp;
>>> +	unsigned long flags;
>>> +	struct toprgu_reset *data = container_of(rcdev,
>>> +					struct toprgu_reset, rcdev);
>>> +
>>> +	spin_lock_irqsave(&data->lock, flags);
>>> +
>>> +	tmp = __raw_readl(data->toprgu_swrst_base + data->regofs);
>>> +	tmp &= ~BIT(id);
>>> +	tmp |= WDT_SWSYS_RST_KEY;
>>> +	writel(tmp, data->toprgu_swrst_base + data->regofs);
>>> +
>>> +	spin_unlock_irqrestore(&data->lock, flags);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int toprgu_reset(struct reset_controller_dev *rcdev,
>>> +			unsigned long id)
>>> +{
>>> +	int ret;
>>> +
>>> +	ret = toprgu_reset_assert(rcdev, id);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	return toprgu_reset_deassert(rcdev, id);
>>
>> Unless there is additional synchronization elsewhere, parallel calls
>> to the -> assert, and ->reset callbacks may result in the reset being
>> deasserted while at least one caller (the one who called the ->assert
>> function) believes that it is still asserted.
>>
>> [ ... and if there _is_ additional synchronization elsewhere, the
>>     local spinlock would be unnecessary ]
>>
> 
> I'm not sure if this count as additional synchronization, but you could
> get exclusive control to the reset by calling
> reset_control_get_exclusive so others won't try to reset the component
> while you are using it.
> 
> In this case, you still need spinlock because other drivers might trying
> to reset their components and they share same register.
> 
That isn't what I meant. I referred to synchronization in the reset
controller core. AFAICS the reset controller core prevents parallel
calls into the same reset controller driver using atomics. Unfortunately,
it is not well defined if additional synchronization on driver level
is needed - some drivers implement it, some drivers don't, and I don't
find a documentation. Maybe Philip can provide guidance.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
