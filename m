Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5EE15BD5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 12:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEp1H0kzGPvxp2c8Gh8Ks3OOkOI5OscYo22eDt8jjgU=; b=Y7tNuEquqRIF91
	kxBjSSo9g1baAPxi1YUa6QjAUDtScIc+52kwWVEgM2nzeO9T1FJRC+zleCJ7rA4unaZ4fuy50ITTg
	t/dUoHXTOvaj0ZRunwQZl0NubLxWMwbeRGC1Vt3gk3XmDkQyzExd55/AX7YGq0L8fTcinXykfqFVb
	CvFN/iVV42EKPmtr/l5q3VFl0Mas0XGIsYS8f0pMgRO7In7ZlG66b5XKXNfP8zYKYDnFv9c7pgyYD
	zK88J7lWDeWvPe1EEwaF5ZtmviOCImMGqT2vRH40wsmi21Um0s5KVlUKoCymXZfb9xBEKOV7xryKg
	1DxE43z5d8Ojg4hniWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CMe-0001AT-3g; Thu, 13 Feb 2020 11:09:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CMT-00019u-3E
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 11:08:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83A291FB;
 Thu, 13 Feb 2020 03:08:48 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CBC73F6CF;
 Thu, 13 Feb 2020 03:08:46 -0800 (PST)
Date: Thu, 13 Feb 2020 11:08:41 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v9 11/15] dt-bindings: arm: Juno platform - add CTI
 entries to device tree.
Message-ID: <20200213110841.GA26385@bogus>
References: <20200210213924.20037-1-mike.leach@linaro.org>
 <20200210213924.20037-12-mike.leach@linaro.org>
 <20200211115852.GA52147@bogus>
 <CANLsYkxOK+21JutM7ryz1ux0gHBTa51q5r-9i18kFLvMKouShA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkxOK+21JutM7ryz1ux0gHBTa51q5r-9i18kFLvMKouShA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_030849_178701_E8AE99FB 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, maxime@cerno.tech,
 Sudeep Holla <sudeep.holla@arm.com>, Jon Corbet <corbet@lwn.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 03:12:21PM -0700, Mathieu Poirier wrote:
> On Tue, 11 Feb 2020 at 04:59, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, Feb 10, 2020 at 09:39:20PM +0000, Mike Leach wrote:
> > > Add in CTI entries for Juno r0, r1 and r2 to device tree entries.
> > >
> >
> > I can take this patch alone unless you have plans to take all in go.
> 
> Please hang on to it for the moment.  I'll get back to you if/when we
> decide to move forward with this set.
> 

Perfect, I will wait until you prod me again :)

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
