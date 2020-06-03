Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299CC1ED5FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EdIji1CDaBkPAi3MtVGOMCA82LxaN1DDYXn7k6xh5Ac=; b=g8QgrYGOKvmIofe+hLKAjFB8N
	cAwU1Lpv0z2SX1BtLDGyxlN5pbrbWfgT3guBl+vws1d0nqhoFndzzgPJHY+ptGUdusxWouWyM1Nba
	7h/Y31mhbWzv8QIltgdr4h1jnE+23j7Xi+yrwRtiuHEKjxb/vffpsbuwXY+xaf/7nqm7pZacYLseq
	waUz4DLA3akQaYYp42yc5BIYHea9hD0cNAmih/IfZgJy1E5tuj1vP8/UdhYAvE2Ai5mXG9x0xR6fS
	1HE8OJm40B7w/WD4lJq3ECsg5Se4j0d1E0rjJUjn2qEbbndEm2PQg9dKbf6t7hsw1zz+potuTm/kp
	bviUK6I6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXxh-0001EO-O6; Wed, 03 Jun 2020 18:18:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXxY-0001DN-9M
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:17:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2165731B;
 Wed,  3 Jun 2020 11:17:51 -0700 (PDT)
Received: from bogus (unknown [10.37.8.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0DE933F305;
 Wed,  3 Jun 2020 11:17:46 -0700 (PDT)
Date: Wed, 3 Jun 2020 19:17:43 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200603181743.GC23722@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
 <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
In-Reply-To: <20200603180435.GB23722@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_111752_474525_63A507CC 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 03, 2020 at 07:04:35PM +0100, Sudeep Holla wrote:
> On Fri, May 29, 2020 at 09:37:58AM +0530, Viresh Kumar wrote:
> > On 28-05-20, 13:20, Rob Herring wrote:
> > > Whether Linux
> > > requires serializing mailbox accesses is a separate issue. On that side,
> > > it seems silly to not allow driving the h/w in the most efficient way
> > > possible.
> >
> > That's exactly what we are trying to say. The hardware allows us to
> > write all 32 bits in parallel, without any hardware issues, why
> > shouldn't we do that ? The delay (which Sudeep will find out, he is
> > facing issues with hardware access because of lockdown right now)
> 
> OK, I was able to access the setup today. I couldn't reach a point
> where I can do measurements as the system just became unusable with
> one physical channel instead of 2 virtual channels as in my patches.
> 
> My test was simple. Switch to schedutil and read sensors periodically
> via sysfs.
> 
>  arm-scmi firmware:scmi: message for 1 is not expected!
>  arm-scmi firmware:scmi: timed out in resp(caller: scmi_sensor_reading_get+0xf4/0x120)
>  arm-scmi firmware:scmi: timed out in resp(caller: scmi_sensor_reading_get+0xf4/0x120)
>  arm-scmi firmware:scmi: message for 1 is not expected!
>  arm-scmi firmware:scmi: timed out in resp(caller: scmi_sensor_reading_get+0xf4/0x120)
>  arm-scmi firmware:scmi: message for 1 is not expected!
> 
> With trace enabled I can see even cpufreq_set timing out. Sample trace
> output:
> 
>        bash-1019  [005]  1149.452340: scmi_xfer_begin:      transfer_id=1537 msg_id=7 protocol_id=19 seq=0 poll=1
>        bash-1019  [005]  1149.452407: scmi_xfer_end:        transfer_id=1537 msg_id=7 protocol_id=19 seq=0 status=0
>        bash-1526  [000]  1149.472553: scmi_xfer_begin:      transfer_id=1538 msg_id=6 protocol_id=21 seq=0 poll=0
>      <idle>-0     [001]  1149.472733: scmi_xfer_begin:      transfer_id=1539 msg_id=7 protocol_id=19 seq=1 poll=1
>      <idle>-0     [001]  1149.472842: scmi_xfer_end:        transfer_id=1539 msg_id=7 protocol_id=19 seq=1 status=-110
>      <idle>-0     [001]  1149.483040: scmi_xfer_begin:      transfer_id=1540 msg_id=7 protocol_id=19 seq=1 poll=1
>      <idle>-0     [001]  1149.483043: scmi_xfer_end:        transfer_id=1540 msg_id=7 protocol_id=19 seq=1 status=0
>     rs:main-543   [003]  1149.493031: scmi_xfer_begin:      transfer_id=1541 msg_id=7 protocol_id=19 seq=1 poll=1
>     rs:main-543   [003]  1149.493047: scmi_xfer_end:        transfer_id=1541 msg_id=7 protocol_id=19 seq=1 status=0
>      <idle>-0     [000]  1149.507033: scmi_xfer_begin:      transfer_id=1542 msg_id=7 protocol_id=19 seq=1 poll=1
>      <idle>-0     [000]  1149.507044: scmi_xfer_end:        transfer_id=1542 msg_id=7 protocol_id=19 seq=1 status=0
>        bash-1526  [000]  1149.516068: scmi_xfer_end:        transfer_id=1538 msg_id=6 protocol_id=21 seq=0 status=-110
>        bash-1526  [000]  1149.516559: scmi_xfer_begin:      transfer_id=1543 msg_id=6 protocol_id=21 seq=0 poll=0
>      <idle>-0     [001]  1149.516729: scmi_xfer_begin:      transfer_id=1544 msg_id=7 protocol_id=19 seq=1 poll=1
>      <idle>-0     [001]  1149.516837: scmi_xfer_end:        transfer_id=1544 msg_id=7 protocol_id=19 seq=1 status=-110
> ksoftirqd/0-9     [000]  1149.519065: scmi_xfer_begin:      transfer_id=1545 msg_id=7 protocol_id=19 seq=1 poll=1
> ksoftirqd/0-9     [000]  1149.519072: scmi_xfer_end:        transfer_id=1545 msg_id=7 protocol_id=19 seq=1 status=0
>      <idle>-0     [001]  1149.526878: scmi_xfer_begin:      transfer_id=1546 msg_id=7 protocol_id=19 seq=1 poll=1
>      <idle>-0     [001]  1149.526882: scmi_xfer_end:        transfer_id=1546 msg_id=7 protocol_id=19 seq=1 status=0
>      <idle>-0     [000]  1149.551119: scmi_xfer_begin:      transfer_id=1547 msg_id=7 protocol_id=19 seq=1 poll=1
>      <idle>-0     [000]  1149.551138: scmi_xfer_end:        transfer_id=1547 msg_id=7 protocol_id=19 seq=1 status=0
>        bash-1526  [000]  1149.560191: scmi_xfer_end:        transfer_id=1543 msg_id=6 protocol_id=21 seq=0 status=-110
>        bash-1526  [000]  1149.560690: scmi_xfer_begin:      transfer_id=1548 msg_id=6 protocol_id=21 seq=0 poll=0
>      <idle>-0     [001]  1149.560859: scmi_xfer_begin:      transfer_id=1549 msg_id=7 protocol_id=19 seq=1 poll=1
>      <idle>-0     [001]  1149.560968: scmi_xfer_end:        transfer_id=1549 msg_id=7 protocol_id=19 seq=1 status=-110
> 
> protocol_id=19 is cpufreq and 21 is sensor. This is simplest test and
> I can easily generate more timeouts starting some stress test with DVFS.
> 

I just realised that we have the timing info in the traces and you will
observe the sensor readings take something in order of 100us to 500-600us
or even more based on which sensor is being read. While we have 100us
timeout for cpufreq opp set. I am attaching full trace now.

-- 
Regards,
Sudeep

--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=log

            bash-1019  [005]  1149.452340: scmi_xfer_begin:      transfer_id=1537 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1019  [005]  1149.452407: scmi_xfer_end:        transfer_id=1537 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [000]  1149.472553: scmi_xfer_begin:      transfer_id=1538 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.472733: scmi_xfer_begin:      transfer_id=1539 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.472842: scmi_xfer_end:        transfer_id=1539 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1149.483040: scmi_xfer_begin:      transfer_id=1540 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.483043: scmi_xfer_end:        transfer_id=1540 msg_id=7 protocol_id=19 seq=1 status=0
         rs:main-543   [003]  1149.493031: scmi_xfer_begin:      transfer_id=1541 msg_id=7 protocol_id=19 seq=1 poll=1
         rs:main-543   [003]  1149.493047: scmi_xfer_end:        transfer_id=1541 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [000]  1149.507033: scmi_xfer_begin:      transfer_id=1542 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1149.507044: scmi_xfer_end:        transfer_id=1542 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [000]  1149.516068: scmi_xfer_end:        transfer_id=1538 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [000]  1149.516559: scmi_xfer_begin:      transfer_id=1543 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.516729: scmi_xfer_begin:      transfer_id=1544 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.516837: scmi_xfer_end:        transfer_id=1544 msg_id=7 protocol_id=19 seq=1 status=-110
     ksoftirqd/0-9     [000]  1149.519065: scmi_xfer_begin:      transfer_id=1545 msg_id=7 protocol_id=19 seq=1 poll=1
     ksoftirqd/0-9     [000]  1149.519072: scmi_xfer_end:        transfer_id=1545 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [001]  1149.526878: scmi_xfer_begin:      transfer_id=1546 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.526882: scmi_xfer_end:        transfer_id=1546 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [000]  1149.551119: scmi_xfer_begin:      transfer_id=1547 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1149.551138: scmi_xfer_end:        transfer_id=1547 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [000]  1149.560191: scmi_xfer_end:        transfer_id=1543 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [000]  1149.560690: scmi_xfer_begin:      transfer_id=1548 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.560859: scmi_xfer_begin:      transfer_id=1549 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.560968: scmi_xfer_end:        transfer_id=1549 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [000]  1149.562882: scmi_xfer_begin:      transfer_id=1550 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1149.562887: scmi_xfer_end:        transfer_id=1550 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [001]  1149.570877: scmi_xfer_begin:      transfer_id=1551 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.570881: scmi_xfer_end:        transfer_id=1551 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [000]  1149.595116: scmi_xfer_begin:      transfer_id=1552 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1149.595135: scmi_xfer_end:        transfer_id=1552 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [000]  1149.604204: scmi_xfer_end:        transfer_id=1548 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [000]  1149.604698: scmi_xfer_begin:      transfer_id=1553 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.604867: scmi_xfer_begin:      transfer_id=1554 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.604976: scmi_xfer_end:        transfer_id=1554 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [000]  1149.606880: scmi_xfer_begin:      transfer_id=1555 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1149.606886: scmi_xfer_end:        transfer_id=1555 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [001]  1149.614877: scmi_xfer_begin:      transfer_id=1556 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.614880: scmi_xfer_end:        transfer_id=1556 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [000]  1149.639031: scmi_xfer_begin:      transfer_id=1557 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1149.639050: scmi_xfer_end:        transfer_id=1557 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [000]  1149.648098: scmi_xfer_end:        transfer_id=1553 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [000]  1149.648620: scmi_xfer_begin:      transfer_id=1558 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.649207: scmi_xfer_begin:      transfer_id=1559 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.649315: scmi_xfer_end:        transfer_id=1559 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [000]  1149.650878: scmi_xfer_begin:      transfer_id=1560 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1149.650884: scmi_xfer_end:        transfer_id=1560 msg_id=7 protocol_id=19 seq=1 status=0
     rcu_preempt-10    [003]  1149.679208: scmi_xfer_begin:      transfer_id=1561 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [003]  1149.679228: scmi_xfer_end:        transfer_id=1561 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1149.692154: scmi_xfer_end:        transfer_id=1558 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1149.692812: scmi_xfer_begin:      transfer_id=1562 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.693420: scmi_xfer_begin:      transfer_id=1563 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.693529: scmi_xfer_end:        transfer_id=1563 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [003]  1149.711204: scmi_xfer_begin:      transfer_id=1564 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [003]  1149.711223: scmi_xfer_end:        transfer_id=1564 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1149.736236: scmi_xfer_end:        transfer_id=1562 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1149.736909: scmi_xfer_begin:      transfer_id=1565 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.737492: scmi_xfer_begin:      transfer_id=1566 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.737602: scmi_xfer_end:        transfer_id=1566 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [003]  1149.779073: scmi_xfer_begin:      transfer_id=1567 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [003]  1149.779092: scmi_xfer_end:        transfer_id=1567 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1149.780198: scmi_xfer_end:        transfer_id=1565 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1149.780864: scmi_xfer_begin:      transfer_id=1568 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.781495: scmi_xfer_end:        transfer_id=1568 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.781883: scmi_xfer_begin:      transfer_id=1569 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.782160: scmi_xfer_end:        transfer_id=1569 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.782483: scmi_xfer_begin:      transfer_id=1570 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.782749: scmi_xfer_end:        transfer_id=1570 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.783211: scmi_xfer_begin:      transfer_id=1571 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.783595: scmi_xfer_end:        transfer_id=1571 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.783948: scmi_xfer_begin:      transfer_id=1572 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.784193: scmi_xfer_end:        transfer_id=1572 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.784574: scmi_xfer_begin:      transfer_id=1573 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.784828: scmi_xfer_end:        transfer_id=1573 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.785154: scmi_xfer_begin:      transfer_id=1574 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.785419: scmi_xfer_end:        transfer_id=1574 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.785740: scmi_xfer_begin:      transfer_id=1575 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.785830: scmi_xfer_end:        transfer_id=1575 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.786147: scmi_xfer_begin:      transfer_id=1576 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.786240: scmi_xfer_end:        transfer_id=1576 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.786610: scmi_xfer_begin:      transfer_id=1577 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.787116: scmi_xfer_end:        transfer_id=1577 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.787436: scmi_xfer_begin:      transfer_id=1578 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.788026: scmi_xfer_end:        transfer_id=1578 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.788365: scmi_xfer_begin:      transfer_id=1579 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.788957: scmi_xfer_end:        transfer_id=1579 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.789271: scmi_xfer_begin:      transfer_id=1580 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.789473: scmi_xfer_begin:      transfer_id=1581 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.789582: scmi_xfer_end:        transfer_id=1581 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [003]  1149.815053: scmi_xfer_begin:      transfer_id=1582 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [003]  1149.815065: scmi_xfer_end:        transfer_id=1582 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1149.832118: scmi_xfer_end:        transfer_id=1580 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1149.832542: scmi_xfer_begin:      transfer_id=1583 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.832717: scmi_xfer_begin:      transfer_id=1584 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.832825: scmi_xfer_end:        transfer_id=1584 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1149.842867: scmi_xfer_begin:      transfer_id=1585 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.842870: scmi_xfer_end:        transfer_id=1585 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1149.876220: scmi_xfer_end:        transfer_id=1583 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1149.876896: scmi_xfer_begin:      transfer_id=1586 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1149.877073: scmi_xfer_begin:      transfer_id=1587 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1149.877182: scmi_xfer_end:        transfer_id=1587 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [003]  1149.915093: scmi_xfer_begin:      transfer_id=1588 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [003]  1149.915112: scmi_xfer_end:        transfer_id=1588 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1149.920198: scmi_xfer_end:        transfer_id=1586 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1149.920867: scmi_xfer_begin:      transfer_id=1589 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1149.921111: scmi_xfer_end:        transfer_id=1589 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1149.922531: scmi_xfer_begin:      transfer_id=1590 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1526  [005]  1149.922589: scmi_xfer_end:        transfer_id=1590 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [000]  1149.934887: scmi_xfer_begin:      transfer_id=1591 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1149.934969: scmi_xfer_end:        transfer_id=1591 msg_id=7 protocol_id=19 seq=0 status=0
   kworker/u13:0-1497  [003]  1149.944998: scmi_xfer_begin:      transfer_id=1592 msg_id=7 protocol_id=19 seq=0 poll=1
   kworker/u13:0-1497  [003]  1149.945062: scmi_xfer_end:        transfer_id=1592 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [000]  1149.962941: scmi_xfer_begin:      transfer_id=1593 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1149.963050: scmi_xfer_end:        transfer_id=1593 msg_id=7 protocol_id=19 seq=0 status=-110
          <idle>-0     [000]  1150.947518: scmi_xfer_begin:      transfer_id=1594 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1150.947586: scmi_xfer_end:        transfer_id=1594 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1150.950155: scmi_xfer_begin:      transfer_id=1595 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1150.950327: scmi_xfer_begin:      transfer_id=1596 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1150.950436: scmi_xfer_end:        transfer_id=1596 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [000]  1150.958904: scmi_xfer_begin:      transfer_id=1597 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1150.958911: scmi_xfer_end:        transfer_id=1597 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1150.992119: scmi_xfer_end:        transfer_id=1595 msg_id=6 protocol_id=21 seq=0 status=-110
          <idle>-0     [001]  1150.992161: scmi_xfer_begin:      transfer_id=1598 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [001]  1150.992216: scmi_xfer_end:        transfer_id=1598 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1150.992603: scmi_xfer_begin:      transfer_id=1599 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.992908: scmi_xfer_end:        transfer_id=1599 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.993241: scmi_xfer_begin:      transfer_id=1600 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.993328: scmi_xfer_end:        transfer_id=1600 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.993657: scmi_xfer_begin:      transfer_id=1601 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.993742: scmi_xfer_end:        transfer_id=1601 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.994129: scmi_xfer_begin:      transfer_id=1602 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.994627: scmi_xfer_end:        transfer_id=1602 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.995058: scmi_xfer_begin:      transfer_id=1603 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.995792: scmi_xfer_end:        transfer_id=1603 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.996110: scmi_xfer_begin:      transfer_id=1604 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.996827: scmi_xfer_end:        transfer_id=1604 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.997160: scmi_xfer_begin:      transfer_id=1605 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.997803: scmi_xfer_end:        transfer_id=1605 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.998198: scmi_xfer_begin:      transfer_id=1606 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.998287: scmi_xfer_end:        transfer_id=1606 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.998611: scmi_xfer_begin:      transfer_id=1607 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.998698: scmi_xfer_end:        transfer_id=1607 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.999089: scmi_xfer_begin:      transfer_id=1608 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.999404: scmi_xfer_end:        transfer_id=1608 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1150.999715: scmi_xfer_begin:      transfer_id=1609 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1150.999979: scmi_xfer_end:        transfer_id=1609 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.000368: scmi_xfer_begin:      transfer_id=1610 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.000607: scmi_xfer_end:        transfer_id=1610 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.000927: scmi_xfer_begin:      transfer_id=1611 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.001114: scmi_xfer_end:        transfer_id=1611 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.001432: scmi_xfer_begin:      transfer_id=1612 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.001521: scmi_xfer_end:        transfer_id=1612 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.001837: scmi_xfer_begin:      transfer_id=1613 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.001930: scmi_xfer_end:        transfer_id=1613 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.002302: scmi_xfer_begin:      transfer_id=1614 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1151.002696: scmi_xfer_begin:      transfer_id=1615 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1151.002803: scmi_xfer_end:        transfer_id=1615 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [005]  1151.043973: scmi_xfer_end:        transfer_id=1614 msg_id=6 protocol_id=21 seq=0 status=-110
     rcu_preempt-10    [004]  1151.044107: scmi_xfer_begin:      transfer_id=1616 msg_id=7 protocol_id=19 seq=0 poll=1
     rcu_preempt-10    [004]  1151.044166: scmi_xfer_end:        transfer_id=1616 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1151.044384: scmi_xfer_begin:      transfer_id=1617 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.045191: scmi_xfer_end:        transfer_id=1617 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.045525: scmi_xfer_begin:      transfer_id=1618 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.046144: scmi_xfer_end:        transfer_id=1618 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.046456: scmi_xfer_begin:      transfer_id=1619 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.046723: scmi_xfer_end:        transfer_id=1619 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.047177: scmi_xfer_begin:      transfer_id=1620 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.047472: scmi_xfer_end:        transfer_id=1620 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.047810: scmi_xfer_begin:      transfer_id=1621 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.048051: scmi_xfer_end:        transfer_id=1621 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.048360: scmi_xfer_begin:      transfer_id=1622 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1151.048715: scmi_xfer_end:        transfer_id=1622 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1151.049880: scmi_xfer_begin:      transfer_id=1623 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1526  [005]  1151.049938: scmi_xfer_end:        transfer_id=1623 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [000]  1151.074998: scmi_xfer_begin:      transfer_id=1624 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1151.075060: scmi_xfer_end:        transfer_id=1624 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [000]  1152.053922: scmi_xfer_begin:      transfer_id=1625 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1152.053989: scmi_xfer_end:        transfer_id=1625 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1152.055670: scmi_xfer_begin:      transfer_id=1626 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1152.055842: scmi_xfer_begin:      transfer_id=1627 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1152.055951: scmi_xfer_end:        transfer_id=1627 msg_id=7 protocol_id=19 seq=1 status=-110
       in:imklog-541   [000]  1152.064028: scmi_xfer_begin:      transfer_id=1628 msg_id=7 protocol_id=19 seq=1 poll=1
       in:imklog-541   [000]  1152.064035: scmi_xfer_end:        transfer_id=1628 msg_id=7 protocol_id=19 seq=1 status=0
     kworker/0:0-1376  [000]  1152.075118: scmi_xfer_begin:      transfer_id=1629 msg_id=7 protocol_id=19 seq=1 poll=1
     kworker/0:0-1376  [000]  1152.075128: scmi_xfer_end:        transfer_id=1629 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1152.100040: scmi_xfer_end:        transfer_id=1626 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1152.100511: scmi_xfer_begin:      transfer_id=1630 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1152.100687: scmi_xfer_begin:      transfer_id=1631 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1152.100796: scmi_xfer_end:        transfer_id=1631 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1152.110785: scmi_xfer_begin:      transfer_id=1632 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1152.110788: scmi_xfer_end:        transfer_id=1632 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1152.143925: scmi_xfer_end:        transfer_id=1630 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1152.144397: scmi_xfer_begin:      transfer_id=1633 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1152.144571: scmi_xfer_begin:      transfer_id=1634 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1152.144680: scmi_xfer_end:        transfer_id=1634 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1152.154784: scmi_xfer_begin:      transfer_id=1635 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1152.154787: scmi_xfer_end:        transfer_id=1635 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1152.188124: scmi_xfer_end:        transfer_id=1633 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1152.188780: scmi_xfer_begin:      transfer_id=1636 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1152.188956: scmi_xfer_begin:      transfer_id=1637 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1152.189065: scmi_xfer_end:        transfer_id=1637 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [005]  1152.232101: scmi_xfer_end:        transfer_id=1636 msg_id=6 protocol_id=21 seq=0 status=-110
          <idle>-0     [000]  1152.232193: scmi_xfer_begin:      transfer_id=1638 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1152.232254: scmi_xfer_end:        transfer_id=1638 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1152.232799: scmi_xfer_begin:      transfer_id=1639 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.233510: scmi_xfer_end:        transfer_id=1639 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.233854: scmi_xfer_begin:      transfer_id=1640 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.234574: scmi_xfer_end:        transfer_id=1640 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.235024: scmi_xfer_begin:      transfer_id=1641 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.235764: scmi_xfer_end:        transfer_id=1641 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.236128: scmi_xfer_begin:      transfer_id=1642 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.236757: scmi_xfer_end:        transfer_id=1642 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.237155: scmi_xfer_begin:      transfer_id=1643 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.237396: scmi_xfer_end:        transfer_id=1643 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.237705: scmi_xfer_begin:      transfer_id=1644 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.237976: scmi_xfer_end:        transfer_id=1644 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.238288: scmi_xfer_begin:      transfer_id=1645 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.238559: scmi_xfer_end:        transfer_id=1645 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.238928: scmi_xfer_begin:      transfer_id=1646 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.239226: scmi_xfer_end:        transfer_id=1646 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.239622: scmi_xfer_begin:      transfer_id=1647 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.239860: scmi_xfer_end:        transfer_id=1647 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.240175: scmi_xfer_begin:      transfer_id=1648 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.240448: scmi_xfer_end:        transfer_id=1648 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.240762: scmi_xfer_begin:      transfer_id=1649 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.240852: scmi_xfer_end:        transfer_id=1649 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.241164: scmi_xfer_begin:      transfer_id=1650 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.241256: scmi_xfer_end:        transfer_id=1650 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.241634: scmi_xfer_begin:      transfer_id=1651 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.242060: scmi_xfer_end:        transfer_id=1651 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.242372: scmi_xfer_begin:      transfer_id=1652 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1152.242767: scmi_xfer_begin:      transfer_id=1653 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1152.242874: scmi_xfer_end:        transfer_id=1653 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [004]  1152.282994: scmi_xfer_begin:      transfer_id=1654 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [004]  1152.283014: scmi_xfer_end:        transfer_id=1654 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1152.284310: scmi_xfer_end:        transfer_id=1652 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1152.284867: scmi_xfer_begin:      transfer_id=1655 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.285452: scmi_xfer_end:        transfer_id=1655 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.285773: scmi_xfer_begin:      transfer_id=1656 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.286058: scmi_xfer_end:        transfer_id=1656 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.286361: scmi_xfer_begin:      transfer_id=1657 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.286632: scmi_xfer_end:        transfer_id=1657 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.287086: scmi_xfer_begin:      transfer_id=1658 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.287477: scmi_xfer_end:        transfer_id=1658 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.287800: scmi_xfer_begin:      transfer_id=1659 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1152.288071: scmi_xfer_end:        transfer_id=1659 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1152.289294: scmi_xfer_begin:      transfer_id=1660 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1526  [005]  1152.289352: scmi_xfer_end:        transfer_id=1660 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [000]  1152.314930: scmi_xfer_begin:      transfer_id=1661 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1152.315036: scmi_xfer_end:        transfer_id=1661 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [000]  1153.293994: scmi_xfer_begin:      transfer_id=1662 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1153.294062: scmi_xfer_end:        transfer_id=1662 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1153.295825: scmi_xfer_begin:      transfer_id=1663 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1153.295999: scmi_xfer_begin:      transfer_id=1664 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1153.296108: scmi_xfer_end:        transfer_id=1664 msg_id=7 protocol_id=19 seq=1 status=-110
 systemd-journal-262   [000]  1153.304319: scmi_xfer_begin:      transfer_id=1665 msg_id=7 protocol_id=19 seq=1 poll=1
 systemd-journal-262   [000]  1153.304334: scmi_xfer_end:        transfer_id=1665 msg_id=7 protocol_id=19 seq=1 status=0
     rcu_preempt-10    [004]  1153.334921: scmi_xfer_begin:      transfer_id=1666 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [004]  1153.334932: scmi_xfer_end:        transfer_id=1666 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1153.339954: scmi_xfer_end:        transfer_id=1663 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1153.340511: scmi_xfer_begin:      transfer_id=1667 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.340754: scmi_xfer_end:        transfer_id=1667 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.341098: scmi_xfer_begin:      transfer_id=1668 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.341338: scmi_xfer_end:        transfer_id=1668 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.341649: scmi_xfer_begin:      transfer_id=1669 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.341912: scmi_xfer_end:        transfer_id=1669 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.342273: scmi_xfer_begin:      transfer_id=1670 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.342949: scmi_xfer_end:        transfer_id=1670 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.343292: scmi_xfer_begin:      transfer_id=1671 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.344044: scmi_xfer_end:        transfer_id=1671 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.344359: scmi_xfer_begin:      transfer_id=1672 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1153.344965: scmi_xfer_begin:      transfer_id=1673 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1153.345074: scmi_xfer_end:        transfer_id=1673 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [004]  1153.386931: scmi_xfer_begin:      transfer_id=1674 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [004]  1153.386951: scmi_xfer_end:        transfer_id=1674 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1153.388087: scmi_xfer_end:        transfer_id=1672 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1153.388729: scmi_xfer_begin:      transfer_id=1675 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.389361: scmi_xfer_end:        transfer_id=1675 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.389766: scmi_xfer_begin:      transfer_id=1676 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.390008: scmi_xfer_end:        transfer_id=1676 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.390324: scmi_xfer_begin:      transfer_id=1677 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.390588: scmi_xfer_end:        transfer_id=1677 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.391015: scmi_xfer_begin:      transfer_id=1678 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.391253: scmi_xfer_end:        transfer_id=1678 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.391570: scmi_xfer_begin:      transfer_id=1679 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.391844: scmi_xfer_end:        transfer_id=1679 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.392241: scmi_xfer_begin:      transfer_id=1680 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.392478: scmi_xfer_end:        transfer_id=1680 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.392803: scmi_xfer_begin:      transfer_id=1681 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.393068: scmi_xfer_end:        transfer_id=1681 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.393388: scmi_xfer_begin:      transfer_id=1682 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.393478: scmi_xfer_end:        transfer_id=1682 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.393793: scmi_xfer_begin:      transfer_id=1683 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.393885: scmi_xfer_end:        transfer_id=1683 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.394306: scmi_xfer_begin:      transfer_id=1684 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.394765: scmi_xfer_end:        transfer_id=1684 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.395077: scmi_xfer_begin:      transfer_id=1685 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.395513: scmi_xfer_end:        transfer_id=1685 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.395814: scmi_xfer_begin:      transfer_id=1686 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.396427: scmi_xfer_end:        transfer_id=1686 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.396737: scmi_xfer_begin:      transfer_id=1687 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1153.396942: scmi_xfer_begin:      transfer_id=1688 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1153.397051: scmi_xfer_end:        transfer_id=1688 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [004]  1153.438939: scmi_xfer_begin:      transfer_id=1689 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [004]  1153.438957: scmi_xfer_end:        transfer_id=1689 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1153.440057: scmi_xfer_end:        transfer_id=1687 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1153.440699: scmi_xfer_begin:      transfer_id=1690 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.440941: scmi_xfer_end:        transfer_id=1690 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.441271: scmi_xfer_begin:      transfer_id=1691 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.441358: scmi_xfer_end:        transfer_id=1691 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1153.441668: scmi_xfer_begin:      transfer_id=1692 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1153.441777: scmi_xfer_end:        transfer_id=1692 msg_id=6 protocol_id=21 seq=0 status=0
          <idle>-0     [001]  1153.450939: scmi_xfer_begin:      transfer_id=1693 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [001]  1153.451048: scmi_xfer_end:        transfer_id=1693 msg_id=7 protocol_id=19 seq=0 status=-110
          <idle>-0     [001]  1153.462865: scmi_xfer_begin:      transfer_id=1694 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [001]  1153.462921: scmi_xfer_end:        transfer_id=1694 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [001]  1154.447474: scmi_xfer_begin:      transfer_id=1695 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [001]  1154.447534: scmi_xfer_end:        transfer_id=1695 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1154.449108: scmi_xfer_begin:      transfer_id=1696 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.449211: scmi_xfer_end:        transfer_id=1696 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.449591: scmi_xfer_begin:      transfer_id=1697 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.449668: scmi_xfer_end:        transfer_id=1697 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.449977: scmi_xfer_begin:      transfer_id=1698 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.450059: scmi_xfer_end:        transfer_id=1698 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.450373: scmi_xfer_begin:      transfer_id=1699 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.450448: scmi_xfer_end:        transfer_id=1699 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.450900: scmi_xfer_begin:      transfer_id=1700 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.451492: scmi_xfer_end:        transfer_id=1700 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.451807: scmi_xfer_begin:      transfer_id=1701 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.452323: scmi_xfer_end:        transfer_id=1701 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.452634: scmi_xfer_begin:      transfer_id=1702 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.453116: scmi_xfer_end:        transfer_id=1702 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.453433: scmi_xfer_begin:      transfer_id=1703 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.453902: scmi_xfer_end:        transfer_id=1703 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.454278: scmi_xfer_begin:      transfer_id=1704 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.454360: scmi_xfer_end:        transfer_id=1704 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.454673: scmi_xfer_begin:      transfer_id=1705 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.454753: scmi_xfer_end:        transfer_id=1705 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.455067: scmi_xfer_begin:      transfer_id=1706 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.455144: scmi_xfer_end:        transfer_id=1706 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.455455: scmi_xfer_begin:      transfer_id=1707 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.455538: scmi_xfer_end:        transfer_id=1707 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.455919: scmi_xfer_begin:      transfer_id=1708 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.455997: scmi_xfer_end:        transfer_id=1708 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.456312: scmi_xfer_begin:      transfer_id=1709 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.456390: scmi_xfer_end:        transfer_id=1709 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.456704: scmi_xfer_begin:      transfer_id=1710 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.456782: scmi_xfer_end:        transfer_id=1710 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.457095: scmi_xfer_begin:      transfer_id=1711 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.457173: scmi_xfer_end:        transfer_id=1711 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.457549: scmi_xfer_begin:      transfer_id=1712 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1154.457937: scmi_xfer_begin:      transfer_id=1713 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1154.458041: scmi_xfer_end:        transfer_id=1713 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1154.470688: scmi_xfer_begin:      transfer_id=1714 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1154.470691: scmi_xfer_end:        transfer_id=1714 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1154.499934: scmi_xfer_end:        transfer_id=1712 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1154.500367: scmi_xfer_begin:      transfer_id=1715 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1154.500853: scmi_xfer_begin:      transfer_id=1716 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1154.500960: scmi_xfer_end:        transfer_id=1716 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [005]  1154.543907: scmi_xfer_end:        transfer_id=1715 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1154.544319: scmi_xfer_begin:      transfer_id=1717 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.544368: scmi_xfer_begin:      transfer_id=1718 msg_id=7 protocol_id=19 seq=1 poll=1
            bash-1526  [005]  1154.544704: scmi_xfer_end:        transfer_id=1718 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [005]  1154.588006: scmi_xfer_end:        transfer_id=1717 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1154.588654: scmi_xfer_begin:      transfer_id=1719 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1154.588832: scmi_xfer_begin:      transfer_id=1720 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1154.588941: scmi_xfer_end:        transfer_id=1720 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [005]  1154.632058: scmi_xfer_end:        transfer_id=1719 msg_id=6 protocol_id=21 seq=0 status=-110
          <idle>-0     [000]  1154.632144: scmi_xfer_begin:      transfer_id=1721 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1154.632205: scmi_xfer_end:        transfer_id=1721 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1154.632700: scmi_xfer_begin:      transfer_id=1722 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.632942: scmi_xfer_end:        transfer_id=1722 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.633275: scmi_xfer_begin:      transfer_id=1723 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.633526: scmi_xfer_end:        transfer_id=1723 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.633838: scmi_xfer_begin:      transfer_id=1724 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1154.634105: scmi_xfer_end:        transfer_id=1724 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1154.635444: scmi_xfer_begin:      transfer_id=1725 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1526  [005]  1154.635505: scmi_xfer_end:        transfer_id=1725 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [003]  1154.662873: scmi_xfer_begin:      transfer_id=1726 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [003]  1154.662937: scmi_xfer_end:        transfer_id=1726 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [003]  1155.639503: scmi_xfer_begin:      transfer_id=1727 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [003]  1155.639570: scmi_xfer_end:        transfer_id=1727 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [005]  1155.641223: scmi_xfer_begin:      transfer_id=1728 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1155.641395: scmi_xfer_begin:      transfer_id=1729 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1155.641503: scmi_xfer_end:        transfer_id=1729 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [000]  1155.650787: scmi_xfer_begin:      transfer_id=1730 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1155.650802: scmi_xfer_end:        transfer_id=1730 msg_id=7 protocol_id=19 seq=1 status=0
     rcu_preempt-10    [000]  1155.682908: scmi_xfer_begin:      transfer_id=1731 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [000]  1155.682927: scmi_xfer_end:        transfer_id=1731 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [005]  1155.683842: scmi_xfer_end:        transfer_id=1728 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [005]  1155.684505: scmi_xfer_begin:      transfer_id=1732 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1155.684749: scmi_xfer_end:        transfer_id=1732 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1155.685089: scmi_xfer_begin:      transfer_id=1733 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1155.685331: scmi_xfer_end:        transfer_id=1733 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1155.685644: scmi_xfer_begin:      transfer_id=1734 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1155.685909: scmi_xfer_end:        transfer_id=1734 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1155.686273: scmi_xfer_begin:      transfer_id=1735 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1155.687059: scmi_xfer_end:        transfer_id=1735 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1155.687418: scmi_xfer_begin:      transfer_id=1736 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [005]  1155.688093: scmi_xfer_end:        transfer_id=1736 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [005]  1155.688413: scmi_xfer_begin:      transfer_id=1737 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [005]  1155.689077: scmi_xfer_begin:      transfer_id=1738 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [005]  1155.689185: scmi_xfer_end:        transfer_id=1738 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [002]  1155.689518: scmi_xfer_end:        transfer_id=1737 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [002]  1155.689813: scmi_xfer_begin:      transfer_id=1739 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.690540: scmi_xfer_end:        transfer_id=1739 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.690901: scmi_xfer_begin:      transfer_id=1740 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.691236: scmi_xfer_end:        transfer_id=1740 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.691426: scmi_xfer_begin:      transfer_id=1741 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.691875: scmi_xfer_end:        transfer_id=1741 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.692068: scmi_xfer_begin:      transfer_id=1742 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.692368: scmi_xfer_end:        transfer_id=1742 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.692546: scmi_xfer_begin:      transfer_id=1743 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.692895: scmi_xfer_end:        transfer_id=1743 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.693118: scmi_xfer_begin:      transfer_id=1744 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1155.693380: scmi_xfer_begin:      transfer_id=1745 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1155.693488: scmi_xfer_end:        transfer_id=1745 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [000]  1155.702882: scmi_xfer_begin:      transfer_id=1746 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1155.702890: scmi_xfer_end:        transfer_id=1746 msg_id=7 protocol_id=19 seq=1 status=0
     rcu_preempt-10    [000]  1155.734837: scmi_xfer_begin:      transfer_id=1747 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [000]  1155.734856: scmi_xfer_end:        transfer_id=1747 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1155.735861: scmi_xfer_end:        transfer_id=1744 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1155.736506: scmi_xfer_begin:      transfer_id=1748 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.736751: scmi_xfer_end:        transfer_id=1748 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.737091: scmi_xfer_begin:      transfer_id=1749 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.737330: scmi_xfer_end:        transfer_id=1749 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.737640: scmi_xfer_begin:      transfer_id=1750 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.737735: scmi_xfer_end:        transfer_id=1750 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.738109: scmi_xfer_begin:      transfer_id=1751 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.738778: scmi_xfer_end:        transfer_id=1751 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.739094: scmi_xfer_begin:      transfer_id=1752 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.739673: scmi_xfer_end:        transfer_id=1752 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.739991: scmi_xfer_begin:      transfer_id=1753 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.740603: scmi_xfer_end:        transfer_id=1753 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.740917: scmi_xfer_begin:      transfer_id=1754 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.741185: scmi_xfer_end:        transfer_id=1754 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.741494: scmi_xfer_begin:      transfer_id=1755 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.741761: scmi_xfer_end:        transfer_id=1755 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.742078: scmi_xfer_begin:      transfer_id=1756 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.742350: scmi_xfer_end:        transfer_id=1756 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.742711: scmi_xfer_begin:      transfer_id=1757 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1155.742965: scmi_xfer_end:        transfer_id=1757 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1155.744099: scmi_xfer_begin:      transfer_id=1758 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1526  [004]  1155.744156: scmi_xfer_end:        transfer_id=1758 msg_id=7 protocol_id=19 seq=0 status=0
     ksoftirqd/0-9     [000]  1155.766839: scmi_xfer_begin:      transfer_id=1759 msg_id=7 protocol_id=19 seq=0 poll=1
     ksoftirqd/0-9     [000]  1155.766902: scmi_xfer_end:        transfer_id=1759 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [005]  1156.747828: scmi_xfer_begin:      transfer_id=1760 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [005]  1156.747895: scmi_xfer_end:        transfer_id=1760 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [004]  1156.749593: scmi_xfer_begin:      transfer_id=1761 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1156.749772: scmi_xfer_begin:      transfer_id=1762 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1156.749880: scmi_xfer_end:        transfer_id=1762 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [000]  1156.758687: scmi_xfer_begin:      transfer_id=1763 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [000]  1156.758694: scmi_xfer_end:        transfer_id=1763 msg_id=7 protocol_id=19 seq=1 status=0
 systemd-journal-262   [000]  1156.761548: scmi_xfer_begin:      transfer_id=1764 msg_id=7 protocol_id=19 seq=1 poll=1
 systemd-journal-262   [000]  1156.761558: scmi_xfer_end:        transfer_id=1764 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1156.791787: scmi_xfer_end:        transfer_id=1761 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1156.792273: scmi_xfer_begin:      transfer_id=1765 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1156.792448: scmi_xfer_begin:      transfer_id=1766 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1156.792557: scmi_xfer_end:        transfer_id=1766 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1156.802616: scmi_xfer_begin:      transfer_id=1767 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1156.802619: scmi_xfer_end:        transfer_id=1767 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1156.835929: scmi_xfer_end:        transfer_id=1765 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1156.836613: scmi_xfer_begin:      transfer_id=1768 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1156.836789: scmi_xfer_begin:      transfer_id=1769 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1156.836898: scmi_xfer_end:        transfer_id=1769 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [000]  1156.878805: scmi_xfer_begin:      transfer_id=1770 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [000]  1156.878824: scmi_xfer_end:        transfer_id=1770 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1156.879938: scmi_xfer_end:        transfer_id=1768 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1156.880585: scmi_xfer_begin:      transfer_id=1771 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.880829: scmi_xfer_end:        transfer_id=1771 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.881217: scmi_xfer_begin:      transfer_id=1772 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.881864: scmi_xfer_end:        transfer_id=1772 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.882193: scmi_xfer_begin:      transfer_id=1773 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.882968: scmi_xfer_end:        transfer_id=1773 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.883305: scmi_xfer_begin:      transfer_id=1774 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.883998: scmi_xfer_end:        transfer_id=1774 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.884319: scmi_xfer_begin:      transfer_id=1775 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.884965: scmi_xfer_end:        transfer_id=1775 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.885353: scmi_xfer_begin:      transfer_id=1776 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.885595: scmi_xfer_end:        transfer_id=1776 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.885911: scmi_xfer_begin:      transfer_id=1777 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.886172: scmi_xfer_end:        transfer_id=1777 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.886485: scmi_xfer_begin:      transfer_id=1778 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.886764: scmi_xfer_end:        transfer_id=1778 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.887070: scmi_xfer_begin:      transfer_id=1779 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.887340: scmi_xfer_end:        transfer_id=1779 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.887730: scmi_xfer_begin:      transfer_id=1780 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.887973: scmi_xfer_end:        transfer_id=1780 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.888289: scmi_xfer_begin:      transfer_id=1781 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.888552: scmi_xfer_end:        transfer_id=1781 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.888864: scmi_xfer_begin:      transfer_id=1782 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1156.888918: scmi_xfer_begin:      transfer_id=1783 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1156.889025: scmi_xfer_end:        transfer_id=1783 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1156.902596: scmi_xfer_begin:      transfer_id=1784 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1156.902599: scmi_xfer_end:        transfer_id=1784 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1156.931852: scmi_xfer_end:        transfer_id=1782 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1156.932504: scmi_xfer_begin:      transfer_id=1785 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1156.932686: scmi_xfer_begin:      transfer_id=1786 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1156.932795: scmi_xfer_end:        transfer_id=1786 msg_id=7 protocol_id=19 seq=1 status=-110
     rcu_preempt-10    [000]  1156.974803: scmi_xfer_begin:      transfer_id=1787 msg_id=7 protocol_id=19 seq=1 poll=1
     rcu_preempt-10    [000]  1156.974822: scmi_xfer_end:        transfer_id=1787 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1156.975934: scmi_xfer_end:        transfer_id=1785 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1156.976657: scmi_xfer_begin:      transfer_id=1788 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.977245: scmi_xfer_end:        transfer_id=1788 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.977563: scmi_xfer_begin:      transfer_id=1789 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.978168: scmi_xfer_end:        transfer_id=1789 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.978471: scmi_xfer_begin:      transfer_id=1790 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.979200: scmi_xfer_end:        transfer_id=1790 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.979541: scmi_xfer_begin:      transfer_id=1791 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.979774: scmi_xfer_end:        transfer_id=1791 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.980091: scmi_xfer_begin:      transfer_id=1792 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.980359: scmi_xfer_end:        transfer_id=1792 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.980676: scmi_xfer_begin:      transfer_id=1793 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.980935: scmi_xfer_end:        transfer_id=1793 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.981248: scmi_xfer_begin:      transfer_id=1794 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1156.981519: scmi_xfer_end:        transfer_id=1794 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1156.982681: scmi_xfer_begin:      transfer_id=1795 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1526  [004]  1156.982755: scmi_xfer_end:        transfer_id=1795 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [005]  1157.006787: scmi_xfer_begin:      transfer_id=1796 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [005]  1157.006850: scmi_xfer_end:        transfer_id=1796 msg_id=7 protocol_id=19 seq=0 status=0
          <idle>-0     [005]  1157.986340: scmi_xfer_begin:      transfer_id=1797 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [005]  1157.986407: scmi_xfer_end:        transfer_id=1797 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [004]  1157.988153: scmi_xfer_begin:      transfer_id=1798 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1157.988334: scmi_xfer_begin:      transfer_id=1799 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1157.988443: scmi_xfer_end:        transfer_id=1799 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [004]  1157.998657: scmi_xfer_begin:      transfer_id=1800 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [004]  1157.998672: scmi_xfer_end:        transfer_id=1800 msg_id=7 protocol_id=19 seq=1 status=0
          <idle>-0     [001]  1157.998761: scmi_xfer_begin:      transfer_id=1801 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1157.998887: scmi_xfer_end:        transfer_id=1801 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [004]  1158.031749: scmi_xfer_end:        transfer_id=1798 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.032301: scmi_xfer_begin:      transfer_id=1802 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1158.032478: scmi_xfer_begin:      transfer_id=1803 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.032587: scmi_xfer_end:        transfer_id=1803 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1158.042571: scmi_xfer_begin:      transfer_id=1804 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.042574: scmi_xfer_end:        transfer_id=1804 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1158.075723: scmi_xfer_end:        transfer_id=1802 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.076168: scmi_xfer_begin:      transfer_id=1805 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1158.076343: scmi_xfer_begin:      transfer_id=1806 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.076452: scmi_xfer_end:        transfer_id=1806 msg_id=7 protocol_id=19 seq=1 status=-110
          <idle>-0     [001]  1158.086569: scmi_xfer_begin:      transfer_id=1807 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.086572: scmi_xfer_end:        transfer_id=1807 msg_id=7 protocol_id=19 seq=1 status=0
            bash-1526  [004]  1158.119894: scmi_xfer_end:        transfer_id=1805 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.120541: scmi_xfer_begin:      transfer_id=1808 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1158.120718: scmi_xfer_begin:      transfer_id=1809 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.120828: scmi_xfer_end:        transfer_id=1809 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [004]  1158.163900: scmi_xfer_end:        transfer_id=1808 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.164606: scmi_xfer_begin:      transfer_id=1810 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.164668: scmi_xfer_begin:      transfer_id=1811 msg_id=7 protocol_id=19 seq=1 poll=1
            bash-1526  [004]  1158.165059: scmi_xfer_end:        transfer_id=1811 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [004]  1158.207881: scmi_xfer_end:        transfer_id=1810 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.208551: scmi_xfer_begin:      transfer_id=1812 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1158.209160: scmi_xfer_begin:      transfer_id=1813 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.209269: scmi_xfer_end:        transfer_id=1813 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [004]  1158.251885: scmi_xfer_end:        transfer_id=1812 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.252538: scmi_xfer_begin:      transfer_id=1814 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.252599: scmi_xfer_begin:      transfer_id=1815 msg_id=7 protocol_id=19 seq=1 poll=1
            bash-1526  [004]  1158.252987: scmi_xfer_end:        transfer_id=1815 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [004]  1158.295885: scmi_xfer_end:        transfer_id=1814 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.296535: scmi_xfer_begin:      transfer_id=1816 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1158.297100: scmi_xfer_begin:      transfer_id=1817 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.297209: scmi_xfer_end:        transfer_id=1817 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [004]  1158.339884: scmi_xfer_end:        transfer_id=1816 msg_id=6 protocol_id=21 seq=0 status=-110
          <idle>-0     [000]  1158.339974: scmi_xfer_begin:      transfer_id=1818 msg_id=7 protocol_id=19 seq=0 poll=1
          <idle>-0     [000]  1158.340035: scmi_xfer_end:        transfer_id=1818 msg_id=7 protocol_id=19 seq=0 status=0
            bash-1526  [004]  1158.340607: scmi_xfer_begin:      transfer_id=1819 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.340852: scmi_xfer_end:        transfer_id=1819 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.341180: scmi_xfer_begin:      transfer_id=1820 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.341433: scmi_xfer_end:        transfer_id=1820 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.341750: scmi_xfer_begin:      transfer_id=1821 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.342012: scmi_xfer_end:        transfer_id=1821 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.342325: scmi_xfer_begin:      transfer_id=1822 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.342684: scmi_xfer_end:        transfer_id=1822 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.343316: scmi_xfer_begin:      transfer_id=1823 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.343561: scmi_xfer_end:        transfer_id=1823 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.343897: scmi_xfer_begin:      transfer_id=1824 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.344137: scmi_xfer_end:        transfer_id=1824 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.344456: scmi_xfer_begin:      transfer_id=1825 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.344725: scmi_xfer_end:        transfer_id=1825 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.345037: scmi_xfer_begin:      transfer_id=1826 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.345304: scmi_xfer_end:        transfer_id=1826 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.345681: scmi_xfer_begin:      transfer_id=1827 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.346116: scmi_xfer_end:        transfer_id=1827 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.346426: scmi_xfer_begin:      transfer_id=1828 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.347116: scmi_xfer_end:        transfer_id=1828 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.347424: scmi_xfer_begin:      transfer_id=1829 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.348039: scmi_xfer_end:        transfer_id=1829 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.348350: scmi_xfer_begin:      transfer_id=1830 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.348614: scmi_xfer_end:        transfer_id=1830 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.348918: scmi_xfer_begin:      transfer_id=1831 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.349200: scmi_xfer_end:        transfer_id=1831 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.349514: scmi_xfer_begin:      transfer_id=1832 msg_id=6 protocol_id=21 seq=0 poll=0
            bash-1526  [004]  1158.349774: scmi_xfer_end:        transfer_id=1832 msg_id=6 protocol_id=21 seq=0 status=0
            bash-1526  [004]  1158.350087: scmi_xfer_begin:      transfer_id=1833 msg_id=6 protocol_id=21 seq=0 poll=0
          <idle>-0     [001]  1158.350297: scmi_xfer_begin:      transfer_id=1834 msg_id=7 protocol_id=19 seq=1 poll=1
          <idle>-0     [001]  1158.350406: scmi_xfer_end:        transfer_id=1834 msg_id=7 protocol_id=19 seq=1 status=-110
            bash-1526  [004]  1158.391883: scmi_xfer_end:        transfer_id=1833 msg_id=6 protocol_id=21 seq=0 status=-110
            bash-1526  [004]  1158.393960: scmi_xfer_begin:      transfer_id=1835 msg_id=7 protocol_id=19 seq=0 poll=1
            bash-1526  [004]  1158.394020: scmi_xfer_end:        transfer_id=1835 msg_id=7 protocol_id=19 seq=0 status=0

--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--jI8keyz6grp/JLjh--

