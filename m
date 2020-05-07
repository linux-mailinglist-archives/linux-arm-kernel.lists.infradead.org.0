Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC8B1C865D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PZCEiIEk63ZbCF9Cgt1Mow/rmpI2Kejo+se+GnAj5mE=; b=arSn/C/mwFa3fLcKDFl4Wz0cA
	WYUYoGPfvocTHw8Eaicu/DhnfvpRX5DDxnt8X5MQP44R+rsEr+86GmYzvf8XoYcGMncwbhXRPRFVy
	4ZZwKKoRCXFAbHOMflSoCVN4/PeV9023dWMyAF5woTrGkE6afh4BpmK/DvqJt71+G67KAfx6ZcpRz
	y2SvSAKqqfbKBdc2YLPfKSNcCkyyZ+7X9LyKIefIJIVdYj1DPnyx81x9hICRCi5guaT3EMGbUeVAm
	U45Y2/pGosNJxRog7lIUJlyTQ6xPQglx0MXaGT5cZKEhmobSgpC8oT9IR7qPmELO3eLKYxLM0riGe
	mMnKHe5QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdOX-0000SH-PM; Thu, 07 May 2020 10:04:45 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdON-0000Rk-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:04:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588845877; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=1GMwknV/Hnx3pGwGQw2fgiF5fV1yZjKvADEF8GPIB3k=;
 b=Cl5aZKUX6VvpJduxPMI75NWGIm7ydwEnPmTBoqvMCfoCNW7aUSuWWTTiu2NEbj86zqutLo4N
 R51OFUO9ItSRM+nMOYPckcvrTYWwoPauXyODG52i3m5oxKjyNmDwawBO7VPVp1bmHSk+BuQo
 yDNxGJd0weNPelHb/HhNDE7iwWs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3dd20.7f3d25d06340-smtp-out-n03;
 Thu, 07 May 2020 10:04:16 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DA1EBC433D2; Thu,  7 May 2020 10:04:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 81A1BC433F2;
 Thu,  7 May 2020 10:04:15 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 15:34:15 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Doug Anderson <dianders@chromium.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv2] iommu/arm-smmu: Make remove callback message more
 informative
In-Reply-To: <CAD=FV=U0Hhae3D1-P8kbcZafHeuqng11BNAbOb2YWPx+M7X5Gw@mail.gmail.com>
References: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
 <CAD=FV=W=d=KrTwgMOO-ukFc7ZhkE92qGYumUEDrtjmhQOpdWbg@mail.gmail.com>
 <CAD=FV=U0Hhae3D1-P8kbcZafHeuqng11BNAbOb2YWPx+M7X5Gw@mail.gmail.com>
Message-ID: <0b5098c28360d018f390a97155b9776c@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_030437_409807_117289BE 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, "list@263.net:IOMMU DRIVERS , Joerg
 Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2020-05-07 05:40, Doug Anderson wrote:
> Hi,
> 
> On Thu, Apr 23, 2020 at 7:35 AM Doug Anderson <dianders@chromium.org> 
> wrote:
>> 
>> Hi,
>> 
>> On Thu, Apr 23, 2020 at 2:55 AM Sai Prakash Ranjan
>> <saiprakash.ranjan@codeaurora.org> wrote:
>> >
>> > Currently on reboot/shutdown, the following messages are
>> > displayed on the console as error messages before the
>> > system reboots/shutdown as part of remove callback.
>> >
>> > On SC7180:
>> >
>> >   arm-smmu 15000000.iommu: removing device with active domains!
>> >   arm-smmu 5040000.iommu: removing device with active domains!
>> >
>> > Make this error message more informative and less scary.
>> >
>> > Reported-by: Douglas Anderson <dianders@chromium.org>
>> > Suggested-by: Robin Murphy <robin.murphy@arm.com>
>> > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> > ---
>> >  drivers/iommu/arm-smmu.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> 
> Is this patch waiting on anything in particular now?  Do we need
> reviews from Robin and/or Will?
> 

Waiting for their reviews as they are the maintainers/reviewers :)

-Sai
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
