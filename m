Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505F36CA95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 10:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E26TrzOXTUc40hkbTdf57x8BOb+g525MTsv3MIu/Z6s=; b=ThspBmoN6QoIui
	cfjwehBDDIQN0PnksIb+uzP46SFWfJoivGuQnZENNU/tUHkLnruXgn7Oh32iIQzhfHK6G1IL2HUy/
	6UMa6Gn/FsciWCf50clq/xBpDLcuruUsVbJuQ5+byU1vmnhgX6W9XyqrZkjxt7adP+rGuYQP58n27
	JLgT/NEyE0AbrM9USrpVa8ysFozVwlC04JHDYrBB0NURC8bNW7ZkTiQr343K0RmJcDX/HI4uupnnq
	juqrCQEULmZRjyhoIQEhpvPOsAPpBVj0UBNLA9i1zKJu521+/knKLfib19f7kkfmqA8Y1/grK1/Rr
	GwMDx/4tIikYfNj0+PSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1PA-0002IF-36; Thu, 18 Jul 2019 08:04:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1Oo-0002HL-34
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 08:04:23 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84F5D208C0;
 Thu, 18 Jul 2019 08:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563437059;
 bh=E0bLEAP3B1LCOK+JmfNMki+fkUB1oBDmiJFqCk7d3z4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=USpNpihtlTs5cwv+eEh3e1xNwu3qmdbLx7FNEBHVdjr6KnddtNezQJ6nvWZGKxlvR
 /fJNvvgg3LFmupkj2VGQMcbCRVvN+OQW4Rz3cU+jVJMKWuQeIVRklIxTUVlxi/63Zm
 4KhuoE3Zvl85Z7YSE55/hIQ39qAv/rP78deAwS4c=
Date: Thu, 18 Jul 2019 16:03:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 1/2] arm64: dts: imx8mm: Correct OPP table according
 to latest datasheet
Message-ID: <20190718080356.GL3738@dragon>
References: <20190629102157.8026-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190629102157.8026-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_010422_148714_0B7E5E75 
X-CRM114-Status: UNSURE (   8.67  )
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

On Sat, Jun 29, 2019 at 06:21:56PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> According to latest datasheet (Rev.0.2, 04/2019) from below links,
> 1.8GHz is ONLY available for consumer part, so the market segment
> bits for 1.8GHz opp should ONLY available for consumer part accordingly.
> 
> https://www.nxp.com/docs/en/data-sheet/IMX8MMIEC.pdf
> https://www.nxp.com/docs/en/data-sheet/IMX8MMCEC.pdf
> 
> Fixes: f403a26c865b (arm64: dts: imx8mm: Add cpu speed grading and all OPPs)
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
