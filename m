Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 950107AEED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxOqf996wqJQ3AGNoHS1X58d70CPAtTi5wMNFDDo8H8=; b=hj9m8GsNfSwO0x
	yGm7De5YzWCX2kCysWjajJijT6GQaVguHpUZkIChoHBodtj8aHQS65VjqtdNX21F6JthAHN4lGV5T
	54Kh8mgxAz2eFdgkbT3paag2b58kGRmyEIXXGFunPkrFtLIgjd8TKFVJS13Q+3UjVNOcFw4rYNGka
	SOI2hd4RI3ilFlSlYftOqjdyn0ie/g5x7uMfUbCJa8NRB4EIkqTHvetiM3y4NmjS8cvnPgBX43NO5
	00Um0H2cyyjex7mNv84KA88k1eYQPybSwdJyXmxY8yQirOeSh9IASnNpbpNpzJoA4HaN8sAyfGPtU
	D7YFH58FDlcVoiXUzpXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVbO-00028F-Db; Tue, 30 Jul 2019 17:07:54 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVbE-00027D-6z
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:07:46 +0000
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net
 [88.168.111.231]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id B4165100003;
 Tue, 30 Jul 2019 17:07:27 +0000 (UTC)
Date: Mon, 29 Jul 2019 18:29:51 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH] ASoC: sun4i-i2s: Incorrect SR and WSS computation
Message-ID: <20190729162951.4fgwnciqqbkshnyg@flea.home>
References: <20190729152130.27955-1-codekipper@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729152130.27955-1-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_100744_411882_1B84CF15 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
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
Cc: wens@csie.org, broonie@kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, lgirdwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 05:21:30PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> The A64 audio codec uses the original I2S block but the SR and
> WSS computation currently assigned is for the newer block.
>
> Fixes: 619c15f7fac9 (ASoC: sun4i-i2s: Change SR and WSS computation)
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
