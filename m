Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3437BD622F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCgrIvQ0JF08QLcUVOoPPsL1Pf+wSXhlz6r8P8Y/r3w=; b=GJjYHRersk/vXx
	+6u+zKFzyJeRpmSLFbTRyIggc/oB3IJfu+i8Qmvp5fBCc5W99I+01fcL8XoJrDBUcSctPsM2IgQa1
	wrj3rMZNmcO3SJYuSxW1qGR6Ont6vbFLRTyE0c5p6aNyjCVM1/Ipl5n8FT3N1Ym/qkP/1cfdYnje6
	PbxYBa2CH88clTfn5g91gj5wzTvi3qESpiCtVWCXjcg8TOMppG7v8vnOG1DqAkEO82Go5f4f9D+sT
	U516d95RJCs5lEa6JfBN0nXwMlZq67jlSo1/8qwkfBlwosqAI3rRs47AQkk8jBuauQx2LZLSXidd/
	/N/qjRcTGloEp+GsPplQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzJh-00021n-8o; Mon, 14 Oct 2019 12:19:13 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJM-0001tC-KD
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:18:54 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id A4F045C2968;
 Mon, 14 Oct 2019 14:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1571055529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tUWv412VQZoopHuE7ztnTjIoClPeJVLNjINpNM1w6tQ=;
 b=ICSX39ULtQj93XvVsHqiB7OVjkLRxa4bKwgeMKr/M27rNwkra7L+kB9Sliyu5WDABWWSvk
 nNzFXBcr9cwX1shgdpuGGxuY/z2vuFTCWiq5/FXTzZDthoDsk3IuYLzZDSWTJAVTiOzygc
 c0lYV+GsdzjV6XBgASWggdXY7lgTI98=
MIME-Version: 1.0
Date: Mon, 14 Oct 2019 14:18:49 +0200
From: Stefan Agner <stefan@agner.ch>
To: Guenter Roeck <linux@roeck-us.net>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: Re: [GIT PULL] ARM/arm64: arm_pm_restart removal
In-Reply-To: <d48d1c03-2740-6ce0-7028-873d3c4ab31b@roeck-us.net>
References: <20191002131228.4085560-1-thierry.reding@gmail.com>
 <20191002160151.GS25745@shell.armlinux.org.uk>
 <CAOesGMg6aJ1Y+0fXkXCbOzCzxzZifx2m8YoPN=Y2pD==HPp2=Q@mail.gmail.com>
 <d48d1c03-2740-6ce0-7028-873d3c4ab31b@roeck-us.net>
Message-ID: <5bf4d9e5b2fa67533c190567498a5b0b@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_051852_986577_1A965F1D 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Olof Johansson <olof@lixom.net>, ARM-SoC Maintainers <arm@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-03 15:15, Guenter Roeck wrote:
> On 10/2/19 11:46 AM, Olof Johansson wrote:
>> It looks like it's an old patchset that you were cc:d on at the time,
>> but I can't blame anyone for missing context here.
>>
>> Thierry, a reference to the thread would have been useful:
>> https://lore.kernel.org/linux-arm-kernel/20170130110512.6943-1-thierry.reding@gmail.com/
>>
>> Given that the code is 2.5 years old, posting it again for awareness
>> seems appropriate, even if it was acked by a few stakeholders
>> originally.
>>
> 
> Thierry,
> 
> would you mind doing that ?
> 
> To give some background: I had completely forgotten about this, until I recently
> hit a problem with restart that was difficult to debug since it was
> hard to figure
> out which reset sequence was actually executed. I thought about re-posting the
> series, but then we (ie those who cared enough to be involved in above
> referenced
> exchange) decided to use this approach. Now I still wonder what it will take
> to get the series applied.
> 
> At least posting the series as pull request did generate some attention.
> I count that as an improvement.

By chance I just sent a patch which moves to restart handler for PSCI
this weekend [1]. So this patch set is very much appreciated.

--
Stefan


[1]
https://lore.kernel.org/linux-arm-kernel/20191012214735.1127009-1-stefan@agner.ch/T/#u

> 
> Guenter
> 
>>
>> -Olof
>>
>> On Wed, Oct 2, 2019 at 9:01 AM Russell King - ARM Linux admin
>> <linux@armlinux.org.uk> wrote:
>>>
>>> Why was I not copied on these changes (which clearly touch core ARM
>>> code) both the patch series and this pull request?
>>>
>>> On Wed, Oct 02, 2019 at 03:12:28PM +0200, Thierry Reding wrote:
>>>> Hi ARM SoC maintainers,
>>>>
>>>> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
>>>>
>>>>    Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
>>>>
>>>> are available in the Git repository at:
>>>>
>>>>    https://github.com/thierryreding/linux.git tags/for-5.5/arm-pm-restart-removal
>>>>
>>>> for you to fetch changes up to 81b3f28283e2f0b03cea2127e9ff78e7c505b3d3:
>>>>
>>>>    ARM: Remove arm_pm_restart() (2019-10-02 14:56:22 +0200)
>>>>
>>>> This is the set of changes that we recently discussed that remove all
>>>> uses of the arm_pm_restart symbol and replaces it by usages of the new
>>>> restart handler that Guenter had introduced.
>>>>
>>>> I've rebased these on top of v5.4-rc1.
>>>>
>>>> Thierry
>>>>
>>>> ----------------------------------------------------------------
>>>> ARM/arm64: arm_pm_restart removal
>>>>
>>>> This set of patches converts all remaining users of the arm_pm_restart
>>>> mechanism for installing reboot hooks to the restart handler mechanism
>>>> and finally removes the arm_pm_restart symbol.
>>>>
>>>> ----------------------------------------------------------------
>>>> Guenter Roeck (6):
>>>>        ARM: prima2: Register with kernel restart handler
>>>>        ARM: xen: Register with kernel restart handler
>>>>        drivers: firmware: psci: Register with kernel restart handler
>>>>        ARM: Register with kernel restart handler
>>>>        ARM64: Remove arm_pm_restart()
>>>>        ARM: Remove arm_pm_restart()
>>>>
>>>>   arch/arm/include/asm/system_misc.h   |  1 -
>>>>   arch/arm/kernel/reboot.c             |  6 +-----
>>>>   arch/arm/kernel/setup.c              | 20 ++++++++++++++++++--
>>>>   arch/arm/mach-prima2/rstc.c          | 11 +++++++++--
>>>>   arch/arm/xen/enlighten.c             | 12 ++++++++++--
>>>>   arch/arm64/include/asm/system_misc.h |  2 --
>>>>   arch/arm64/kernel/process.c          |  7 +------
>>>>   drivers/firmware/psci/psci.c         | 12 ++++++++++--
>>>>   8 files changed, 49 insertions(+), 22 deletions(-)
>>>>
>>>
>>> --
>>> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
>>> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
>>> According to speedtest.net: 11.9Mbps down 500kbps up
>>
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
