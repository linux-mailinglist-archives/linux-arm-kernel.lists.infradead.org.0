Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B9B6C502
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 04:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zu6tXpFG/fk2Fvx4bEPN4kgkNRwbrlzWLmSsb2c8Ihk=; b=J8bTPCbwvD+aFt
	k6ZDSyxI63696eKjIjrCO2ur/2ljTAPCNM52yDuVCL0IWG19OxiTEFJW7UFRpKVMcV9/vBvg791f1
	+mKubyoMXsGlKTZDf+lOe8uQfn52vnFvVObsXO2QK4cT+NoJef9rLkvOcRiQGHJgznEYYlrIWoIvW
	geFNXcTZXAbSXx6tV0twkfepLPSEQq8QRQ2qADgeGLXjj0gfrBfDc2383Dk5gTI8eTjYVQW1obHj/
	U6Lsnydm21aQRnzdMd+wawjhF3UfTJogBUMeA2PgEeSeM5cmUkYZdMlqybO11RrOYTxiK376iwSnX
	67DyS1JKjJ/5S+j4mcng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnwNL-0003jf-FG; Thu, 18 Jul 2019 02:42:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnwNB-0003jC-6Q
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 02:42:22 +0000
Received: from X250 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C9DC205F4;
 Thu, 18 Jul 2019 02:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563417740;
 bh=sjxuin9zTS4szxUyX8Q0ubzRlgU41diTfn7okIvvlkc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VG1DrduHwFM0tp6ajZDSCEp8z6g7EYUN7s7GURoz8uJRNBkcG+NAAZmFK1LwEMPRc
 2m3BkuDyWpreNzFAMsl3h5phmzJwBmZNQCytg73gRL+FFTyK89BaxJrc8hM3NC1pgE
 vwUBb7KKisIxy+S0RzBIrL+puo53mfkq5pcthwmc=
Date: Thu, 18 Jul 2019 10:42:08 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH 0/2] arm64: dts: imx8mq: Add DT node for the Mixel MIPI
 D-PHY
Message-ID: <20190718024207.GB11324@X250>
References: <cover.1561451144.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561451144.git.agx@sigxcpu.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_194221_255965_61FEFB5A 
X-CRM114-Status: UNSURE (   9.67  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pavel Machek <pavel@ucw.cz>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 10:27:19AM +0200, Guido G=FCnther wrote:
> Now that the driver is in linux-next as of 20190624 let's have a DT node
> for the i.MX8mq and enable it on the Librem 5 devkit.
> =

> Guido G=FCnther (2):
>   arm64: dts: imx8mq: Add MIPI D-PHY
>   arm64: dts: imx8mq-librem5: Enable MIPI D-PHY

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
