Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB887D519
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 07:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt30MAlhyDSlr8chOAsemu3tdb0dy78plsGbA4b5rqQ=; b=Cn1tXYiFzzNm3z
	ncWK1YOn9l122O/fKyKV8Gf9GKQkpp7OJRYrDI+3vfFXkNy23aVQ20vM73UqHT89llBNjtHXxv5ww
	RPyd7Yb3jbhekMz27uwM5KOkXpxTt+WSx1bZ3f+K3rL3I++ri99HBO1XlNB8/3H1N2xAhcLAw+Ep7
	/DKQBS9xhoXFufLcfnvYUBCSRTJ3gi/8RxvK68Y/yd5NNts7Lej2lEhDZx1SQn6hugjJ/0tDXGXpv
	yCl+twf4Sp7gdE9qDeSxG4IeSeb4azGvjOGCJjP0R1ZENd7XZjFKG5f8lHrcwpqx1VaRWVFMx661B
	fQnBoSaMB+lv6hQO4JcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht46V-0002We-0I; Thu, 01 Aug 2019 05:58:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht46O-0002WC-Ks
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 05:58:13 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C931206A2;
 Thu,  1 Aug 2019 05:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564639092;
 bh=18M1+P9KesdsimSQfSqq898kk6BSKJDA151IrpFkfuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IhuIctS7MqfUiQKncJHIjrxZSF+/Dx0klY386/15CcNttSPWK/WXc16jf9+HVeMTG
 DUuwqZp4ieY7O1fs2S6Qg8S2JJ8fIE0vcE0xmzV3JU6znCfn1ZqVWviIJeyISiAgVn
 JXI5g2aEP0Vx7p3kRieznWXbKV8+Dekxfd4y1660=
Date: Thu, 1 Aug 2019 07:58:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 01/14] usb: ohci-nxp: enable compile-testing
Message-ID: <20190801055809.GA24607@kroah.com>
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-2-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731195713.3150463-2-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_225812_710954_272E25B2 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-usb@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Vladimir Zapolskiy <vz@mleia.com>,
 linux-gpio@vger.kernel.org, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 09:56:43PM +0200, Arnd Bergmann wrote:
> The driver hardcodes a hardware I/O address the way one should
> generally not do, and this prevents both compile-testing, and
> moving the platform to CONFIG_ARCH_MULTIPLATFORM.
> 
> Change the code to be independent of the machine headers
> to allow those two. Removing the hardcoded address would
> be hard and is not necessary, so leave that in place for now.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/usb/host/Kconfig    |  3 ++-
>  drivers/usb/host/ohci-nxp.c | 25 ++++++++++++++++++-------
>  2 files changed, 20 insertions(+), 8 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
