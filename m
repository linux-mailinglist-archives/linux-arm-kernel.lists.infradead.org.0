Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB9129245
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDw0VA2aXgUmjwOgN4B/aSVqx4ZFGvOWfGta/qjPCLU=; b=m8BvMznu6gEjNk
	EUkN+oEfESDPDl6TGOSBcsZCIkSzTwWEeWUP/JTFLJuSWH2hoGlFZ0cXognWgBw7af4zPride/PWK
	rXlIMF7xiChLgo7nEebo1C6R+ehejd2FfyPa75461IIp+3aJX+EBSUOghiFyVfDpsGUxU9D+xpIjS
	gSxv5gPrREdkFXSA2ciy3dhaFo1jmNn59gIeX4YzJqqP9SK1uZ9kWG8ozmVdjb8xcq3YOtg5PXWm9
	yC1XO1+pNne2yGztGRG7WzXN2Mqt350CPnL+67ICkEHIQ02BsnrBpO11B2haupFsfswK+6cNUiAk4
	uWpoy801j+pcm+Q7Asvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIHe-0000xu-U4; Mon, 23 Dec 2019 07:37:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijIHU-0000xX-Ns
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:37:34 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0381206CB;
 Mon, 23 Dec 2019 07:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577086652;
 bh=frMuERvhOc4pr13v4ZKKMbrcM0fjSe7l2O10OUZ4wU8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E3+AADcWyPZn4YRNip4q10FhpU+MoMvjOmHcfHGBVpf4pdGYP4o6ThNQgrFqvKWqS
 5YbrmJtJKZ9R9VeowdCZbhzKzEn7ZzpQSV4QUm8pfkvLcrQQgWXtkT/vSjYXSQi+Bc
 qAKruJuf6U+eNaAVpO1fduK7239STbprfnOI+VFo=
Date: Mon, 23 Dec 2019 15:37:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Change SDMA1 ahb clock for imx8mm
Message-ID: <20191223073708.GS11523@dragon>
References: <20191216111530.29558-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216111530.29558-1-aford173@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_233732_797337_C2FC690C 
X-CRM114-Status: UNSURE (   9.16  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacky Bai <ping.bai@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 05:15:30AM -0600, Adam Ford wrote:
> Using SDMA1 with UART1 is causing a "Timeout waiting for CH0" error.
> This patch changes to ahb clock from SDMA1_ROOT to AHB which
> fixes the timeout error.
> 
> Fixes:  a05ea40eb384 ("arm64: dts: imx: Add i.mx8mm dtsi support")
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
