Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D40455902
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 22:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsWt/FUlxzZcpcjMYNSfp+t8jeQHoGBMo7knBHu3CCc=; b=mYCOM3lCnm2P1C
	OecFGotlJoaemojqjGVaRfQHmOfNTHsMp2ERERi2xwqfKMISHwGdWeWcMWZgYXIap+YIb2TUMk90j
	CnqZzCmC9fd+5R1RnbhWZPBvHLTl2pwPRTKQR9gLqCYcH1maAyNaKQHO3fcy/GSoOPMICvjen8LE7
	Gy3ebaHH3MgHgTXQt32pBsE/WfVcB2qr3hJGmihKFvv582Lwh000px0D9Ha8bRKkDLWO6q1XY9Ddx
	7+15RKAzNI2EYw1kXdCJNrM06uOCyEuuusqXSDUdzXBfC7IoDAYwTC5qqWUCDHnlvGQvgpKznRZ8g
	4HxcHcYw4MlIfLWTN88Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfsCj-0006w6-SE; Tue, 25 Jun 2019 20:38:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsCO-0006pI-Gz
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 20:37:53 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2894205ED;
 Tue, 25 Jun 2019 20:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561495072;
 bh=OVSKbYEmCYUYFKXz6+Jf3XDclNFQmS6oG/sdiBhVaIQ=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=WYrqLsdF9x+U2qx5X8JPx1eqRVT8OGTYf88O00aPUuYonHhVuQQd6EEfMeFlnyzn8
 bf79OlKkuZemWxjs6nfzsqeOrrCQfULmgsm1luVkvTbNmSUOaXHMNW3SCCmWBGXP7g
 2rxzTAjJ/7YqD5V0AJV0QAYZ4OW6UqnOHT2G60lg=
MIME-Version: 1.0
In-Reply-To: <20190625070602.37670-2-Anson.Huang@nxp.com>
References: <20190625070602.37670-1-Anson.Huang@nxp.com>
 <20190625070602.37670-2-Anson.Huang@nxp.com>
To: Anson.Huang@nxp.com, festevam@gmail.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, peng.fan@nxp.com, ping.bai@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
 sys_pll1_80m
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 13:37:51 -0700
Message-Id: <20190625203751.E2894205ED@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_133752_676912_B3A99DE3 
X-CRM114-Status: UNSURE (   5.15  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson.Huang@nxp.com (2019-06-25 00:06:02)
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM's GPT1 clock mux option #5 should be sys_pll1_80m,
> NOT sys_pll1_800m, correct it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Any Fixes tags?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
