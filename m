Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1087921D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ceo8R8LwZCiV+U+L3/qdxgD94Mrz+WsLCREo5Ng/J5M=; b=H1SqC1V1em0qEi
	zlAZJ8edgzGb9k63xd+fDpw2TAyhFahHoq5W5MtXmWF+LnwF8VwONu0P7zVgYRxnix35j2oRC/EW8
	+S3S/HdAa/D9Ud7vEpHLJixTXrgvZnKRk3xVUApEqdEr9Cmed4Pgrlveesne2zJ7dU1/op9i6nxOR
	rJ/cGkxvu2ij85ANxGzD0ix7ldr86PhQbC2yl3wCl+Rx4bupVRI9CR7G5GkePap3WnaVXUWdRLIIu
	VSeykQSZbAFVQRdlJvOp1D5HE9LSPxHWZ3xrr1i1o3YfD+iYi0EC+JrexfnB7lbwJWjef7ObSB3o7
	3TGm6F8LLnaANvHkBIXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfVD-0003hc-0S; Mon, 19 Aug 2019 11:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfV5-0003h6-9h
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:07:00 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 449C720844;
 Mon, 19 Aug 2019 11:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566212818;
 bh=FTtPghP4JhraCtk0Ky8Cw09VOBcrHb9sW6Gmu2Y9IbA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kcw+WeObE43jKg5SXlqiybEn0zF6OT4mLmNoQJl6smmrg721oVFWfcWYAMMlKDUui
 H6tKRaaWRYSmIOxjPPTS5kQE0XJgqpr/iRMi7efCwK5TDqdy+ecK7/3qJA5U+t5nsq
 5avA7J9KEAcbb9vOoOeHuh85ZbfxvAuOv8pyL9fo=
Date: Mon, 19 Aug 2019 13:06:46 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH v4 02/21] ARM: dts: imx7-colibri: disable HS400
Message-ID: <20190819110645.GL5999@X250>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
 <20190812142105.1995-3-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812142105.1995-3-philippe.schenker@toradex.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_040659_366043_84207B2F 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Michal =?utf-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 02:21:17PM +0000, Philippe Schenker wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Force HS200 by masking bit 63 of the SDHCI capability register.
> The i.MX ESDHC driver uses SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400. With
> that the stack checks bit 63 to descide whether HS400 is available.
> Using sdhci-caps-mask allows to mask bit 63. The stack then selects
> HS200 as operating mode.
> 
> This prevents rare communication errors with minimal effect on
> performance:
> 	sdhci-esdhc-imx 30b60000.usdhc: warning! HS400 strobe DLL
> 		status REF not lock!
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
