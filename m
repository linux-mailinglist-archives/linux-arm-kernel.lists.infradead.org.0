Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9A95F47C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yuEbk9qRpQM5hk0PnZqEcxuRZowlTYSJeRzjk1k5nmg=; b=Hm26K6LYS1UCiN/o/2pOycKT0
	wOEm3hK/k2ueZbIpLuW1TM7f1dLl804jgHMTeX2A8JGxk1ET7NQ7HxyGQCpampWHOGD6ix/7bor32
	H8MmmGxSD/qiSbcgEbhT+QXXhOkc53lwW5JWHuWQ5O8ZeGfaLnrse9wNYcIcY/QCnie+M3RhPyazO
	O1PWKFT+2c9o6GYjCMwvfWriDbTZNmKIzqkvTq86DwceJn5KHGsJbPKsrfP6UBpZMKrqCROEsyCbN
	uzJDAaoFBHY95npy21OFJ2aRmvT5EVFGAacxxqkzROX7GpGDxEbuVb9ICNUTtutUx4rKpcNPc2Kvg
	gq4dPy+BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwyq-0003mM-OY; Thu, 04 Jul 2019 08:20:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwyb-0003lU-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:20:23 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 57B88608CE; Thu,  4 Jul 2019 08:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562228421;
 bh=e3LVeam8xHza2h/bBVN0DBF1TS9LLsikvz2by4TYNK0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=o1nX1rIEVX9PmkpL9vvaoLrYmqRl7250ucDcDKod4rWv9BrXOBrFwu3ZavYcYTjJp
 oWLs7uGXh6If3cJblrTvTrXX4S2qRdfoWW25TH6fZ/I3FaAEA3tVVjRCIYdgXNAf3L
 B4naa3JpCdNJQuzyy++1jjqlMzxUbEUAvXZfmOL8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8C8BE607B9;
 Thu,  4 Jul 2019 08:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562228420;
 bh=e3LVeam8xHza2h/bBVN0DBF1TS9LLsikvz2by4TYNK0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=kTRnmF5qslu9CZ531rF3c/nEm0w4Yu7ojSWtAGuRTX9wwBfX1aR4auTv50AgrWsNk
 Hg0tJNEH9ChCSVuNGtps9ha6eBoE/JILUeAtmg4kwIQa9sc5vmmWEHIcqiNwWwNBs9
 BKTcX9aj6xdWtESurCHYnD2wsnH0dz/1CITGFN8k=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8C8BE607B9
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
 <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
 <20190704070239.GB32707@kroah.com>
 <72dff807-7172-7882-83fc-d7ff4cafe39f@free.fr>
 <20190704081822.GD6438@kroah.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <7497db57-4462-87a0-6719-6db1330ce0a7@codeaurora.org>
Date: Thu, 4 Jul 2019 13:50:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190704081822.GD6438@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_012022_022167_1F64C28D 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/4/2019 1:48 PM, Greg Kroah-Hartman wrote:
> On Thu, Jul 04, 2019 at 10:08:24AM +0200, Marc Gonzalez wrote:
>> [ Trimming recipients list ]
>>
>> On 04/07/2019 09:02, Greg Kroah-Hartman wrote:
>>
>>> On Thu, Jul 04, 2019 at 12:13:40PM +0530, Sai Prakash Ranjan wrote:
>>>
>>>> On 7/4/2019 1:32 AM, Mathieu Poirier wrote:
>>>>
>>>>> Hi Greg,
>>>>>
>>>>> On Thu, 27 Jun 2019 at 12:15, Sai Prakash Ranjan wrote:
>>>>>>
>>>>>> Do not assume the affinity to CPU0 if cpu phandle is omitted.
>>>>>> Update the DT binding rules to reflect the same by changing it
>>>>>> to a required property.
>>>>>>
>>>>>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>>>>>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>>>>>
>>>>> I'm all good with this patch - can you pick this up for the coming
>>>>> merge window?  If not I'll simply keep it in my tree for 5.4.
>>>>>
>>>>> Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>>>>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>>>>
>>>> I think you missed adding Greg, adding him now ;)
>>>
>>> I don't see any patch here for me to actually take :(
>>
>> I see what you're doing here ^_^
>>
>> https://lore.kernel.org/patchwork/patch/1094935/
> 
> What can I do with a random url?
> 
> Please send patches as emails, if you want me to be able to actually
> take it.
> 
> greg k-h
> 

No worries I will resend them. And thanks Marc :)

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
