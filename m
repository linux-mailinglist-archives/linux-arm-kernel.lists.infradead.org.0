Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93150356B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEP4AqcedhjO7lYTDQD+lLcyyxJCVTYvAdrWJYSr0wg=; b=fUUYzNekDakyTZ
	Ckq33ao/VDy299YMs/m/bqoASduFC20uHEnazMprtZ0QzRyyP9jRuqYVeBSxjdONikhNJ8hYaZxR7
	rq+eU+xHs7strWc0mMf9kv7Y9vbqUSLxpwNog567qgDmZBAPI6aFH92sOMkRbcq3v3klI4pwU8Zmb
	zLN/NyO1syg24Ftit4s+cIvg1O3X9RJozcgiBqrU/vBgHxDa0U9VfYUZNPCgRhUhyct5CUXpbb7d4
	kBrL5a4QARPlsI6n3aMAXEYh6pagmub5a802aZsf7B0Za9w5dUuu70apUsSvYEBefk9O7QhMRjrib
	jtLeYE9rMUxJ00RUgufg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPD0-0006ab-Vn; Wed, 05 Jun 2019 06:15:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPCr-0006Zp-4s
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:15:33 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7528720673;
 Wed,  5 Jun 2019 06:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559715328;
 bh=vj0fFfzdCOMls6GQVlEHz6y/BCRJKDroJegL7QI4CL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iwgU8DqD8UACR2n3eeozRuAzxl+1PJwElQg71iMelgD8veLbyjGZSbOPyca5XKcE7
 GuMDGRum0vE8deBmWBMWg4kqhtcvQvzaogxlUkwR4awAOH+TpucgL1b5qmuxXKL8dx
 ePkxmvmQzXQQr4IZXcsAh9hkJYtQXA/G9duTS8x0=
Date: Wed, 5 Jun 2019 14:15:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V3 RESEND AGAIN 1/2] defconfig: arm64: enable i.MX8 SCU
 octop driver
Message-ID: <20190605061508.GD29853@dragon>
References: <20190524063913.44171-1-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524063913.44171-1-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_231531_659239_88DB95C4 
X-CRM114-Status: UNSURE (   8.22  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Leonard Crestez <leonard.crestez@nxp.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, s.hauer@pengutronix.de,
 Olof Johansson <olof@lixom.net>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <andy.gross@linaro.org>, robh+dt@kernel.org,
 srinivas.kandagatla@linaro.org, linux-imx@nxp.com, van.freenix@gmail.com,
 Shawn Guo <shawn.guo@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 02:39:12PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Build in CONFIG_NVMEM_IMX_OCOTP_SCU.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Shawn Guo <shawn.guo@linaro.org>
> Cc: Andy Gross <andy.gross@linaro.org>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Olof Johansson <olof@lixom.net>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>
> Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
