Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2721D5556
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6gAKhg0pDAIT40ysPQLQ/wV05qsPXNzS7hayy4kQDvU=; b=AKc+lA33WZNWX2EjvRPkguKFz
	o6LL0r7TfyrEWMDeIB8Xd2F4ENpRnKsafv7qN7kQQAA6TcpYjQCW11CcyZUcl1kKe/kZPaSHgpOU7
	VLq9Bw7gVT4gJ7OxdUOPaIdJce/mz3pd9TzlZ6RYfUTRE/k1IkGGZSoO2WdhV1ZxyAP5MY3/hR/dz
	crabn+Amf2R4TqKIRahmKl5/A2i/SWfs2wViUWAq3YrZrIsulRi5zh2GSAC9rX/ejfqIEwq635qiX
	Wjv5uakmWKagQjEV+CzPbo3Lei0gdMbvBSm5+A4ZOuTOrrIwBVnhYc0+vXnwZDvWlqZFd/Kxs6nA1
	FFfXOVD4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcjf-00079K-Ve; Fri, 15 May 2020 15:58:55 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcjT-00078V-9v
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:58:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589558323; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=qxsW8J//wgvAmbboym2DVFK7T00YKI0V2xlBc3zGI9A=;
 b=g0WM0NgrvcoU3mvOpmnE/Zr0tj5uY8yGscsc8QB9sfAlj5+lNkAQ9jRuJK4IYDtPIFbPMnC4
 o/EHscSkEnt9BkSVHxCA0BUHTLMHR0Wv2cSZU997Y01d0eScceZcMwmjF9FQFFkTtwanLpgf
 GoQIu3GFGm11EEzaKw+cNm7A/xE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebebc30.7f0318b96570-smtp-out-n05;
 Fri, 15 May 2020 15:58:40 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2BEE7C43637; Fri, 15 May 2020 15:58:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1D64AC433D2;
 Fri, 15 May 2020 15:58:39 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 15 May 2020 21:28:39 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: etm4x: Add support to disable trace unit power
 up
In-Reply-To: <20200515155144.GA7085@xps15>
References: <20200514105915.27516-1-saiprakash.ranjan@codeaurora.org>
 <20200514180055.GA29384@xps15>
 <2c932d57288508cc72a6ee323cf5595e@codeaurora.org>
 <CANLsYkxun2EWGeLU42ShbqkJMtCTh+Q9L3t=CXQR+-2zVuuJYg@mail.gmail.com>
 <a0f8f01f28506e10001885e387d3cb4f@codeaurora.org>
 <20200515155144.GA7085@xps15>
Message-ID: <89be7790b7fdd4b0268919e060198926@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_085843_805477_111A1F5F 
X-CRM114-Status: GOOD (  28.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Tingwei Zhang <tingwei@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 2020-05-15 21:21, Mathieu Poirier wrote:
> On Fri, May 15, 2020 at 08:37:13PM +0530, Sai Prakash Ranjan wrote:
>> Hi Mathieu,
>> 
>> On 2020-05-15 20:22, Mathieu Poirier wrote:
>> > On Thu, 14 May 2020 at 12:39, Sai Prakash Ranjan
>> > <saiprakash.ranjan@codeaurora.org> wrote:
>> > >
>> > > Hi Mathieu,
>> > >
>> > > On 2020-05-14 23:30, Mathieu Poirier wrote:
>> > > > Good morning Sai,
>> > > >
>> > > > On Thu, May 14, 2020 at 04:29:15PM +0530, Sai Prakash Ranjan wrote:
>> > > >> From: Tingwei Zhang <tingwei@codeaurora.org>
>> > > >>
>> > > >> On some Qualcomm Technologies Inc. SoCs like SC7180, there
>> > > >> exists a hardware errata where the APSS (Application Processor
>> > > >> SubSystem)/CPU watchdog counter is stopped when ETM register
>> > > >> TRCPDCR.PU=1.
>> > > >
>> > > > Fun stuff...
>> > > >
>> > >
>> > > Yes :)
>> > >
>> > > >> Since the ETMs share the same power domain as
>> > > >> that of respective CPU cores, they are powered on when the
>> > > >> CPU core is powered on. So we can disable powering up of the
>> > > >> trace unit after checking for this errata via new property
>> > > >> called "qcom,tupwr-disable".
>> > > >>
>> > > >> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
>> > > >> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> > > >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> > > >
>> > > > Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> > > > Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
>> > > >
>> > >
>> > > Tingwei is the author, so if I understand correctly, his signed-off-by
>> > > should appear first, am I wrong?
>> >
>> > It's a gray area and depends on who's code is more prevalent in the
>> > patch.  If Tingwei wrote the most of the code then his name is in the
>> > "from:" section, yours as co-developer and he signs off on it (as I
>> > suggested).  If you did most of the work then it is the opposite.
>> > Adding a Co-developed and a signed-off with the same name doesn't make
>> > sense.
>> >
>> 
>> I did check the documentation for submitting patches:
>> Documentation/process/submitting-patches.rst. And it clearly states
>> that "Co-developed-by must be followed by Signed-off by the co-author
>> and the last Signed-off-by: must always be that of the developer
>> submitting the patch".
>> 
>> Quoting below from the doc:
>> 
>> Co-developed-by: <snip> ...Since
>> Co-developed-by: denotes authorship, every Co-developed-by: must be
>> immediately
>> followed by a Signed-off-by: of the associated co-author.  Standard 
>> sign-off
>> procedure applies, i.e. the ordering of Signed-off-by: tags should 
>> reflect
>> the
>> chronological history of the patch insofar as possible, regardless of
>> whether
>> the author is attributed via From: or Co-developed-by:.  Notably, the 
>> last
>> Signed-off-by: must always be that of the developer submitting the 
>> patch.
> 
> Ah yes, glad to see that got clarified.  You can ignore my 
> recommendation on
> that snippet.
> 
>> 
>> > >
>> > > >> ---
>> > > >>  .../devicetree/bindings/arm/coresight.txt     |  6 ++++
>> > > >>  drivers/hwtracing/coresight/coresight-etm4x.c | 29
>> > > >> ++++++++++++-------
>> > > >
>> > > > Please split in two patches.
>> > > >
>> > >
>> > > Sure, I will split the dt-binding into separate patch, checkpatch did
>> > > warn.
>> >
>> > And you still sent me the patch...  I usually run checkpatch before
>> > all the submissions I review and flatly ignore patches that return
>> > errors.  You got lucky...
>> >
>> 
>> I did not mean to ignore it or else I wouldn't have run checkpatch 
>> itself.
>> I checked other cases like "arm,scatter-gather" where the binding and 
>> the
>> driver change was in a single patch, hence I thought it's not a very 
>> strict
>> rule.
> 
> The patch has another warning for a line over 80 characters, that 
> should have
> been fixed before sending.  Putting DT changes in a separate patch is 
> always
> better for the DT people.  They review tons of patches and making their 
> life
> easier is always a good thing.
> 

Ok, I will fix this and resend. I did not want to change it in case if 
it affects
readability since most maintainers prefer to ignore this 80 characters 
warning if
it affects readability. I will keep this in mind for future patches as 
well.

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
