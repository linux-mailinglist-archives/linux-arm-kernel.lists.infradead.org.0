Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED211310B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3L9CP1ei5F/2l/clj408JM7bJ6ylSvH+Hct5A485H8=; b=lPIsrjQ3dl5foe
	oUX3RaeJoONjYYjWafLuFqvlibGICcUe4HW9bEcTa09IFKUABSJTiF1VO/cjmjy3JhtaZj+LIgijY
	BXhYWSshBLmhH7/CDlK/ao1+rYDCoVimJsN5eX2Mc78MZkfGPMe3dFse0ibUTwmDBaXWrAX//NIZT
	heB/WgkqGSxD/j9ECAfsJwtoqWz1DvbZnIRWkDS96hrnAJdvTMLh3Ve3V1Gbs76xEt0u9iJ0t/Sji
	GbaY9wrugeslhDsOW0XevCo7fqzcQbl2MEacMQTvQHQ/276IIAk1GRqtci+oKIT6I/vUaHWjHMjzC
	0cwJUOOqPyUoa0obarKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPnZ-0008K1-VE; Mon, 06 Jan 2020 10:39:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPnS-0008J8-Mi
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:39:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8C22328;
 Mon,  6 Jan 2020 02:39:39 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E28F63F534;
 Mon,  6 Jan 2020 02:39:38 -0800 (PST)
Date: Mon, 6 Jan 2020 10:39:33 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2 10/11] hwmon: (scmi-hwmon) Match scmi device by both
 name and protocol id
Message-ID: <20200106103933.GA54418@bogus>
References: <20191218111742.29731-1-sudeep.holla@arm.com>
 <20191218111742.29731-11-sudeep.holla@arm.com>
 <20200104161946.GA2974@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104161946.GA2974@roeck-us.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_023942_803204_80AB8D3A 
X-CRM114-Status: GOOD (  17.08  )
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
Cc: linux-hwmon@vger.kernel.org, Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 08:19:46AM -0800, Guenter Roeck wrote:
> On Wed, Dec 18, 2019 at 11:17:41AM +0000, Sudeep Holla wrote:
> > The scmi bus now has support to match the driver with devices not only
> > based on their protocol id but also based on their device name if one is
> > available. This was added to cater the need to support multiple devices
> > and drivers for the same protocol.
> >
> > Let us add the name "hwmon" to scmi_device_id table in the driver so
> > that in matches only with device with the same name and protocol id
> > SCMI_PROTOCOL_SENSOR. This is just for sake of completion and must
> > not be used to add IIO support in parallel. Instead, if IIO support is
> > added ever in future, we need to drop this hwmon driver entirely and
> > use the iio->hwmon bridge to access the sensors as hwmon devices if
> > needed.
> >
>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
>

Thanks

> [ assuming the series will be pushed into the kernel together ]
>

Indeed.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
