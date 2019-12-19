Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F13212673D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:35:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1iSLilKAs5n/o4/SgV65j5bcKAzimXmyT19lPGRw2UM=; b=ZA8A4cKdMLmgeS
	5NMH1kRhHo44CjpwhdxbV51TysLp7FriZxtKZ551W4lDOiQh0coMvTtvU/91x3TYrX5QmU4fjmlcF
	/vFqXPUdOF/Bji3jssIyZIrR3JPeaS3KC9FUsJ02d0w1x75vY/HTMfwvPonJKFSRip3IByOyM/lCz
	2kEvFPCrvMGCRl+lxamHwMW7Vc1B6g62OiUx4vP9KTmN4QiL3aj3q+mYyrOju4goJmzuxqlknG3u9
	4AZxeuP2lpR6Y5BuuyIzlcuNVQdXuZ8OpRSpDSJULWmqP5BQpXvpqisJ6asEE3yvBCthDQIqbHzi1
	j1TnwkrpxZWZ7iZNdUuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihymF-0004nU-Uq; Thu, 19 Dec 2019 16:35:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyiq-0000oF-Jw
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:32:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id m24so6073626wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CSJhDs+idA5i15qY0cV5g4g/iFY0uQiRgrR8CPqPVSM=;
 b=BpYWgUdRl0eRXOIWAcU433Q43vwSWIlqGYUsv/yFhLn2mUs5YSJMn2aZXab2PwV3B4
 OULs1AAdt70Nxb7nGXYifJWKKv/p/azTb3IiL/CIudz8e3poW4d9EEJnevapQHDrY+2g
 60dqb97fKwdXYmh6+DoI/Z4/H+CMgNEZL8ZDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CSJhDs+idA5i15qY0cV5g4g/iFY0uQiRgrR8CPqPVSM=;
 b=QvW89fuel79W6H1zW4XySaIgMrJ6FZiBiTdU9icP3o5FOxlzckp3aIdvv+yWo20aH/
 c6cHkH/a5wcsjwwHiJT4b50HNw74291aMfWS0Xr1CZqkPmR6kRCM6BvmPfrOyY7Fz9aW
 L+6BV1whx+j7KfhUYlpmDzBcdpPFw4tYOR7ewNfzv3cYlh2+XQnntB0cfrnfY1GxNLbr
 ZY6CENufZHYYew/zg+32o6J7+SjqUL1HDVGe2/MmYk1NQkWl1Pv2f3fzFjcBanBUyfF3
 iXudRsqTP7pPRA4zg9MvaJbPVswcsWVuQWTg66um2n15a9aONdYlvRvDYJhuKDuAUf50
 NHsQ==
X-Gm-Message-State: APjAAAU9wX8X/5YxrYn3SyRvSA6Qigk5SHYD2NoWsfcQ0FN4DXajIdSu
 D//jjNk4qgnj08rNOXoSZQ4zFEqbSrwh9x0Y7o1xtQ==
X-Google-Smtp-Source: APXvYqwxWdg1BrVmDIVN4oLwnu28aYRPTQAChh10jcApQWJojYvRePOj7s8dQvmhClMuLhaFhTvv4w6m/euxO7vbkUQ=
X-Received: by 2002:a7b:c00c:: with SMTP id c12mr10925795wmb.174.1576773139080; 
 Thu, 19 Dec 2019 08:32:19 -0800 (PST)
MIME-Version: 1.0
References: <20191216161650.21844-1-lukasz.luba@arm.com>
 <20191218120900.GA28599@bogus>
 <7b59a2f1-0786-d24f-a653-76a60c15a8ae@broadcom.com>
In-Reply-To: <7b59a2f1-0786-d24f-a653-76a60c15a8ae@broadcom.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 19 Dec 2019 11:32:07 -0500
Message-ID: <CA+-6iNxn29WpUrbc9gL4EMTJfZj7FRCeO-_QaUqbjJYd1JAEKA@mail.gmail.com>
Subject: Re: [PATCH 1/2] include: trace: Add SCMI header with trace events
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083220_812640_5BB07FA9 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mingo@redhat.com, rostedt@goodmis.org, linux-arm-kernel@lists.infradead.org,
 lukasz.luba@arm.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I also see a stretch of over 100 (contiguous) of these
>
> ... scmi_rx_done: transfer_id=48321 msg_id=7 protocol_id=128 seq=0 msg_type=0
> ... scmi_rx_done: transfer_id=48322 msg_id=8 protocol_id=128 seq=0 msg_type=0
> ... scmi_rx_done: transfer_id=48323 msg_id=7 protocol_id=128 seq=0 msg_type=0
> ... scmi_rx_done: transfer_id=48324 msg_id=8 protocol_id=128 seq=0 msg_type=0
>
> which I cannot explain -- perhaps ftrace doesn't work well in interrupt context?

Hello,
Please ignore my previous results; I've switched to using 'nop' as the
current_tracer and the above issue has cleared up.  I now get traces
like below:

          <idle>-0     [000] d.h.   907.608763: scmi_rx_done:
transfer_id=10599 msg_id=7 protocol_id=128 seq=2 msg_type=0
       t1-sensor-1817  [003] ....   907.608879: scmi_xfer_begin:
transfer_id=10601 msg_id=6 protocol_id=21 seq=1 poll=0
         t0-brcm-1815  [000] d.h.   907.614133: scmi_rx_done:
transfer_id=10600 msg_id=7 protocol_id=20 seq=0 msg_type=0
         t0-brcm-1815  [000] ....   907.614189: scmi_xfer_end:
transfer_id=10599 msg_id=7 protocol_id=128 seq=2 status=0
         t0-brcm-1815  [000] ....   907.614215: scmi_xfer_begin:
transfer_id=10602 msg_id=8 protocol_id=128 seq=2 poll=0
          <idle>-0     [000] d.h.   907.616380: scmi_rx_done:
transfer_id=10601 msg_id=6 protocol_id=21 seq=1 msg_type=0
        t2-clock-1818  [003] ....   907.616418: scmi_xfer_end:
transfer_id=10600 msg_id=7 protocol_id=20 seq=0 status=0
        t2-clock-1818  [003] ....   907.616440: scmi_xfer_begin:
transfer_id=10603 msg_id=7 protocol_id=20 seq=0 poll=0
       t1-sensor-1817  [003] ....   907.616474: scmi_xfer_end:
transfer_id=10601 msg_id=6 protocol_id=21 seq=1 status=0
          <idle>-0     [000] d.h.   907.616478: scmi_rx_done:
transfer_id=10602 msg_id=8 protocol_id=128 seq=2 msg_type=0
         t0-brcm-1815  [000] d.h.   907.616526: scmi_rx_done:
transfer_id=10603 msg_id=7 protocol_id=20 seq=0 msg_type=0
         t0-brcm-1815  [000] ....   907.616559: scmi_xfer_end:
transfer_id=10602 msg_id=8 protocol_id=128 seq=2 status=0
         t0-brcm-1815  [000] .n..   907.616588: scmi_xfer_begin:
transfer_id=10604 msg_id=7 protocol_id=128 seq=1 poll=0
       t1-sensor-1817  [003] ....   907.616628: scmi_xfer_begin:
transfer_id=10605 msg_id=6 protocol_id=21 seq=2 poll=0
        t2-clock-1818  [003] ....   907.616660: scmi_xfer_end:
transfer_id=10603 msg_id=7 protocol_id=20 seq=0 status=0
          <idle>-0     [000] d.h.   907.616665: scmi_rx_done:
transfer_id=10604 msg_id=7 protocol_id=128 seq=1 msg_type=0
        t2-clock-1818  [003] ....   907.616673: scmi_xfer_begin:
transfer_id=10606 msg_id=7 protocol_id=20 seq=0 poll=0
         t0-brcm-1815  [000] d.h.   907.618782: scmi_rx_done:
transfer_id=10605 msg_id=6 protocol_id=21 seq=2 msg_type=0
       t1-sensor-1817  [003] ....   907.618829: scmi_xfer_end:
transfer_id=10605 msg_id=6 protocol_id=21 seq=2 status=0
         t0-brcm-1815  [000] dnH.   907.618834: scmi_rx_done:
transfer_id=10606 msg_id=7 protocol_id=20 seq=0 msg_type=0
         t0-brcm-1815  [000] .n..   907.618855: scmi_xfer_end:
transfer_id=10604 msg_id=7 protocol_id=128 seq=1 status=0
         t0-brcm-1815  [000] .n..   907.618873: scmi_xfer_begin:
transfer_id=10607 msg_id=8 protocol_id=128 seq=1 poll=0
        t2-clock-1818  [003] ....   907.618890: scmi_xfer_end:
transfer_id=10606 msg_id=7 protocol_id=20 seq=0 status=0
       rcu_sched-7     [000] d.h.   907.618898: scmi_rx_done:
transfer_id=10607 msg_id=8 protocol_id=128 seq=1 msg_type=0
         t0-brcm-1815  [000] ....   907.618934: scmi_xfer_end:
transfer_id=10607 msg_id=8 protocol_id=128 seq=1 status=0
         t3-brcm-1819  [003] ....   907.618958: scmi_xfer_begin:
transfer_id=10608 msg_id=7 protocol_id=128 seq=0 poll=0
          <idle>-0     [000] d.h.   907.618974: scmi_rx_done:
transfer_id=10608 msg_id=7 protocol_id=128 seq=0 msg_type=0
         t3-brcm-1819  [003] ....   907.619005: scmi_xfer_end:
transfer_id=10608 msg_id=7 protocol_id=128 seq=0 status=0
         t3-brcm-1819  [003] ....   907.619013: scmi_xfer_begin:
transfer_id=10609 msg_id=8 protocol_id=128 seq=0 poll=0

And with V2 having the added xfer id allows me to more easily post
process the above with a script and highlight messages that took too
long (round trip times > 3msec get a double asterisk):

     10585      0.02 ms  proto=128  cmd=8  seq=0
     10586      2.16 ms  proto= 21  cmd=6  seq=0
     10587      0.87 ms  proto=128  cmd=7  seq=1
     10588      0.02 ms  proto=128  cmd=8  seq=0
     10589      0.05 ms  proto=128  cmd=7  seq=0
     10590      2.15 ms  proto= 21  cmd=6  seq=1
     10591      2.19 ms  proto=128  cmd=8  seq=0
     10592      2.13 ms  proto= 21  cmd=6  seq=0
     10593      0.03 ms  proto=128  cmd=7  seq=0
     10594      0.02 ms  proto=128  cmd=8  seq=0
     10595      0.02 ms  proto=128  cmd=7  seq=0
     10596      0.02 ms  proto=128  cmd=8  seq=0
     10597  **  7.16 ms  proto= 20  cmd=7  seq=0
     10598  **  7.12 ms  proto= 21  cmd=6  seq=1
     10599  ** 11.58 ms  proto=128  cmd=7  seq=2
     10600  **  9.28 ms  proto= 20  cmd=7  seq=0
     10601  **  7.60 ms  proto= 21  cmd=6  seq=1
     10602      2.34 ms  proto=128  cmd=8  seq=2
     10603      0.22 ms  proto= 20  cmd=7  seq=0
     10604      2.27 ms  proto=128  cmd=7  seq=1
     10605      2.20 ms  proto= 21  cmd=6  seq=2

So I do find the extra msg id helpful as well as the extra traceprint.

Regards,
Jim Quinlan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
