Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA7717F054
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:03:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZgYV257dISKYAuA4H/dx+cG2GQvEt5+qfQWldfp8y8=; b=g7B0kPKmIDwAtS
	nKgJNY7brCXJKsxIojeMNIXaQ75a8zhAVq95crTqK/cUaHmWoRHeeTMN1yrE792rBUY2AUGk/XecB
	OZo4zVmIzGtP7peWnfhEthK0gR4YP8nPlYVd7Ei2fzOCbP8rvAHhANtv3Ht2myILV26TZQC9XXrrP
	YhNQWbRrjCOtOXBI/s/wZIP6upvObhHbrbq12bvI5nk2cfSIt9jbT8BJtuTQh+ChhWqlSBw38X+1m
	mm4ZaJMdt3HwBrLWt20fnKWQikTdglhaS08aaSsPQXv3yEUkG/PBt0C6N7oFi57XZItvKbLVc/IjR
	6f+IrHhlVmZeJKw4ufmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBXyl-0006ez-Mi; Tue, 10 Mar 2020 06:02:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBXyd-0006eS-RA
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:02:53 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1FD2222D9;
 Tue, 10 Mar 2020 06:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583820171;
 bh=1qU2dN2D9iT9iz9xcw7xh6AsOJbP/pTimqmMLVf+cTk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z599R8u7pluw6gYoy0ucpWJOHxIY6Jer3PbRJiENCYdOsxV+QVEzHRhL6JYBs+iO6
 tC0ETZUSjz6bYh67NKY0sHyTDxc0MTbRU5pppotgA7lDssq4uhuBReFsXAeMZON4go
 2F/sk9gJ1IPfIRrnbWwt0p0f2+cnVd7QX0hpPSBk=
Date: Tue, 10 Mar 2020 14:02:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 04/14] clk: imx: pfdv2: switch to use determine_rate
Message-ID: <20200310060235.GG15729@dragon>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-5-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-5-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_230251_901041_8C32ADB9 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 03:59:47PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per clk_ops, compared with round_rate, determine_rate could optionally
> support the parent clock that should be used to provide the clock rate.
> 
> In this patch, the parent clock is just parent->rate as round_rate.
> 
> The following patch will calculate the best parent clock.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
