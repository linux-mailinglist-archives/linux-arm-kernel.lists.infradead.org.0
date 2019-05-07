Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE6616D98
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 00:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DVpskjv+3eRz80E9yFEP0FW5BaPuwyeuMk2te961qBU=; b=No79i7oHizWtwOpM1SJdABoOs
	UOIbG/xuH6ymE7u4RCbalE43qo5QUYKh2h8dBxW03jLoJ2exgU8C1bGT+lOO/oQRGruQmfDAjYJA7
	MTT23yddWUqneAHdJnJXwRJW/akPuuJ4ulfrtjeLSwcm7Ut7RNbes/wa9NpWS8fFyeBJgKSGgoe6l
	UbhtE8joTQOPBR0df/02Cbmwsb8R+JXfKeQXsFBZe4Fc4Of5EbtXXlEmyyuO0LKgfseCwzM4Yap1h
	bOqXA1j5dH/KmRmFWgdg9MYTiIK8Lt1+3Jb/99sjHcSVL/fT+wPyn8LV3cB7G2JlIfKvu5TMp82cO
	izpmZlveg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO8rN-0007SR-Ku; Tue, 07 May 2019 22:46:53 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO8rG-0007RO-5m
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 22:46:47 +0000
Received: by mail-ed1-x542.google.com with SMTP id m4so20226204edd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 15:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=2SBXkPPsS90MxklCe6MIGlkttGdHW3kI9AU6dDeoWq0=;
 b=c8YCsFOL5XUurB/wLU01FUTlJ+LmbsoTAONIDSv6Ve2y9sfQIO00JcBoneTawrU37S
 ZxHXBrqZPJHAB7Y9fHXTTthRpBiTxbWYVk+FE08Jp0WYjYvYKAl5oBOeeH4MtBg/3L0C
 h0QAqHEOXzezLEUlvcU8JoSmAFNwDCBsNmcWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2SBXkPPsS90MxklCe6MIGlkttGdHW3kI9AU6dDeoWq0=;
 b=iyQNiG4QPiAvXbt4z3SbC1kIsdaFllWWHTqp74ld3MESlLKUecUQUyR5cc9aIvQnz1
 Cp4wz0FxVaoWEVn16wz/F8lgSRhLqdAiFSQXRowHNuQO7BAN0vTS4oWY3e0F1M+JuMOc
 LJHBs2HrImxVrvUlPr3bxoUoEEC1O4KeCp9xGdtCeGl77zraqKfW09DFLSC8ob0pFKLk
 /BH1sWjEPkqli4/Pj+F2jMWdOoT9XsckyxBAx5nJd4a0Z66YqoHfH+ut/uoxQsRZGTf6
 4qLADYWnbohm8cAwan8X/kk26szi3p+Jx/tEMPXv5SFEUryfbHjE74W0HziRsRlGPhiC
 2iMw==
X-Gm-Message-State: APjAAAVqtau3wlhPDpCVsg+JVKIRuZ24utnOTkb6DkHzjtcw2KfLGqko
 els/EoZ3OlQJ2Daf2iiYDw2Pig==
X-Google-Smtp-Source: APXvYqyXCGYgKhd7HiuSIvjEImJkx/UgMafy843ubjLvtfYY0p7CumAUjx/69TyceblENiM727jj+g==
X-Received: by 2002:a50:c201:: with SMTP id n1mr35712206edf.244.1557269202927; 
 Tue, 07 May 2019 15:46:42 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id s53sm4603529edb.20.2019.05.07.15.46.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 15:46:41 -0700 (PDT)
Subject: Re: [PATCH 2/2] mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data
 hold time problem
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Stefan Wahren <stefan.wahren@i2se.com>
References: <20190506170115.10840-1-scott.branden@broadcom.com>
 <20190506170115.10840-3-scott.branden@broadcom.com>
 <673b3d25-0256-9cd7-c89a-673546e69f3a@intel.com>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <293b4f12-c74f-35fe-80d7-fdb25405e499@broadcom.com>
Date: Tue, 7 May 2019 15:46:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <673b3d25-0256-9cd7-c89a-673546e69f3a@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_154646_229882_0AD05200 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-mmc@vger.kernel.org, Trac Hoang <trac.hoang@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On 2019-05-06 11:31 p.m., Adrian Hunter wrote:
> On 6/05/19 8:01 PM, Scott Branden wrote:
>> From: Trac Hoang <trac.hoang@broadcom.com>
>>
>> The iproc host eMMC/SD controller hold time does not meet the
>> specification in the HS50 mode.  This problem can be mitigated
>> by disabling the HISPD bit; thus forcing the controller output
>> data to be driven on the falling clock edges rather than the
>> rising clock edges.
>>
>> Fixes: f5f968f2371c ("mmc: sdhci-iproc: suppress spurious interrupt with Multiblock read")
> Is this fixes tag correct, because it doesn't seem related.  Maybe explain
> that in the commit message.

I chose this tag to assist stable kernel maintainers so that the change 
does not produce merge conflicts backporting to older kernel versions.

In reality, the timing bug existed since the driver was first introduced 
but there is no need for this driver to be supported in kernel versions 
that old.

Do you want me to add such to the commit message?

>
>> Signed-off-by: Trac Hoang <trac.hoang@broadcom.com>
>> Signed-off-by: Scott Branden <scott.branden@broadcom.com>
>> ---
>>   drivers/mmc/host/sdhci-iproc.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
>> index 9d4071c41c94..2feb4ef32035 100644
>> --- a/drivers/mmc/host/sdhci-iproc.c
>> +++ b/drivers/mmc/host/sdhci-iproc.c
>> @@ -220,7 +220,8 @@ static const struct sdhci_iproc_data iproc_cygnus_data = {
>>   
>>   static const struct sdhci_pltfm_data sdhci_iproc_pltfm_data = {
>>   	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
>> -		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
>> +		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 |
>> +		  SDHCI_QUIRK_NO_HISPD_BIT,
>>   	.quirks2 = SDHCI_QUIRK2_ACMD23_BROKEN,
>>   	.ops = &sdhci_iproc_ops,
>>   };
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
