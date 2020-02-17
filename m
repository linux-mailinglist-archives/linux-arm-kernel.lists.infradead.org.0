Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6361F160A4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8Et+zTTiQTKt7vmdim+Yb3fcdtnFZWLT0thw/nkFCs=; b=sxc+KFAOfOyEPl
	vmZGuDX8K8fCTWM/8PubI0DSVtwEZjq3gqk0hIkcXRWvgTKsd5dokyO88nDURLxk+9t9mWVeazwBb
	MorxzMhgVaKPxl12XI0LZ54m36kIBA637drVxWTnKyzw/zhcQMSnAfRTtA90LyKtIf4/4XFAmg9tc
	CNVdBRuBaPM9qAw2XtepfH6HoDYzEse/U7gm8EvkbyQVhZhF3YjUPdZZYQ9DaVlpKK4a6JM+HJ69K
	N9jElQ7sWrU5FA6FS1z9nP8Xg6bIqoC0PVqPSW8QpFMAzUlYyUFoFajpwvjfFG5vdrutpU+LIiPIx
	qQOhcJgfv9YWCogltWUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ZiA-0008TO-FW; Mon, 17 Feb 2020 06:16:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Zi0-0008Sz-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:16:45 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF73020679;
 Mon, 17 Feb 2020 06:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581920203;
 bh=DLvMATAzEWVQjYRixiWO3+rDmcBnoRjcRpX5U858a+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LEO1sA0guMEqD++vNYCPcJAPujIvm6A5mDDD/+UcI6BBqPrjR7K+oVw1kCzr2uZh6
 TSBCI8DSgGRjikqFJqbTr6YELYwhxKZw20MZt2nesBP7DwU4SMqftXE18I1FI6nKk2
 N5AVGfVeSNY4tu3wgsrU9gRaXwKeQ3rC6/2HyjhQ=
Date: Mon, 17 Feb 2020 14:16:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 2/4] arm64: dts: freescale: Add i.MX8MP dtsi support
Message-ID: <20200217061629.GA6659@dragon>
References: <1581425307-18567-1-git-send-email-Anson.Huang@nxp.com>
 <1581425307-18567-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581425307-18567-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_221644_384013_2A5D5177 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, marcel.ziswiler@toradex.com, angus@akkea.ca,
 gary.bisson@boundarydevices.com, manivannan.sadhasivam@linaro.org,
 leonard.crestez@nxp.com, festevam@gmail.com, andrew.smirnov@gmail.com,
 rabeeh@solid-run.com, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 kernel@pengutronix.de, s.hauer@pengutronix.de, robh+dt@kernel.org,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, rjones@gateworks.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, broonie@kernel.org, pramod.kumar_1@nxp.com,
 l.stach@pengutronix.de, cosmin.stoica@nxp.com, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 08:48:25PM +0800, Anson Huang wrote:
> The i.MX8M Plus Media Applications Processor is part of the growing
> mScale family targeting the consumer and industrial market. It brings
> an effective Machine Learning and AI accelerator that enables a new
> class of applications. It is built in Samsung 14LPP to achieve both
> high performance and low power consumption and relies on a powerful
> fully coherent core complex based on a quad core ARM Cortex-A53 cluster
> and Cortex-M7 low-power coprocessor, audio digital signal processor,
> machine learning and graphics accelerators.
> 
> Add the basic dtsi support for i.MX8MP.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied 2 ~ 4, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
