Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEED180D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 22:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K3ySUR0GONXjTPTD7jE4bXi4AM79E35inBMLSOymBbY=; b=drfBidKX5lttvU9C7PzWRAXZh
	HhsZ8ta0ErWOcUPfGEIlz9b6DpgdC4P3Sk9kyykNQJW4V53Ty6S7uX89CcSvIsS0JnYJkSId4Z/x5
	9QTXOiNHBqFNxa0/qNJ9wC3pj7W5vrQ31U9IYowl3sJddTi/azHM8k1TwEV8JTdWea7zQtvC8LMes
	jsG+D4wQVReJfCfG6Mb1izmH1JxGkXLa423FJeBtXvxbF4hsEiWDf/CYOOOY65sLOcPkUCtU0fc0T
	oPtyDamOGdoNa1JpWEUDk6EO4xhHIhEUe7Vdm365GkkcdixrYkoR+cYcS17tsaKv3h1VyrdZRf9+C
	WH8YgA39A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOSrY-00030m-AV; Wed, 08 May 2019 20:08:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOSrQ-00030P-UQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 20:08:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id o189so188301wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 13:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XHPdkWRxQaTT0W2poXD/4Nd9Euk4dE5H/Tw5WQByqrs=;
 b=VjfFf6n2EMQeUpdmdrN17Tg4L+m36EugLxPu3MTfpAnBFMUTGrr/dgi4CbRcoSLEca
 iQo9hMnl+o5qMLPSmnbeJM9dH1qPTcVCjnPwNRz4564/EOWF3dleVGEdkqjZ+XGQSML4
 UIRbaGDg/MJRhBYmRP58M+3SGIgrRug6qKSB9i1ZCBvWWZYYtJlnix9O1d2Lb7vw+4Tq
 PbjsZ21y4uCv/N9EtwtpxbavUmmmCIVXlssaGG3kpmzCykoo44mJHVrmJU5BQIFLbe4z
 7dwjyT27Yks1hCR6zxjVZ4bCvNxPHFCjWBXI5AkYIe6/U+KHe/nXKyvsCDtCU9zZyGkY
 T+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XHPdkWRxQaTT0W2poXD/4Nd9Euk4dE5H/Tw5WQByqrs=;
 b=ZgY2mNl2ETl73LItrSMLkLTtvDR+BV9/Ge3yDYffkI2EJrvVHP1vy5Vlb38omk2/rw
 Rl8LyftkVIn3Z5z+T84VIjqZSUzD+Cx1YmqLVdxfDGiqKZJ7ml15Klkx63NByv2nicbB
 Dvywid/2ga1FXd09r5SW5y6topUewi4iuRqP55DqnyJVudPyo5Kph2AJV54iTpRu5/6z
 pE1ubNxANWadCb2h5Y7MjNp3aTqmORTc1zXgd1V0gwYaV/2LB7FZtHxGwv1D72QroHS6
 oAUoZkI0yiFdWwIOJMD9l4Pu71KH0XxpxORmNglO4A18nt07ZRcr7HYEK3fnnTKCkJUt
 UIhw==
X-Gm-Message-State: APjAAAWz/revFD3J4ZdAML5Uu6J9+vu8/6jaZhHkcWCWC1FnUwbYrf/Q
 MxzSkFxdrkpViy9bKuD5+TY=
X-Google-Smtp-Source: APXvYqyUywHaW97+LZaAN4d+xvJAjyUCjd6ncE9980ICZWBpFnOyJ+tp8I1twvpZPzHnQJnGbUfKxA==
X-Received: by 2002:a1c:1c8:: with SMTP id 191mr41764wmb.101.1557346094643;
 Wed, 08 May 2019 13:08:14 -0700 (PDT)
Received: from ?IPv6:2a02:8071:6a3:700:484e:b84e:2cd2:80c0?
 ([2a02:8071:6a3:700:484e:b84e:2cd2:80c0])
 by smtp.gmail.com with ESMTPSA id o4sm4186961wmc.38.2019.05.08.13.08.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 13:08:13 -0700 (PDT)
Subject: Re: [PATCH] arm: socfpga: execute cold reboot by default
To: Dinh Nguyen <dinguyen@kernel.org>
References: <20190503091507.6159-1-simon.k.r.goldschmidt@gmail.com>
 <fd18f55e-2e18-44a3-7e76-e5e59984b729@kernel.org>
From: Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>
Message-ID: <078b9c11-f4b1-0767-bebc-daa4de37b2be@gmail.com>
Date: Wed, 8 May 2019 22:07:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <fd18f55e-2e18-44a3-7e76-e5e59984b729@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_130817_007722_F4CC63B5 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (simon.k.r.goldschmidt[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marek.vasut@gmail.com>,
 Dalon Westergreen <dalon.westergreen@linux.intel.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 08.05.2019 um 03:37 schrieb Dinh Nguyen:
> 
> 
> On 5/3/19 4:15 AM, Simon Goldschmidt wrote:
>> This changes system reboot for socfpga to issue a cold reboot by
>> default instead of a warm reboot.
>>
>> Warm reboot can still be used by setting reboot_mode to
>> REBOOT_WARM (e.g. via kernel command line 'reboot='), but this
>> patch ensures cold reboot is issued for both REBOOT_COLD and
>> REBOOT_HARD.
>>
>> Also, cold reboot is more fail safe than warm reboot has some
>> issues at least fo CSEL=0 and BSEL=qspi, where the boot rom does
>> not set the qspi clock to a valid range.
>>
>> Signed-off-by: Simon Goldschmidt <simon.k.r.goldschmidt@gmail.com>
>> ---
>>
>> See discussion in this thread on the u-boot ML:
>> https://lists.denx.de/pipermail/u-boot/2019-April/367463.html
>> ---
>>   arch/arm/mach-socfpga/socfpga.c | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm/mach-socfpga/socfpga.c b/arch/arm/mach-socfpga/socfpga.c
>> index 816da0eb6..6abfbf140 100644
>> --- a/arch/arm/mach-socfpga/socfpga.c
>> +++ b/arch/arm/mach-socfpga/socfpga.c
>> @@ -85,10 +85,10 @@ static void socfpga_cyclone5_restart(enum reboot_mode mode, const char *cmd)
>>   
>>   	temp = readl(rst_manager_base_addr + SOCFPGA_RSTMGR_CTRL);
>>   
>> -	if (mode == REBOOT_HARD)
>> -		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
>> -	else
>> +	if (mode == REBOOT_WARM)
>>   		temp |= RSTMGR_CTRL_SWWARMRSTREQ;
>> +	else
>> +		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
>>   	writel(temp, rst_manager_base_addr + SOCFPGA_RSTMGR_CTRL);
>>   }
>>   
>> @@ -98,10 +98,10 @@ static void socfpga_arria10_restart(enum reboot_mode mode, const char *cmd)
>>   
>>   	temp = readl(rst_manager_base_addr + SOCFPGA_A10_RSTMGR_CTRL);
>>   
>> -	if (mode == REBOOT_HARD)
>> -		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
>> -	else
>> +	if (mode == REBOOT_WARM)
>>   		temp |= RSTMGR_CTRL_SWWARMRSTREQ;
>> +	else
>> +		temp |= RSTMGR_CTRL_SWCOLDRSTREQ;
>>   	writel(temp, rst_manager_base_addr + SOCFPGA_A10_RSTMGR_CTRL);
>>   }
>>   
>>
> 
> Applied, thanks! I think this patch needs to get back-ported into stable
> kernel version as well, right?

Well, it's certainly wrong as it was.

But as I saw myself, switching from warm to cold reset might have some 
implications that would at least in some configurations require changes 
to existing configurations to keep the board booting.

So while this certainly fixes a bug (warm reboot is executed instead of 
cold reboot like standard/requested), I don't know what's the standard 
procedure for a backport regarding fix vs. breaking boards.

Regards,
Simon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
