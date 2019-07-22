Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB336F9B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBn+sAMNjRudXT+YhGqYxbM5DgiqQd87a+ngb4jlgok=; b=iyvXcHp6Gs+Pz2
	lSHoyfRwUJmPXYDyse3YTqT+QJON/FMm2CryzYIvZIeW059YuXe8+U4tAtPZAgpCR+w6iGze/cHpk
	pJcTXc0ckzMEIYDdBrD1lna21/zK9E98Ph7rn2sFLIhYXr1N23Dzyoj5KITH6q4bI3l7xkO6r6tHN
	ERsrrGApJu24uVea5ku/9Bnl7MYU/Qip3YSjo01yWqDFrrC7xJSGJFfOU2KI2zXbGVxRgfIqKffrg
	3dgiwNHbDafERLEZbPZ68XHZ3Z/8MiQ7czIvWFMLkYX0n4eO2AGHtjJTUQhsmA3gXquvy4Xm1bmnX
	adBZ5G4t4p2UYJsKVSdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpS9y-0004FW-Qe; Mon, 22 Jul 2019 06:50:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpS9i-0004F9-A5
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:50:43 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65A4D21F26;
 Mon, 22 Jul 2019 06:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563778242;
 bh=pdUfzx8QLb9VxjOC+DQxRiLfZuFPZP3d6X3qO1BDZAo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CrBufTEDemi49FXBz31DSj3+x3L/IaSN2T9RCxuAzbTGwLKiM3S310IiOrVLltGI2
 6dNsGZoLSrHhG50VuDyn22I8v+pWdyeEvC2sXUTGIQfsz/pTxDvjhcciQUujRsE8YY
 rvieKbBIKf2ylY/VQk9TI/nRxPUJQeO0gezWqJxk=
Date: Mon, 22 Jul 2019 14:50:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix clock frequency property name
 of I2C buses
Message-ID: <20190722065013.GC3738@dragon>
References: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_235042_375278_DEAFA752 
X-CRM114-Status: UNSURE (   6.93  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 01:00:53PM +0200, S=E9bastien Szymanski wrote:
> A few boards set clock frequency of their I2C buses with
> "clock_frequency" property. The right property is "clock-frequency".
> =

> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
