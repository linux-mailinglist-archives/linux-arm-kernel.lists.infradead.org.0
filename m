Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF1BEC5E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:53:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5RmC89rpO2AHuEKDK/mtGMAeaqudM5bujLd3jQZ5Vs=; b=ONcYIGXS7PpfHd
	xJDF+3PJ7B2Odr0Asa4yUUawBIe2Tszb6a88uHxlLh/9jEiXgzTeupYka9Mmfm14DoIApxO1OuWys
	PiKXmYOimtMLzlKNhcL46AToWnEr4rQ+PiTvWVl3BLG5QHuQA4udc00G9qgAWijFNOPQr+qYPWMzE
	fY4lK2iGcownKOE5nw9zgrLNKja0glKYfP//0ktPuOOM9BYePSPZcy++69mSp79K6EryoVQ6evH9F
	BvZ2Ty04Q5RjiTForRhdW0PTXb2ETC0NWfw1DZTOGBLtUxp/vnAU7qWBz1RaAFypMbX1I+epWyvTl
	gaScqVkoVekE+DUXrqSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZFF-0007Na-8F; Fri, 01 Nov 2019 15:53:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZF8-0007MX-LS
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:53:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F2ED328;
 Fri,  1 Nov 2019 08:53:41 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B4E853F719; Fri,  1 Nov 2019 08:53:40 -0700 (PDT)
Date: Fri, 1 Nov 2019 15:53:38 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] docs/arm64: cpu-feature-registers: Rewrite bitfields
 that don't follow [e, s]
Message-ID: <20191101155338.GG17207@arrakis.emea.arm.com>
References: <20191101152022.8853-1-julien@xen.org>
 <20191101153803.GC3287@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101153803.GC3287@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_085342_748634_D5EE770C 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Julien Grall <julien.grall@arm.com>, Julien Grall <julien@xen.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:38:04PM +0000, Will Deacon wrote:
> On Fri, Nov 01, 2019 at 03:20:22PM +0000, Julien Grall wrote:
> > From: Julien Grall <julien.grall@arm.com>
> > 
> > Commit "docs/arm64: cpu-feature-registers: Documents missing visible
> > fields" added bitfiels following the convention [s, e]. However, the
> 
> typo: bitfiels
> 
> > documentation is following [s, e] and so does the Arm ARM.
> 
> This should be [e, s], although I think you can spell it out as "end" and
> "start" so people know what this is doing.

Thanks. I'll make the changes locally.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
