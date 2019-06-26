Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4015713A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 21:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x6ztw8W4LI/BrPd7oqKu/GAla+Q1pfLwppwEJGHKOxI=; b=KSHLwOTwUAmPYBAZjN6534df4
	sca5l9leCFXw4ubzMEobVat9Dt+lFT14MvwbFWxMJ5omKRKI7yv40vBSJqnJaPSziO3BzE+eyWP5c
	ybfLC7bFPqOeMsSTjbdB1dUjjFBtq56caplcTFfsmiT53M1Z18jZpPdGr94U0KPh/oSFwmNfcYqXu
	MblWkwTDkpocDSdul3IvLkDyuq26hLJsNzXvCJNhX7Q72VfmAlIT8h7bdsaq6gCnx8EJ1h4u53aTz
	sESWJEa7Qwcy5eBAdOQ40FokEYKSnNYhFKG40dGAeErXoPoTFV0zwH/tZioCFoomTfx2+Y1DwEgca
	5egaLDNQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgDBz-0007SY-UI; Wed, 26 Jun 2019 19:02:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgDBZ-0007PC-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 19:02:27 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A77BD60F3A; Wed, 26 Jun 2019 19:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561575745;
 bh=ssCLH2DoKTlXWGV9yiNUwpiNQxntMU7hy1HNqKFxCCg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=JP2W7Z05S65V6m1oiRDauhdOVwpkcW3VqS+0cRxwy+TI833fdK8i1Y7AMgT03vyFl
 wCI8gS2D/iBlGWF2j/a3BAPfg1xnq5VfRy2UNDo1E6ZOfzGmJi7SX5HeEyHcEe0ZxP
 KlqmWYTeyiSh3ktK3qZQasSBesSPrrTmsZi4qWFI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [192.168.1.100] (unknown [157.45.87.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 02D37611C3;
 Wed, 26 Jun 2019 19:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561575743;
 bh=ssCLH2DoKTlXWGV9yiNUwpiNQxntMU7hy1HNqKFxCCg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=oQTNqSlBgSWSEUG6XfeB1st98U6hzR/AGOTiQ15o5PkdK1RlhOT1Dp8Ogl/L8ITFh
 5oOTx3dBfanB5UeBvQMs40Wb4khZ/Qc7d0xpXDHFT35O+l6/V6qT7S+TfGXhgGrVtc
 tv7kxa597Do8x+Un4bBvHmHuyhhwxCD/RZSqFlt8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 02D37611C3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv3 1/1] coresight: Do not default to CPU0 for missing CPU
 phandle
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <cover.1561346998.git.saiprakash.ranjan@codeaurora.org>
 <635466ab6a27781966bb083e93d2ca2729473ced.1561346998.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYky6D5EsCL2vOa4hHaqTQRXbN+TT0pSzFrykDL_fHEkiBQ@mail.gmail.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <68fea180-c3a4-b7d9-09b6-1d3ddbc89f9d@codeaurora.org>
Date: Thu, 27 Jun 2019 00:32:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANLsYky6D5EsCL2vOa4hHaqTQRXbN+TT0pSzFrykDL_fHEkiBQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_120225_889610_21F88D9E 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>, Andy Gross <andy.gross@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 6/26/2019 11:11 PM, Mathieu Poirier wrote:
> Hi Sai,
> 
> On Sun, 23 Jun 2019 at 21:36, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
>> index 3c5ceda8db24..4990da2c13e9 100644
>> --- a/drivers/hwtracing/coresight/coresight-platform.c
>> +++ b/drivers/hwtracing/coresight/coresight-platform.c
>> @@ -159,16 +159,16 @@ static int of_coresight_get_cpu(struct device *dev)
>>          struct device_node *dn;
>>
>>          if (!dev->of_node)
>> -               return 0;
>> +               return -ENODEV;
>> +
>>          dn = of_parse_phandle(dev->of_node, "cpu", 0);
>> -       /* Affinity defaults to CPU0 */
>>          if (!dn)
>> -               return 0;
>> +               return -ENODEV;
>> +
>>          cpu = of_cpu_node_to_id(dn);
>>          of_node_put(dn);
>>
>> -       /* Affinity to CPU0 if no cpu nodes are found */
>> -       return (cpu < 0) ? 0 : cpu;
>> +       return cpu;
>>   }
> 
> Function of_coresight_get_cpu() needs to return -ENODEV rather than 0
> when !CONFIG_OF
> 
>>
>>   /*
>> @@ -734,14 +734,14 @@ static int acpi_coresight_get_cpu(struct device *dev)
>>          struct acpi_device *adev = ACPI_COMPANION(dev);
>>
>>          if (!adev)
>> -               return 0;
>> +               return -ENODEV;
>>          status = acpi_get_parent(adev->handle, &cpu_handle);
>>          if (ACPI_FAILURE(status))
>> -               return 0;
>> +               return -ENODEV;
>>
>>          cpu = acpi_handle_to_logical_cpuid(cpu_handle);
>>          if (cpu >= nr_cpu_ids)
>> -               return 0;
>> +               return -ENODEV;
>>          return cpu;
>>   }
>>
> 
> Same as above, but for !CONFIG_ACPI
> 

Have fixed and resent, thanks Mathieu.

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
