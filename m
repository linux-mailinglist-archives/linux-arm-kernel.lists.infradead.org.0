Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C94C138548
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 07:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+na3Iqbn23YwujhmoKyOiD9gYpveT4b/mMTupg5nPzs=; b=mzreN5UEet3mE/
	uqdsQSXsxfgQRUgIVcvXyPlu8Afo/k6djOp+KKsgDvcAH9THYzjtOl/kB4Vw6izqbbbnGa6zws+JU
	gNVwrmGENHZaJMgyahYr3kbznk/39lH6QNcki9zzaDni0DtRMQoLR7YCMW7FRUW08i8A5LI5t4a4f
	NuX4Lb1gJnqM9qa9aB9P/ioW6q8MT+voHIFK/mgIAZHnglOV0zqYZGQhirnaoMYDUI1PivF3iR8zF
	06vXNqJKRG3WJmKDQ9fcsbfZGEyAmKBOrlkmwqQpBaRDSkLXKuxzMObDVh54p9q4HZbeu7qkg6eb2
	hu2S5ejbU5frMmgjRGRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqWfm-0004IV-Jp; Sun, 12 Jan 2020 06:24:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqWfc-0004Hb-Bn
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 06:24:21 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2484720842;
 Sun, 12 Jan 2020 06:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578810259;
 bh=dA7Y+M1xkDoiyTBWHECvmy971XxNXYZ+AlF7WdltObY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ff5qBEpTpO4/M1KGlt2oOdQbkiMcOTVxyuE4Uawg5KmaJoNkrpkUirg/dOvcx87e/
 oULdsE6v98K2CWAUvaeUx4vSk/4xwG4VaJbnbIeOz/bu6kGX+E0fIC6Wq7qNObrH7j
 Gj16/tr489q4V1cL513W7T3AFs3+HPqzdNttvBuc=
Date: Sun, 12 Jan 2020 14:24:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH v7 0/5] ARM: dts: imx: Add GW59xx Gateworks specials
Message-ID: <20200112062407.GB27570@T480>
References: <20200108154424.15736-1-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108154424.15736-1-rjones@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_222420_424867_E3E8FB1E 
X-CRM114-Status: UNSURE (   9.44  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 07:44:19AM -0800, Robert Jones wrote:
> Robert Jones (4):
>   dt-bindings: arm: fsl: Add Gateworks Ventana i.MX6DL/Q compatibles
>   ARM: dts: imx: Add GW5907 board support
>   ARM: dts: imx: Add GW5913 board support
>   ARM: dts: imx: Add GW5912 board support
> 
> Tim Harvey (1):
>   ARM: dts: imx: Add GW5910 board support

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
