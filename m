Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D35419AE93
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 17:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFztUNUiitTFgpBbGukq6QC1C/L/kJ6jEQCif41s1CM=; b=uccFrnBZTe83W4
	M7EkG8wPZhlKs8gOH/6d/O0B+RZvL4/HjMmVyTJm7RDhta20jL4f0SCxlJw0bdEUizty83WHsC0U4
	qO2tmsHL/OaFmL6zitvkNRIi5kugFNpo6cd0HCFEsFZOatUwbOakJh4OumKQkHZUu78wF/tDAjNX5
	eIrPloNiEf0ToG+oBjdQNGaPBUjDm/i09tMmHJDcbHjJ3UyzoFYOCYAMNxksy8i0WFVEUuAvBqjDN
	BDhSqYkh94vC28jEasvPvAM8clmZrsoJ3NCmr/zFDBIpSU01mnIK4An6P/MQdmm6cnVfA1rlGeKIr
	oHLIb1v551iLKW/VwXpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeze-0003Ad-LV; Wed, 01 Apr 2020 15:09:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJezT-00038Z-QK
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 15:09:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id d77so52171wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 08:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QsyC5XbpdA/rmlnfYe4iva3k7o6K19W7aGVX/8LE71s=;
 b=drXfHyn/Sgn/OQv1If63LxfC2slBajC0r8s8otOEk+FQczecih3n6j44CKfWyCZPc8
 rK3gbuRyGSnRn188TuhWL1ESm1LdOcRtYLwwkpi4AVRqxzdsDFr14JIeE0ZQ15cqMBxn
 2hVkkUWjIsVivWqAEwQS513sfDOGRlL/Jkr+k7h15OIMMJi5CtVSCw7HddnIp9CHFXqP
 yxY9ZOXj26HvIa3rm5udKyFVzdihal6q+oJgyuprERWuh3NPKBjxKinCiCp0AlBgsRvw
 1ldlE5eF+RwYGcFHTSXCqEH9VD2YHC76OYah5Vq3yannF6Maz9YB613bJdG3n3N312/R
 TwEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QsyC5XbpdA/rmlnfYe4iva3k7o6K19W7aGVX/8LE71s=;
 b=X7XH8OapEJtrxCDcgdzg7pDO5i16Onhxbp+WSyMloXMOzBEyncd8V7Iamxcs7aSZOl
 HGp1Crde+drZVXq94Jq+CC3mdefBmEsjD8xcSHzrRNjykx+nFskfp5XtzqBlpzMrQlvU
 obGY66GySx5XKr7rSSBlTsFQ3gjbWU5T5fPdJEy8wpM/aVZo4+QoRCXopzkJ93YxzNXi
 EWcgXwX7fBG8moV8DDG0GJqg3h+SE/3MoF2P9KhRep0XdW7WBhEGF+tWVEmgo0KFP4yP
 hlmm5k3RdKJGn59ODB+kLddfwu79rpjHD9EZBrpjAbWZFiekceHqgTwNtJsxQ/qI6vWy
 SU4w==
X-Gm-Message-State: AGi0PuaCo1aVeIvzvZlZa6oL67LU7SrOZZBaqkceTPJ8J5C97A/WchuH
 mCzFoylJfJQzSKIf/aE0rSpjYQ==
X-Google-Smtp-Source: APiQypJaF4faY8l/5iAT9eY/9dKjhFsuJY2Qtseh5JoQOXF3ILTEkl8vRYMSOY5CmJmhoXVeWiwtvA==
X-Received: by 2002:a05:600c:4145:: with SMTP id
 h5mr4648989wmm.3.1585753753742; 
 Wed, 01 Apr 2020 08:09:13 -0700 (PDT)
Received: from [192.168.0.136] ([87.120.218.65])
 by smtp.googlemail.com with ESMTPSA id d1sm3361008wrm.86.2020.04.01.08.09.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 08:09:12 -0700 (PDT)
Subject: Re: [PATCH V4 00/13] Add driver for dvfsrc, support for active state
 of scpsys
To: Henry Chen <henryc.chen@mediatek.com>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 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
 KEmKjLDvB0pePJkdTw==
Message-ID: <2737cc5c-3876-6861-c44f-fc9f552bbdb9@linaro.org>
Date: Wed, 1 Apr 2020 18:09:11 +0300
MIME-Version: 1.0
In-Reply-To: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_080915_865638_B9404CF4 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>,
 Arvin Wang <arvin.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Henry,

On 3/13/20 11:34, Henry Chen wrote:
> The patchsets add support for MediaTek hardware module named DVFSRC
> (dynamic voltage and frequency scaling resource collector). The DVFSRC is
> a HW module which is used to collect all the requests from both software
> and hardware and turn into the decision of minimum operating voltage and
> minimum DRAM frequency to fulfill those requests.
> 
> So, This series is to implement the dvfsrc driver to collect all the
> requests of operating voltage or DRAM bandwidth from other device drivers
> likes GPU/Camera through 3 frameworks basically:
> 
> 1. interconnect framework: to aggregate the bandwidth
>    requirements from different clients
> 
> [1] https://patchwork.kernel.org/cover/10766329/
> 
> Below is the emi bandwidth map of mt8183. There has a hw module "DRAM scheduler"
> which used to control the throughput. The DVFSRC will collect forecast data
> of dram bandwidth from SW consumers(camera/gpu...), and according the forecast
> to change the DRAM frequency
> 
>            ICC provider         ICC Nodes
>                             ----          ----
>            ---------       |CPU |   |--->|VPU |
>   -----   |         |-----> ----    |     ----
>  |DRAM |--|DRAM     |       ----    |     ----
>  |     |--|scheduler|----->|GPU |   |--->|DISP|
>  |     |--|(EMI)    |       ----    |     ----
>  |     |--|         |       -----   |     ----
>   -----   |         |----->|MMSYS|--|--->|VDEC|
>            ---------        -----   |     ----
>              /|\                    |     ----
>               |change DRAM freq     |--->|VENC|
>            ----------               |     ----
>           |  DVFSR   |              |
>           |          |              |     ----
>            ----------               |--->|IMG |
>                                     |     ----
>                                     |     ----
>                                     |--->|CAM |
>                                           ----

It would be useful to also add the above diagram into the commit text of
patch 09/13. By doing so, it will be saved into the history, as cover letters
are discarded.

Thanks,
Georgi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
