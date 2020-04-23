Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7801B5E36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44sS5J4RPpzWcM1UBVTMtukCfJaSQKnfEi+Hv/ze6W4=; b=GOCEPEqKr83OFk
	Vtz2jOvmIfMBxLc13iCWcjZJrnfzB/Csw0iNJciBnvm25TYhpyGzS4QLmm02wzQORPh3ceDIl3ZOA
	gn1DQ59RA6AzXah6I3puo5N0WcKO5wgROfiH28b8+b+TeNxY0uOJUtX/AiI2+cGeGFuZaM33nKqVm
	hyYvO+iPnraSla4Ps9Ix1hkzXvndHGjHZXw/lhe3ieie/dijE7QhSu33bdkm/G9cwU32kCBVHLqjw
	FiuPvUlXMd2G3gN8VpCN3O61LSKVsRWO5N+8gawnX/s7/KDflSHwTh6smcVl62mJDptU8s5rHiCmW
	UxAJrFA9oS1QQUxn4lkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRd84-0004vJ-9i; Thu, 23 Apr 2020 14:47:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRd7v-0004uT-TD
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:46:57 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C78E42074F;
 Thu, 23 Apr 2020 14:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587653215;
 bh=dKwZcTA1rgXNzu8RlWdM83F/mPA130mSalvzMrCfR5c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WGRv7srctdJKAMqmK8eL+KLDl94Qq12AGW4/+u5N+2s/PfFr4W8aju2QTPOM1c8yO
 nNXGiVKCmSSYXkJi/a5D98loXkbFfpq6K3zLK627HHMMr/UHwkHxkcE3ap0YL4oqbD
 fAy2Sj+j+mGN/Ly5MRfly27bv+M+sEkunwv54s0E=
Date: Thu, 23 Apr 2020 22:46:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/3] arm64: defconfig: Enable CONFIG_PINCTRL_IMX8DXL by
 default
Message-ID: <20200423144642.GE9391@dragon>
References: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
 <1585306559-13973-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585306559-13973-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_074655_960728_15A28B61 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: peng.fan@nxp.com, geert+renesas@glider.be, catalin.marinas@arm.com,
 linus.walleij@linaro.org, stefan@agner.ch, bjorn.andersson@linaro.org,
 festevam@gmail.com, will@kernel.org, krzk@kernel.org,
 marcin.juszkiewicz@linaro.org, Linux-imx@nxp.com, linux@roeck-us.net,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, dinguyen@kernel.org, kernel@pengutronix.de, olof@lixom.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 06:55:59PM +0800, Anson Huang wrote:
> Enable CONFIG_PINCTRL_IMX8DXL by default to support i.MX8DXL
> pinctrl driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
