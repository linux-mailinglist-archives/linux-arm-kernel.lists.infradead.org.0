Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6105411A6BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QH9pv825V8OxrdSpeUngvsC1EG/19bzauK/nbyu67I8=; b=AIteBQiQLQtr6p
	sAkC/LtTqLtjEUIQTuCPK7Pcun3YmxfiuzJCocfA2s/zyhZcFiEGV6L7R6G/cBvjcINPEhFfMC8IR
	kU/rA5MXZAgVg9Mt+jDikMVmVJrc3HQBRICFpE6HVySC920UX7kCv7xjzMrg89xAzvD4J/j8BAe8t
	Cx+bqsxzcqdOaiq5/UfCYh45hm725sPLFJzhoBEjPe/Z5M0ul+JRbW5X/uflW87Kk2pfZqHMJiVCF
	6pvLRdl5KHNW1kNyOVkvYf4wsndAMz078vZYozXUtCD2KmrqTSfEeTgP0Ecuzx7Z84JF5y2cXOxD5
	hdlp68wLJAxkuECx/spQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyBG-0005Qw-U8; Wed, 11 Dec 2019 09:21:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyB7-0005QL-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:21:06 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A737214AF;
 Wed, 11 Dec 2019 09:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576056064;
 bh=gzDA3JJnu708N4xoucs8RAE4lUx+pZwj+RYMbSyB3LU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JnhSW1JjOn7hiWYurytdcwcMptqWolC9yyigMO0/FpxLCa5iiqrgR63k5Q2YHyQWG
 GcHfSJXjhE2NURShz8DRmpToqMSOurOrLthtFKiaBuJV1mzu0bqb7I4NPZHiyIa6wP
 i1gxUGE2PFeSIsKe4xTvrGaqsYRuTNSKJ8303yEU=
Date: Wed, 11 Dec 2019 17:20:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
Message-ID: <20191211092052.GX15858@dragon>
References: <20191129210937.26808-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129210937.26808-1-michael@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012105_169592_CDD69904 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 10:09:37PM +0100, Michael Walle wrote:
> The LS1028A SoC has only unidirectional SAIs. Therefore, it doesn't make
> sense to have the RX and TX part synchronous. Even worse, the RX part
> wont work out of the box because by default it is configured as
> synchronous to the TX part. And as said before, the pinmux of the SoC
> can only be configured to route either the RX or the TX signals to the
> SAI but never both at the same time. Thus configure the asynchronous
> mode by default.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
