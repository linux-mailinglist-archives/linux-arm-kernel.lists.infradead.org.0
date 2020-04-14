Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7A91A78D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1R5KhSR7VTlBQ7XhVwoqOEWjU3Lq7XJosf3H5ZD4w4=; b=l6U7ajXZ6k8BAR
	a8x6f7yLde1BCX0labKFZe7volnkr1oowKz3bhTXgQs0zDaeWlcCWOpqTKso8+HSJ9cyeufUBxKr0
	Z8vRrJlCeNr/1ouSQIgUWN0DtThyM1RCeSxTKvMDDvah7oWr0PnEW9q980FzwW4UNZnODMhfdfWzU
	+OkSZdypS6FZZskGZanlSfOL/S0SRIwemQwTTXe4c5+h2WMyUgiSEIpxMqg4GaP15P5L455kLNarq
	bBx9O1XPTpZoz8ZzGdXHZkQo4Pop20OnZGpXmi8CSXq9RmIDM/PTmisGLq0KK2PYCPIPhVEI97rpJ
	xCIFL19nKsLMmDk0Cidw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJDK-0000yY-6G; Tue, 14 Apr 2020 10:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJD6-0000ue-4G
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:54:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6CEFE1FB;
 Tue, 14 Apr 2020 03:54:29 -0700 (PDT)
Received: from bogus (unknown [10.37.12.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FF9A3F6C4;
 Tue, 14 Apr 2020 03:54:27 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:54:24 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: ACPI support for System Control and Management Interface (SCMI)
Message-ID: <20200414105424.GB17835@bogus>
References: <52a50069-7140-b9b4-31b4-8c99e8c0d991@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52a50069-7140-b9b4-31b4-8c99e8c0d991@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_035432_222841_01B37025 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: 'Thanu Rangarajan' <Thanu.Rangarajan@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, souvik.chakravarty@arm.com,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Matteo Carlini <Matteo.Carlini@arm.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 linux-arm-kernel@lists.infradead.org,
 Charles Garcia-Tobin <Charles.Garcia-Tobin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 10:26:41AM +0800, Hanjun Guo wrote:
> Hi Sudeep,
>
> We are working on the enablement of SCMI for Kunepeng920,
> which is a server chip using ACPI, but I didn't see the
> ACPI support in the mainline kernel for SCMI.
>
> Kunpeng920 and the upcomming Kunpeng930 have thermal
> sensors and other system management features which
> needs the SCMI for abstraction layer, do we have plan
> to support ACPI for SCMI?
>

Yes and No.

Yes, because the same SCMI compliant firmware needs to work with ACPI as
SCMI is designed so.

No, because we don't plan to add another SCMI layer below ACPI in the
kernel. ACPI specification was extended to support special PCC types
to support the same. IIUC things like sensors are supported using power
meter objects in ACPI and you must be able to use PCC opregion for it or
any custom mechanism to achieve that. However one need to add PCC opregion
handler in Linux. The main idea is you must use existing ACPI methods
and we don't plan to add anything special for SCMI.

SCMI Perf protocol is compatible with CPPC. We can discuss details once
you explore PCC opregion or any alternative you come up with. I am no
ACPI firmware expert and I reckon you may have other interesting ideas.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
