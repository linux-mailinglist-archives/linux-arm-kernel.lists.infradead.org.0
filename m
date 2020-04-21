Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B6A1B1D45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 06:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YP4KmCUbeJJoay2mpm6JNFjtwdMcF90Tx6V1kM56WJM=; b=EjSiUObp8y+kd/
	iBio8hvHbfW0WIOJX0vP0uV+4nAUJpg5hIzOoWuF8Bs6EgqIGUgXuneYC+DKv8B6GWJqHBfP2nE4h
	tsPjXsTHHqKuwEKTgfqtv+eJJQ2dgBpdPMaq8m12ZX1/RFH1qR5Z/I5ocUNOFjIhbEyV1wXGG0od0
	9E9WFUsJwwD0tG7bYQSZRgoTlKMDFHutod15CK2vurqMwR9pCMaQkfcCSd8LQw1EE7HKsHkpmnHCW
	sSqmx8+7CtC6zB1lK3zD674xHYfVqmdJhHjOYUJ3epauet1lzbTeXBo+Kjq/dEK49Ov33ejuX8obo
	y+/FgfvNAlR3DgzMsHDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQkEk-0006AZ-A5; Tue, 21 Apr 2020 04:10:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQkEP-0006A8-91
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 04:09:58 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3DDF206CD;
 Tue, 21 Apr 2020 04:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587442197;
 bh=vVgjWSj4t0zjuBGj/5XSxzINm4DTHP8FETFc8y1UveM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ExykRY9mHe/Aln2NddYbWVwcTzDJAWsP8CWtrzAF7RdmLiUkyimHD81+at419FqWT
 nX5UG5BEgozEhrEZotdBx0T+xAcNlIskvj0zdmPubCepG6bGJmgUYF0/mYkjG6foHC
 dVoaTnBdIeebASzJKpw5Nn9ZfNuEmduB7nEKKbx0=
Date: Tue, 21 Apr 2020 12:09:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v3 2/5] ARM: dts: add Protonic PRTI6Q board
Message-ID: <20200421040944.GF8571@dragon>
References: <20200324110432.25062-1-o.rempel@pengutronix.de>
 <20200324110432.25062-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324110432.25062-3-o.rempel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_210957_333870_77E8FDFE 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 12:04:29PM +0100, Oleksij Rempel wrote:
> Protonic PRTI6Q is a development board and a base class for different
> specific customer application boards based on the i.MX6 family of SoCs,
> developed by Protonic Holland.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +

Have bindings changes (all Protonic compatibles) in a separate patch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
