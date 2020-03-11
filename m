Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0D81810F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYKhqUttKFNRbezW4I6TURxly3AL7vKzKy7Cmu2+7UI=; b=kqI3ENPlx+HyRo
	GHX7wbpzZwKBYV1ZS67v5ab9qm1Jol32pHzpxwK2nGrUX4SMyQ4ePCV/PfUicVeDOQfw1xuAo+8ZY
	AlKZC8UlLYV57NSnasB1s7srBzjKr72SgV5LbnUv9w3hkd5IL9cE9tCiIfgT4Fqk/py0dJDZLXCi+
	mV1WFX0xtun4xshXAPxq3vKmX/o9YMjbgOa2yJRYW04FsgS9C4gHPXHiM1JYOsUQ1wahsgGMoXE+x
	OOlNO82kLC1mHXEg2v67ZhZaF2ZxKSV/4UhS6r6WRegvbDxow5gAl8aGr8/qR+wN+mIGg+LOmoCIP
	xmJcqbIWSO7Sj5aeBetA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBv5e-0008SC-AV; Wed, 11 Mar 2020 06:43:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBv5X-0008Rc-RL
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:43:33 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EA7C21655;
 Wed, 11 Mar 2020 06:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583909011;
 bh=v3Kb+BE2jej1X8dtgFX8w+1zK9ac6+08Ps4La6EyeUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mTNZDK9xVIJKDweX9qVjLncu2FEeKgdVih0D6ZD8ogyGWuuGQjsK6SvRtE0ea5h5C
 GWlPD31eLZD1/gZagIjHLTFauIIgXIWZ/KYrvq/Fu5PI8I3CrRmljkMCYrXKUJwpgB
 7jOO8CJgSo4k4aNkeMjwrbqF69v9vQmmvrRMeVPs=
Date: Wed, 11 Mar 2020 14:43:20 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Subject: Re: [PATCH v2 2/6] ARM: dts: imx7s: add snvs clock to pwrkey
Message-ID: <20200311064320.GF29269@dragon>
References: <20200225161201.1975-1-git@andred.net>
 <20200225161201.1975-2-git@andred.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225161201.1975-2-git@andred.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_234331_905170_BC6E6416 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-input@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 04:11:57PM +0000, Andr=E9 Draszik wrote:
> On i.MX7, the SNVS requires a clock. This is similar to the clock
> bound to the SNVS RTC node, but if the SNVS RTC driver isn't enabled,
> then SNVS doesn't work, and as such the pwrkey driver doesn't
> work (i.e. hangs the kernel, as the clock isn't enabled).
> =

> Also see commit ec2a844ef7c1
> ("ARM: dts: imx7s: add snvs rtc clock")
> for a similar fix.
> =

> Signed-off-by: Andr=E9 Draszik <git@andred.net>
> Acked-by: Rob Herring <robh@kernel.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
