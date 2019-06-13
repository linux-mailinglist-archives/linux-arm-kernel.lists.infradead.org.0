Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCFF43209
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 02:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hXvz/hf/YT2LnLSH0PrpmmT6yuVgBbrN89bfVPrPYM=; b=b9e/37aNKFL2Jw
	FIMmWqYvHY4RxAe4E6eAIVS0X/ggsmoan7l2eFHbLYx0UDxFElAS/JvTY6dnRb0lZC/mnNae7C66l
	RMQaad7AoOQ9Tug4ygMxE6Y3hVzeq8TINR82gAkGlvN69puUeDjPGdCYuOOUlx9KV98jSpCZ1n5vm
	MS5erTWWHVmlPGy43aorzBC535CP6PArkAhSuOAX7GfrFN7RGmnh1uorDcvx+pDUJLZ4xKvziF3OY
	jX1KbM22Tou0gJNVbddBOlQRX9hPQgeKP3/zZcQ5jlwl6CW0AKBSi4vwUcv3tnHplUFkPe+TfVya3
	qgocW/30o8sXvyHHKjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbDuM-0004j4-GE; Thu, 13 Jun 2019 00:48:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbDu8-0004id-C0
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 00:47:49 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0644215EA;
 Thu, 13 Jun 2019 00:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560386868;
 bh=4lclOnf/sfAPyFXVi/HGPDJVKp6DvLHCXDKLDcqvQaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Apd1/9RvRe5RRMZS7XQ5mBXWsp+u6fbo99Qa+k24pfkJ/rDYjokzMyqi2R02tYu1U
 mgmuZuNYIIQgcl/+J3WTW0OGIJYhv4veu1KwtcdtxW3zcTFlr1GggxJDg5cBz95zlI
 xTfzNH3Q9tNXDAlBIzzqKKbubumC1q/twZiOPTBc=
Date: Thu, 13 Jun 2019 08:47:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH] ARM: dts: imx7ulp: add crypto support
Message-ID: <20190613004709.GB20747@dragon>
References: <20190606080255.25504-1-horia.geanta@nxp.com>
 <20190612103926.GE11086@dragon>
 <VI1PR0402MB3485A573518D60A573BA55C298EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <20190612130602.GH11086@dragon>
 <VI1PR0402MB348596BF52CE43B5D4CD534798EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <20190612132600.GI11086@dragon>
 <20190612135952.ds6zzh7ppahiuodd@gondor.apana.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612135952.ds6zzh7ppahiuodd@gondor.apana.org.au>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_174748_431391_8FC5012E 
X-CRM114-Status: GOOD (  10.96  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Aymen Sghaier <aymen.sghaier@nxp.com>, Horia Geanta <horia.geanta@nxp.com>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 09:59:52PM +0800, Herbert Xu wrote:
> On Wed, Jun 12, 2019 at 09:26:02PM +0800, Shawn Guo wrote:
> >
> > Yes, it happens from time to time depending on maintainer's style. I'm
> > fine with the DT changes going through other subsystem tree, if the
> > subsystem maintainer wants to and is willing to take the risk of merge
> > conflict between his tree and arm-soc tree.
> 
> I have no problems with potential merge conflicts.

Then feel free to take it:

Acked-by: Shawn Guo <shawnguo@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
