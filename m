Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE471C0308
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZGh419ffWTaS/cGqQhb8hxZ+aq36Le+uBg5uXyBV7s=; b=iRTKWMPIUkdrQE
	wjz03Oqq6PW7fB6e6AkZqHJfd630kJsYR7Z5Km89uCnLoTJnp7zPnT+yfJsb+vA9XfBJWRT6+3vIW
	dd6saeilaOi1mPjhxpWm66WrTL3NvTUB0zcews0WxjiRr5pRwUCEOJZWgnZeRz6/1h3gMZL0vuEwa
	ss4/uTV6XeULOA9R+1OT0rVXgHauqSPyV+9TuqTtFPJTrvrKfu6RXFyJSoprUSiMqZWYrKkKaWMFr
	D7bQst4XDxgwelGh0wmlnCJ4DcI/Y6rPTg+VGLKSAigIerove8dxDCJV/H9DmV3SDawhgKaP4+F2g
	fx8aFwnknOo02tCdQgzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCM9-0003mC-57; Thu, 30 Apr 2020 16:48:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCLx-0003kI-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:48:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB7332070B;
 Thu, 30 Apr 2020 16:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588265281;
 bh=axoYz9ubvidu6Q4qb8tE1iZySwHLJ5aESX8frhVyuiE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ca/g0WoiwN4MNpRo23zI84MuVdc3f57axAaaKLI+X0I8yCH2/jidRQBKHbK8Kj0le
 p0ifJPTxniAeJNPxdDSQ3sL1FcGdRO8dvdmXF6bViBXQY+Fl9+SUzjn0eh/2hXocYc
 SNXgDN/8PRduyw3CCDEyv20e7Bjs+BAm0Et0exUw=
Date: Thu, 30 Apr 2020 17:47:56 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 00/16] arm64/cpufeature: Introduce ID_PFR2, ID_DFR1,
 ID_MMFR5 and other changes
Message-ID: <20200430164756.GH25258@willie-the-truck>
References: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
 <6749304e-8a4d-f4b9-eb40-91f0dd13166e@arm.com>
 <20200429212614.GD8604@willie-the-truck>
 <da15c0f0-f8ec-c2bc-bd5b-907a75119dc1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da15c0f0-f8ec-c2bc-bd5b-907a75119dc1@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094801_849424_EDCDF18C 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 maz@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 08:29:44AM +0530, Anshuman Khandual wrote:
> On 04/30/2020 02:56 AM, Will Deacon wrote:
> > On Wed, Apr 29, 2020 at 03:07:15PM +0530, Anshuman Khandual wrote:
> >> On 04/14/2020 03:18 PM, Anshuman Khandual wrote:
> >>> Changes in V2:
> >>>
> >>> - Added Suggested-by tag from Mark Rutland for all changes he had proposed
> >>> - Added comment for SpecSEI feature on why it is HIGHER_SAFE per Suzuki
> >>> - Added a patch which makes ID_AA64DFR0_DOUBLELOCK a signed feature per Suzuki
> >>> - Added ID_DFR1 and ID_MMFR5 system register definitions per Will
> >>> - Added remaining features bits for relevant 64 bit system registers per Will
> >>> - Changed commit message on [PATCH 5/7] regarding TraceFilt feature per Suzuki
> >>> - Changed ID_PFR2.CSV3 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will
> >>> - Changed ID_PFR0.CSV2 (FTR_STRICT -> FTR_NONSTRICT) as 64 bit registers per Will 
> >>> - Changed some commit messages
> >>
> >> Just a gentle ping. I am wondering if you had a chance to glance
> >> through this updated series.
> > 
> > Please can you resend based on for-next/cpufeature?
> 
> Sure, will do.

Thanks. I'll keep an eye out for them.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
