Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E37812912B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 04:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6AG456ViPpdIhufnRpcQ4aATEgrve7FhA3SuT0w2lc=; b=MdQMFD/n214xmC
	IVJNSH21vSNCi5cSinTFXSeNDzimyOUgUe/0TZB8IeLmhxcnejxQkImRTa009QpBWP+7fc/OgUe0N
	Ujrsl/RGtOid+TY/bK67Apv+ycnNxeRJfcxvzmkB4De8mZaENwPWsIFiQeigiyVWI1Hb103VUsF0k
	hwngUCv7HvWc8NxpBFU37wf073xsxGDYW8yv2aSgTFH8m6XYezx13j4upSG1q+qzsFQcUABS4rSgq
	Bl5/vz9gEokdsNv1DYbA/1OJdw7IdWF8g5W7n6g9Ets6UZKqXZwNSMCIChOvIbmUsrrEBbNvC+48A
	1hVIkLec7iJ+bG8n8x3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijEXv-0006sV-KK; Mon, 23 Dec 2019 03:38:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijEXk-0006s1-CS
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 03:38:05 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C9E3206D3;
 Mon, 23 Dec 2019 03:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577072283;
 bh=byu92t4rRZcTmj4uQmg4Cq+RCMhLO6AQbfs1oyQJ8QQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FEiT2kK2KUKtp/RS4hR+N+9kPautjSI06XktyChIvRRO3R7zAirpcdCUx0T186lV9
 74qXSNOv4IMvbAkDXflXyAlNhGiV+vzvtpaADHy3REGgEXtjVYEwTmvn7yK/9CfmNv
 0BfKbRwpUajXGfaiOqGK0cw7gGOisv9qsKpTYSHs=
Date: Mon, 23 Dec 2019 11:37:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 0/2] Add support for Solidrun CEX7 platforms
Message-ID: <20191223033741.GF11523@dragon>
References: <20191216124042.GH25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216124042.GH25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_193804_447393_0F4C9B4C 
X-CRM114-Status: GOOD (  11.66  )
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
 Jon Nettleton <jon@solid-run.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 12:40:42PM +0000, Russell King - ARM Linux admin wrote:
> Hi,
> 
> This series adds support for the Solidrun Clearfog CX and Honeycomb
> platforms that various developers have access to.
> 
> v2: fix review comments.
> 
>  arch/arm64/boot/dts/freescale/Makefile             |   2 +
>  .../arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi | 127 +++++++++++++++++++++
>  .../boot/dts/freescale/fsl-lx2160a-clearfog-cx.dts |  15 +++
>  .../dts/freescale/fsl-lx2160a-clearfog-itx.dtsi    |  57 +++++++++
>  .../boot/dts/freescale/fsl-lx2160a-honeycomb.dts   |  15 +++
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  10 ++
>  6 files changed, 226 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-cx.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-lx2160a-honeycomb.dts

I applied both patches.  Please send a follow-up patch to document new
board compatibles.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
