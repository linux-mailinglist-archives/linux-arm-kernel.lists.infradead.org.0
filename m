Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA9D1ED5E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyU1yoG5y+JNeO16TtdcTRbYS4Q1ARbkARddePj3b3k=; b=dWHjBctgcF/AzT
	q6eZ6TQfAzRUHbyFF/YeoVRWe81K5niM4nHWIjlaemhyUg/ZaxzzbDjLzQe2ewmrTlxbMsfBoCPsP
	ZjrMF0H3H+7rgrz7KwYpX9aIAUCDCsQRRyDq4zoqv2zghWAlVqirldKqnJ2RowDecjAY2qy7ryR3n
	X2KkGvroF1OxFSQ6W7Lbh1LL2LZoPvvUphURCD1VoHuVS+kCjK1FfwJfd5UCI1NzYV0ypzUaWXfxv
	KrXYE60TH7WrdXtAJyvf+W0MIA2KKCM2cD4Yj3Fjhet1IX32eNGuth1oahOCktlrtV4UK4EdsuLbU
	cxkDfNGVMR9pMD/boqsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXs0-0006WG-Il; Wed, 03 Jun 2020 18:12:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXkp-0004cF-Pg
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:04:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F7AE31B;
 Wed,  3 Jun 2020 11:04:42 -0700 (PDT)
Received: from bogus (unknown [10.37.8.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECD343F305;
 Wed,  3 Jun 2020 11:04:38 -0700 (PDT)
Date: Wed, 3 Jun 2020 19:04:35 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200603180435.GB23722@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
 <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_110444_004813_33B3E187 
X-CRM114-Status: GOOD (  10.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 09:37:58AM +0530, Viresh Kumar wrote:
> On 28-05-20, 13:20, Rob Herring wrote:
> > Whether Linux
> > requires serializing mailbox accesses is a separate issue. On that side,
> > it seems silly to not allow driving the h/w in the most efficient way
> > possible.
>
> That's exactly what we are trying to say. The hardware allows us to
> write all 32 bits in parallel, without any hardware issues, why
> shouldn't we do that ? The delay (which Sudeep will find out, he is
> facing issues with hardware access because of lockdown right now)

OK, I was able to access the setup today. I couldn't reach a point
where I can do measurements as the system just became unusable with
one physical channel instead of 2 virtual channels as in my patches.

My test was simple. Switch to schedutil and read sensors periodically
via sysfs.

 arm-scmi firmware:scmi: message for 1 is not expected!
 arm-scmi firmware:scmi: timed out in resp(caller: scmi_sensor_reading_get+0xf4/0x120)
 arm-scmi firmware:scmi: timed out in resp(caller: scmi_sensor_reading_get+0xf4/0x120)
 arm-scmi firmware:scmi: message for 1 is not expected!
 arm-scmi firmware:scmi: timed out in resp(caller: scmi_sensor_reading_get+0xf4/0x120)
 arm-scmi firmware:scmi: message for 1 is not expected!

With trace enabled I can see even cpufreq_set timing out. Sample trace
output:

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

protocol_id=19 is cpufreq and 21 is sensor. This is simplest test and
I can easily generate more timeouts starting some stress test with DVFS.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
