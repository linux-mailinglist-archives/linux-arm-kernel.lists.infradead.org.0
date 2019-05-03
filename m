Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B89F1323A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6RmiP4zDuz4oTY7CQy8ATeMyKcF2mbPudJ9/mLbDI0=; b=mYuBNw/5pyXovW
	ByJZWf5r9YYG8ljTzNE3apO35m35davXXHI2wezwCzmqnKcwv0N1yBsR+2fd+ChSRmD9Ig+/d4cfz
	hLR6uLAZ6pzS2KTmcR1xQ/Slr8fszJxmzyEb1dD4kJ41ASJkZ3NCgPIotzSpovl9Lfdtms2w0Z1tF
	fK5Yx0vdSmK4EUoV+46vVj7UjVo6JIw0UygwWl0u88lgcZsnFtEW0uQ1vN8SODoSaK5kT/49/0sXq
	EpCSMJ5HLoh+0zUg4kctwPr8bp9TD9xg5l0nA449IXFrUto0xLqqiDz2u4ZAdMcOqP1Nv9RhBalqC
	SsUUfs27oeQwiv6M+NuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMb6c-0005RF-0s; Fri, 03 May 2019 16:32:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMb6U-0005Qp-UM
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:32:08 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27E9420651;
 Fri,  3 May 2019 16:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556901126;
 bh=wQFeqtk0b9+Acg78B6JbyuJJJmhtUePDvdDbBS6/xGI=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=h4PYxc9P1Ie5o284Z8zsDfHtKG9GDmLEOeEsJjwej4HBoKUNKMNdN1ncb5lBseNjL
 QmlwzGHRBl+800lmeWXaPBd+IuQXIZukP8Y8HSFqe2l7u3rGGzvvAoLkizMWBKQum9
 qHrjr8LotBalA0mWxps+/UDVn/o6+AMxCF2xg808=
MIME-Version: 1.0
In-Reply-To: <1556261303-6360-1-git-send-email-Anson.Huang@nxp.com>
References: <1556261303-6360-1-git-send-email-Anson.Huang@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: correct pfdv2 gate_bit/vld_bit operations
Message-ID: <155690112534.200842.9362435431679500492@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 03 May 2019 09:32:05 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_093207_003841_443A27DF 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-04-25 23:53:14)
> The operations of pfdv2 gate_bit/valid_bit are incorrect,
> they are defined as u8 for bit offset, but gate_bit is
> actually assigned as mask which could be 32 bit long and
> it causes overflow, and vld_bit is assigned as bit offset
> based on incorrect gate_bit value, it causes incorrect
> pfd clock gate status in clock tree, this patch fixes the
> issue by assigning them as correct bit offset.
> 
> Fixes: 9fcb6be3b6c9 ("clk: imx: add pfdv2 support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
