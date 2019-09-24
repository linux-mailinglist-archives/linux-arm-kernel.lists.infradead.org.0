Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B139CBD559
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 01:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MJMDXdXFeSQ1V4w4wtElrwMoZrYWwWjIu8IjQx8CJw=; b=ZcftFICrWfkvAO
	a5rgTKDHj0bFLm1ntI5L/MIqQTH3tzylj6fsNTj+n64U3ifDZC2ddOtPI3b4X47XoINEqhdbB5taO
	a/ECHTRQIhR7kHCl6VhpkfS+LM63J2oRF+4IqpeFarddek/0VuQ8RmSDePPj36/VvCX6SIe5L9lwG
	PjE0ijtjlJFoAOJw9JzVll+PTMmUy4iwgB2cfccaJexB6wphoelaxhKX97ohxS9a3fD8ec3uvxKbD
	FRozHlvfYTkdmeahvMIXAUCK58JAIDJQIPTViJJwbP2vqOqGK8gpMi3wKINVP8Nz0VcYv3g29HpXc
	F297KUM9YAlizOQRj3BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCtwZ-0000RG-5T; Tue, 24 Sep 2019 23:10:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCtwL-0000QQ-5n
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 23:09:50 +0000
Received: from X250 (unknown [12.206.46.62])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DF69207FD;
 Tue, 24 Sep 2019 23:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569366587;
 bh=7idn0CNbweKI57g3MD3qSJt3qBKkvSG9PWog91JNqN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Iw258NMAJx2PrwN5WOxTbO1UzFqCksPNuBLVrdFkL7ZVd9AY21abrma1sulKJ8I25
 CJU+Dqx7PDtZ5DIg+JbgDlB9zcXtKqm1p+Skk2qUtnfONQt6ocnmj8Y2/MoNAwSCks
 QeHN5VMJ7egDrhdSStPkHQMOu/iv6bxRFreigK9E=
Date: Tue, 24 Sep 2019 16:09:45 -0700
From: Shawn Guo <shawnguo@kernel.org>
To: Markus Kueffner <kueffner.markus@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-udoo: Add Pincfgs for OTG
Message-ID: <20190924230944.GA5271@X250>
References: <20190411065440.GB26817@dragon>
 <1555161577-1533-1-git-send-email-kueffner.markus@gmail.com>
 <20190415091150.GB18917@X250.skyworth_vap>
 <20190916130604.GA3140@ubuntu-buildhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916130604.GA3140@ubuntu-buildhost>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_160949_239448_C17A37C7 
X-CRM114-Status: GOOD (  13.82  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 01:06:04PM +0000, Markus Kueffner wrote:
> On Mon, Apr 15, 2019 at 05:11:51PM +0800, Shawn Guo wrote:
> > On Sat, Apr 13, 2019 at 03:19:36PM +0200, Markus Kueffner wrote:
> > > Add Pincfgs to enable the i.MX6's OTG feature for UDOO
> > > 
> > > Signed-off-by: Markus Kueffner <kueffner.markus@gmail.com>
> > 
> > Applied, thanks.
> 
> Hello, 
> 
> I was wondering when this might get merged into a release. 
> Is there anything else I need to fix?

I'm sorry, Markus.  There was something wrong on my side, and the patch
did not really get applied for 5.4. I just fixed it for the next
release.  Sorry about that!

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
