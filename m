Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5556A13FA27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=71AcZaQbuaN51HeBd/rkLOR+DzwJp3tl9gXyUZD/bxQ=; b=b3QJyzSUQc+Js1YBIvrzZ/Yq5
	uFsBdzVDtFp8cSA0heFBivHCQLmoyL6PZJgtvh99jeB/3z2fDC3PPqbSc6yS4djBz+OyApNdawDQr
	KX8p6mWjK2NhaqhA/ZdDiFXKAUasrOO1Ln0nv9DU0llOrvCkSYhuzhyUh/yo3ZTZtyTmMa7RJb1zf
	O8y8Mr3Q1RiJy18lJTJpztiJkTRBcx2v17i54S9ADxJx3WyqOVBU/vGiBcfz+4q9bnDmyYjqT/Nv5
	OyCFufwrZgEqgFNK93LmXpP9DXKWoWAU52s96oE1fukFgugQzIouTyAEV3+beSDaHN7GQJHmB8E8N
	/8+eZNPFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBOD-00085e-Cw; Thu, 16 Jan 2020 20:05:13 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBNq-00084U-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:04:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579205091; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=gK7SvK8o2VK467ucgJKt8aMirwDA5UpWtidaibh6gf0=;
 b=baRcoXVGTQQW8LkSWBbKdMgiHnV09vyN7zudxuIUJa7AmN069aBOdMGShjp3pVLIf7lMUBCP
 5qH14+gVaqKuUhGnFqPy9THK096UJzp7t7g0SGZvZK6Lro4H/sMN/CQ/cMH6HiFcdPr+avdf
 fQ973tPKXw3Br60iCCm+E36P7tE=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e20c1dd.7f0d163e8810-smtp-out-n01;
 Thu, 16 Jan 2020 20:04:45 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 96C1EC433A2; Thu, 16 Jan 2020 20:04:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E3D65C43383;
 Thu, 16 Jan 2020 20:04:43 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 17 Jan 2020 01:34:43 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Doug Anderson <dianders@chromium.org>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Add KRYO{3,4}XX CPU cores to spectre-v2 safe list
In-Reply-To: <CAD=FV=WP1T7gGC=m5FOwuLvZdwrg5f7K6tDuYFT=0BgCQMZf7A@mail.gmail.com>
References: <20200116141912.15465-1-saiprakash.ranjan@codeaurora.org>
 <20200116153235.GA18909@willie-the-truck>
 <1a3f9557fa52ce2528630434e9a49d98@codeaurora.org>
 <CAD=FV=WP1T7gGC=m5FOwuLvZdwrg5f7K6tDuYFT=0BgCQMZf7A@mail.gmail.com>
Message-ID: <72d92c46e1f87d02f55c5a12dcd25a35@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_120451_560267_5A827FF3 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, James Morse <james.morse@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm-owner@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2020-01-16 23:57, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jan 16, 2020 at 8:11 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> Hi Will,
>> 
>> On 2020-01-16 21:02, Will Deacon wrote:
>> > [+Jeffrey]
>> >
>> > On Thu, Jan 16, 2020 at 07:49:12PM +0530, Sai Prakash Ranjan wrote:
>> >> KRYO3XX silver CPU cores and KRYO4XX silver, gold CPU cores
>> >> are not affected by Spectre variant 2. Add them to spectre_v2
>> >> safe list to correct ARM_SMCCC_ARCH_WORKAROUND_1 warning and
>> >> vulnerability sysfs value.
>> >>
>> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> >> ---
>> >>  arch/arm64/include/asm/cputype.h | 6 ++++++
>> >>  arch/arm64/kernel/cpu_errata.c   | 3 +++
>> >>  2 files changed, 9 insertions(+)
>> >>
>> >> diff --git a/arch/arm64/include/asm/cputype.h
>> >> b/arch/arm64/include/asm/cputype.h
>> >> index aca07c2f6e6e..7219cddeba66 100644
>> >> --- a/arch/arm64/include/asm/cputype.h
>> >> +++ b/arch/arm64/include/asm/cputype.h
>> >> @@ -85,6 +85,9 @@
>> >>  #define QCOM_CPU_PART_FALKOR_V1             0x800
>> >>  #define QCOM_CPU_PART_FALKOR                0xC00
>> >>  #define QCOM_CPU_PART_KRYO          0x200
>> >> +#define QCOM_CPU_PART_KRYO_3XX_SILVER       0x803
>> >> +#define QCOM_CPU_PART_KRYO_4XX_GOLD 0x804
>> >> +#define QCOM_CPU_PART_KRYO_4XX_SILVER       0x805
>> >
>> > Jeffrey is the only person I know who understands the CPU naming here,
>> > so
>> > I've added him in case this needs either renaming or extending to cover
>> > other CPUs. I wouldn't be at all surprised if we need a function call
>> > rather than a bunch of table entries...
>> >
>> > That said, the internet claims that KRYO4XX gold is based on
>> > Cortex-A76,
>> > and so CSV2 should be set...
>> >
>> 
>> Yes the internet claims are true and CSV2 is set. SANITY check logs in
>> here show ID_PFR0_EL1 - 
>> https://lore.kernel.org/patchwork/patch/1138457/
> 
> I'm probably just being a noob here and am confused, but if CSV2 is
> set then why do you need your patch at all?  The code I see says that
> if CSV2 is set then we don't even check the spectre_v2_safe_list().
> 

I am a noob here and didn't understand what Will meant ;). V2 posted 
now.

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
