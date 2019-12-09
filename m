Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276AB116768
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 08:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RofUR13uUo6IOwj1+OjWCfH/LHB9oGMx7O+x0cJY0pk=; b=DNLkVeewHtVhxl
	drYa9yCQB3ILrRwgt9mk1YbTRIGGbvQ1Tn6YdWhuv3vbv5H6L1nW+57V9cXQFuXuyo/j2elPB5WG7
	oNj9C5KnkR446UABSZ2wbQBEKH5DGKk7gyhlYVnGg4gpGNKuCQC4CvbBkNcmEudY+U7EWEXIWYa7g
	CQnEInlXRE+ESWVUo+kiCq3lfjIHTWvi4E/nAj+QJcN8FKcaIKDiC8XAM5N7bxP14GVbqPV5YCJhb
	thtMqRQ5EbDjBBMHDL9i3Ii08JbRATYb2CKz/MzdT7zNvFF45CsBsiSiD5KY5uL+vstuxo7VMDG5+
	X2B/iVezK34XhWzB3Vgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieDEu-0001kQ-6U; Mon, 09 Dec 2019 07:13:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieDEj-0001k4-Dz
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 07:13:42 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE59D206D3;
 Mon,  9 Dec 2019 07:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575875620;
 bh=Ls1BxSGCCmrksG+dUOE+ytDExKsdaPUzeME+nCny69U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZKnEyEm9bTWvnOemkZIRhnikeZmDKsXl91uW7hVFn4q6spe5XS8lGQLevM8RZKei+
 wFTMdWu+b+NLyJOVmHzPf480OFVudWtoHPL+SE82N1Hl45fm4JHWIBCwSr8ByKTnyT
 2v6J9nYc15iILrvZSzjZve0Yn560bCRc0VB0MDAI=
Date: Mon, 9 Dec 2019 15:13:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: imx8mq: Add eLCDIF controller
Message-ID: <20191209071317.GE3365@dragon>
References: <cover.1574693313.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1574693313.git.agx@sigxcpu.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_231341_497969_231AC72B 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 03:50:05PM +0100, Guido G=FCnther wrote:
> With some minimal support on imx8mq we might as well add it to the DT
> =

> Changes from v1:
> - Per review comments by Fabio Estevam
>   - Document compatible
>   - use lcd-controller instead of lcdif as node name
> - Add Reviewed-by: from Fabio Estevam, thanks!
> =

> Guido G=FCnther (2):
>   dt-bindings: mxsfb: Add compatible for iMX8MQ
>   arm64: dts: imx8mq: Add eLCDIF controller

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
