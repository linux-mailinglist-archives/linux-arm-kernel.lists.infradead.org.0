Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321401FEBCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8jQhh/Al9saBbZoXBnJekxOp8t1KoJpfXGrX0Gu3w0=; b=bnw3DpWKrX1ptp
	lwar4JrKaQP/NlADmdpI9oAw5xwCLpYyoz9RS7RdTqVdCWstrlm/W99+SRjA5nGfsx2goMrUlmdR7
	M+dyMcGY0u74OfrKDTJOfj3wWQ/prrNKxPvrhQI4PM7GSGKhpqn0sP/G2T9axk7vemJ/RZV85aBwq
	NKD4ZPUBkzs9ut8KfwcrNpnsleGCkPf16POhOPIQ+FtpxiVtuCmPLIjOU4UzNHvc9FHFkBQSigeZn
	yl6LqDIBhcwoYDNtwXPYOmFB86XGKEmnoh7d9UnVh8FX+3QNOPQBki2mRSopA60UOlOEZlPJQztBn
	i7eUaDHNgrV+y2rF42ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloUr-0001AT-Ti; Thu, 18 Jun 2020 06:58:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloUk-0001A1-0l
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 06:57:55 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FBF620773;
 Thu, 18 Jun 2020 06:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592463472;
 bh=V5h1ejD6zUH6DYDa9BdWTgrkpCRixg6+jUSZc62MYfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2DvkZ8wYEHQ6FGF1CS1rNq4FEhJewogILEGXdb75uB0zHeiauhDwqJOny+VjTwS+8
 OapYJqYyXMSL+Bg4sJ32WuWXu7/k97O/ZzWj4CXKQtkXeeoGSzResmt3ApeWRTSL8A
 LuQrO4j0vgfhcYXgmToWdLqXrEP4SGkehe/Irp9Y=
Date: Thu, 18 Jun 2020 14:57:39 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 0/4] arm64: dts: imx8m: dtb aliases update
Message-ID: <20200618065738.GB30139@dragon>
References: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_235754_083749_8F92A7F2 
X-CRM114-Status: UNSURE (   7.93  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 10:02:42AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Minor patchset to update device tree aliases
> 
> Peng Fan (4):
>   arm64: dts: imx8mq: Add mmc aliases
>   arm64: dts: imx8mq: Add ethernet alias
>   arm64: dts: imx8mm: sort the aliases
>   arm64: dts: imx8mp: add i2c aliases

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
