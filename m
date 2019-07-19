Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB4B6E45A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfF0mxEyKQbKJQ7Rmt0bTbNgNaKkJWO4uDZlijvkiNQ=; b=jPSHdueybFORpY
	98bCwwUA6U8Hxbb1fRa/Gz8sshWoziFWAuPsTyAuCfoEMpbZnMrzb19Tp/jFfSKZzznxlvBC1TqMU
	5xkOTBpaioFyW/B7D1nWXGboPx3D9wukVfZr+lnI1lKaAWr4JKKJQSC5+uE4hCNQBylUfV/dqPkP4
	pRSBlhIl8kXRmJ+IZ5GSKavy13CanLYz6FgN6L3eZ2e9UUUX07NgZ7VV4anhauizxfcqlpNomSwiZ
	fmrqycNkBmcOiIqgFoxe1w8qt/STXETQunSD49i+MWa/czOe20es8TIfDMqE93b3e22qb0xHS1XeY
	oFA3t8tE5YJ/S+yzQuSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQ9P-0003pT-Q5; Fri, 19 Jul 2019 10:30:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQ8m-0003o4-GO
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:29:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5850337;
 Fri, 19 Jul 2019 03:29:27 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 080BC3F59C;
 Fri, 19 Jul 2019 03:29:26 -0700 (PDT)
Date: Fri, 19 Jul 2019 11:29:24 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH 05/11] firmware: arm_scmi: Add receive buffer support for
 notifications
Message-ID: <20190719102924.GB18022@e107155-lin>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-6-sudeep.holla@arm.com>
 <CA+-6iNz26xUyrzVSbWA+jwEfj3BC8k8KNCg2SreDK7mfWsbAWg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+-6iNz26xUyrzVSbWA+jwEfj3BC8k8KNCg2SreDK7mfWsbAWg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_032928_613020_A360859A 
X-CRM114-Status: GOOD (  10.45  )
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
Cc: Peng Fan <peng.fan@nxp.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 05:14:55PM -0400, Jim Quinlan wrote:
> Hi Sudeep,
>
> I'm not sure why you are adding code for notifications when this commit-set
> does not support notifications.  Why not save this commit for when you add
> notifications?
>

Right, I missed this patch and sent. Yes we just need Rx channels and not
Rx buffers to implement asynchronous commands. I will drop it from this set.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
