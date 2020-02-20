Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5B0166361
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d/JSfXJqEP2kCuUVD2l7zHHNxOo0z/dBRnVDR3gJ+gU=; b=a0PQVtl0dfrqIoqHzV9VHLWUu
	kMgewwQbv5O6vNuWS2UMLweVFN0ROs9Z0tiqyWdFhE+bLJXfOVPbIMYWIYn4iCZYLG+cyo2MRwP7F
	Jg9kxONITB0JHUnizSBKjI5Myhw7q7rph7PBd7kUD8Szxmj0QMuh66AE/5Rx5yZhxtJh1OA1xQlBl
	WHlyAdrBJmKtf8k+uEgDt8zvRufHhv+cROqfG5JGktN5QN+qYRZleV00gPX/Th511sXe2zUpmbLFF
	bTdoVvNundGPRLDujIHV+2rBrQDXpbDM2dSdsedwTqz5HJTctlSB9v3h02EQgWwHZWObMqkvAspuM
	QlAjAjN5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oyG-0000vV-CY; Thu, 20 Feb 2020 16:46:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oy7-0000ux-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:46:32 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F08520801;
 Thu, 20 Feb 2020 16:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582217190;
 bh=6KCr8/c31+4Zjv2FH9fu1ipa+HTFqM2T3bz66PmzOTA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p8EY09tKFL3VUgGkWXd8/ebo9udOVi2YkgfOFmh6dOOng/lP+pdix1x8aoPoy6Urr
 sxmsyjOhrBZsvmTh0FGHwxJNI/yHFPA2IorIv1gtJlw7IDsd154sfOGrWwfpKTqKwa
 hSdmHhrfaPhR+U0UfUm0RenX/Y7ENgCExOAYOzDU=
Date: Thu, 20 Feb 2020 11:46:28 -0500
From: Sasha Levin <sashal@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH AUTOSEL 5.5 218/542] ARM: OMAP2+: Add workaround for DRA7
 DSP MStandby errata i879
Message-ID: <20200220164628.GE1734@sasha-vm>
References: <20200214154854.6746-1-sashal@kernel.org>
 <20200214154854.6746-218-sashal@kernel.org>
 <1ea1b9d3-ce1e-83ca-e2a4-dfb67b12754d@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ea1b9d3-ce1e-83ca-e2a4-dfb67b12754d@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_084631_081450_44E1E1F5 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 12:34:19PM -0600, Suman Anna wrote:
>Hi Sasha,
>
>On 2/14/20 9:43 AM, Sasha Levin wrote:
>> From: Suman Anna <s-anna@ti.com>
>>
>> [ Upstream commit 2f14101a1d760db72393910d481fbf7768c44530 ]
>>
>> Errata Title:
>> i879: DSP MStandby requires CD_EMU in SW_WKUP
>>
>> Description:
>> The DSP requires the internal emulation clock to be actively toggling
>> in order to successfully enter a low power mode via execution of the
>> IDLE instruction and PRCM MStandby/Idle handshake. This assumes that
>> other prerequisites and software sequence are followed.
>>
>> Workaround:
>> The emulation clock to the DSP is free-running anytime CCS is connected
>> via JTAG debugger to the DSP subsystem or when the CD_EMU clock domain
>> is set in SW_WKUP mode. The CD_EMU domain can be set in SW_WKUP mode
>> via the CM_EMU_CLKSTCTRL [1:0]CLKTRCTRL field.
>>
>> Implementation:
>> This patch implements this workaround by denying the HW_AUTO mode
>> for the EMU clockdomain during the power-up of any DSP processor
>> and re-enabling the HW_AUTO mode during the shutdown of the last
>> DSP processor (actually done during the enabling and disabling of
>> the respective DSP MDMA MMUs). Reference counting has to be used to
>> manage the independent sequencing between the multiple DSP processors.
>>
>> This switching is done at runtime rather than a static clockdomain
>> flags value to meet the target power domain state for the EMU power
>> domain during suspend.
>>
>> Note that the DSP MStandby behavior is not consistent across all
>> boards prior to this fix. Please see commit 45f871eec6c0 ("ARM:
>> OMAP2+: Extend DRA7 IPU1 MMU pdata quirks to DSP MDMA MMUs") for
>> details.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>You can drop this from the 5.5-stable queue. Mainline doesn't yet boot
>the processors, so this is not needed for stable queue.

Now dropped, thank you.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
