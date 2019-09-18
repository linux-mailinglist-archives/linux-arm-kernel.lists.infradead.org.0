Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C556DB5BA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 08:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dbQEYYQRfIwZ/IShpEPF1VtwcC/SkDOwz3mRa2wMmQ=; b=N6T1sNbebQk82Z
	c4Z6Djx+C75kNPtOLyg3Zm6Xm2oeMjZ2s+ENWj5SaFxs///ldrn++t8Cbztmm2gn4Zhe8hXcNcYng
	XggClYOG6Qaf5p6MNcxb5O/8EzX71h6p6WI8ka7mvMAGLuv6jYXzS6Up+Ost3ziuVwjGhESNuGG9V
	ERZDGXquduHDGDNMn6yEeMX8gDJMhCIfXNotJcqz2rdrXzJ2SyVICiZCogdA4Fk1RS+8webJjxTOe
	FuqvsuDZvsvtaH0RYXsBXXWy3QxNKqqX+zpTZDhw0TFJRYBaG4TLsMX95L/rneBPGoMk57iUbJwMH
	OSwyGWaSZUtDO0tTbXcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAT8f-00088M-Lu; Wed, 18 Sep 2019 06:08:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAT7n-0007ax-5J
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 06:07:36 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B90EA20856;
 Wed, 18 Sep 2019 06:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568786854;
 bh=Ts05YE0IjGolvN6Z7Hv/3J3qFt2qBGevkokf4x6n7e0=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=VdmBBFmXgopq7WcGmLHBMOdq5W0g7H88njURoDcrLWaKfJehCItaEm+WjAX/cGPj0
 aHSQG2CE+Csjnw3ZTuB0GlFyoXYDY42es+HDJhbIQ7LvhScgwRUvAMXNf/UCej6nTF
 ImrBB8oBgAcQcaYSzx7PFhDUTBYCi+PaevSVcNc8=
MIME-Version: 1.0
In-Reply-To: <1568043491-20680-5-git-send-email-peng.fan@nxp.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
 <1568043491-20680-5-git-send-email-peng.fan@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V3 4/4] clk: imx: imx8mn: fix pll mux bit
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 23:07:33 -0700
Message-Id: <20190918060734.B90EA20856@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_230735_338711_45AD8B88 
X-CRM114-Status: UNSURE (   7.35  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-09-08 20:39:50)
> From: Peng Fan <peng.fan@nxp.com>
> 
> pll BYPASS bit should be kept inside pll driver for glitchless freq
> setting following spec. If exposing the bit, that means pll driver and
> clk driver has two paths to touch this bit, which is wrong.
> 
> So use EXT_BYPASS bit here.
> 
> And drop uneeded set parent, because EXT_BYPASS default is 0.
> 
> Suggested-by: Jacky Bai <ping.bai@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
