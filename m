Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE8A18127E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zgk6McDIMXhRzMEiBkK5jDFig6Avsv3yVcon6lPP7s=; b=UKgye81uhzLRGh
	jg0CG1g3Zv/McvZMEJW4G79DCgsaZJ+M8j0DQNKBPcR9v34YIsYdDQnnJJ0FTR5G3GB8eWV/CkAns
	n8qZIA7ZwlhGYdLyhdN8D4aRkKXQUqQSVkku3g7pz0t+twvFXP/9/hvpq1cbPH5i0L18fNQ2elvXA
	nN6WFjyCYyXS8pUH8IuIYLjbw6bdXOuDJFAyyEdXONsPzT1jwCVOXOUZh3Nne+Nh0m6iGkNlPjFHm
	oMgX3YF/5g02UVGC52fySiEtw5Qet4UmiWnglU9g7bWqY3j5ShYXt46AoPVUJa8KwFu/v+laS5O6S
	ObPntvw5wL429i237qwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwHo-0004ln-EU; Wed, 11 Mar 2020 08:00:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwHV-0004lC-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:59:59 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B394220873;
 Wed, 11 Mar 2020 07:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583913597;
 bh=01KKvpVC8TI7EECmHnPs6+Z8JXYVklG4uQqeeSbTFPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJEiS1V+nVRZfPXZ+9M+aONnNVs9hc4PWRH5p31hmWWFYzxOZhxePFOufX7n3Gqgo
 m+YkY6FnufHVSj2Y18GoEHaMPay6tUgkPnDpq1EyAUM9+yiejiX6TKWiK36N4kfVtu
 kscH7MGAXTVp6LGEKUG1nKDzW1n9TUIlTsD2CVUk=
Date: Wed, 11 Mar 2020 15:59:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v4 0/8] arm64: dts: librem5-devkit: description updates
Message-ID: <20200311075949.GV29269@dragon>
References: <20200227131733.4228-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227131733.4228-1-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_005957_912523_100DD3A3 
X-CRM114-Status: GOOD (  13.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 02:17:25PM +0100, Martin Kepplinger wrote:
> 
> Shawn, I included Fabio's feedback despite you've taken the changes already.
> I don't know how "far out there" they are already, but in case you want to
> rebase / force-push this again, here is v4: It basically only adds one Fixes
> tag.
> 
> 
> These are additions to the imx8mq-librem5-devkit devicetree description
> we are running for quite some time. All users should have them:
> 
> revision history
> ----------------
> v4: review by Fabio: add Fixes tag and reorder a bit. thanks.
> v3: review by Shawn: newline / hyphen issues; squashed related ones.
>     thanks a lot.
>     https://lore.kernel.org/linux-arm-kernel/20200224062917.4895-1-martin.kepplinger@puri.sm/
> v2: review by Shawn and Guido: remove a battery description
>     add SoB tags, coding style fixes, squash and reorder audio
>     descritions, remove redundant and unneeded changes.
>     https://lore.kernel.org/linux-arm-kernel/20200218084942.4884-1-martin.kepplinger@puri.sm/
> v1: https://lore.kernel.org/linux-arm-kernel/20200205143003.28408-1-martin.kepplinger@puri.sm/
> 
> 
> Angus Ainslie (Purism) (7):
>   arm64: dts: librem5-devkit: add a vbus supply to usb0
>   arm64: dts: librem5-devkit: add the sgtl5000 i2c audio codec
>   arm64: dts: librem5-devkit: add the simcom 7100 modem and audio
>   arm64: dts: librem5-devkit: allow modem to wake the system from
>     suspend
>   arm64: dts: librem5-devkit: add the regulators for DVFS
>   arm64: dts: librem5-devkit: allow the redpine card to be removed
>   arm64: dts: librem5-devkit: increase the VBUS current in the kernel

Replace v3 with this version, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
