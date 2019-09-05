Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B35A9A73
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9m8Ks6MfUYHeehJiDOZBXDMqAoJjNSMrk5HUNHUU9U=; b=MawwomVx15TZbI
	HQP2aIKgfFu5xEQAWkg9P44gM5lqorFG02Stp/L54nEnpSv5zaWefHC+M32gpFmVtNkhzGcLuxI43
	ePzdkiAChK5AR8xSHTSXOn1AitMBGrX4CC8gdzRqVNqT8jFCZLrnIz581T4pnykttf4YWVY+Ng4KF
	Gik3HoooP8Z4unw+wpIF6Y/uGLtJA+0KINrgOCYTzeULs5Pl3bVkl9gnP5gU+Ct2p6Ys/0HNuS0PG
	T638v1GVcXVOM1LVEFeOI1FX/54opHWcrMKbrJgk09S6t26fTVZtORBqax0IfwMPKfL/sWKqBo8n2
	aHlQZbla3/9QebYI71Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5l6B-0000F2-0y; Thu, 05 Sep 2019 06:18:27 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5l5x-0000ET-28
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:18:14 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x856HxPj075908;
 Thu, 5 Sep 2019 01:17:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567664279;
 bh=gSTYq7Stu9y/T9ojZAB3DZALRWfQsxYRK28P04EF7k0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SaOJtFHt8ZchKvTJCztNu8kbG9EvqVWN369BTseYlCoWCAYLhT9UhwC2mt94cXhGt
 EoAHQtirIaW+r9nihsR3nl9wlBWZ0BhuRoPo8XtdgPWko6P8ZPsrOtiDAdiWpZM6QB
 2hkUWsVPrgxyxTr7enYXtnVdrel26VPB/NQaBo8Q=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x856HxtG066066
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 5 Sep 2019 01:17:59 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 5 Sep
 2019 01:17:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 5 Sep 2019 01:17:59 -0500
Received: from [172.24.190.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x856HuGf040552;
 Thu, 5 Sep 2019 01:17:57 -0500
Subject: Re: [GIT PULL 2/4] DaVinci defconfig updates for v5.4
To: Arnd Bergmann <arnd@arndb.de>
References: <20190828151754.21023-1-nsekhar@ti.com>
 <20190828151754.21023-2-nsekhar@ti.com>
 <CAK8P3a0NGVHhWBtXwbB7aZMA-hsGn-jwJDYUS1WgLoux6j-hBA@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <937b7ee1-ebdd-220d-f43a-da5e40ddfdf3@ti.com>
Date: Thu, 5 Sep 2019 11:47:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0NGVHhWBtXwbB7aZMA-hsGn-jwJDYUS1WgLoux6j-hBA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_231813_208748_D3D8C385 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 04/09/19 8:21 PM, Arnd Bergmann wrote:
> On Wed, Aug 28, 2019 at 5:18 PM Sekhar Nori <nsekhar@ti.com> wrote:
>>
>> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>>
>>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>>
>> are available in the Git repository at:
>>
>>   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.4/defconfig
>>
>> for you to fetch changes up to e869e44f2d82b9b4d35d58ceaeeadb0242bc634c:
>>
>>   ARM: davinci_all_defconfig: enable GPIO backlight (2019-08-08 14:33:45 +0530)
>>
>> ----------------------------------------------------------------
>> Contains davinci_all_defconfig refresh using savedefconfig and a
>> patch to enable GPIO backlight.
>>
>> ----------------------------------------------------------------
>> Bartosz Golaszewski (2):
>>       ARM: davinci: refresh davinci_all_defconfig
>>       ARM: davinci_all_defconfig: enable GPIO backlight
> 
> I'm generally not a fan of these 'refresh defconfig' patches when they
> silently change options that may or may not be needed.

You are right, I should have watched the output more closely. Since this
is something someone doing 'make davinci_all_defconfig' already sees, I
tend to skip the actual patch output.

> 
> Some lines are just moved around but these ones
> are completely removed:
> 
> -# CONFIG_IOSCHED_DEADLINE is not set
> -# CONFIG_IOSCHED_CFQ is not set
> -CONFIG_PREEMPT=y
> -CONFIG_SND_SOC_TLV320AIC3X=m
> -CONFIG_SND_SOC_DAVINCI_MCASP=m
> -CONFIG_LEDS_TRIGGERS=y
> -CONFIG_TI_EDMA=y
> -# CONFIG_ARM_UNWIND is not set
> 
> I think most of these are ok, but I don't see any explanation
> about why you turn off CONFIG_PREEMPT.

So this came because with commit a50a3f4b6a31 ("sched/rt, Kconfig:
Introduce CONFIG_PREEMPT_RT") PREEMPT lost its prompt string. As
suggested by that commit, davinci_all_defconfig should be enabling
CONFIG_PREEMPT_LL=y to retain functionality.

I can respin the branch with the preempt fix first and then the
defconfig refresh. Or I can skip the refresh altogether.

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
