Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B153A6CABD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 10:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoKAiD3Z+IJDU8z0OmAtVYNCTjdSn0ExdIlIvO9C+Do=; b=uFDc0ouWeJYuXh
	VKl0UygbLVJjHEL/uIGel4RWRVIJ14/zxOCL/zyeFZWdb1dVSgyGjNLFfSPrgFASOLkp/MFFJzan3
	iteNoyyieNQJCL4fp5ThHbCiY7AnTnx0jiW+7n4AJk6Aaukre8NbVM9APRfy5Wn0MFLfV87Jg/Hqr
	/PAwvzcfN/urZcuLg8/7KpLDYrcgL0Az0aAzyMcjn0Ht1Ge1Us3OSVp/sArXYBi6Lxvf0TMpkXmhR
	tVsbZfLyZnBxVhJ2eSbaF/NmSKZm8bTp3BPwmBiTkUtP2TpbG2c+0pdtmMyk+rlTN/30ZtnwwA4J/
	oq2K5k2dgzzWt4GnUCUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1Zh-000741-Lg; Thu, 18 Jul 2019 08:15:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1ZP-00073e-UD
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 08:15:21 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 255832173B;
 Thu, 18 Jul 2019 08:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563437719;
 bh=NXP1dxMRStA2YoZIugG0Hfaixlo5PPncW8E/6st36ck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vFFbhUW1Vk4qL91O8zs/wnRq17O2v+nBsHGqgNG1fQWGrH76f7mvP2R8Fzq8e0jws
 nryRGuJnwg0srh9I6wgqTg54lCEYY9fNeXVts1t/ZXEfRX1qrFbdz0HcMW2DavFY88
 Y686nLMjxJanA3xR7TH7pP7OBl0GBuEQrV8JKmms=
Date: Thu, 18 Jul 2019 16:14:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: Add gpio-ranges property
Message-ID: <20190718081456.GN3738@dragon>
References: <20190702014400.33554-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702014400.33554-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_011519_996188_D1DECC4F 
X-CRM114-Status: UNSURE (   7.49  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ping.bai@nxp.com,
 ccaione@baylibre.com, andrew.smirnov@gmail.com, viresh.kumar@linaro.org,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 daniel.baluta@nxp.com, abel.vesa@nxp.com, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 09:43:59AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add "gpio-ranges" property to establish connections between GPIOs
> and PINs on i.MX8MQ pinctrl driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
