Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186F1116900
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tStuS9CHj1rcMTbfTvHXh6KdssqKJzliJnFLRi6z3PE=; b=SYVetri8c8MdIS4z/8MbPc1Ae
	/T/sMKdc+W+AcZKY1E3kdG62LObZaFnzXgK4V9M8zrdz19E4blEe2l/D01iMKfwSFuFNiZhP05H59
	s0tn4NQxu62XISPIavA9phmSAQTZ8tOuPFl1zJ8dCOpRO2SGjBhKg9FWPzkfQoxoQUWPNDBl4Ur25
	O/t++kAM/zIp7SpLYRYHAgDQRpJkbCq7E0dlZu7tIDgPy3nRrjfZSf2c1bqE4nJ9G/X49JBA/o4yj
	8deNkthOcjIjnZe5DPkj6vfOrnSYdLTz9lRfwcI+jKnAzvV1mSt99PyJBqjqkJwvY+AKo3VrY/9/O
	Yrj+z2AUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieF9y-0008CI-5k; Mon, 09 Dec 2019 09:16:54 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieF9p-0008BF-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:16:47 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB99FEFg021367
 for <linux-arm-kernel@lists.infradead.org>; Mon, 9 Dec 2019 09:16:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=mYEfhxjM0ILb+XMlHOtp9XHaBPVEI+/6QQqocgNXGdY=;
 b=nIRaegXKspiKE88HxNH6WjH7FyQNO5dMclhW890Uu2Fdq29E7bj8StIEi3DIiLDpD5Tt
 woBdm74F/5iAx90vefct5/fTyXpfgeTkevSleiiFaEjhwa0ZYrm8fvdYIrsMzpUq+mH0
 ELbzSFy9yrBQ4PbhZpAMiUzVsUzH6WjYy1WTDwbMP8o144d1ZtWAxqy3Tk0VPIQlScaC
 AjhScw409wDtubAiG9otQOfwCsqUgFXY27h13RIYhHUErGtT+kJ2+5KD3r2I0IOe0kFd
 G/tEXbDtsONuRzRnOqZnfZ4Jzqxa4ezZmUsczCBH9Rd+D6pY2OuZQXztnpULZrn7JGlt Dg== 
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 by mx08-00252a01.pphosted.com with ESMTP id 2wr1er0vfb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 09 Dec 2019 09:16:39 +0000
Received: by mail-wm1-f71.google.com with SMTP id s25so2837412wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 01:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mYEfhxjM0ILb+XMlHOtp9XHaBPVEI+/6QQqocgNXGdY=;
 b=SuMFst1GNtlvgI4cGzuoakXgAu2yerkgS/GDEcxL7qi9KS61f4biV8Fp04WzdqOFvn
 j1Gp7UyQPmGUKIx4MxpdKsGM24SzZGWzt/fIRXi8bPyMFBERrKD4MBhBhYMoo8ZXUIxP
 P48gvIosiJqetY/6b62Qk027EewfB7LmrwKB2YskMOKcQEClBnyig6OPlKOUeXTP095S
 EbgVNQobXZjDI8CK0EhfTfs03R7Fzsd0/Uh0xNVlFtrxShdzlqfsT/p7ZEA7VFEGhgFc
 R+Iqq3a32SCC7tlondsDN8+BEzTPt30nffEsF+4JSL4340+SFl0EpRmqR4Zs17A5lGt7
 aYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mYEfhxjM0ILb+XMlHOtp9XHaBPVEI+/6QQqocgNXGdY=;
 b=pW6a0hv3wBYgGt8aygElsxWKx2Tw5+KKu0KMP2IuCOQpQ4txcqdadKIylzeYPErvoO
 uLJeuS3k20soRjIoUFgoddREeXfw8TwBUB24RJmLb/A0zonSd6lnygdvDa66Wmxp+MZK
 14xx/qjmu3l26nCOJ0rYYo+kBUBDpZTrPQ7sgCkexyxevBHaAZXuvkYH+x66tdobW8C/
 I9ELouKUAGWRhC2jz4B8cWypYlaIyN9njXOutEzn+x4RggB7RX8/qXt362nPHbM/XEIb
 S8BSNStROY3iP4UhZ35AcL8YIcV7h3EB//mhdpMQfSfAQIgjQPdkkDHtDeChhVYZKNjU
 RtyA==
X-Gm-Message-State: APjAAAVYnpBYmTA8lXD+ftkMayuvdTLlh4PUeMzt9cYeCL6eZ4BY+KmM
 kj05N/o0xPHZApbcMFCu4HpJ+SoN9ABsZURrIZFumruNHfv89yjH6O7ISzsrKsiwj79Xyf0UX2J
 //uK0/t1/jWiSJYJ0PKsa5/DdtM7t8W+Yh1A=
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr845424wrk.53.1575882998148;
 Mon, 09 Dec 2019 01:16:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqzT3Io5pOspq+kl6pPKQBqKVgBf9LVLOJQm7nVHNRzkVmlSJL3zQmrWoRTiXlnHeBQS8aQY4w==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr845391wrk.53.1575882997834;
 Mon, 09 Dec 2019 01:16:37 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:340b:2c9a:9ebb:aeea?
 ([2a00:1098:3142:14:340b:2c9a:9ebb:aeea])
 by smtp.gmail.com with ESMTPSA id f1sm12909270wml.11.2019.12.09.01.16.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 01:16:36 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: bcm2711: fix soc's node dma-ranges
To: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
References: <20191204125633.27696-1-nsaenzjulienne@suse.de>
 <711470d3-e683-69d4-8f4e-791a76faab29@gmail.com>
 <e72de603-2ad9-5a3b-109e-8ee14bf3293c@raspberrypi.org>
 <b778e086-378d-9271-6370-7fd4e60ae250@gmail.com>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <c085e99f-c1b3-1729-0170-fa17a1aea995@raspberrypi.org>
Date: Mon, 9 Dec 2019 09:16:35 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <b778e086-378d-9271-6370-7fd4e60ae250@gmail.com>
Content-Language: en-GB
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-09_01:2019-12-09,2019-12-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_011645_775638_72B0766F 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mbrugger@suse.com, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/12/2019 18:13, Florian Fainelli wrote:
> On 12/6/19 2:16 AM, Phil Elwell wrote:
>> Hi Nicolas,
>>
>> On 06/12/2019 00:08, Florian Fainelli wrote:
>>> On 12/4/19 4:56 AM, Nicolas Saenz Julienne wrote:
>>>> Raspberry Pi's firmware has a feature to select how much memory to
>>>> reserve for its GPU called 'gpu_mem'. The possible values go from 16MB
>>>> to 944MB, with a default of 64MB. This memory resides in the topmost
>>>> part of the lower 1GB memory area and grows bigger expanding towards the
>>>> begging of memory.
>>>>
>>>> It turns out that with low 'gpu_mem' values (16MB and 32MB) the size of
>>>> the memory available to the system in the lower 1GB area can outgrow the
>>>> interconnect's dma-range as its size was selected based on the maximum
>>>> system memory available given the default gpu_mem configuration. This
>>>> makes that memory slice unavailable for DMA. And may cause nasty kernel
>>>> warnings if CMA happens to include it.
>>>>
>>>> Change soc's dma-ranges to really reflect it's HW limitation, which is
>>>> being able to only DMA to the lower 1GB area.
>>>>
>>>> Fixes: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
>>>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>>> ---
>>>>
>>>> NOTE: I'd appreciate if someone from the RPi foundation commented on
>>>> this as it's something that I'll propose to be backported to their tree.
>>
>> The 0x3c000000 size was a mistake that arose from c0000000 + 3c000000 =
>> fc000000, but that is mixing apples and oranges (actually DMA addresses
>> and host physical addresses). Please correct it as you are proposing.
> 
> Do you want to add an Acked-by or Reviewed-by tag to make this statement
> official?

Here you go:

Reviewed-by: Phil Elwell <phil@raspberrypi.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
