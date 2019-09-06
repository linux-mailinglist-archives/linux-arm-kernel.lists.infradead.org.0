Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95489ABE95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+H+ybiSc3UzbxwTSgF21IfW55k63fJsAc+aogkxb7Y=; b=LZ2ag5KxV80saV
	twXgHvMsBP3n5031H9eBuqyS7RYk11qWqJ0qO0yHLZJBOhx7ylqYowm/zWds5VegnXgyWPDCduaHi
	ZzUPdHBLTBzdkYkcfYXpEtNdB/lfhZ1g5dwPD4h4KkzXqpqVzB9/4YeDHz6LUyfyxcFMr8B5Xa1ov
	s5uZXiufpQD2e/6Kj4i7VwdcSQktpTQCcSZDf6f1+mWui6GwrS4xB72b3FjPpYXOoH59IwJwSdiP0
	cfiMyiA5fF3Z1e2QVharcFe+XPAoZTJ0OXXhE7XDi9gCrxpgYmDTKhTZ1UxyL4dAbB2BLr+XjvkhF
	lvoK5m6LKb+jOeE6MfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Huq-0007yQ-Qm; Fri, 06 Sep 2019 17:20:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Huf-0007xG-84
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:20:46 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B99FB20838;
 Fri,  6 Sep 2019 17:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567790444;
 bh=MqN/EtBkVnxG8eZiColGzmDCTwXUPyPh5+LpIVe0YG4=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=CYozECqVpRrFJH2xvk6dZ4mN6OY4KecJUOzK1vGdSGMnbIKxRA8qh/Kc+LdHjTEx5
 PUZXjE89eK7y1b+ifK4UXKqZC6DrG2/yezn1PYX7R3f5S+sw3IiAvYj3lL3oy5GVCa
 FqYmivqaXH8/EfZQDELvYwg6vU0Xnas34hkqips0=
MIME-Version: 1.0
In-Reply-To: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
References: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:20:43 -0700
Message-Id: <20190906172044.B99FB20838@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_102045_305601_9C5503CE 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-08-27 01:17:50)
> From: Peng Fan <peng.fan@nxp.com>
> 
> There is hardware issue that:
> The output clock the LPCG cell will not turn back on as expected,
> even though a read of the IPG registers in the LPCG indicates that
> the clock should be enabled.
> 
> The software workaround is to write twice to enable the LPCG clock
> output.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Does this need a Fixes tag?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
