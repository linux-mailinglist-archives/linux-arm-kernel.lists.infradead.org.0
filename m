Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83896C9F2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HzyEFyqbr7yKej/XCKHmPcmnS+1jzFYYSOBZgk3nRVs=; b=sdHdphE1EUVareo97BshoIrI6
	LSHXe0SfELcYceqQ4aE5rLhjckOHaM6bxH2lAVzCfC4FKkKcSGZ/EHEzLZccPmdvLwyLTwWpYsjGa
	LQyp7nArC9PZuTG195NypGo5fX1aS7ao6fw5dF8htbZ+9F6YiXnjBKWv1OKPQ/UHYGKb7NxcCTg82
	qKJmCHcj8iToA/Ax8D31j9exNNytXeA5EWyEU+AW+2sbQ0pw6/tWrCPeP5W1Ndk9fcFZmEcmo/wIa
	PnZ8FXrOi9nvDbj8LO9xWvrhBftUZ5IPPZUhKmRORgBlW9zxG4kV+tOwQAoPaklkxFapq5259NdAt
	z1mpgsA6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0xL-0005d1-Hx; Thu, 03 Oct 2019 13:15:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0xE-0005cZ-Hu
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:15:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id y72so1733115pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 06:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sPYnUSSQorfda6DEsSWxyECKProtfiGiCAfG7RCG6tA=;
 b=OVLI44PuvB7htJzG6Rk5sp/3oNI9Lab6BrQLJm2VGy8BKiImBLcPAJhwDoEzoVAFWw
 1KV6lu1dpLyrDf5dvRPsV7ndQdxt/BOrWE06WVDmeVpRlyTZ9zZ8EbzUWtroIxEWIsjo
 HJTuCR60A3RCcqGgWUlTnU6+Uj6bNeDGfqWorPpvfnIJgFDpQC3EdlE/A1Rw9QxZIY8S
 pChb0tWl4S4zChEXHHvNuATyzVFiG1GNbXf5IlFKrZvt4GuVl82uG/dOmkvKr17tbJsQ
 /gLcRzEtpdNkqqVXdFatTFf2snsuDmG5S6RZytIwczrk+NZE+CPg+4WqhsJaPjGAoBo+
 aZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sPYnUSSQorfda6DEsSWxyECKProtfiGiCAfG7RCG6tA=;
 b=RIAz2eKr5GFce35lfbww757php6zyEF17bw0uMSzwJ8WshvlhToYRqltlfnMAUbd+w
 Zh21mMq9FF9XiuugH2O5A/7wX09zTvcM4474ywkpNaQ8f0qQ/eIw8yzElmSn17ZZF9MG
 oGtIK3qs6s4dI2VXIrdsXBjrC20TFxDSygWq4wDEOewdt55uQt5mTvITHxd6M0C9rG/f
 QzhEYK814ji66NhROeQoWUrhK+3C0bR26uvkRwHUlpiB4UyxGXS689tBs8ongsM+7dL+
 D/agnarxLskIECW+jHNXYu7HZoLdH2u0m2Y1sV2pQ+k1ITMzN5cH3+F/+cMBhPTEiTQJ
 evGQ==
X-Gm-Message-State: APjAAAWj+R0VnCEbsAYehbl6aqFM4pv45sgrMamtp7gCvna75e/pZBv1
 v5+o71dQEKJnCHvczCdYalMXwYe7
X-Google-Smtp-Source: APXvYqxQEcpK4Q14Fa2EkFBV+mIOlmQ8/QQAaHzZr8hLJHEWwTGWyVu1dotTTqf5UUaGs0eHBVS/dQ==
X-Received: by 2002:aa7:8d8a:: with SMTP id i10mr10893985pfr.45.1570108535451; 
 Thu, 03 Oct 2019 06:15:35 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 o15sm2300731pjs.14.2019.10.03.06.15.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 06:15:34 -0700 (PDT)
Subject: Re: [GIT PULL] ARM/arm64: arm_pm_restart removal
To: Olof Johansson <olof@lixom.net>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20191002131228.4085560-1-thierry.reding@gmail.com>
 <20191002160151.GS25745@shell.armlinux.org.uk>
 <CAOesGMg6aJ1Y+0fXkXCbOzCzxzZifx2m8YoPN=Y2pD==HPp2=Q@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <d48d1c03-2740-6ce0-7028-873d3c4ab31b@roeck-us.net>
Date: Thu, 3 Oct 2019 06:15:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMg6aJ1Y+0fXkXCbOzCzxzZifx2m8YoPN=Y2pD==HPp2=Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_061536_618061_EA5121C8 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Thierry Reding <thierry.reding@gmail.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/2/19 11:46 AM, Olof Johansson wrote:
> It looks like it's an old patchset that you were cc:d on at the time,
> but I can't blame anyone for missing context here.
> 
> Thierry, a reference to the thread would have been useful:
> https://lore.kernel.org/linux-arm-kernel/20170130110512.6943-1-thierry.reding@gmail.com/
> 
> Given that the code is 2.5 years old, posting it again for awareness
> seems appropriate, even if it was acked by a few stakeholders
> originally.
> 

Thierry,

would you mind doing that ?

To give some background: I had completely forgotten about this, until I recently
hit a problem with restart that was difficult to debug since it was hard to figure
out which reset sequence was actually executed. I thought about re-posting the
series, but then we (ie those who cared enough to be involved in above referenced
exchange) decided to use this approach. Now I still wonder what it will take
to get the series applied.

At least posting the series as pull request did generate some attention.
I count that as an improvement.

Guenter

> 
> -Olof
> 
> On Wed, Oct 2, 2019 at 9:01 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>>
>> Why was I not copied on these changes (which clearly touch core ARM
>> code) both the patch series and this pull request?
>>
>> On Wed, Oct 02, 2019 at 03:12:28PM +0200, Thierry Reding wrote:
>>> Hi ARM SoC maintainers,
>>>
>>> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
>>>
>>>    Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
>>>
>>> are available in the Git repository at:
>>>
>>>    https://github.com/thierryreding/linux.git tags/for-5.5/arm-pm-restart-removal
>>>
>>> for you to fetch changes up to 81b3f28283e2f0b03cea2127e9ff78e7c505b3d3:
>>>
>>>    ARM: Remove arm_pm_restart() (2019-10-02 14:56:22 +0200)
>>>
>>> This is the set of changes that we recently discussed that remove all
>>> uses of the arm_pm_restart symbol and replaces it by usages of the new
>>> restart handler that Guenter had introduced.
>>>
>>> I've rebased these on top of v5.4-rc1.
>>>
>>> Thierry
>>>
>>> ----------------------------------------------------------------
>>> ARM/arm64: arm_pm_restart removal
>>>
>>> This set of patches converts all remaining users of the arm_pm_restart
>>> mechanism for installing reboot hooks to the restart handler mechanism
>>> and finally removes the arm_pm_restart symbol.
>>>
>>> ----------------------------------------------------------------
>>> Guenter Roeck (6):
>>>        ARM: prima2: Register with kernel restart handler
>>>        ARM: xen: Register with kernel restart handler
>>>        drivers: firmware: psci: Register with kernel restart handler
>>>        ARM: Register with kernel restart handler
>>>        ARM64: Remove arm_pm_restart()
>>>        ARM: Remove arm_pm_restart()
>>>
>>>   arch/arm/include/asm/system_misc.h   |  1 -
>>>   arch/arm/kernel/reboot.c             |  6 +-----
>>>   arch/arm/kernel/setup.c              | 20 ++++++++++++++++++--
>>>   arch/arm/mach-prima2/rstc.c          | 11 +++++++++--
>>>   arch/arm/xen/enlighten.c             | 12 ++++++++++--
>>>   arch/arm64/include/asm/system_misc.h |  2 --
>>>   arch/arm64/kernel/process.c          |  7 +------
>>>   drivers/firmware/psci/psci.c         | 12 ++++++++++--
>>>   8 files changed, 49 insertions(+), 22 deletions(-)
>>>
>>
>> --
>> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
>> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
>> According to speedtest.net: 11.9Mbps down 500kbps up
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
