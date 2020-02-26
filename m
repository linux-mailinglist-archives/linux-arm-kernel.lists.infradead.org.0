Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA401707A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOFQjUpWq/SeYmaLn6IiiFd3G5funID6yYb6ZxoQ3XE=; b=AX7Q5sGuFjl8aH
	BxaEUA+V0JqUt5qzBu7MF9Z47YIQBDWMra0OT9hiSF8u4kuWnZzkOsGcuU1R8IITMDI8n6nlq3Wpc
	UKekAdZX6V3w71vSzh7EYoo2I/eWek7HQjXBIusavAQ8FE0MqEf+1Ox9/8sxNn0nYSWA178RuxGFQ
	qils5h5BDolUYvZQzLWAo8vfSMlNfOAO//1pvl1UM7RubD6Aw4mtvuyiLretIBNikMcLu/4SeljIP
	Q3qQvppyWFO0/b2dCYo9XrgjJC2GYj79G2p9VvzHkPMEIINqvexbCmqfvsvqJil6aHB4tX5dI3XgA
	vjmUJbWTMMu7yvqueiZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71OC-0007Sh-Gs; Wed, 26 Feb 2020 18:26:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71No-0007JQ-V6
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:26:10 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 3BDC08022;
 Wed, 26 Feb 2020 18:26:51 +0000 (UTC)
Date: Wed, 26 Feb 2020 10:26:03 -0800
From: Tony Lindgren <tony@atomide.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 0/3] Drop PRUSS and OMAP4 IPU/DSP hwmod data
Message-ID: <20200226182603.GT37466@atomide.com>
References: <20200224232152.25562-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224232152.25562-1-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102609_089642_6393019A 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Suman Anna <s-anna@ti.com> [200224 15:22]:
> Hi Tony,
> 
> The following patches drop the hwmod data for PRUSS on AM33xx and AM437x
> SoCs, and for the IPU and DSP processors on OMAP4 SoC. Patches are based
> on 5.6-rc1. Please consider these for the 5.7 merge window.
> 
> I will be submitting another series tomorrow to add the ti-sysc support
> for PRUSS. Nevertheless, the PRUSS hwmods will not be used going forward
> and can be dropped independently.
> 
> The IPU and DSP hwmods were never added for OMAP5 and DRA7xx/AM57xx SoCs,
> and the MMU data was already dropped for 5.6-rc1, as it has all been
> converted to ti-sysc and omap-prm. The DT nodes for these will follow
> for the next merge window once the current OMAP remoteproc DT support
> is accepted [1].

Well we still need the hwmod data until dts data is in place to reset
and idle these modules. So I'll wait with this set until we have the
dts changes in place.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
