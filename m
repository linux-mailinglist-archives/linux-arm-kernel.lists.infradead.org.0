Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5476DC3E9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mr46U5Fhbi6Oe0Y2tr6j8UmPQ7bI6f/UZIfQ9LxsmBo=; b=iiUUUDUGnDlDwTG4q9LYDrF0O
	CF2YqWE3v70ynw9WK9mHs1I3enuDvQLgNr84K1TWw91q1qqG9UDA2GmhO39RBhz7h+JDqvsHuYlnT
	3WrcwG+Un9taXSVl6lfnVist2KOr+mXEGM8UafFY8CuwdEeUyvFf/Y4a7pj3OKxFWUd1FmZXrk1mR
	Qfj+YGZQsyZo/8FAfbdVeQo3UKzr0p91JOqI3KKnclMYf6toSxB/wjLrN50CB7fi39f5csswtr89y
	Ql/h8ceOC5cPxXiKGi5fcZ72upPyHzmEeJq6tlkRj3jmftSgy8m2kKVNr1h11u65X4HRGQ2REQMRh
	GoYrUBPaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFM0B-0005v8-4Q; Tue, 01 Oct 2019 17:31:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFM04-0005uI-VN
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:31:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2069337;
 Tue,  1 Oct 2019 10:31:46 -0700 (PDT)
Received: from [10.1.197.116] (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A01A13F706;
 Tue,  1 Oct 2019 10:31:40 -0700 (PDT)
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <450756ff-f897-7825-3424-6d5645fa9db9@arm.com>
Date: Tue, 1 Oct 2019 18:31:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_103149_053316_1F0D54DF 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/10/2019 18:14, Jeffrey Hugo wrote:
> On Tue, Oct 1, 2019 at 11:04 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>>
>> On 2019-10-01 09:13, Jeffrey Hugo wrote:
>>> Sai,
>>>
>>> This patch breaks boot on the 835 laptops.  However, I haven't seen
>>> the same issue on the MTP.  I wonder, is coresight expected to work
>>> with production fused devices?  I wonder if thats the difference
>>> between the laptop and MTP that is causing the issue.
>>>
>>> Let me know what I can do to help debug.
>>>
>>
>> I did test on MSM8998 MTP and didn't face any issue. I am guessing this
>> is the same issue which you reported regarding cpuidle? Coresight ETM
> 
> Yes, its the same issue.  Right now, I need both patches reverted to boot.
> 
>> and cpuidle do not work well together since ETMs share the same power
>> domain as CPU and they might get turned off when CPU enters idle states.
>> Can you try with cpuidle.off=1 cmdline or just remove idle states from
>> DT to confirm? If this is the issue, then we can try the below patch
>> from Andrew Murray for ETM save and restore:
>>
>> https://patchwork.kernel.org/patch/11097893/
> 
> Is there still value in testing this if the idle states are removed,
> yet the coresight nodes still cause issues?
> 
> Funny enough, I'm using the arm64 defconfig which doesn't seem to
> select CONFIG_CORESIGHT, so I'm not even sure what would be binding to
> the DT devices...

That looks like potentially missing Power domain support, either in the kernel
or from the firmware.

The Coresight components are also AMBA devices (with primecell compatible)
and thus the AMBA bus layer does some probing to check the PIDRx registers
to match the driver. The AMBA layer does try to get the power to the
component, but someone is lying that it is powered.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
