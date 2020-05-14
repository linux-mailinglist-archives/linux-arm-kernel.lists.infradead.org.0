Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106F31D2F5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UMX/76eiceKLpUyBS6p/L1ZJROiJLx4LJ90okvuBwHg=; b=dMb0l+NASr8H0CbxJvfEJL7yS
	ufcm9ICuXEP8QZq0M20R0O9Grxod58J2yH1mHM4CViJczkHQGINQ9PtB6J7vCD6fJg+wNnbokHVJu
	fCRsxt3ziX708KomUSt9WxRrBAKIYR8FxEHzBO7l/bHxPDcMrWSuIZXEPCf+gZiAMlw0SiiPgSE5d
	hp193HXKrNFQbAZEiyV9hG0AkxLep6I72ZlQZxCphcG0/U7AZkuGRtxvcZVieW1AAIiqZki+ZDVej
	sO4qieYRCTRmP6Ie3HonEaM75PwmkJ5ys9zaG5cipo+VelmJlItosA3A4dJW3amQdDSJpFkc7PiQ6
	BcVeQkk5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCnO-00008V-Iw; Thu, 14 May 2020 12:17:02 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCnF-00007i-AX
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:16:55 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04ECCYqG012285; Thu, 14 May 2020 14:16:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=MOssBXSl4hyB0zkaMosb2Kj7vFuZHDZ6XU6Ni82fmxA=;
 b=t2wvBr+xedF5c7Pp1Ng9jCQH1X81/EeOXsKTcwy7PlAFMlmsAdWg/JBJhbrqVcvUzYoh
 QTl107i24wtXfmq7hYytsboyegLy6wOpMw06uN+wREcPNmPpAfRpspEAdyeb6vJkAXyq
 DSo85Sq4DGBnJ+P/Cp1mrt6RVXhb549k0tZeUENDVeLsgVDoNziXsDe9AQfkVe/tT8HD
 I6/FBELuCeANuebTlrFRdTVQZnKXQWNGZGAlO9B1TqhpOFyeScmg/ETnSgKFfxoxqZG1
 vSu5XA5EBx34k3EjHmnUVvq1K4A3iCIIFT2EQtNNUgsejiTXTlkutMieW08S1cqEZLuA qA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vpk4p2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 14:16:37 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 40DE0100034;
 Thu, 14 May 2020 14:16:36 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 133F22B0A58;
 Thu, 14 May 2020 14:16:36 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 14 May
 2020 14:16:31 +0200
Subject: Re: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
To: Marek Vasut <marex@denx.de>, Thomas Gleixner <tglx@linutronix.de>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200507150729.244468-1-marex@denx.de>
 <87r1vvejqa.fsf@nanos.tec.linutronix.de>
 <05c06df8-f871-c20f-3b7e-bcfa0b5d88cd@denx.de>
 <875zd7e7m0.fsf@nanos.tec.linutronix.de>
 <d3b76d43-675b-c699-06fa-aab448504f25@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c260ad57-f520-fc50-d1d2-99fab74eacd2@st.com>
Date: Thu, 14 May 2020 14:16:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <d3b76d43-675b-c699-06fa-aab448504f25@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_03:2020-05-14,
 2020-05-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_051653_713575_290C24B9 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Fabien Dessenne <fabien.dessenne@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 5/10/20 4:49 PM, Marek Vasut wrote:
> On 5/7/20 11:51 PM, Thomas Gleixner wrote:
>> Marek,
>>
>> Marek Vasut <marex@denx.de> writes:
>>> On 5/7/20 7:30 PM, Thomas Gleixner wrote:
>>>> Marek Vasut <marex@denx.de> writes:
>>>>> NOTE: I don't know whether this is a correct fix. Maybe the
>>>>>        irq_data_get_irq_chip() should never return NULL, and
>>>>>        I have some other issue?
>>>>
>>>> What's the callchain?
>>>
>>> Hmm, I'm currently unable to replicate it on linux-next, but on 5.4.39 I
>>> get what's at the end of the email.
>>>
>>> On next I just noticed I get i2c: Transfer while suspended, which is
>>> what I suspect would be the real root cause of my problem, and why
>>> irq_data_get_irq_chip() returns NULL?
>>
>> Looks like.
>>
>>>   Unable to handle kernel NULL pointer dereference at virtual address 00000070
>>>   PC is at __irq_get_irqchip_state+0x4/0x30
>>>   LR is at __synchronize_hardirq+0x7c/0xe8
>>>   [<c0166758>] (__irq_get_irqchip_state) from [<c0166800>] (__synchronize_hardirq+0x7c/0xe8)
>>>   [<c0166800>] (__synchronize_hardirq) from [<c01668f0>] (synchronize_irq+0x2c/0x9c)
>>>   [<c01668f0>] (synchronize_irq) from [<c016cba0>] (suspend_device_irqs+0xd8/0xf4)
>>>   [<c016cba0>] (suspend_device_irqs) from [<c04e3388>] (dpm_suspend_noirq+0x18/0x194)
>>>   [<c04e3388>] (dpm_suspend_noirq) from [<c015f174>] (suspend_devices_and_enter+0x170/0x514)
>>>   [<c015f174>] (suspend_devices_and_enter) from [<c015f6f4>] (pm_suspend+0x1dc/0x278)
>>>   [<c015f6f4>] (pm_suspend) from [<c015e100>] (state_store+0x9c/0xcc)
>>>   [<c015e100>] (state_store) from [<c029a424>] (kernfs_fop_write+0x124/0x1e0)
>>>   [<c029a424>] (kernfs_fop_write) from [<c02301c8>] (__vfs_write+0x2c/0xe8)
>>>   [<c02301c8>] (__vfs_write) from [<c0231658>] (vfs_write+0x98/0xbc)
>>>   [<c0231658>] (vfs_write) from [<c02317fc>] (ksys_write+0x74/0xc4)
>>>   [<c02317fc>] (ksys_write) from [<c0101000>] (ret_fast_syscall+0x0/0x54)
>>
>> I assume that the i2c controller in question tears down the interrupt on
>> suspend. The changelog of that i2c driver should give you a few hints.
> 
> All right, so I found out the root cause is already fixed in next, and
> just needs to be backported to stable. I'll ping the patch author about
> that.
> 
> It's this patch:
> 69269446ccbf ("mailbox: stm32-ipcc: Update wakeup management")

Just to inform you that I got same issue some times ago. As far I 
understood, issue was related to the fact that we used 
"dedicated_wakeup" API for Exti interrupt. Those Exti interrupts had no 
parent which seems to generate this issue (sorry for the lake of details).

Adding a check is a good thing, but note that I have patches in my 
backlog which change a bit hw abstraction done in Exti irqchip driver.
To better fit with HW, each Exti wakeup interrupt will have a GIC irq 
parent (and issue is no more observed).

regards
Alex



> I also need to revisit the regulator suspend topic next, that seems to
> be a separate issue after all.
> 
> Sorry for the noise.
> 
> That said, do you want to take this patch to add the missing check
> anyway or is there a reason the check is missing ?
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
