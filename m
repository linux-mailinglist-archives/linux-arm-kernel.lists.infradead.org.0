Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A51DC2AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8+RUAgtJWWbV2ulFwJ18R/fGLb/2ZoaHfjpYqfruOs4=; b=Ik4A9WPMp/k8kREBU7JK6Zl+x
	+SXs9S3a//zf40cvL3SyT4PJi/xQQbo5wKScEEQgJiB0mwGAE9JbAgiP+L+JxF7EvRS0+YmaiHcDd
	mVNxJyrz0yP5+ArI6xbiVt6nv+/7viLGaTFJNWsWZ/4GKpVTKWPXOtmBMyhhYySWUzpCkVyaZsFBw
	+xM9Lufwbpy+SnpSljtnhAJK4BJn4MbkWS0FlhIr3s/6Uns0uHnZVDpmsVQPveAqNMHsANf1bhpKw
	J4sKlG/hAVSqm6LiMDzymi+7EbU6i6Gu2GviK4qfybM49XJi0WaFA6enlJbkTHVtFYkK1V6oAAgKe
	5mtePhMLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPNW-0000tx-2x; Fri, 18 Oct 2019 10:21:02 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPLT-0006Wa-52; Fri, 18 Oct 2019 10:18:56 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 84951616ED; Fri, 18 Oct 2019 10:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571393933;
 bh=dc8FIHayO2ehqmAUD+jZfkLoZDU0aZpmFWbgApGBQp8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f+MvB89WY1/OmaCA9DVeYNu+hcXpOsTS44csInzug73rT5woTyageN3AeITyQc4i2
 ua5MpjT0MznN/8gVyblLBo4xF59bWAhOES4g1L2Bwdq0zJOb60eBQr109Ggiu6aRi+
 hRYGHNTe3H3H9z+9B7VTgLsDsV35BQy8yeiuiL7E=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 254F9616EA;
 Fri, 18 Oct 2019 10:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571393924;
 bh=dc8FIHayO2ehqmAUD+jZfkLoZDU0aZpmFWbgApGBQp8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XOHfDDqnvjMGoSHzuamUzhoxJapIlNC64JVDRdDePSc+cGhr6s7JSClTrH0hXRbdZ
 /S35azppgq4FIlM3IkGnraSGrN2vxrptJsPqnaebKU3CxaZ89bEJahmQ95EIlgADyB
 rIq+UgI8eqBN7hVnDGKPQhplN14w+Uccpqcq/7uQ=
MIME-Version: 1.0
Date: Fri, 18 Oct 2019 15:48:43 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
In-Reply-To: <5da8c868.1c69fb81.ae709.97ff@mx.google.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
 <20191011105010.GA29364@lakrids.cambridge.arm.com>
 <7910f428bd96834c15fb56262f3c10f8@codeaurora.org>
 <20191011143442.515659f4@why>
 <ac7599b30461d6a814e4f36d68bba6c2@codeaurora.org>
 <5da8c868.1c69fb81.ae709.97ff@mx.google.com>
Message-ID: <c8491f4b91058ef018fb5b3b9ff457cd@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_031855_281564_F592C37C 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-msm-owner@vger.kernel.org,
 rnayak@codeaurora.org, suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>,
 marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, andrew.murray@arm.com, will@kernel.org,
 Dave.Martin@arm.com, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-18 01:30, Stephen Boyd wrote:
> Quoting Sai Prakash Ranjan (2019-10-11 06:40:13)
>> On 2019-10-11 19:04, Marc Zyngier wrote:
>> > On Fri, 11 Oct 2019 18:47:39 +0530
>> > Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org> wrote:
>> >
>> >> Hi Mark,
>> >>
>> >> Thanks a lot for the detailed explanations, I did have a look at all
>> >> the variations before posting this.
>> >>
>> >> On 2019-10-11 16:20, Mark Rutland wrote:
>> >> > Hi,
>> >> >
>> >> > On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
>> >> >> On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
>> >> >> warnings are observed during bootup of big cpu cores.
>> >> >
>> >> > For reference, which CPUs are in those SoCs?
>> >> >
>> >>
>> >> SM8150 is based on Cortex-A55(little cores) and Cortex-A76(big cores).
>> >> I'm afraid I cannot give details about SC7180 yet.
>> >>
>> >> >> SM8150:
>> >> >> >> [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
>> >> >> SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: >> 0x00000011111112
>> >> >
>> >> > The differing fields are EL3, EL2, and EL1: the boot CPU supports
>> >> > AArch64 and AArch32 at those exception levels, while the secondary only
>> >> > supports AArch64.
>> >> >
>> >> > Do we handle this variation in KVM?
>> >>
>> >> We do not support KVM.
>> >
>> > Mainline does. You don't get to pick and choose what is supported or
>> > not.
>> >
>> 
>> Ok thats good.
>> 
> 
> I want KVM on sc7180. How do I get it? Is something going to not work?

I meant KVM is not supported for downstream android case where we do not 
have kernel booting from EL2.
And obviously I am wrong because SC7180 is not for android, so my bad.
I think Mark R's question about handling KVM variation was for Marc Z 
not me :p

As for something not going to work, as Mark said this warning does 
indicate that 32 bit EL1 guests won't
be able to run on big CPU cores.

- Sai

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
