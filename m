Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19AD154D1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:45:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=re7X4Gb7Uv4Vgc0HmLT2FXsXs0/C1r9LlbCOolVO44M=; b=OpiZBYLl9cC7bHnh74lBQDx3z
	x0prS7qx953qOVvKXEStv2Iv7Iwau6azQ3YwqGWKPtKlLonBA1fRxDQJQUCHELg4eX87NPeYvWdv9
	wtpa+y8lOFRRF4ewk/AOgYmzqj4TFvhbrUYE2yv95JmWmWKw3ENUCqfvCAA26FeRLz7D/l7DMZ4ww
	tkavhAgoguzGD4pGVYdM8RDczwV06XJFqgdOm35iC9dVZtJTrMOJmard/WNECW6AXBmUFUxTWTkBj
	Too8/24eVGl0X4QbzEp2USoHE778m1siDmFaR/p4OeElKTkWF/q+XY4P74pHbS4e4iZo9vwvCNGsA
	avBJORb5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo1g-0007Dq-HN; Thu, 06 Feb 2020 20:45:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo1Y-0007DI-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:45:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581021919; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=DcZBAjG2VO2WTzYOcZCs8ZVgMYwd7rbCdreK1KsqE9E=;
 b=Eay6k9c4GoS5k9UI4uQpQDMfyOTJkK28DEDX9LhFksZWI9pajWOP0EqsXcgCuAIHzXlORpQp
 76fw7edSDIZTjnwcE22zZlV8sC/6H78lXPOvRkZ7/2lMwOXYvxgmeKuTUsXXzB//M7REW2Le
 mrTG6oLQxG2lmLdgj9wFCxDTF3s=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3c7add.7f817cbfd9d0-smtp-out-n02;
 Thu, 06 Feb 2020 20:45:17 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E6DAEC43383; Thu,  6 Feb 2020 20:45:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from localhost (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: ilina)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6E80CC433CB;
 Thu,  6 Feb 2020 20:45:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6E80CC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=ilina@codeaurora.org
Date: Thu, 6 Feb 2020 13:45:14 -0700
From: Lina Iyer <ilina@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 5/7] drivers: firmware: psci: Add hierarchical domain
 idle states converter
Message-ID: <20200206204514.GB8107@codeaurora.org>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
 <1580736940-6985-6-git-send-email-mkshah@codeaurora.org>
 <20200203170832.GA38466@bogus>
 <0d7f7ade-3a1e-5428-d851-f1a886f58712@codeaurora.org>
 <20200204152132.GA44858@bogus>
 <6ff7c82d-4204-a339-4070-0154ab4515f1@codeaurora.org>
 <20200205140603.GB38466@bogus>
 <CAPDyKFoyepN2VX4COMomp1e9dXPozzrgCdcy0paee2jp8Wm3YA@mail.gmail.com>
 <20200205161816.GD38466@bogus>
 <CAPDyKFqaA7oN2+oLS=Puw+jQXke_ErGQAWYuTuU-6PS7mo5YbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqaA7oN2+oLS=Puw+jQXke_ErGQAWYuTuU-6PS7mo5YbQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124520_508062_D765D3DB 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Rajendra Nayak <rnayak@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Doug Anderson <dianders@chromium.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06 2020 at 01:46 -0700, Ulf Hansson wrote:
>On Wed, 5 Feb 2020 at 17:18, Sudeep Holla <sudeep.holla@arm.com> wrote:
>>
>> On Wed, Feb 05, 2020 at 04:55:17PM +0100, Ulf Hansson wrote:
>> > On Wed, 5 Feb 2020 at 15:06, Sudeep Holla <sudeep.holla@arm.com> wrote:
>> > >
>> > > On Wed, Feb 05, 2020 at 05:53:00PM +0530, Maulik Shah wrote:
>> > > >
>> > > > On 2/4/2020 8:51 PM, Sudeep Holla wrote:
>> > > > > On Tue, Feb 04, 2020 at 10:22:42AM +0530, Maulik Shah wrote:
>> > > > > > On 2/3/2020 10:38 PM, Sudeep Holla wrote:
>> > > > > > > On Mon, Feb 03, 2020 at 07:05:38PM +0530, Maulik Shah wrote:
>> > > > > > > > From: Ulf Hansson <ulf.hansson@linaro.org>
>> > > > > > > >
>> I was, but not anymore, especially if we want such changes in the kernel
>> to do so.
>>
>> Just use OSI as that was the point of adding all these after years of
>> discussion claiming it's more optimal compared to PC. Now telling that
>> you need more changes to compare it with PC just doesn't make any sense
>> at all to me.
>
>Fair enough.
>
>I was just pondering over if there are other reasons to why we may want this.
>
>One other thing that could be problematic to support, is when are
>other resources, I/O controllers for example, sharing the same power
>rail as a cluster. When such controller is in use, idle states of the
>cluster must be prevented. Without using genpd to model the CPU
>topology, it may be difficult to deal with this.
>
>Of course, using PC mode when trying to deal with this
>platform/board-requirement would also be suboptimal. In other words,
>your argument about when using OSI vs PC mode, still stands.
>
I understand the arguments for using PC vs OSI and agree with it. But
what in PSCI is against Linux knowing when the last core is powering
down when the PSCI is configured to do only Platform Cordinated.
There should not be any objection to drivers knowing when all the cores
are powered down, be it reference counting CPU PM notifications or using
a cleaner approach like this where GendPD framwork does everything
cleanly and gives a nice callback. ARM architecture allows for different
aspects of CPU access be handled at different levels. I see this as an
extension of that approach.

-- Lina

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
