Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EE5197DD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lH/ho1CWl7GS75ue86zwVKzl/oLKN011jqFazdUlzGw=; b=JHD2189B7T8IZP
	dJfMD3hXockaWdWfe2q9p0uCQMlKS9SatyIv8EAoVIVVml9FKDNPSSvetfzyYkjZQ9aqu4KUNelk4
	wfqWCTAZx2Z1Vjgz/pO9jg9wgN4l6/TNRPVBqXRumH9UP8/RRmcngQC/HA9A7gxWUaahlEMMVFNCM
	1rRNR+KBUGVgL7CcK957NJoBwpQiLcF4/Ic4v8rl0SLg9ZhkYLwzvckHKhn3FDFx3KhVJMlVHpzJg
	rHke3U+f6OOdzKnLJkyZNWGg24laT9oD4vhkyoD9ofUGD8nJXSWx9IO2/9cx5F6SCtF4sq83GgQiN
	twXGf7e6vCdHc2HZwS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIv3R-0002eD-Is; Mon, 30 Mar 2020 14:06:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIv3I-0002dL-1r
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 14:06:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19C131042;
 Mon, 30 Mar 2020 07:06:06 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D71083F71E;
 Mon, 30 Mar 2020 07:06:04 -0700 (PDT)
Date: Mon, 30 Mar 2020 15:05:54 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Message-ID: <20200330140544.GA22712@bogus>
References: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481F673F90C735F272C171F88F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200327163253.GA32313@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327163253.GA32313@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_070608_139289_0B4F6283 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 04:32:53PM +0000, Sudeep Holla wrote:
> On Fri, Mar 20, 2020 at 08:27:47AM +0000, Peng Fan wrote:
> > Hi Sudeep,
> >
> > > Subject: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
> >
> > Are you fine with this patchset? Or You expect multi channel support?
> >
> 
> I applied these patches[1]. I also looked at multi channel support and
> I think it should be simple. I have made changes and will post soon.
> I would like you to review and if possible test. I don't want to break
> the existing single channel, so please do test in your setup for single
> channel itself.
> 

This caused build break when !CONFIG_HAVE_ARM_SMCCC, I have added the
below fixup. Posting the same for sake of tracking.

Regards,
Sudeep

--
diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 6b1b0d6c6d0e..11b238f81923 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -2,6 +2,8 @@
 obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o scmi-transport.o
 scmi-bus-y = bus.o
 scmi-driver-y = driver.o
-scmi-transport-y = mailbox.o shmem.o smc.o
+scmi-transport-y = shmem.o
+scmi-transport-$(CONFIG_MAILBOX) += mailbox.o
+scmi-transport-$(CONFIG_HAVE_ARM_SMCCC) += smc.o
 scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 94fc2b2df940..34bfadca14cc 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -210,7 +210,9 @@ struct scmi_desc {
 };

 extern const struct scmi_desc scmi_mailbox_desc;
+#ifdef CONFIG_HAVE_ARM_SMCCC
 extern const struct scmi_desc scmi_smc_desc;
+#endif

 void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
 void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index e76a3fab1074..6ef61e52eef7 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -827,7 +827,9 @@ ATTRIBUTE_GROUPS(versions);
 /* Each compatible listed below must have descriptor associated with it */
 static const struct of_device_id scmi_of_match[] = {
 	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
+#ifdef CONFIG_HAVE_ARM_SMCCC
 	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc},
+#endif
 	{ /* Sentinel */ },
 };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
