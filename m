Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EAA10FE3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:58:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llM+NNXVPurdN4OMtaK6Cwuv4yu0ytuhOc9NEUYdmVg=; b=Pg8aNv4UYXz7R+
	5gvwg2+rc70x8T2oc9GrgKFZWOETmAXngDwQ5vgXN1PXOObljsHYq1VprdfK5AEG73swyI+oLGgTR
	bUnXqmcU14c/puMIxw9VYoGYHH9B3+JZHnk5uGYmCgUG+CZKqW/0LdCh32Twi1+7pwc6iWvwsn1QX
	1oeqF6bFRMiDbwq/f8HiX1Vq1HPaPcKeO632BbwENgZiuXC72JCKq7khtu7Ld8Er+f7RB5LZBKeqZ
	KFkf9VMa5zqHcDreB0ARmf26JieuQeeG5M7LUdN/1saSe6h4uUkrZtXJ6T0qt8Vqr6MDQ/f65UPw2
	h+bysEg+brlLCKq2BxFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7l4-00053q-VN; Tue, 03 Dec 2019 12:58:26 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7kx-00053J-HI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1575377897;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=87WHGRshVeBhlmae2Rpoqq+PFlF4eGL+Y6NwEivh8Io=;
 b=cX4AjnbLSQcoiltXxlbWqUZOiAg7v9VN0KiQuV7XsxtRcYg2PiULT3m6O206fxGVFv
 z+6DWszx+pek+JiSng6NnGlFYQnFpOIOjcvFSQ4OuG36dWhk3+eIAAd7I5JuuBJtYXfs
 Lo4MWtgVrVISQ4OM/3CYCaFZO8Jq26T75Y/Ixh9lcmMMnUHVHpmQhX7Y4bcGS6vdPoe4
 ETLtQntUtBeN3wL5JZsFwA1079aWlv+mIexW3QLNf4YCaHxERBAanyLj2p6XL7osyEaz
 9xG9Gjw4bRwjTt0eYf/n9Na/WWFl1C8uh1Q4+Iv9bqg2ltZVO7vB/f+wRjELKUeGUBe6
 AZnA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDlacXAYPiQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.0.2 DYNA|AUTH)
 with ESMTPSA id 6067eavB3Cw958a
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Tue, 3 Dec 2019 13:58:09 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: OMAP2+: Fix warnings with broken
 omap2_set_init_voltage()
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
Date: Tue, 3 Dec 2019 13:58:09 +0100
Message-Id: <33A772D8-5A90-4FB0-A5A2-CAE0AB33E518@goldelico.com>
References: <20190924233222.52757-1-tony@atomide.com>
 <8FFD44DB-73F8-4807-91E1-C97DA8F781BA@goldelico.com>
 <20191202213929.GB35479@atomide.com>
 <EE749881-C3DB-4BBE-85FE-E5AF3D34884F@goldelico.com>
 <BAF5B057-1017-4174-8C3F-4B49B31E2E0D@goldelico.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_045820_162696_6C778003 
X-CRM114-Status: GOOD (  27.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 03.12.2019 um 13:30 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
> 
>> 
>> Am 03.12.2019 um 10:53 schrieb H. Nikolaus Schaller <hns@goldelico.com>:
>> 
>> HiTony,
>> 
>>> Am 02.12.2019 um 22:39 schrieb Tony Lindgren <tony@atomide.com>:
>>> 
>>> Hi,
>>> 
>>> * H. Nikolaus Schaller <hns@goldelico.com> [191202 21:10]:
>>>>> Am 25.09.2019 um 01:32 schrieb Tony Lindgren <tony@atomide.com>:
>>>>> Guys, please check and ack if we can really do this to get rid of some
>>>>> pointless dmesg -l3 errors without affecting the ongoing cpufreq and
>>>>> voltage work.
>>>> 
>>>> unfortunately we did not yet test in combination with the 1GHz OPP
>>>> patches for omap3630 (queued for v5.5-rc1) and it appears that this
>>>> patch breaks the 1GHz OPP.
>>>> 
>>>> The symptom is that it works fine on a dm3730 with 800MHz rating
>>>> but results in spurious kernel panics, stack corruption, virtual memory
>>>> failures, OneNAND DMA timeouts etc. on a dm3730 with 1GHz speed grade.
>>> 
>>> Hmm yeah OK, I was a bit worried about this breaking something.
>>> 
>>>> We can also re-add the "turbo-mode" tags in the omap36xx.dtsi (or
>>>> remove the 1GHz OPP) and can then boot with 800MHz max. clock. But
>>>> enabling boost (echo 1 >/sys/devices/system/cpu/cpufreq/boost) makes
>>>> the problem and its symptoms appear almost immediately.
>>>> 
>>>> After some scratching our heads we found that v5.3.7 is still good and
>>>> v5.3.8 is bad. A bisect of our tree (which includes the 1GHz OPP) did
>>>> point to this patch whichwas apparently already backported to v5.3.8 and
>>>> v5.4.
>>>> 
>>>> So I assume that the code removed here enabled or initialized something
>>>> we need for safe 1GHz transitions. Maybe the ABB-LDO. Or it looks up the
>>>> vdd regulator and initializes it earlier than without this code. Maybe
>>>> it also (pre-)initializes some clk which could now be left uninitialized
>>>> too long?
>>> 
>>> It was just doing voltdm_lookup() and clk_get_rate() and then failed
>>> dev_pm_opp_find_freq_ceil(), but I don't see what these might affect..
>>> 
>>>> Note that seeing the log message indicates that voltdm_scale() and
>>>> dev_pm_opp_get_voltage() are not called, but all functions before could
>>>> be with side-effects.
>>> 
>>> Yes that is strange. There's no clk_prepare() before we proceed to
>>> call clk_get_rate() either, not sure if that matter here though.
>>> 
>>>> v5.5-rc1 will likely fail right from the beginning (only on 1GHz rated
>>>> omap36xx) because it makes the combination of this patch and 1GHz OPP
>>>> public (linux-next should already fail but it appears that nobody has
>>>> tested).
>>> 
>>> OK
>> 
>> Well, it is not that urgent as I thought since I have not yet submitted
>> my patch to remove the turbo-mode tags for 1GHz OPP. Therefore even if this
>> code is deployed, no dm3730 will try to boot or run at 1GHz unless
>> manually enabled by echo 1 >/sys/devices/system/cpu/cpufreq/boost.
>> 
>>> 
>>>> Any ideas how to fix? Before I try to do a revert and then add goto exit;
>>>> after each function call and see which ones are essential for 1GHz.
>>> 
>>> If you have things reproducable, care to try to narrow the issue down
>>> a bit by trying see which parts of the old omap2_set_init_voltage()
>>> fix the issue?
>>> 
>>> The issue should be there somewhere in the few lines of code before
>>> dev_pm_opp_find_freq_ceil(), right?
>>> 
>>> It would be good to understand what's going on before reverting or
>>> fixing things condering that a revert would add back code that has
>>> it's own errors and fails to init :)
>> 
>> Indeed!
>> 
>>> 
>>> Another thing to check is if the dev instance is actually the right
>>> one we had in omap2_set_init_voltage() vs the dts dev instance as
>>> we use that with dev_pm_opp_find_freq_ceil().
>> 
>> As a first step I tried to comment out some steps but immediately
>> got failures.
>> 
>> What I then noticed is that there is only a message for
>> 
>> [    2.508392] omap2_set_init_voltage: unable to find boot up OPP for vdd_core
>> [    2.517639] omap2_set_init_voltage: unable to set vdd_core
>> 
>> There is none for vdd_mpu_iva. This OPP initialization is successful
>> and does call voltdm_scale() once.
>> 
>> So it appears as if omap3_init_voltages() is not a complete no-op.
>> 
>> IMHO the reason for the message is that u-boot defines a frequency
>> and voltage that can not be found in the OPP table at all.
>> 
>> Maybe a better solution to get rid of the message would be to modify 
>> dev_pm_opp_find_freq_ceil() to interpolate between OPPs?
>> 
>> Hm. After looking into the code I start to wonder why it fails at
>> all. _find_freq_ceil() should return the highest available frequency
>> above the one passed in and u-boot should not pass more than 800 MHz...
>> 
>> That is IMHO a good next step to go into details.
> 
> Ok, dev_pm_opp_find_freq_ceil() is doing what it should do and it
> returns the first OPP higher or equal than the frequency passed in.
> 
> The real reason for the warning is that the same OPP table is used
> for vdd_mpu_iva and vdd_core and it appears as if "core" (l3_ick)
> runs at 200 MHz which does not correspond to a valid OPP.
> 
> So to silcence the warning it suffices to remove
> 
> 	omap2_set_init_voltage("core", "l3_ick", "l3_main");
> 
> The question is now what l3_ick has to do with the OPPs at all
> and how it should interwork with OPPs and cpufreq.
> 
> Or does all this mean we may need a second OPP fable for vdd_core
> and 200 MHz? But what would it be good for? I have not seen any
> reference for "core-OPPs" in the TRM.

One more, maybe important, finding:

cpufreq_init() is called ca. 0.4 seconds before omap2_set_init_voltage()
and dpll1_ck may already be 1 GHz at that point.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
