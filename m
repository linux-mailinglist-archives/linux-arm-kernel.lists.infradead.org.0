Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FBA1D1C2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 19:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4npmqPR9uOmOYwRZ4WLU0WCJq87MLgsI8EkI3IsJrE=; b=iu4aR+16keI0ss
	yqJDratnFjHNA+c+CBaC5ji+SA2MysUmkexEe2UJm4G6JWeGXs79xH3VO2agt8L20x0AzzlCNl+UF
	00iOiqB4AaAepZ5OTsmarxseprUupJa87ZmS8I9jW2G9QEJ2/bkRAxWtIy8DAo9qADL7WzGx0Jxga
	ucL6uQ/pW7GcAKgeiNsEeCLecRrcbv9iZjgCCphSFtLH4039Ti95RasazzKSY70yF0ytpUMfFLMPC
	pW6PKyQNbK4bMdBn0HTVX1ZCkPHW0SXmOVspKXFcLUgkDQBHbYbxPcBVZGdTAruiP7YjGy9WFpBtI
	dn0AXng0TIRQBb7hwxIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYv64-0001BO-0t; Wed, 13 May 2020 17:23:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYv5q-00019i-RA
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 17:22:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDBFF30E;
 Wed, 13 May 2020 10:22:53 -0700 (PDT)
Received: from bogus (unknown [10.37.12.13])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E298B3F305;
 Wed, 13 May 2020 10:22:51 -0700 (PDT)
Date: Wed, 13 May 2020 18:22:48 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 03/20] arm64: dts: arm: fvp: Move fixed devices out of
 bus node
Message-ID: <20200513172248.GB27686@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-4-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-4-andre.przywara@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_102254_928133_AE34F184 
X-CRM114-Status: GOOD (  10.31  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:29:59AM +0100, Andre Przywara wrote:
> The devicetree compiler complains when DT nodes without a reg property
> live inside a (simple) bus node:
> Warning (simple_bus_reg): Node /bus@8000000/motherboard-bus/v2m_refclk32khz
>                           missing or empty reg/ranges property
>
> Move the fixed clocks, the fixed regulator, and the config bus subtree
> to the root node, since they do not depend on any busses.
>

[nit] only if you respin the series, you can drop extra "arm:" in the
subject. Also if it contains both fvp and juno change, use fvp/juno.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
