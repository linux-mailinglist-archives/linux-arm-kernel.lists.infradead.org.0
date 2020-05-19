Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6F1D92EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/QYtr+TVQUf+Zyv3Yu7ZIVYS+Xe0XcUaXavzZhTJM8o=; b=uXX0eVuaRBlAw59WhFuPn0Qaf
	Fsi1uB2dirLXtqPKLfRDpOkhHdOQ3tOQthGjjPleVkYyl9DdqqKkEzcKPhizaYLkTx87OlLhTo+er
	rHWQY9tbR/RlZwN1NAbKYqU5qkhQ/Zf7U/uNCfTC9qy//YCfLcWJWQsxLj2Vk3ApqmWYlC1qq+qX/
	LEI55gCjfX1ggUK/i8brhVjNChwNd/RklRODLqFk/JBYyeewKCP4jIXJ8BpkwJ4g0cfZsR584yhYF
	PschZ1692wEGhEofQsnpPiB160KQQXmu8i1YQq1bovl970pQWlasexfXetw9dWmAaEVyk40Y3Wdss
	NPOTtjK4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayAh-000344-5d; Tue, 19 May 2020 09:04:23 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayAP-00033Y-2W
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:04:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589879044; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=krynLA3PVnStDQ90BA4lcITyrT/iSvbyv+EPo/hP2Ao=;
 b=xD8kfojI23VeZoWICAeTA9/BYpbIO1f+Mi6Ec9LImEC6hTRl8r9h2LV2TczcE8+6RlEySxTu
 adPU4z8EZqHERVfWeUAyI1B3otDKVr+rZWS8YfnQz1OTiXE+uIUlJiQ7pLcj9bBK5zLTSeoQ
 KvPYau0sVUpEOG1ATWW7xekSUU4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ec3a103.7fdb70c8b960-smtp-out-n02;
 Tue, 19 May 2020 09:04:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 83755C43636; Tue, 19 May 2020 09:04:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 14B85C433D2;
 Tue, 19 May 2020 09:04:03 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 19 May 2020 14:34:03 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>, Suzuki K Poulose
 <suzuki.poulose@arm.com>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <4bd741e342f8e2743197ed6105dacffa@codeaurora.org>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
 <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
 <CAJ9a7VgEiX19ukjwakNHBHDeZJ05f5Z7pAYG9iEnpXCuuDfBqg@mail.gmail.com>
 <a4bba03d41a2b0145b3c6c19d48698eb@codeaurora.org>
 <CAJ9a7Vj4eyv1n=RxuqfV=pdBN3SDG+ShYS5J4s40KJtqOnR7vw@mail.gmail.com>
 <ae0fe2050be01cc1403c7d53a0da8cb8@codeaurora.org>
 <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
 <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
 <CAJ9a7Vjd0XG+rAvHptAAjGtE6xRhYsPaOSC_Bf9B-w-FZFu_Qw@mail.gmail.com>
 <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
 <37b3749e-2363-0877-c318-9c334a5d1881@arm.com>
 <d47271ee6a2a6f0f30da7e140b6f196c@codeaurora.org>
 <CAJ9a7Vg95tcgMXgQKLAZc=TpV6FnPZ7wdF=Kwbuy7d2kRCjYQw@mail.gmail.com>
 <364049a30dc9d242ec611bf27a16a6c9@codeaurora.org>
 <CAJ9a7VjAoUmMG9pLEzE_rMSpOjwVOi-ZCinF87n9H0JgfMDsiQ@mail.gmail.com>
 <5a76926a6532d3f91cca169d474ba98e@codeaurora.org>
 <4bd741e342f8e2743197ed6105dacffa@codeaurora.org>
Message-ID: <825b922dab9821fa46f321d600648e10@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_020405_205107_166A0BE0 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <swboyd@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike, Suzuki,

On 2020-05-16 15:34, Sai Prakash Ranjan wrote:
> Hi Mike, Suzuki
> 
> [...]
> 
>>> 
>>> Please look at the CoreSight components specification 3.0 (ARM IHI
>>> 0029E) Section B2.1.2 which describes the Unique Component Identifier
>>> (UCI).
>>> As mentioned above this consists of a combination of bits from
>>> multiple registers, including PIDR4.
>>> 
>> 
>> Ok got it now, thanks for clearing the doubt. I will go ahead with
>> this method to identify QCOM impl and post a patch.
>> 
> 
> Looking some more into this, since we have this limitation only on
> specific replicator on very few QCOM SoCs, rather than having a blanket
> workaround for all QCOM, we were thinking it would be better to have
> this workaround based on a firmware property something like
> "qcom,replicator-loses-context" for those replicators with this
> limitation and then set the drvdata->check_idfilter_val based on
> this property.
> 

Sorry for going back and forth on this one, but I think having a 
firmware
property will clearly help us identify the issue on specific SoCs rather 
than
wholesale workaround for all QCOM SoCs. For now, I will post a patch 
based on
the property "qcom,replicator-loses-context", please feel free to yell 
at me
if this is completely wrong and we can discuss it further in that patch.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
