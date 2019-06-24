Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106FD4FE4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 02:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qbBk/FzGMsbuf+5nAI2xHmyhbZWSBEbbUD39GyP2TI=; b=gwgPjq6U69Fi09
	bF1NH6WrdYpUVBLXM8RaviZ8pOdhEMi4k/rH6AwnZmtbKg3yY4B+52iTtzM7bZFGj1okGwNvT9DXX
	eVq1nhKlG+HHMFKQksK1kCHanz+mRlvuD8bqzS2IgmBpo/zOnIkeLeBzWlQF2KqCDdE1hpvMI0Gka
	SQZY24xhEk7xbOdchnHxdBP1v3ArtBFnD/LaaEN9QZjF8lS6rbWj6UbXkKpwjPyPiPVYk6thIglpD
	CN0TTmMqTZ9O/Cbfzd55HvWbJwuQcn8T6hI53/Rlf1xdctoqlJwsLoPcq4znjUC56EG1JmL/2NHXP
	Y5y+X6fkFtMJ7Bqd4K4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfDIv-0002Em-Rw; Mon, 24 Jun 2019 00:57:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfDIh-0002ET-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 00:57:40 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C52D922CDA;
 Mon, 24 Jun 2019 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561337859;
 bh=miD3wAHyi4O1ctbdmZlddUy7kefFm9ICPlAWm0WphYQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x1ZliunoMMDtr76MUYyZbSnxuFYCPAbXH0yiUCbYH7o+g7nSzeXUYAtyKkxg7YmtJ
 D7DnumVulaD1UZTWiFeT5qIEI2joPWT5fX03nHedfCUjkmewLmwu3bUb/ZbCyTACcj
 PYrrhl1gPnDluoYf5Sa/qLiuQBHt3H7YbpmeBTWw=
Date: Mon, 24 Jun 2019 08:57:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8qxp: Add lsio_mu13 node
Message-ID: <20190624005724.GG3800@dragon>
References: <20190618210516.28866-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618210516.28866-1-daniel.baluta@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_175739_726455_96DEAEED 
X-CRM114-Status: UNSURE (   7.15  )
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, anson.huang@nxp.com,
 devicetree@vger.kernel.org, Daniel Baluta <daniel.baluta@nxp.com>,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 12:05:16AM +0300, Daniel Baluta wrote:
> lsio_mu13 node is used to communicate with DSP.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
