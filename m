Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF615B1B81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 12:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XakvrVFZnNZ08tyI4VMXrhLqOShNQwPa4AhKK8jj1g=; b=pC9qvIuczFLKHq
	1Bp3FOHOQ5mdZbw5PTocNSw09drrIYMEub7cwm4wCmvXzntMOhmuxVf5bxDhhlOeREUkjubNGEDOH
	1ONe07hbgBfqqn5yPFPWUIDbDpm5rzC+qA/lRsPHZaM68fgMResFTtjk1x2m76rtYAW7kYrio7pqz
	4vvlsKxPCsxy6WEpvfyY8y9bJjd+IGhP9NW3ksgfIoSLgUAymJkQdxXVTv+PvJVLnPI0Ux9q7UJbT
	v9aOLz5CaFzuz05zDC8BgeLJXpserbQP/aOkkyWO4Y8mj/hs3Z1IB2G7JivBIGcrgeJUxE4WupV5R
	qMWi+U2eaSt1tzzlsulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8ija-0005BF-I0; Fri, 13 Sep 2019 10:23:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ijM-0005Aw-Bj
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 10:23:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13B3528;
 Fri, 13 Sep 2019 03:23:07 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7CCFA3F59C;
 Fri, 13 Sep 2019 03:23:06 -0700 (PDT)
Date: Fri, 13 Sep 2019 11:23:04 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sujeet Kumar Baranwal <sbaranwal@marvell.com>
Subject: Re: SCMI & Devfreq
Message-ID: <20190913102304.GC2559@bogus>
References: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR18MB24387C9DDE32067F1763B6DEAFB00@BYAPR18MB2438.namprd18.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_032308_441533_E74E214A 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 06:55:36PM +0000, Sujeet Kumar Baranwal wrote:
> Hi,
>
> I am a recent adopter of SCMI protocol on marvell processors and has been
> able to use cpufreq governor using scmi-cpufreq frame work to change CPU
> frequency.
>

Good, but just a quick question to check if this is ACPI or DT based
platform ? That matter a lot to answer you query.

> While SCMI_PERFORMANCE_PROTOCL allows multiple "domains" to be created, each
> domain representing one clock with several OPPs, it works well.

OK

> For sysfs command like "cat > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor".

I don't understand the context of above statement.

> I am trying to find how SCMI could help in similar facilities when it comes
> to devfreq for device specific OPP variation.

Yes it needs some work and I do have some prototype, but with no users
in the upstream, I haven't added it yet.

> If someone did similar work done or doing, please enlighten me too.
>

What kind of devices are these ? There was some work around generic
devfreq driver that I had seen on the list and my plan was to do something
similar, I need to dig up details as it was while ago.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
