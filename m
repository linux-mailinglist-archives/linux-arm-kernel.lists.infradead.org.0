Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDD51C4D93
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qizemSccwe8J0x3UlgmAVOr+FuHD8rrHqpO0GdFIy44=; b=iQkcYk2nID6nRS
	Ww+K0JLbRiXA7vMor91Ij2Rotm2sN1mDicHRD3LfPQSs4SyvwXIC9ROtFc7DiIAKxoNwNQ5WYJLhJ
	q17GyKfVz9l9+c7ZDmwByIn23SmzcbNc7npNsjNDv5Y3uAqu/vqXmGVlt/+gDd5b7ujXYDbic1SFN
	U8zNMkNPuguvbxs5uRn44aJvcX0nAbORdZwtQIbYIAgK0h7uimTvrnEMayDA8M5JOD39cr11kEp32
	J3GJRAUb5kpP/BLZwIx+PwzcDMKrQZjtQ2Whtc92/4QHZc+ta+qni/cOtCCKUR+qa+gpgAKBaNrSq
	fg4eZpbQ6i7sf5a8Tbtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVpqU-0002Rg-Pc; Tue, 05 May 2020 05:10:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpqC-0002AH-If
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 05:10:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 132BA206E6;
 Tue,  5 May 2020 05:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588655400;
 bh=SXbbgm7JowSfxiWmwGv7Z8Q2AXlRiuO+6V5M9KxoZeA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=PuVd6ONdgRi1l/0enQFaazGGRj6Quz7U/Zh2sEeGgZkhI0qyiwT8CZk9DHHYkqpnN
 D0oBFbt16yvFKt+JBrN+jyk9oeQhNZn3jDNPturL9izjAG5A8MDilQzgRdw8/T74o/
 m+QwsaR1YKOBW9eRAiNnoZnasOXkVh6ZJpV6y6+c=
MIME-Version: 1.0
In-Reply-To: <1584279836-29825-6-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-6-git-send-email-aisheng.dong@nxp.com>
Subject: Re: [PATCH V6 05/12] clk: imx: scu: allow scu clk to take device
 pointer
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
Date: Mon, 04 May 2020 22:09:59 -0700
Message-ID: <158865539933.11125.5732308113699998738@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_221000_637281_3F155CF6 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2020-03-15 06:43:49)
> Used to support runtime pm.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
