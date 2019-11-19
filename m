Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE068102A65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGWE9IxkNdbRK5DT/oil98rwkPal7TLGmAsugZXsx0g=; b=OCsRjXIx+QjI3F
	iV+jAzAQ9/QuJ/PR+33dr8HmZ/77NYwtJN1785GrdfrFvsAASNhZB6/csx/OQWz+RuEmJVWkjRBd1
	b1zo/5qcWQG46lUykmDl61mltY9kirnm4jTm0+m8IcrkyB6oiveV2240YCzbfWXIr8W0BjGguPRkh
	Hqi6nTIA89pW78TXAxp8nQpMj4XiLSUlQebICMK0rZPqH3vbJukNJlYn3TqvWeXeGS8tsTAXmOnfZ
	+zH3d5xhvLnQ7Ue+iPB9xXP3spCe+CghbL5Ftcx/Vamwzy2w6NrYZhp5LR0Vap1baSGHgvXxtviWh
	jaK4c1DykxoMrPv8ZBPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6tW-0004ou-Pg; Tue, 19 Nov 2019 17:02:26 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6tL-0004oN-Dh
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:02:17 +0000
Received: from sapphire.tkos.co.il (unknown [192.168.100.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 479C2440537;
 Tue, 19 Nov 2019 19:02:08 +0200 (IST)
Date: Tue, 19 Nov 2019 19:02:07 +0200
From: Baruch Siach <baruch@tkos.co.il>
To: Robert Richter <rrichter@marvell.com>, Jan Glauber <jglauber@marvell.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: Update Cavium ThunderX drivers
Message-ID: <20191119170207.cwfowgc57rvhg2td@sapphire.tkos.co.il>
References: <20191119165549.14570-1-rrichter@marvell.com>
 <20191119165549.14570-3-rrichter@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119165549.14570-3-rrichter@marvell.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_090215_683860_ECFB7D0A 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Arnd Bergmann <arnd@arndb.de>, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, arm soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert, Jan,

On Tue, Nov 19, 2019 at 04:56:26PM +0000, Robert Richter wrote:
> From: Jan Glauber <jglauber@marvell.com>
> 
> Remove my maintainer entries for ThunderX drivers as I'm moving on
> and won't have access to ThunderX hardware anymore and add Robert.
> Also remove the obsolete addresses of David Daney and Steven Hill.
> 
> Add an entry to .mailmap for my various email addresses.

Couldn't find that part in this patch.

baruch

> Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
> Cc: soc@kernel.org
> Signed-off-by: Jan Glauber <jglauber@marvell.com>
> Signed-off-by: Robert Richter <rrichter@marvell.com>
> ---
>  MAINTAINERS | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
