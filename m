Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A5E15D06B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4ky66gN0lVpuZjiglu0CG4hOzVFgU2YMflv6x4bQUI=; b=jBMQ9At1uOCd8v
	CvJSbtLZlub2IzBWw29lg/xWly6HV3R4Rh2dLsLSVKS6TgfA5nebONZX32dtWCw7FJhj7UFA0d1n6
	fEXQOQSqMID748bdY8fyxyifAXOAYjumqkcLNnxIwR3OL/t22W/JbDXnP3rP5WPwz1lI3d7nXFUea
	komQsVaqLw5i4pZWbDG9hHAbHoTtG2zUNzOj7mPKrfGMYYccndqF1wEXtkDnM0loAbnXlxEuZDVKN
	hYVrSzn9H4fhIow/yEqpEtvogm73gohJdPjJ+OEqS1k3ot0MOkkHk6aRoKskjGsJzWtFg4tNSyk3p
	U3QGnTzgDzOI076qh2TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RbO-0002HF-0j; Fri, 14 Feb 2020 03:25:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Rb9-0002Gb-4j
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:25:00 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF54A20661;
 Fri, 14 Feb 2020 03:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581650698;
 bh=C4d3u4P4SxRBpz+KVKAg2h2CnWcFdIXxufDHNWpDis8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V3jMcbHLiUA5WebMf+c5VVI5tNEilMYBPycXZIU9ui8l6Y4hykT/4zbxRH55Z7mQa
 w0p2kPxFbyGoy/NxfFgI8HGSEhL0z9aB10vhPHVm0+odzb8fDPFTZsDRvdRD6/UWzI
 6NKPYJDJ2+Mn5tqOguSDK+no3ceAjApbspvk5pbY=
Date: Fri, 14 Feb 2020 11:24:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH v3 05/12] ARM: dts: imx7d: cl-som-imx7: update pfuze3000
 max voltage
Message-ID: <20200214032449.GN22842@dragon>
References: <20200131083638.6118-1-git@andred.net>
 <20200131083638.6118-5-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131083638.6118-5-git@andred.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_192459_204699_2F80FBF6 
X-CRM114-Status: UNSURE (   9.05  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 08:36:31AM +0000, Andr=E9 Draszik wrote:
> The max voltage of SW1A is 3.3V on PF3000 as per
> http://cache.freescale.com/files/analog/doc/data_sheet/PF3000.pdf?fsrch=
=3D1&sr=3D1&pageNum=3D1
> =

> While at it, remove the unnecessary leading zero from
> the i2c address.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
