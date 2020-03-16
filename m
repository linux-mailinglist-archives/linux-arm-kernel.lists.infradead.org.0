Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCAA186119
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:01:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOXaTCcxqM8wlM7cbx/H9n97KmlFpVCKq2MZRK/Xbdg=; b=rjx/XpjNmnNw5I
	8Q4RIVInsu9r9Fa2L9s/FxuJJDxo22j2UkhA5JyjRkdUbD/A97Eh7o9oWOpDlnM8lDJtaR89GHa2z
	HIchcit7Mt9Q3SjgCJkm/PYq2hDN26hwJwOH3ShWFo0Ur+N8Au/GGpgddvCTjDtalAnNH3H3796GO
	iC6W5CJ0Ck6+FIZ3wQG565+zuhE5Lcxuj7U805x/3wtocJMyzLS47OOS1dCw5Hw6Qm/DlJ2k8uOuS
	gi6cx2oSuk7JZGZl0YsqPF1ax7InT8s9D5/1bpi8yO05jhfnlzY+BD+j4351mrXaI4qWbjK2RP2i9
	AtNbU7/4y6eSJN46pclg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDe7s-000305-1C; Mon, 16 Mar 2020 01:01:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDe7i-0002zg-FY
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:00:55 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 683B320674;
 Mon, 16 Mar 2020 01:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584320454;
 bh=vwbmiFkXhT29yY92m5jG+aJoI0W5PcYVnGOyHJB5uqQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zZi6W/GZfb9wlzYFO8WMNgpnrssxz4FOGaeFq8RIZ9wM5IPLWPcz3RQBiIeWUBZ9w
 f/1QSJPdmfJZfrl1qfCofZ28mfOgxIuzr4oawOGvwrJbe0SI+PmcRDiR5OKYDZNyb1
 qd+c0zphjxCa/BNNZglKjHiCvVMcozfPYhJs+PbU=
Date: Mon, 16 Mar 2020 09:00:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit support
Message-ID: <20200316010048.GH17221@dragon>
References: <20200309200807.34335-1-marex@denx.de>
 <6c8d69ff4f6e4c7f8a1642d97ddc7dec@dh-electronics.com>
 <3aaa5319-f815-5e69-ea44-632bd7a6a389@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3aaa5319-f815-5e69-ea44-632bd7a6a389@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_180054_541430_6A88AB8F 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 10:10:36PM +0100, Marek Vasut wrote:
> On 3/10/20 10:08 AM, Christoph Niedermaier wrote:
> > Hi Marek,
> 
> Hi,
> 
> > From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org] On Behalf Of Marek Vasut
> > Sent: Monday, March 9, 2020 9:08 PM
> > 
> >> +	display_bl: display-bl {
> >> +		compatible = "pwm-backlight";
> >> +		pwms = <&pwm1 0 50000 PWM_POLARITY_INVERTED>;
> >> +		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
> >> +		default-brightness-level = <8>;
> >> +		enable-gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
> >> +		status = "okay";
> >> +	};
> > ...
> >> +&pwm1 {
> >> +	pinctrl-names = "default";
> >> +	pinctrl-0 = <&pinctrl_pwm1>;
> >> +	status = "okay";
> >> +};
> > 
> > To get PWM_POLARITY_INVERTED, shouldn't we add the following line to pwm1:
> > #pwm-cells = <3>;
> 
> It seems some boards do set it, some do not, although that might also be
> a bug in the DT of those other board files or I'm reading it wrong.
> Let's see what the maintainers have to say.

The binding doc says we should have it.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
