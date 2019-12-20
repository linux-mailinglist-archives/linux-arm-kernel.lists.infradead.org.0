Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35791277ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:21:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wm+YtBtsypmlJNnIVeWqBHzN9CpwcxPFMCPPoImP6t4=; b=gC+dm0YobIOwVQnF7qg0CUtSl
	g3GX7358LAdag8xO8x7z4gU/gfQL/nwvBBHqiP/T1XNcB6jwXrUzxBkzvNPQcBKkujUNjSmkNqmDS
	DjP8QC3Scu0UPDLLEbUXkTWk7un7ZjN6dX8kt2UsnTbncQLWbaSyGs5JMyh7vK+PpB4A4t9bKpWC2
	v4iCQFlm8nwMI3rwGNX9oQPCD1neUXc+FXYAxeoXItsyINDx13f46n695keGsy1bWCEM8e4BD3YIC
	SV98M4PAH7s9b8buXcdx0OO8jjQvDhLZqJChNKJFkRB/2Gwx8SWd0OP9RAOn11OgFnYMSQeAlHG0w
	5Qq8iyoNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiESx-0004He-8t; Fri, 20 Dec 2019 09:20:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiESn-0004Gs-OH
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:20:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7D8130E;
 Fri, 20 Dec 2019 01:20:44 -0800 (PST)
Received: from [10.37.12.112] (unknown [10.37.12.112])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 501863F718;
 Fri, 20 Dec 2019 01:20:43 -0800 (PST)
Subject: Re: [PATCH 1/2] include: trace: Add SCMI header with trace events
To: Jim Quinlan <james.quinlan@broadcom.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
 <20191218120900.GA28599@bogus>
 <7b59a2f1-0786-d24f-a653-76a60c15a8ae@broadcom.com>
 <CA+-6iNxn29WpUrbc9gL4EMTJfZj7FRCeO-_QaUqbjJYd1JAEKA@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <7fe599d3-1ce2-1fde-2911-9516a26090b6@arm.com>
Date: Fri, 20 Dec 2019 09:20:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+-6iNxn29WpUrbc9gL4EMTJfZj7FRCeO-_QaUqbjJYd1JAEKA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_012049_881588_A41F0E3C 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mingo@redhat.com, rostedt@goodmis.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jim,

On 12/19/19 4:32 PM, Jim Quinlan wrote:
>> I also see a stretch of over 100 (contiguous) of these
>>
>> ... scmi_rx_done: transfer_id=48321 msg_id=7 protocol_id=128 seq=0 msg_type=0
>> ... scmi_rx_done: transfer_id=48322 msg_id=8 protocol_id=128 seq=0 msg_type=0
>> ... scmi_rx_done: transfer_id=48323 msg_id=7 protocol_id=128 seq=0 msg_type=0
>> ... scmi_rx_done: transfer_id=48324 msg_id=8 protocol_id=128 seq=0 msg_type=0
>>
>> which I cannot explain -- perhaps ftrace doesn't work well in interrupt context?
> 
> Hello,
> Please ignore my previous results; I've switched to using 'nop' as the
> current_tracer and the above issue has cleared up.  I now get traces
> like below:
> 
>            <idle>-0     [000] d.h.   907.608763: scmi_rx_done:
> transfer_id=10599 msg_id=7 protocol_id=128 seq=2 msg_type=0
>         t1-sensor-1817  [003] ....   907.608879: scmi_xfer_begin:
> transfer_id=10601 msg_id=6 protocol_id=21 seq=1 poll=0
>           t0-brcm-1815  [000] d.h.   907.614133: scmi_rx_done:
> transfer_id=10600 msg_id=7 protocol_id=20 seq=0 msg_type=0
>           t0-brcm-1815  [000] ....   907.614189: scmi_xfer_end:
> transfer_id=10599 msg_id=7 protocol_id=128 seq=2 status=0
>           t0-brcm-1815  [000] ....   907.614215: scmi_xfer_begin:
> transfer_id=10602 msg_id=8 protocol_id=128 seq=2 poll=0
>            <idle>-0     [000] d.h.   907.616380: scmi_rx_done:
> transfer_id=10601 msg_id=6 protocol_id=21 seq=1 msg_type=0
>          t2-clock-1818  [003] ....   907.616418: scmi_xfer_end:
> transfer_id=10600 msg_id=7 protocol_id=20 seq=0 status=0
>          t2-clock-1818  [003] ....   907.616440: scmi_xfer_begin:
> transfer_id=10603 msg_id=7 protocol_id=20 seq=0 poll=0
>         t1-sensor-1817  [003] ....   907.616474: scmi_xfer_end:
> transfer_id=10601 msg_id=6 protocol_id=21 seq=1 status=0
>            <idle>-0     [000] d.h.   907.616478: scmi_rx_done:
> transfer_id=10602 msg_id=8 protocol_id=128 seq=2 msg_type=0
>           t0-brcm-1815  [000] d.h.   907.616526: scmi_rx_done:
> transfer_id=10603 msg_id=7 protocol_id=20 seq=0 msg_type=0
>           t0-brcm-1815  [000] ....   907.616559: scmi_xfer_end:
> transfer_id=10602 msg_id=8 protocol_id=128 seq=2 status=0
>           t0-brcm-1815  [000] .n..   907.616588: scmi_xfer_begin:
> transfer_id=10604 msg_id=7 protocol_id=128 seq=1 poll=0
>         t1-sensor-1817  [003] ....   907.616628: scmi_xfer_begin:
> transfer_id=10605 msg_id=6 protocol_id=21 seq=2 poll=0
>          t2-clock-1818  [003] ....   907.616660: scmi_xfer_end:
> transfer_id=10603 msg_id=7 protocol_id=20 seq=0 status=0
>            <idle>-0     [000] d.h.   907.616665: scmi_rx_done:
> transfer_id=10604 msg_id=7 protocol_id=128 seq=1 msg_type=0
>          t2-clock-1818  [003] ....   907.616673: scmi_xfer_begin:
> transfer_id=10606 msg_id=7 protocol_id=20 seq=0 poll=0
>           t0-brcm-1815  [000] d.h.   907.618782: scmi_rx_done:
> transfer_id=10605 msg_id=6 protocol_id=21 seq=2 msg_type=0
>         t1-sensor-1817  [003] ....   907.618829: scmi_xfer_end:
> transfer_id=10605 msg_id=6 protocol_id=21 seq=2 status=0
>           t0-brcm-1815  [000] dnH.   907.618834: scmi_rx_done:
> transfer_id=10606 msg_id=7 protocol_id=20 seq=0 msg_type=0
>           t0-brcm-1815  [000] .n..   907.618855: scmi_xfer_end:
> transfer_id=10604 msg_id=7 protocol_id=128 seq=1 status=0
>           t0-brcm-1815  [000] .n..   907.618873: scmi_xfer_begin:
> transfer_id=10607 msg_id=8 protocol_id=128 seq=1 poll=0
>          t2-clock-1818  [003] ....   907.618890: scmi_xfer_end:
> transfer_id=10606 msg_id=7 protocol_id=20 seq=0 status=0
>         rcu_sched-7     [000] d.h.   907.618898: scmi_rx_done:
> transfer_id=10607 msg_id=8 protocol_id=128 seq=1 msg_type=0
>           t0-brcm-1815  [000] ....   907.618934: scmi_xfer_end:
> transfer_id=10607 msg_id=8 protocol_id=128 seq=1 status=0
>           t3-brcm-1819  [003] ....   907.618958: scmi_xfer_begin:
> transfer_id=10608 msg_id=7 protocol_id=128 seq=0 poll=0
>            <idle>-0     [000] d.h.   907.618974: scmi_rx_done:
> transfer_id=10608 msg_id=7 protocol_id=128 seq=0 msg_type=0
>           t3-brcm-1819  [003] ....   907.619005: scmi_xfer_end:
> transfer_id=10608 msg_id=7 protocol_id=128 seq=0 status=0
>           t3-brcm-1819  [003] ....   907.619013: scmi_xfer_begin:
> transfer_id=10609 msg_id=8 protocol_id=128 seq=0 poll=0
> 
> And with V2 having the added xfer id allows me to more easily post
> process the above with a script and highlight messages that took too
> long (round trip times > 3msec get a double asterisk):
> 
>       10585      0.02 ms  proto=128  cmd=8  seq=0
>       10586      2.16 ms  proto= 21  cmd=6  seq=0
>       10587      0.87 ms  proto=128  cmd=7  seq=1
>       10588      0.02 ms  proto=128  cmd=8  seq=0
>       10589      0.05 ms  proto=128  cmd=7  seq=0
>       10590      2.15 ms  proto= 21  cmd=6  seq=1
>       10591      2.19 ms  proto=128  cmd=8  seq=0
>       10592      2.13 ms  proto= 21  cmd=6  seq=0
>       10593      0.03 ms  proto=128  cmd=7  seq=0
>       10594      0.02 ms  proto=128  cmd=8  seq=0
>       10595      0.02 ms  proto=128  cmd=7  seq=0
>       10596      0.02 ms  proto=128  cmd=8  seq=0
>       10597  **  7.16 ms  proto= 20  cmd=7  seq=0
>       10598  **  7.12 ms  proto= 21  cmd=6  seq=1
>       10599  ** 11.58 ms  proto=128  cmd=7  seq=2
>       10600  **  9.28 ms  proto= 20  cmd=7  seq=0
>       10601  **  7.60 ms  proto= 21  cmd=6  seq=1
>       10602      2.34 ms  proto=128  cmd=8  seq=2
>       10603      0.22 ms  proto= 20  cmd=7  seq=0
>       10604      2.27 ms  proto=128  cmd=7  seq=1
>       10605      2.20 ms  proto= 21  cmd=6  seq=2
> 
> So I do find the extra msg id helpful as well as the extra traceprint.

Thank you for sharing your experiments and thoughts. I have probably
similar setup for stressing the communication channel, but I do also
some wired things in the firmware. That's why I need to measure these
delays. I am happy that it is useful for you also.

I don't know if your firmware supports 'fast channel', but please keep
in mind that it is not tracked in this 'transfer_id'.
This transfer_id in v2 version does not show the real transfers
to the firmware since there is another path called 'fast channel' or
'fast_switch' in the CPUfreq. It is in drivers/firmware/arm_scmi/perf.c
and the atomic variable is not incremented in that path. Adding it also
there just for atomic_inc() probably would add delays in the fast_switch
and also brings little value.
For the normal channel, where we have spinlocks and other stuff, this
atomic_inc() could stay in my opinion.

Regards,
Lukasz

> 
> Regards,
> Jim Quinlan
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
