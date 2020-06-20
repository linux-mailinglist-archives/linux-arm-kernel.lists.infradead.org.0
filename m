Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC4520202D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 05:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qKgC584UE8oERCPsWTqI9Um6agQSwx1EcUPq5hzxTU=; b=SyEnv7EDKeDL9J
	ezNRDr7wf0S3bb4AqSYci2/K7BHzGRzi8AEQ14y+NfXUM/njLVIvF6xjTAAbODw4wTVklCMO+s7Gg
	SGfVEY4XmfEMkfb8PP7H26MQuNFiJgpTNYic3sTufZ1iuwK2l7+yEnr3MD11ZylVtrpmN9jzM2OBb
	/aJ2RoFiUE0JYIGbCTqdhWPMDybKi3POLO3oqyWqzOXNMTxp88QERxBy8BqJa69WRRVK7mAugR/M+
	8SCPgXCc94lzcUd8ZcWTEI2D/7Yaujri2HOkiD+ZRYs/f7B2OPZ8GBcJef6OVI1xtuBSDdbrTi1/7
	n3yudMDp/aIetJ7f+T3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmU60-0005DA-0f; Sat, 20 Jun 2020 03:23:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmU5r-0005Cn-OV
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 03:23:00 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E144B2311B;
 Sat, 20 Jun 2020 03:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592623379;
 bh=2HnlBkRLF7ByW7jdhl2LVoO9lFMmnDi8HAinor2wg74=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=PbbATne29lk3/Dq9iGYrKoi848LMjPV5Lcp7tCVOoTSK8XPuhyi+wMwbj5zp9zfWh
 AVbtrt23/zJrBm5NE442FMvclWJDeaGpXlrlaKdBB93Z+lIPhwYnnYl3/YDBmVurE2
 yCgbgfZAd/r6KIFS4tgf63GCrLWmHFvxe7dhmJvg=
MIME-Version: 1.0
In-Reply-To: <1591687933-19495-2-git-send-email-Anson.Huang@nxp.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-2-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/9] clk: composite: Export clk_hw_register_composite()
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, aisheng.dong@nxp.com,
 allison@lohutok.net, arnd@arndb.de, daniel.baluta@nxp.com, festevam@gmail.com,
 fugang.duan@nxp.com, gregkh@linuxfoundation.org, info@metux.net,
 kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, mturquette@baylibre.com,
 oleksandr.suvorov@toradex.com, peng.fan@nxp.com, s.hauer@pengutronix.de,
 sfr@canb.auug.org.au, shawnguo@kernel.org, stefan.agner@toradex.com,
 tglx@linutronix.de, yuehaibing@huawei.com
Date: Fri, 19 Jun 2020 20:22:58 -0700
Message-ID: <159262337815.62212.6627329090856383673@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_202259_831817_39D7735E 
X-CRM114-Status: UNSURE (   5.33  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-06-09 00:32:05)
> Export clk_hw_register_composite() to support user built as module.
> 
> ERROR: modpost: "clk_hw_register_composite" [drivers/clk/imx/mxc-clk.ko] undefined!

Get rid of these messages below. We don't care that make modules failed.

> scripts/Makefile.modpost:111: recipe for target 'Module.symvers' failed
> make[1]: *** [Module.symvers] Error 1
> make[1]: *** Deleting file 'Module.symvers'
> Makefile:1384: recipe for target 'modules' failed
> make: *** [modules] Error 2
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Otherwise

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
