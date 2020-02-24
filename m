Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E443E169F94
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 08:55:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zB4fYAuTgLxn7ptzKSyyP2+guq3Mou8o97leGu5Gqvg=; b=gzJbBhd/xQGE1l
	w0jeuTty3mj0Nu8T2f6gmXu6AaUoKuLCObTw4bhlDR4VZloet03leUA2vB1gMoKQxOCymdvSISeSl
	js46UoA67iqm0h8bnXwsDP9ib/lcOeTSY6Zs/w7MZ9mey3tUcUqF6O/8+/4Pfr6ndnT0TC581dAA8
	KvsvSVVowaxd0l52noIFC8jM3q4wCUdaGKAAjA/EK3FE/+AS4C6x59gDpXYlMSar4678opWGcml5u
	8nZ14uJx4Bx3fNNvnu18onRi5mwJy6APOYQS4tIGaSrb7VUEUuiDdzn5EDHjZ3WG4dWEHQ2GxHPmT
	Bf6ZwFxDt5RTHBRSr4Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j68aD-00047C-P4; Mon, 24 Feb 2020 07:55:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68a4-0003sk-MZ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 07:55:10 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01ED0206E2;
 Mon, 24 Feb 2020 07:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582530908;
 bh=sLHq/C+ADYQPzbcKchD17zBFD/RAFeYaBYz25/Cd+iI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CBb8ieRWuiHplAg8mlEHhySrDPGXK4OxZ/1m+vKBXw94Ggqse8kQYdfySHAMvF249
 Gq9qGVa99ptUtPu7hgLEmpiHE6Xq3++U7intUb3XyRZDSvuYd+uEI/ffvBRQw4v8cF
 KrJ+ryPBhyzgbtEy/A0mjkGty3ZWelnSOISLmqO0=
Date: Mon, 24 Feb 2020 15:55:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v3 0/8] arm64: dts: librem5-devkit: description updates
Message-ID: <20200224075500.GC27688@dragon>
References: <20200224062917.4895-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224062917.4895-1-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_235508_763476_A0488EF7 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 07:29:09AM +0100, Martin Kepplinger wrote:
> These are additions to the imx8mq-librem5-devkit devicetree description
> we are running for quite some time. All users should have them:
> 
> revision history
> ----------------
> v3: review by Show: newline / hyphen issues; squashed related ones.
>     thanks a lot.
> v2: review by Shawn and Guido: remove a battery description
>     add SoB tags, coding style fixes, squash and reorder audio
>     descritions, remove redundant and unneeded changes.
>     https://lore.kernel.org/linux-arm-kernel/20200218084942.4884-1-martin.kepplinger@puri.sm/
> v1: https://lore.kernel.org/linux-arm-kernel/20200205143003.28408-1-martin.kepplinger@puri.sm/
> 
> 
> Angus Ainslie (Purism) (7):
>   arm64: dts: librem5-devkit: enable sai2 and sai6 audio interface
>   arm64: dts: librem5-devkit: add the simcom 7100 modem and sgtl5000
>     audio codec
>   arm64: dts: librem5-devkit: allow modem to wake the system from
>     suspend
>   arm64: dts: librem5-devkit: add a vbus supply to usb0
>   arm64: dts: librem5-devkit: add the regulators for DVFS
>   arm64: dts: librem5-devkit: allow the redpine card to be removed
>   arm64: dts: librem5-devkit: increase the VBUS current in the kernel

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
