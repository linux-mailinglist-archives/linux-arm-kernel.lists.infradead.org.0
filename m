Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC3A11A4D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VS/CPlzVy/CdtdFV2bJloZT0yw6TKBS6SQyR3MHJl9o=; b=t8gheEC7fMm3jq
	SAv6V34V0JA4kflyAUAqM/KAQ8i8roD3lRX0wddJndcjHnlaGAZEBpWWLdwsH8BLMiPYL6LA5hOBx
	thNfo/raWp+LMWrnDFOOMxqyY3mQg8aCGND0uErAuuP1Rj5H9r0NgAb6eUo/EOnzimtYW8zHh9mJX
	T3zvz1wpQU/9Kh5MtcDXB5IOyQjmEt0bObnk2HFJ8AZI8pxffDrF6kxWLyTEeAqMhQj0oh0LW1I6Q
	oe31Bms3JP6neLJVpMb+cjtZKJxLISgStWDLXW0G0GUSmshgDMCI7pVwa12/5tLJ0Yvdx7gx0ocew
	Mi+CZykBZtn/jdgOcG8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iew6M-00018H-81; Wed, 11 Dec 2019 07:08:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iew6D-00017w-Dv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:07:54 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23CA520836;
 Wed, 11 Dec 2019 07:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576048073;
 bh=8msHcIRu3PefYDklXS+Yt8ZWDv8UpIyQUU1KePcXvUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I6qcpZab4oL1uW14v+yRpdRAmH74HJX44/xxYLcSVUaU32XzcNP4JLGJBnNmveSFV
 MmDkfr/0zyM16WKOx7IBoLVqAnppDSdic4/Gy8TTKhNPvwZhbdT5BHxUZD9xkBq1XH
 rW0BSLiJ6z5+LOmelSd8ur+Vfj/c7gjpBRnM+27U=
Date: Wed, 11 Dec 2019 15:07:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Message-ID: <20191211070739.GL15858@dragon>
References: <1575879445-15386-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575879445-15386-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_230753_488021_417AC09D 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 08:19:55AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The usage of readl_poll_timeout is wrong, the 3rd parameter(cond)
> should be "val & LOCK_STATUS" not "val & LOCK_TIMEOUT_US",
> It is not check whether the pll locked, LOCK_STATUS reflects the mask,
> not LOCK_TIMEOUT_US.
> 
> Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
> Cc: <stable@vger.kernel.org>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
