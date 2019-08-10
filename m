Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01BB88928
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 09:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDORzxJG06YWNXV4YItWSKRnYYJpPM78bxanq2mUYOY=; b=hlJ3/6hzbu7xS5
	yX8b+DNO4MPz9wDFepJGkNJejFnZVnvFS+ecXRKxXSqBwQpD4DkUMb7tboOyAsvvT5FVA2b+XaMyK
	6RPJn+6dQxrY2qc/BuY3KZ6JVBWG0ZP2GSIPZu8kqWQQWSxKD+nq21cP9WdBgjCsaNB3tP/0cwSP3
	N9UCcBS/C/1DWThiTF5++vfq5O6CQGCxuZFZuq+YIjYT0TVQz1195XVAt6qBP1Gdh0Kgvl7Py/19F
	aEq6DdaJiUpW1GQMJUlScfiCdIus7US9NlqBbN7TO5cGB5A+TfUUaQmGWnJAgarAuphM5IXkizHCL
	1KCAvWWRQH9ytwvvGqww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwLoV-0001fX-LB; Sat, 10 Aug 2019 07:29:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwLoG-0001ek-D1; Sat, 10 Aug 2019 07:29:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8F5A208C3;
 Sat, 10 Aug 2019 07:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565422143;
 bh=6VbgVATIK8gQ19RGol0s4sZQa5UMwCh4OTfTrF86+S8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lBqrC7ohyxzl6vsNis9zlpMAhEi70L2WIqFNi8DDBsBBNwByj5leAHxmTIVNndq9s
 TmKlDe4pOaS0AZ1mw/6SXmBx+J4FF6/e2v1l5HTChKEx5JJo8ey/k96tf5JfLLG90A
 9Xpmz9DaBhJLkh1c//sGGMllxdkZ23lOJlyBP2UE=
Date: Sat, 10 Aug 2019 09:29:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 00/16] ARM: remove ks8695 and w90x900 platforms
Message-ID: <20190810072900.GA16359@kroah.com>
References: <20190809202749.742267-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809202749.742267-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_002904_465984_D3FCEDE4 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, netdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-fbdev@vger.kernel.org,
 "Wanzongshun \(Vincent\)" <wanzongshun@huawei.com>, linux-spi@vger.kernel.org,
 linux-gpio@vger.kernel.org, soc@kernel.org, Greg Ungerer <gerg@kernel.org>,
 linux-mtd@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 10:27:28PM +0200, Arnd Bergmann wrote:
> As discussed previously, these two ARM platforms have no
> known remaining users, let's remove them completely.
> 
> Subsystem maintainers: feel free to take the driver removals
> through your respective trees, they are all independent of
> one another. We can merge any remaining patches through the
> soc tree.

Serial and USB host controller driver patches applied, thanks!

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
