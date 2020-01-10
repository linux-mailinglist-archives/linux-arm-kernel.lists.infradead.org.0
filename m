Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BEA136436
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 01:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:
	In-Reply-To:MIME-Version:From:Reply-To:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=li1jfZELcyb57E5jI40AcXkXQn5errSXIvmmPSkkhgo=; b=KYIDSJgXb7mVf3
	yKcBsODB9bYNh46oUEQvSn5qk3Lf6Yqzb1NA0fFoZgFXDSYTrZ+1kp3azsOpQpz42xuRlTfauUh5o
	VY3afkcwddrI1u+gDUEYpnQ47bQ5RSqFjRsP+dQDrL6jp3vc5DYKrPt7wuoP/XoHPexRQxUb2mHiV
	gJfpL0nPSwIqX3aI199MRfPQkUJvneWYupMmNr2l/6M24IxGHaZcbT9CB0JLnGxKRBw1uiuf6pBdy
	zxunVU7m3VwXINwDIgtrmndG7xYdVXNBpzDTE55cLLcLkEubKJdXr3hRrtd/+57as8uJzxSAW0+Mt
	YpSOFhAmJHD8vJ78j3+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iphtl-0007rW-Pp; Fri, 10 Jan 2020 00:11:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iphtd-0007qu-EJ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 00:11:26 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B82B20661;
 Fri, 10 Jan 2020 00:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578615084;
 bh=/ursooGYobJkHxZh7joDxwx6+SWWdJcogy33Ye/MQ8g=;
 h=From:In-Reply-To:References:Cc:Subject:Date:From;
 b=q+ZN5qWpafDiIwKpQU8BWxj7PSnxNvUbCSyFQglYSdcCaJtx6SCTMK8XA0XpspjQV
 fTTYHGTMWkcvCvzVWuxl8ywNBOWExTAMmbMS+OMVRyn8Cn1v8/Avp32kyLp1MwK3ND
 L7eR8JRe1ENLYDp7ILOc53pbewMIybmhsAZU4CuQ=
From: sboyd@kernel.org
MIME-Version: 1.0
In-Reply-To: <20200109214128.GB1027187@piout.net>
References: <20191229202907.335931-1-alexandre.belloni@bootlin.com>
 <20200106030905.8643221582@mail.kernel.org> <20200108110218.GT3040@piout.net>
 <20200109181910.59B2B206ED@mail.kernel.org>
 <20200109214128.GB1027187@piout.net>
Subject: Re: [PATCH] clk: at91: add sama5d3 pmc driver
User-Agent: alot/0.8.1
Date: Thu, 09 Jan 2020 16:11:23 -0800
Message-Id: <20200110001124.8B82B20661@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_161125_497115_1456B927 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stephen Boyd <sboyd@kernel.org>

Quoting Alexandre Belloni (2020-01-09 13:41:28)
> On 09/01/2020 10:19:09-0800, Stephen Boyd wrote:
> > Quoting Alexandre Belloni (2020-01-08 03:02:18)
> > > 
> > > As for the other PMC driver, we need a few of the peripheral clocks very
> > > early which means that we would have to register most of the clock tree
> > > registered early leaving only a few clocks to be registered by a
> > > platform driver.
> > > 
> > 
> > What peripheral clks? Can you add a comment to the code?
> > 
> 
> The TCB is used as the clocksource so its clock is needed. Its parent is
> the master clock which has UTMI, PLLA, the mainclock and the slow clock
> as parents so by that point, most of the tree is registered.
> 

What in sama5d3_periphck[] is in that list? I still don't see why
platform device is rejected here.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
