Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A601EE515
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbWTw+4Sam1XJSW969v1Y8m9gv4l65TUwzYysB4Cqv4=; b=d6edrE7WdOMAOp
	Jv5QZAWLxFCeKuryUXi+R9KOZYDW6ZtInx3d673iBFrt/WPI3ZFaoUy/dnaf+3cIrHoGdnBGxc7lG
	opMGQ+XL+MwILXEq8KoS+UxYvAiYt1j2RkpsWsACyJ8yAxVVG+XCmOCErP/WpPJrxGtO11Xd4K2y1
	DCzuZJs37E20BoOYgmEsdCrviwoO3H+VMUj3mFwox8S6SoV/ynDCsPv/SS+tcKjY58syBDZtpIArn
	s6PQCMNPamTVJC/ubzr5xZ4LtcecOn+JpOu3cTeQv7g/PXCNWD4QMlcrCPq9uQK6+DByW4JX2xFBS
	HPgmeEYz9gKaMLNh1vmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgpgM-0004Db-EN; Thu, 04 Jun 2020 13:13:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgpgF-0004DA-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:13:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0C4B30E;
 Thu,  4 Jun 2020 06:13:08 -0700 (PDT)
Received: from bogus (unknown [10.37.12.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43A053F305;
 Thu,  4 Jun 2020 06:13:07 -0700 (PDT)
Date: Thu, 4 Jun 2020 14:13:04 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] arm: dts: vexpress: Move mcc node back into motherboard
 node
Message-ID: <20200604131304.GC12397@bogus>
References: <20200603162237.16319-1-andre.przywara@arm.com>
 <159126075826.16785.4183160239670270692.b4-ty@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159126075826.16785.4183160239670270692.b4-ty@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_061311_472766_1BE03A0D 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 09:56:31AM +0100, Sudeep Holla wrote:
> On Wed, 3 Jun 2020 17:22:37 +0100, Andre Przywara wrote:
> > Commit 	d9258898ad49 ("arm64: dts: arm: vexpress: Move fixed devices
> > out of bus node") moved the "mcc" DT node into the root node, because
> > it does not have any children using "reg" properties, so does violate
> > some dtc checks about "simple-bus" nodes.
> > However this broke the vexpress config-bus code, which walks up the
> > device tree to find the first node with an "arm,vexpress,site" property.
> > This gave the wrong result (matching the root node instead of the
> > motherboard node), so broke the clocks and some other devices for
> > VExpress boards.
> > 
> > [...]
> 
> Applied to sudeep.holla/linux (for-next/juno), thanks!
> 
> [1/1] arm: dts: vexpress: Move mcc node back into motherboard node
>       https://git.kernel.org/sudeep.holla/c/8a8cd9a910

Had to fix the 'Fixes' tag based on the report from linux-next, so updated to:

https://git.kernel.org/sudeep.holla/c/38ac46002d1d

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
