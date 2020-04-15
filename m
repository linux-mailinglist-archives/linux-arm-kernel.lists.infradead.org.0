Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE261AA9F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrSYY70/8yzZKES1FRs4EOZZyi3YXPMb5s69WSwoTnc=; b=eQFZij1WHC68M9
	MXpYdNpcSEhtFsYarz5jewA7rY5THBgQGiHPCco6Yu5WErjdFYQyB6JcnuonzksTtjXmuS9lMaI45
	2kVOx5ZjAmaWqQ2Bxse+WNrZMRAylRwwg8JwrYmW4ew5bijqPT4QYrEgYdPuonW9Nk/qoZvNCTk3i
	dplHGo7Zq64bhC/Opt7etA21XZ52uLyJoOsjLBo23dXnB4NECSA39t5Yn4UuadoknGBlZ4N0nIdqM
	S1zBa5nGhl9pPzlzxOvjUdFCYAtEtVgy0pwqSYy3+lBZovbkPsAdsiZv8xZ/y5nHiqDwCxLKWc53t
	Bbmox0GYG0MnmNZQRMoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOj4t-0000cn-Ph; Wed, 15 Apr 2020 14:31:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOj4k-0000bu-Qj
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:31:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOj4i-0001Jj-5x; Wed, 15 Apr 2020 16:31:36 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOj4f-0000B7-TU; Wed, 15 Apr 2020 16:31:33 +0200
Date: Wed, 15 Apr 2020 16:31:33 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] i2c: drivers: Avoid unnecessary check in efm32_i2c_probe()
Message-ID: <20200415143133.qwbes5whbqx5jf2j@pengutronix.de>
References: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415140640.19948-1-tangbin@cmss.chinamobile.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_073138_864892_F7C76957 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>, o.rempel@pengutronix.de,
 linux-i2c@vger.kernel.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Apr 15, 2020 at 10:06:40PM +0800, Tang Bin wrote:
> The function efm32_i2c_probe() is only called with an
> openfirmware platform device.Therefore there is no need
> to check that it has an openfirmware node.
> =

> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>

Same things apply as in the previous patch. (space after punctuation,
Sob of sender should be last)

> ---
>  drivers/i2c/busses/i2c-efm32.c | 3 ---
>  1 file changed, 3 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-efm32.c b/drivers/i2c/busses/i2c-efm3=
2.c
> index 4de31fae7..4786ef6b2 100644
> --- a/drivers/i2c/busses/i2c-efm32.c
> +++ b/drivers/i2c/busses/i2c-efm32.c
> @@ -312,9 +312,6 @@ static int efm32_i2c_probe(struct platform_device *pd=
ev)
>  	int ret;
>  	u32 clkdiv;
>  =

> -	if (!np)
> -		return -EINVAL;
> -

I don't care much about this change. While the statement that this
driver is only instantiated on dt platforms is probably right,
explicitly checking for it might still prevent surprises later, serves
as explicit statement for the driver reader that non-dt isn't supposed
to work and given that the check is cheap I tend slightly to just keep
it.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
