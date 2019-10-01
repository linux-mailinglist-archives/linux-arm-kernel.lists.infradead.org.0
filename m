Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05615C3F08
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3J/Vklkz25iFP+S7Eix8KGLll3qeRtgREcnMScaX1nM=; b=ciCxQI0ItJjZs7a/4Ohu/U4Ge
	qtJBqjLveqWgmZYY0pFsIumB4DNb4Zke0iERcqJqtbBLL7nyJ0j+L+tUdsEaZEF/QJYVKiVTIoxFD
	CHISqqe1stZxYjOXfEmOHABWinHbWZTL3uZcE8BvEWdILBTlqDPdTuMXpK4D5r46JOugFxe4daX+F
	UH/Gz6R+EGn1LefxG/ELl8nVC1G+p4k80KT+M2lKbfE1UVDHbIwZH4T51WFJXroFujlSYRWZ+WYsR
	xuptxmE3RA8DV5/wOc6J2QzsrGwDIHZAfkZgEtUIs+71B15Wr0PKIRY8gkvJFGHXs7KAvIIbuHo7d
	5USns7dCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFMJz-0004ju-5z; Tue, 01 Oct 2019 17:52:23 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFMJs-0004jM-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:52:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id F111E6083C; Tue,  1 Oct 2019 17:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569952336;
 bh=EqX6F8UDW8JnIw6Hk7q7L1dvCzSEMNOpUg0sXKY32yA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oj2/PZIWdgJsjvx+7sB/HBZhXwlRP+/bp7ky6LvLjqD4g9BiNDvcglCZ62SjD1tBq
 QAgX6+g9hprx8wVBP7v9QVjcT7vKvuZQPgA01lEQC46BDaHrF+QmyochFDLUPJwYM0
 4m7xO8XStOzyEZlV7qC04Ce1g/yklG9gIRkBlQgg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 104336083C;
 Tue,  1 Oct 2019 17:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569952335;
 bh=EqX6F8UDW8JnIw6Hk7q7L1dvCzSEMNOpUg0sXKY32yA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lTkHXHKunAsS8EWDCTk+X0f1W5i2eyWsNoTkfA4JrXjUWLAdpwvRUvZwQy/sqsCha
 kE/4opxhjU4rATlKtRc59y0kRLw3/N3qA8EqPvRggNEEkhrNsP+u2hClns35iEAvhg
 rCNeqT75U1nPhoOrRrPqkFZOS/g7yYIjD6ij5xpI=
MIME-Version: 1.0
Date: Tue, 01 Oct 2019 10:52:15 -0700
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
In-Reply-To: <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
Message-ID: <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_105216_598119_9977FC7C 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-01 10:14, Jeffrey Hugo wrote:
> On Tue, Oct 1, 2019 at 11:04 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> On 2019-10-01 09:13, Jeffrey Hugo wrote:
>> > Sai,
>> >
>> > This patch breaks boot on the 835 laptops.  However, I haven't seen
>> > the same issue on the MTP.  I wonder, is coresight expected to work
>> > with production fused devices?  I wonder if thats the difference
>> > between the laptop and MTP that is causing the issue.
>> >
>> > Let me know what I can do to help debug.
>> >
>> 
>> I did test on MSM8998 MTP and didn't face any issue. I am guessing 
>> this
>> is the same issue which you reported regarding cpuidle? Coresight ETM
> 
> Yes, its the same issue.  Right now, I need both patches reverted to 
> boot.
> 
>> and cpuidle do not work well together since ETMs share the same power
>> domain as CPU and they might get turned off when CPU enters idle 
>> states.
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
> 

Haan then likely it's the firmware issue.
We should probably disable coresight in soc dtsi and enable only for 
MTP. For now you can add a status=disabled for all coresight nodes in 
msm8998.dtsi and I will send the patch doing the same in a day or 
two(sorry I am travelling currently).

Thanks,
Sai


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
