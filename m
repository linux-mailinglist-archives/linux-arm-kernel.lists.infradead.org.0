Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B79080542
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shH/gUG0hyAjZ0xwnxVdzM0DKiJF0wTY5+tLsscg+/w=; b=cBJY7gDVfYIn/J
	0oE7XnoA/u5Vtx9W1+yNhBwfBSKYdb+49SbuohqIcfMdI+sHwlhXHmtDGOY9e/S2ZMtJZGgVL1Mpp
	/KJwr9bjowSyemIIxLLJuEH/2QcbkJaRj46Ym/MvEUJjv5KGbW6mchGRln7kPWGq1tygnzIgIY5HD
	XGe94nK2f8rSemZbcHk7nUvKXhI91hsYQEvS7/o7PKVXtfz4Tc9YaOok9SlWzveMR6q9M9FWjaQeL
	JkBqtq3JjP4Sudk9HdcyLRfZi5cQQ+gVykmMXYnB8fhYjgRRHC1ZvxQHS9CrRzqMq4ZEtA2KKETHZ
	Wk8VAVoYt6uL8P4iF67A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpGR-0003rp-HS; Sat, 03 Aug 2019 08:19:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpGH-0003rV-8d
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:19:34 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69E3321726;
 Sat,  3 Aug 2019 08:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564820372;
 bh=Gtho0y2y4kcYJkq5zuuB2XKU3XBkmN3WkgaKpIxlFnI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lFmVX0W1bekQgqkuGJ+9uXCtMYsUKgvpdq6J+YeNsLRYGUAoW+KaOdsoI6P63x5s/
 Vdyt+8XtxjU/giM2x71AXfEgczT2yJlCv+Ecs7Y4fO5cUnmMhlxWRVgO2oFkjgwvH3
 fJk4HeiL45H0EJKFBJUeBLPgUlOG+vwLJq0MYhVg=
Date: Sat, 3 Aug 2019 10:19:25 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH 1/2] bus: imx-weim: optionally enable burst clock mode
Message-ID: <20190803081924.GE8870@X250.getinternet.no>
References: <20190712204316.16783-1-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712204316.16783-1-TheSven73@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_011933_329101_3FAE33F1 
X-CRM114-Status: UNSURE (   8.76  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 04:43:15PM -0400, Sven Van Asbroeck wrote:
> To enable burst clock mode, add the fsl,burst-clk-enable
> property to the weim bus's devicetree node.
> 
> Example:
> weim: weim@21b8000 {
> 	compatible = "fsl,imx6q-weim";
> 	reg = <0x021b8000 0x4000>;
> 	clocks = <&clks 196>;
> 	#address-cells = <2>;
> 	#size-cells = <1>;
> 	ranges = <0 0 0x08000000 0x08000000>;
> 	fsl,weim-cs-gpr = <&gpr>;
> 	fsl,burst-clk-enable;
> 
> 	client-device@0,0 {
> 		compatible = "something";
> 		reg = <0 0 0x02000000>;
> 		#address-cells = <1>;
> 		#size-cells = <1>;
> 		bank-width = <2>;
> 		fsl,weim-cs-timing = <0x00620081 0x00000001 0x1c022000
> 				0x0000c000 0x1404a38e 0x00000000>;
> 	};
> };
> 
> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
