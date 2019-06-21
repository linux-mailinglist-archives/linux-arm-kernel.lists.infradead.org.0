Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1851C4ED2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 18:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7QmDwNQBWRjer2n7sO9Rc/dq6hH+vZPuZaKkVbttsQ=; b=r8Ay0zciOkOI4P
	Cm+gcQ3Y/9q1zC9Vhui7DI1kgryVxu1UM+QjnMc5Vy1leHM2oEZ7+Qb7NzPakJwuHYiBL0iAiqOsj
	8wXEX4JTBq1qOmcBfM1MKdhECgl20NFDyEmN9kJx+I1twGxTpIBRjlCUlRJKPnVCQMA2DRyZbKBH3
	kbTebScstbl5+vsiATyjbDR5WMDPiYilm6vccY7QeXkKNSh9QQ422az0DRUAVCJatDbKruLbtTlt3
	z6EMTB9FWFahzNcgUafbGw3Hsb5q4KIQdzwjUdpCK1EIi4LIlXrI7ZJ1xatFiuaLjg7Usm35Raa4i
	hFy5a7kSqvwTXClfIXhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heMQx-00037b-EF; Fri, 21 Jun 2019 16:30:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heMQm-000370-5A
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 16:30:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C8E9344;
 Fri, 21 Jun 2019 09:30:23 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50DAD3F575;
 Fri, 21 Jun 2019 09:30:22 -0700 (PDT)
Date: Fri, 21 Jun 2019 17:30:12 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, stephan@gerhold.net
Subject: Re: Coresight causes synchronous external abort on msm8916
Message-ID: <20190621163012.GA32249@e107155-lin>
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <CANLsYkxaX2=Bp_BWWUFimC-UmP3L5g=CU7tqjd+xoFVcWG38tA@mail.gmail.com>
 <20190621160631.GA34922@gerhold.net>
 <14bd9196-538f-f641-59e1-0c04960890aa@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14bd9196-538f-f641-59e1-0c04960890aa@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_093028_247392_C4EB3189 
X-CRM114-Status: GOOD (  22.03  )
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
Cc: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 linux-arm-msm@vger.kernel.org, david.brown@linaro.org, agross@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 21, 2019 at 05:16:28PM +0100, Suzuki K Poulose wrote:
> Hi Stephan
>
> On 21/06/2019 17:06, Stephan Gerhold wrote:
> >
> >   (b) Preventing the crash:
> >       Is there some way to:
> >
> >        (1) Add a check in the AMBA bus code to verify if the power
> >            domain is actually turned on?
>
> No, there isn't, unless the DT tells you that device is disabled, just like
> your patch does.
>

Suzuki has already covered most of the points. Just wanted to add the
reason why kernel behaves the way it does. Kernel needs to deal with
absence of power domain info in DT by assuming the device is ready to
use. IIRC, even disabling few PM configuration, it behaves the same.

So yes, you need to explicitly disable in DT. Sorry if I misled you
earlier. I assumed the firmware and platform was tested to work, but
just missing configuration was causing the reported issue. If the
firmware doesn't enable PD by default and has no mechanism to enable
it, then disabling the device in DT is best way.

> >       or
> >        (2) Recover from the "synchronous external abort" and continue
> >            booting after printing an error/warning?
> >            (At the moment, userspace seems to continue for a while,
> >             but stops working at some point after the error...)
>
> Unfortunately, no. There is no way to do that from the kernel.
>
> >
> >       Otherwise, there is still the option to prevent the AMBA bus code
> >       from running by disabling the affected device tree nodes.
> >       That's what the debug@850000 { status = "disabled"; }; ... snippet
> >       from my first mail [3] does, and it is the only way to make the
> >       kernel boot successfully at the moment.
>
> For your board, I would say, this is the best option and the reasonable
> solution.
>
> >
> >       It wouldn't affect any other device if placed in the DTS for my
> >       device (i.e. *not* in the shared msm8916.dtsi).
>
> Ultimately, the device tree is based on the assumption that you are running with
> a firmware that supports the power domain and thus is fine for upstream. If
> someone is using a firmware that doesn't support this, it is better to disable
> the nodes, just like you did.
>
> Personally I would leave the upstream DTS as it is and expect the user to
> fixup his DTS for the firmware.
>
If there are known versions of firmware to work/not and they can be
discovered in bootloader or so, then affected platform can patch DT
to mark the device "disabled"(In case you can't disable it in upstream
without affecting other platforms)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
