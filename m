Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4661EE05C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13eqKRwOF1ij9YXWPZmJMG4MEB9H9qbb+YDXNVGgkpQ=; b=QP23wWioJ8FFHl
	DMnBc+5y+vF5L8Tsemqa3B2PKWY9d3obYCFLgHOpSdCMX26peNJoJeoWo8qqtyZ4/oFLv7mKxTs6o
	GMSphKcv7ndnu06MNY2p5F31Tdt029VVFae2HcmeguwJRIpswzcXl/+M9MOsT0KEtMkgepGbV8dEb
	4vyVC4FaGGp64EDP1CrxHGJVnrHnxkvRbj61n9ElPyPPIaQT7GUhnQZ5N1VuxkzSso+gK3O+e5RXX
	lRozyczEKmB9GlWTooLmlbTOjbo5edED+aLiwZHK05m5gUR9pnPn865UKIvZsmisl7Sn14AnrMhI0
	A1lRLpI5x3bUQgb/Gzvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgliw-0000fQ-L7; Thu, 04 Jun 2020 08:59:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgliq-0000ef-2Y
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:59:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4748F55D;
 Thu,  4 Jun 2020 01:59:35 -0700 (PDT)
Received: from bogus (unknown [10.37.12.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DC643F6CF;
 Thu,  4 Jun 2020 01:59:33 -0700 (PDT)
Date: Thu, 4 Jun 2020 09:59:31 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] arm: dts: vexpress: Move mcc node back into motherboard
 node
Message-ID: <20200604085931.GB8814@bogus>
References: <20200603194614.GA187107@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603194614.GA187107@roeck-us.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_015936_157940_E55A9E32 
X-CRM114-Status: GOOD (  16.33  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 12:46:14PM -0700, Guenter Roeck wrote:
> On Wed, Jun 03, 2020 at 05:22:37PM +0100, Andre Przywara wrote:
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
> > Move the whole node back into its original position. This re-introduces
> > the dtc warning, but is conceptually the right thing to do. The dtc
> > warning seems to be overzealous here, there are discussions on fixing or
> > relaxing this check instead.
> > 
> > Fixes: 	d9258898ad49 ("arm64: dts: arm: vexpress: Move fixed devices out of bus node")
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> 
> Tested-by: Guenter Roeck <linux@roeck-us.net>
> 

Thanks, I have added your Reported-by along with this. By the way, this
email seem to have broken the link. Initially thought b4 is getting
confused, but checked the lore.kernel.org too to confirm.

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
