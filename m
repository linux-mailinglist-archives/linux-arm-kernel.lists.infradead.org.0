Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06BC1481D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MDyvuN6ZN0/Z4YMRBQbKxL3zyNJMf1IJC2uX+SsVAM=; b=ErM4TMrKmTuU+p
	m2cBVxqvTYjAa2ExOiWLRji1GrAeM6KLT0K2aZbfD9tvHsAhvPl8A9QcM+gcLdaH7LvbEb9XBHi2e
	bRSgznlctfT6zrh0kw5id4Nn+mTmsM+jzyYlTi2xZQv2cBqDU0mep+PetEGip1JXmt9hXZTE3qfGs
	KhGd/BJQuACWimeLgzV3XA9ohvy9GqQI+gC06ZvRR7XZ5YGCpYyVNlJ+jP+B5pyxGAsZoQG/HDfIe
	z+KI3HQOS6gIpoMXDAcjUZr02zOLgDsdVEOBohOcXsv6yuN++Xmg/X7s3T3gb9u9OeHIEqmGx/k95
	H2xUsZL9pirnK8V/drFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iux3J-0002vz-40; Fri, 24 Jan 2020 11:23:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iux2y-0002iX-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 11:22:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57B94328;
 Fri, 24 Jan 2020 03:22:41 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22EC03F68E;
 Fri, 24 Jan 2020 03:22:40 -0800 (PST)
Date: Fri, 24 Jan 2020 11:22:35 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200124112235.GA40307@bogus>
References: <20200121183818.GA11522@bogus>
 <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
 <20200122121538.GA31240@bogus> <20200123103033.GA7511@bogus>
 <20200124030212.qjlzz75dgt5kla7t@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124030212.qjlzz75dgt5kla7t@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_032244_417570_CC97944F 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 08:32:12AM +0530, Viresh Kumar wrote:

[...]

>
> I think this defines the problem somewhat, though I wasn't able to
> reproduce the problem on my platform :)

No worries, I found the issue. It's devm_kzalloc in mailbox_chan_setup.
You need to pin the allocation with dev the main scmi platform device and
not individual protocol specific scmi_device. Basically, change cdev to
dev in there. It fixed the issue. You have it correct later for payload
devm_ioremap. I couldn't review the change in detail yet, allow me today.
You can post next version next week, anyways too late for v5.6 ;).

Peng, Peter,

Any comments on this ? I hope you are happy with this for SMC and virtio
based transport.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
