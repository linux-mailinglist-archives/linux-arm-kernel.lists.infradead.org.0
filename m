Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0ABD6376
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWhy4XQbWWrs6gnLoCV4ihU4TrT4NMViiCMpRT5ad8Y=; b=KwOf45hVi+5k3S
	DcgGto9Jj+XFwMbZxvWbJKf8xy/HmtvA7l6wvpNEzYiDWlfe1Obioqj8wH9wq7RT6qUnzdi3N40XD
	IYdWqzKwcZHmIQdErD2k+ghJvAAumX5qvUvNLJ34buhYTf78zizZAJ+uArW358Be4Skb2bOik8HvE
	ehjo4e5jxBXXlQ/7Yj8mD4dxyXmCwL3c/FRMu5Y/SZlGZeGyPTSbZAEsVae7/p8JnEN8VQ0S1T6AE
	Gt1OnPAxjaKNOjpNS75EoHwLCgIMoT1Xi1m7K0pOeaiXfnbkIsAGqa0vFAhbbYS75FlPFN/Bc1cg8
	YnbG9pubsBYkPJEXNc9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK084-000069-AE; Mon, 14 Oct 2019 13:11:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK07v-00005M-06
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:11:08 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFB6C217D9;
 Mon, 14 Oct 2019 13:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571058666;
 bh=3LD9agT50wYhkc1QJoVYpXn20M5JAD27JKogmrCezT4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bBJRM3mJ+I5QrZv9JTewm1Rg1t6CO2JLMx6ohyWFstu9lbBxPeHt24qbmccDKPkqF
 4Y6/Xf5FZHEvD3DRfIRuLRDxPFSiwfyGfM2jK2ASIB1JNDqAtMobl9x1c+rLbEknG+
 lJzR9cqs3+Q4vjQpK8XPP9gYbnAf7AmeKKY3RTHc=
Date: Mon, 14 Oct 2019 21:10:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] arm64: dts: imx8mq: Use correct clock for usdhc's
 ipg clk
Message-ID: <20191014131023.GV12262@dragon>
References: <1570496145-11053-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570496145-11053-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_061107_060458_A4DD393B 
X-CRM114-Status: UNSURE (   8.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, angus@akkea.ca,
 ping.bai@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 daniel.baluta@nxp.com, s.hauer@pengutronix.de, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, abel.vesa@nxp.com, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 08:55:43AM +0800, Anson Huang wrote:
> On i.MX8MQ, usdhc's ipg clock is from IMX8MQ_CLK_IPG_ROOT,
> assign it explicitly instead of using IMX8MQ_CLK_DUMMY.
> 
> Fixes: 748f908cc882 ("arm64: add basic DTS for i.MX8MQ")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
