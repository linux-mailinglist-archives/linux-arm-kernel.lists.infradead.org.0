Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEEE147437
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 23:59:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dlmyVJv7ODOAhYRiljC5+NhxwSMcVfX4COLXaGBu7k=; b=ZN/CIAFuh+0esh
	LHGlFpTl90idX+idZL9qZ3zzPC/oEH9fizeqQSF+5UKZV1g2HsTCzC4hKOkeh4ZtmdQAJ+uNcppGH
	VSi4rtvzINErq2c69J9Pr6BkxmNyxW4oZWx1vb5VehiDBHypXJHy3/R1LKrmPoeFrKWQvGsjRR961
	/C/v+O+myVyrnLppMg9eKfMTWG8JJLiUut5NjRfm6LvDfLtT8exiWj/ZifCYON6Kf18MR8iv4Cxpk
	FTSuNLlTnLvDFAR26UBIB/JY5s5Q6BLhNwA3KJ84lblTA3c2i3DOUzFVziaekNZNCqcMNf+iY7Szo
	rIdpU/W/wldKxp2so26w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulRc-0001TB-GE; Thu, 23 Jan 2020 22:59:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulR3-0001Ae-RH
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 22:58:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64FF422522;
 Thu, 23 Jan 2020 22:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579820329;
 bh=Ma7mr84NfXsNfnp/ICmqGQRnXoWqBHa1vhN/R+arV44=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=iKtw1ctzjapyoZ9ydaYq5z4fUuJODkHiwCgh++gqBmXnc0ScjOy0FHH26IbuBf6dY
 tzWcyVNyTRVwyNSZ79S08oUfRMXzqx9V9ZyqOwscJUW0pHwsH8K9LiKjJZRNCAQwoy
 uezSQDbWZ7Vb2rFaur+8jd5yyLDsIk2ptmssdUUk=
MIME-Version: 1.0
In-Reply-To: <1575527759-26452-4-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-4-git-send-email-rajan.vaja@xilinx.com>
Subject: Re: [PATCH v3 3/6] clk: zynqmp: Warn user if clock user are more than
 allowed
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, gustavo@embeddedor.com,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, mark.rutland@arm.com,
 mdf@kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 nava.manne@xilinx.com, robh+dt@kernel.org, tejas.patel@xilinx.com
User-Agent: alot/0.8.1
Date: Thu, 23 Jan 2020 14:58:48 -0800
Message-Id: <20200123225849.64FF422522@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_145850_023925_46EEDD9E 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rajan Vaja (2019-12-04 22:35:56)
> Warn user if clock is used by more than allowed devices.
> This check is done by firmware and returns respective
> error code. Upon receiving error code for excessive user,
> warn user for the same.
> 
> This change is done to restrict VPLL use count. It is
> assumed that VPLL is used by one user only.
> 
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
