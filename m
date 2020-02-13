Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E2215B728
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 03:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WqhmGKrIvYehNLMsCM3EAOZVsVb10j7w9oL4E15dIc=; b=tcj6GM16/KkGJs
	DLzWjwGngOCige9k7FLRxDlTdshGQ/dhniZjk+Zl8XO3iULN4b7+04mySBGEbvM0Oj4vTl01ex+Jk
	f+ZoOB1h1rZ9x/sGjnSWRyCqBozrNI53XXpRpvTw584SIb59Ze+eKnB9HSFhFWa1Pz1+e0bmi4i90
	LZl+FHRCNnd3EP95aDvSL7CBa2X7mbiBRsqZv7SOEVC00Da7lHjUgQvJDAOzLeetKpFZO5VTXc7Kf
	BzgLAfAm9g1Dl8FpxzudGAU83P+wdTmNzXzgtKF1SMZQZrC74ahFhgWLB4KWave5zKcy81EYbVEUV
	4lwhdpxd9cBdXurgxkAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24HS-0008LT-D6; Thu, 13 Feb 2020 02:31:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24HL-0008Ky-Rq
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:31:01 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18AF220724;
 Thu, 13 Feb 2020 02:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581561058;
 bh=QoxejkUX9cQpbXXJUB/sdxVS47Tv5T5Z/rZUhXSmJy4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j2aVKd3PGsMLbe0eIphnWxs0c0iK+tGFcAabqqygjIKnrjAhQE6QT9xv7X+4zdV9W
 bn9CpPUaGMbf6tJIkBmrV51vNeBb2UamoZcx4qutZZn7JrPAYdiyRMCv9t/lmKkzSz
 2CYvoHfFbKlYnfsPk1w2fjHdezgtoilpjfYUiVxk=
Date: Thu, 13 Feb 2020 10:30:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: freescale: s32v234: use generic name bus
Message-ID: <20200213023051.GJ11096@dragon>
References: <1579156408-23739-1-git-send-email-peng.fan@nxp.com>
 <1579156408-23739-3-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579156408-23739-3-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_183059_925134_6439B918 
X-CRM114-Status: UNSURE (   8.66  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Phu Luu An <phu.luuan@nxp.com>, Dan Nica <dan.nica@nxp.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mihaela Martinas <Mihaela.Martinas@freescale.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 06:38:03AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per devicetree specification, generic names are recommended
> to be used, such as bus.
> 
> AIPS is a AHB - IP bridge bus, so we could use bus as node name.
> 
> Script:
> sed -i "s/\<aips@/bus@/" arch/arm64/boot/dts/freescale/*.dtsi
> sed -i "s/\<aips-bus@/bus@/" arch/arm64/boot/freescale/*.dtsi
> 
> Cc: Phu Luu An <phu.luuan@nxp.com>
> Cc: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> Cc: Mihaela Martinas <Mihaela.Martinas@freescale.com>
> Cc: Dan Nica <dan.nica@nxp.com>
> Cc: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
