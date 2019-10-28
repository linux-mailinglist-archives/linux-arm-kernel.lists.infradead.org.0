Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E0BE723F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:01:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVmmuxTl0c3MTLMc+pQWIOwUGonLgr6RjbTLHqjbIzQ=; b=mxstPvRRldzhav
	KMJjgi1V3U4tErW9jhYDsiakEqC/O3V2vfBTg0vxLf0c9E/4kr3hzHHczwv2Vp+n10dnUVKkcpFRo
	Vnt/rPR2nqwcy/1hp+97BwdBHpvjCh3KAi4Olv8cwKdFaeAv6sFvieB8fxSY/ZR4Z6AhN26Nfo7pr
	9iTg6HPgHJTeQb5kbsTmPZylakaTQSBvbKZvPvisbiI9OnabLiEphAXfIT1VEnJJ3qct/4dIbEjZf
	P7G0CeQ54xKoexRIGuwjewi2dw4at2bBivDQ2ru6dOE+yPxOh4J1rKy14Sj6A1ToeXq6ReFCU4/Bz
	1kZ4pFURE0W3wXOcicHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP4dm-00027Q-Ko; Mon, 28 Oct 2019 13:00:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP4de-00026S-5R
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:00:51 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iP4dN-0003D8-Tx; Mon, 28 Oct 2019 14:00:33 +0100
Message-ID: <7bbd6c77117d2391f6669a9eb958730717ea295c.camel@pengutronix.de>
Subject: Re: [PATCH v3 1/4] crypto: Add Allwinner sun8i-ss cryptographic
 offloader
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Corentin Labbe <clabbe.montjoie@gmail.com>, davem@davemloft.net, 
 herbert@gondor.apana.org.au, mark.rutland@arm.com, mripard@kernel.org, 
 robh+dt@kernel.org, wens@csie.org
Date: Mon, 28 Oct 2019 14:00:28 +0100
In-Reply-To: <20191025185128.24068-2-clabbe.montjoie@gmail.com>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
 <20191025185128.24068-2-clabbe.montjoie@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_060050_205321_81AE1076 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Corentin,

On Fri, 2019-10-25 at 20:51 +0200, Corentin Labbe wrote:
> The Security System is an hardware cryptographic offloader present
> on Allwinner SoCs A80 and A83T.
> It is different from the previous sun4i-ss.
> 
> This driver supports AES cipher in CBC and ECB mode.
> 
> Acked-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
[...]
> +static int sun8i_ss_probe(struct platform_device *pdev)
> +{
> +	struct sun8i_ss_dev *ss;
> +	int err, irq;
> +	u32 v;
> +
> +	ss = devm_kzalloc(&pdev->dev, sizeof(*ss), GFP_KERNEL);
> +	if (!ss)
> +		return -ENOMEM;
[...]
> +
> +	ss->reset = devm_reset_control_get(&pdev->dev, NULL);

It looks like this driver could use devm_reset_control_get_shared() to
get a (clk-like) refcounted reset control. Otherwise, please use
devm_reset_control_get_exclusive() instead of devm_reset_control_get().

See the kerneldoc comment for reset_control_get_shared() for details.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
