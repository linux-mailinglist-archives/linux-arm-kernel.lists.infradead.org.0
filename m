Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6715F302
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 08:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HAgG7Hn9X6UvD0FZtxhn3PFrW8Ww6sorjgTbrLcGn/8=; b=CrwzNFXZ0hwXR7M8YwprWIaXs
	luoFAdTDrXrW1kgh9xy51MUftShx//Q+pcFZyknc29XhL+NeD2iyyExsC12iaxvfISzUwnM8GbN9T
	ltikQxy8Q3GHMRu3BlAb6J4hNvBf9C0v3Ckiv0Sw7ZV6I8t393qT5RMcvJrzbiOKO8ZpgLVmHgfa+
	qJ5fPN8DfO6hf3AB8lMT2juzyK2QDgzhhU1Re3HZhX6N1e1axDRGlaqGjPQAKjTsjYuRUKaFdG13O
	bgt3YDJrud6EvVmfP2A70Fn97i03tJcsjHjwaoEXSZhUJ9uKTKjXYUKCdQa3jAGS2xHPJSyfUykg4
	hFlGHdFxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivTN-0004rz-QT; Thu, 04 Jul 2019 06:44:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivTA-0004qj-Du
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 06:43:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 80A5860A0A; Thu,  4 Jul 2019 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562222627;
 bh=1X/a5esYpZeGW1CmQBkAPcwko0xcLOWRgFpb3G9ejjY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=TDFiiZlHMxnN57/LFYoPv6c+Gkc63IWQfUlT6IhwzsASpgTfmtLCao62YhK6daOLU
 Cmmrwb7tfyu6OIPj8RHTGHlVqyATWtcbQr3kXjQHpE/UKVzp26tYJTP0zC5po6UKxi
 RPfK7QlzC7zUxLBtt8hfuxZiRa+rIQ7oHo3HbR/g=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 212DE60746;
 Thu,  4 Jul 2019 06:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562222625;
 bh=1X/a5esYpZeGW1CmQBkAPcwko0xcLOWRgFpb3G9ejjY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=KRGgTCsifDpZLY9tI3ska6jievMGw/EIJcJ3lv8kwsvKdb8mNaCfow6cAz8g0jBQk
 Q1OkSLf/uqSZF9CB0U48cddTgbY27CgikhpDPRFvQ5e17G0fFEUzOf1TmSrNI/D/IZ
 RzcPCf65cH7d8K0vBQKF1EcOko4byceHgddG2LPo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 212DE60746
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
Date: Thu, 4 Jul 2019 12:13:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_234348_505929_4BBF7B38 
X-CRM114-Status: GOOD (  15.91  )
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
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/4/2019 1:32 AM, Mathieu Poirier wrote:
> Hi Greg,
> 
> On Thu, 27 Jun 2019 at 12:15, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>>
>> Do not assume the affinity to CPU0 if cpu phandle is omitted.
>> Update the DT binding rules to reflect the same by changing it
>> to a required property.
>>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> I'm all good with this patch - can you pick this up for the coming
> merge window?  If not I'll simply keep it in my tree for 5.4.
> 
> Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 

I think you missed adding Greg, adding him now ;)

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
