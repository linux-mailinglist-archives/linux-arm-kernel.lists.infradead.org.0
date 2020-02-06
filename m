Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD43015441D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 13:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5QE/c94NvSWdBLcdtqWaJuXMTE67pvn2bPQWKfRCmbk=; b=CwuplZwEOF+RuXLnHurBDdm0s
	GU17OolnC79RxtXac+QaaIf2A+ocqBhqig/pbGga4T303NmpeW4lbb4hQxmmNQWL7wBK8OCpbEHT0
	+vQFaFwvR/L+++RyVeCeivr5qNhFUamT2W6W9ZcMsjHoonIC0YOhKHSP3almQZZcxal3/bGwYFS6+
	tEiFKPMis+jTVtJwC5Acvduf9jNaJ2bt1MlFFop8FQEn5yQLT1MfU+q4JOdn00gMn55x3vY0d1j6t
	FHTMkpsGrgpY1SXOYcuY8XqbvDICaXcEuID2z6pxf5uKisviNuLJmKM627s8iJ0YnCAoBav50/slo
	tgL5q2+oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgOA-0000Ju-8x; Thu, 06 Feb 2020 12:36:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgO3-0000JJ-RH; Thu, 06 Feb 2020 12:36:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A7B630E;
 Thu,  6 Feb 2020 04:36:01 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03BE73F68E;
 Thu,  6 Feb 2020 04:35:59 -0800 (PST)
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
To: Mark Brown <broonie@kernel.org>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
Date: Thu, 6 Feb 2020 12:36:04 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200206114606.GM3897@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_043603_930955_A32F8FF4 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, pgwipeout@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-06 11:46 am, Mark Brown wrote:
> On Thu, Feb 06, 2020 at 01:07:12AM +0000, Robin Murphy wrote:
>> The RK3328 reference design uses an external line driver IC as a buffer
>> on the analog codec output, enabled by the GPIO_MUTE pin, and such a
>> configuration is currently assumed in the codec driver's direct poking
>> of GRF_SOC_CON10 to control the GPIO_MUTE output value. However, some
> 
> This makes sense but it is an ABI break so is going to need
> quirking for existing boards that unfortunately rely on the
> existing behaviour.

Yeah, that's where it gets tricky - there doesn't seem to be a nice way 
to differentiate between "no GPIO because old DT" and "no GPIO because 
the enable is hard-wired/irrelevant and GPIO_MUTE doesn't do what you 
think it does", and it seems really improper to introduce a DT property 
for the sole purpose of telling a Linux driver not to assume something 
it shouldn't really have in the first place.

My opinion fell on the side of a minor ABI break being the lesser of two 
evils, given that the worst case once people start enabling this codec 
on Renegade/ROC-CC boards (which I was only anticipating, but have just 
discovered is happening already[1]) results in unexpectedly stuffing 
3.3V into the SD card and SoC I/O domain while both are in 1.8V mode, 
and that the change would only really affect one other current board 
(Rock64), where most mainline users are likely to be upgrading their DTB 
in lock-step with the kernel anyway.

I guess the existing (mis)behaviour could be predicated on an 
of_machine_is_compatible() check for Rock64 boards - it's ugly, but 
should do the job if you feel it's more important to be 100% strict 
about not regressing supported systems for any possible kernel/DTB 
combination.

Thanks,
Robin.

[1] 
https://github.com/armbian/build/commit/18b24717be9639b65b86db3dbcf2b42fe73ca12c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
