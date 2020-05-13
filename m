Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118E51D19C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UHLVh5DIAPwirldAhbnuiVuoXUG63lwGWbfpXcBXNzA=; b=RGshsbC93uUjnhVelX3GN+n6l
	avWQ1Wt98MPIGmty34mb7Cm3DrA6cFwJHAr7XXBiiSYjWPTPuHSggv7ispi5PhjhwBBMatQPH7STx
	fXwPQq5W/7hduA71ArE8IzntKHssWVwXgJd34r5EU+FriSnxIshVuf6RcgOC5QW/5c7ypPJ9+JF+v
	xFKLZ3jtuie6jXYBaYEMWwlrJ1BNfpd5eOHD0bZw2nzQrcUR1Jhn4pAYpgXECI1/Dmmte+Q4wMz0t
	zKMFEyYnFUVUehnTqCyWem8Iwkx0R+TFXnxWpdpLQs7sD39lnurlV+DkVU4LCGIrCHHqG0vkyzPEW
	thZr5OkaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtZs-00024a-F3; Wed, 13 May 2020 15:45:48 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtZg-00023n-7e
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:45:39 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589384737; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=5BGt2SG+SlPBIoe9j8b16CCwBiaChEc3LMrTSY3Ot9A=;
 b=BBRtmURc2I39RO1wtX0/1I5cUYBHx9unXJItgxsa0N3PCZKFMWSNlXqUqV91/2+7p4ZQLhYn
 jpHDx7GouyUj23XkXQxVRDqb1Fv5pwJAqWoTLlwCvl8/eVTDYjzcVr2c9dP6XtenBj/wPIcP
 x581eXzBcWZ1pl7CR6veHe54HGs=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebc161d.7f775687bdf8-smtp-out-n02;
 Wed, 13 May 2020 15:45:33 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C090CC43636; Wed, 13 May 2020 15:45:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F05F6C433D2;
 Wed, 13 May 2020 15:45:32 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 13 May 2020 21:15:32 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <158933457051.215346.13515171569230202840@swboyd.mtv.corp.google.com>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
 <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
 <CAJ9a7Vjd0XG+rAvHptAAjGtE6xRhYsPaOSC_Bf9B-w-FZFu_Qw@mail.gmail.com>
 <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
 <37b3749e-2363-0877-c318-9c334a5d1881@arm.com>
 <d47271ee6a2a6f0f30da7e140b6f196c@codeaurora.org>
 <CAJ9a7Vg95tcgMXgQKLAZc=TpV6FnPZ7wdF=Kwbuy7d2kRCjYQw@mail.gmail.com>
 <364049a30dc9d242ec611bf27a16a6c9@codeaurora.org>
 <CAJ9a7VjAoUmMG9pLEzE_rMSpOjwVOi-ZCinF87n9H0JgfMDsiQ@mail.gmail.com>
 <158933457051.215346.13515171569230202840@swboyd.mtv.corp.google.com>
Message-ID: <861f8ab0174d036cb1e49e34e4f81a92@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_084537_557859_3CC7536D 
X-CRM114-Status: GOOD (  26.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-13 07:19, Stephen Boyd wrote:
> Quoting Mike Leach (2020-05-12 14:52:33)
>> HI Sai,
>> 
>> On Tue, 12 May 2020 at 18:46, Sai Prakash Ranjan
>> <saiprakash.ranjan@codeaurora.org> wrote:
>> >
>> > Hi Mike,
>> >
>> > On 2020-05-12 17:19, Mike Leach wrote:
>> > [...]
>> >
>> > >> >>
>> > >> >> Sorry for hurrying up and sending the patch -
>> > >> >> https://lore.kernel.org/patchwork/patch/1239923/.
>> > >> >> I will send v2 based on further feedbacks here or there.
>> > >> >>
>> > >> >>>
>> > >> >>> 1) does this replicator part have a unique ID that differs from the
>> > >> >>> standard ARM designed replicators?
>> > >> >>> If so perhaps link the modification into this. (even if the part no
>> > >> >>> in
>> > >> >>> PIDR0/1 is the same the UCI should be different for a different
>> > >> >>> implementation)
>> > >> >>>
>> > > I have reviewed the replicator driver, and compared to all the other CS
>> > > drivers.
>> > > This driver appears to be the only one that sets hardware values in
>> > > probe() and expects them to remain in place on enable, and uses that
>> > > state for programming decisions later, despite telling the PM
>> > > infrastructure that it is clear to suspend the device.
>> > >
>> > > Now we have a system where the replicator hardware is behaving
>> > > differently under the driver, but is it behaving unreasonably?
>> >
>> > Thanks for taking your time to review this. For new replicator behaving
>> > unreasonably, I think the assumption that the context is not lost on
>> > disabling clock is flawed since its implementation defined. Is such
>> > assumption documented in any TRM?
>> >
>> 
>> Looking at the AMBA driver there is a comment there that AMBA does not
>> lose state when clocks are removed. This is consistent with the AMBA
>> protocol spec which states that AMBA slaves can only be accessed /
>> read / write on various strobe signals,  or state reset on PRESET
>> signal, all timed by the rising edge of the bus clock. state changes
>> are not permitted on clock events alone. Given this static nature of
>> AMBA slaves then removing the clock should not have any effect.
> 
> I believe the "clock" that is being used here is actually a software
> message to the power manager hardware that the debug subsystem isn't
> being used anymore. When nothing is requesting that it be enabled the
> power manager turns off the power to the debug subsystem and then the
> register context is lost. It shouldn't be a clock in the clk subsystem.
> It should be a power domain and be attached to the amba devices in the
> usual ways. Then the normal runtime PM semantics would follow. If amba
> devices require a clk then we'll have to provide a dummy one that
> doesn't do anything on this platform.
> 

Note that there are 2 dynamic replicators and the behaviour is different 
only on
one of the replicators(swao_replicator) which is in AOSS domain. I don't 
see
how runtime PM would help us differentiate between them and handle PM 
differently
for different replicators.

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
