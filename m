Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8551F1A80
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=61KbpzLzQBvme85xIVXXKBV8jVctD0b0ndF/GudL7F4=; b=UOFYAHDi12AUoPoYjQrSS65rl
	uZsYKZfV0fJvaM2CIYdYZu9xvTfM9YqEuVyk1SmcwTA9r7P0b3qYxz/cKGBX37OzaDP0hJQK9wlq0
	irKTzYxT0WVwb0FD0dzWeSZL/e0+6SXlMNRCLod6BDXI8wdyDE2bhy/bE/KTP5Ed2E2qvRlQxGi/b
	I9ZzmXPXNk77czHQ3O82umA4ShPILxB/2N7C7CP3RynXwGmfSErjnY3vYgOywOACXRbIwfQp4bT/k
	IBKHja/S/Y8udz2G+Z82YC4q3d+0uhk5XSfgXuoEpZqZLytzFln+/02n3jxYP4tiikGxEknAHcUug
	przRSeLbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIMB-0002xj-MN; Mon, 08 Jun 2020 14:02:31 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiILw-0002w1-TI
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:02:26 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591624944; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=tEdZ6QUxV0aIalkZh0RUwZLDn+U3wprRkWo1uaBu5Io=;
 b=TWVDRXwBdkSOjwrOcBFcAy9gjLv/DYc+08R8Ek6Xv/UGcD3JzsIsOz3UFuESaBLI59nLMcOl
 z2fg1JtZhjeWT8NRnILv4i5kYYXTqrQ7Bo1gQRpG/pkETAkahY8Fp8e/J4QsRTRY87zFufBT
 aWLLa7zPqJZVzldp8m1Ugy9Bwig=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-west-2.postgun.com with SMTP id
 5ede44b4d26ace6bd536bda0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 14:01:24
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5E2BAC433CB; Mon,  8 Jun 2020 14:01:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7F59CC433C6;
 Mon,  8 Jun 2020 14:01:23 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 19:31:23 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH] iommu/arm-smmu: Remove shutdown callback
In-Reply-To: <20200608113852.GA3108@willie-the-truck>
References: <20200607110918.1733-1-saiprakash.ranjan@codeaurora.org>
 <20200608081846.GA1542@willie-the-truck>
 <08c293eefc20bc2c67f2d2639b93f0a5@codeaurora.org>
 <20200608113852.GA3108@willie-the-truck>
Message-ID: <dbd12d8017fc6b84232be7359437eb3b@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_070224_996084_A87DF58A 
X-CRM114-Status: GOOD (  35.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020-06-08 17:08, Will Deacon wrote:
> On Mon, Jun 08, 2020 at 02:43:03PM +0530, Sai Prakash Ranjan wrote:
>> On 2020-06-08 13:48, Will Deacon wrote:
>> > On Sun, Jun 07, 2020 at 04:39:18PM +0530, Sai Prakash Ranjan wrote:
>> > > Remove SMMU shutdown callback since it seems to cause more
>> > > problems than benefits. With this callback, we need to make
>> > > sure that all clients/consumers of SMMU do not perform any
>> > > DMA activity once the SMMU is shutdown and translation is
>> > > disabled. In other words we need to add shutdown callbacks
>> > > for all those clients to make sure they do not perform any
>> > > DMA or else we see all kinds of weird crashes during reboot
>> > > or shutdown. This is clearly not scalable as the number of
>> > > clients of SMMU would vary across SoCs and we would need to
>> > > add shutdown callbacks to almost all drivers eventually.
>> > > This callback was added for kexec usecase where it was known
>> > > to cause memory corruptions when SMMU was not shutdown but
>> > > that does not directly relate to SMMU because the memory
>> > > corruption could be because of the client of SMMU which is
>> > > not shutdown properly before booting into new kernel. So in
>> > > that case, we need to identify the client of SMMU causing
>> > > the memory corruption and add appropriate shutdown callback
>> > > to the client rather than to the SMMU.
>> > >
>> > > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> > > ---
>> > >  drivers/iommu/arm-smmu-v3.c | 6 ------
>> > >  drivers/iommu/arm-smmu.c    | 6 ------
>> > >  2 files changed, 12 deletions(-)
>> >
>> > This feels like a giant bodge to me and I think that any driver which
>> > continues to perform DMA after its ->shutdown() function has been
>> > invoked
>> > is buggy. Wouldn't that cause problems with kexec(), for example?
>> >
>> 
>> Yes it is definitely a bug in the client driver if DMA is performed
>> after shutdown callback of that respective driver is invoked and it 
>> must
>> be fixed in that driver. But here the problem I was describing is not 
>> that,
>> most of the drivers do not have a shutdown callback to begin with and 
>> adding
>> it just because of shutdown dependency on SMMU doesn't seem so well 
>> because
>> we can have many more such clients in the future and then we have to 
>> just go
>> on adding the shutdown callbacks everywhere.
> 
> I'm not sure why you're trying to treat these cases differently. It's 
> also
> not "just because of SMMU", is it? Like I said, kexec() would be broken
> regardless.
> 
> The bottom line is that after running ->shutdown() (or skipping it if 
> it's
> not implemented) for a driver, then the device must no longer perform 
> DMA.
> 

Yes it's not just because of SMMU. Now I understand that we indeed need
to shutdown SMMU like any other driver and we need to fix the client
drivers as well.

>> > There's a clear shutdown dependency ordering, where the clients of the
>> > SMMU need to shutdown before the SMMU itself, but that's not really
>> > the SMMU driver's problem to solve.
>> >
>> 
>> The problem with kexec may not be directly related to SMMU as you said
>> above if DMA is performed after the client shutdown callback, then its 
>> a
>> bug in the client driver, so that needs to be fixed in the client 
>> driver,
>> not the SMMU. So is there any point in having the SMMU shutdown 
>> callback?
> 
> Given that the SMMU mediates DMA transactions for all upstream masters
> based on in-memory data (e.g. page tables), then I think it's a /very/
> good idea to tear that down as part of the shutdown callback before
> the memory is effectively free()d.
> 
> One thing I would be in favour of is changing the ->shutdown() code to
> honour disable_bypass=1 so that we put the SMMU in an aborting state
> instead of passthrough. Would that help at all? It would at least
> avoid the memory corruption on missing shutdown callback.
> 

This would be good, however this would then mask the fact that it is
client drivers who are buggy and if we stop seeing issues, then no one
will bother fixing the client drivers. So we better go ahead and fix
the client drivers first and I will drop this patch.

>> As you see, with this SMMU shutdown callback, we need to add shutdown
>> callbacks in all the client drivers.
> 
> I don't see the problem with that. Why is it a problem?
> 

Not a problem, I wanted to confirm if kexec issue was indeed only due to
client driver bugs or SMMU has also some contribution. We have already
started adding client driver shutdown callbacks [1][2], but I also
wanted to get this clarified, so sent this patch as RFC.

[1] - 
https://lore.kernel.org/lkml/1591009402-681-1-git-send-email-mkrishn@codeaurora.org/
[2] - 
https://lore.kernel.org/lkml/28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org/

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
