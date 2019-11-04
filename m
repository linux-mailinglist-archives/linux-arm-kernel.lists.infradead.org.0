Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4852EDA00
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ovsCASdpFE/p6YHxxVL8HDAjbXLu9pOW1YwXou/m+E=; b=lucRnYxr2fAOGW
	lqD67sE6O+IQKBgHVjcaAakAQnvUcYDmzCU3N73+kqvCMS/TrYNT/ZwzBStNYNIMO1EKZrVjpQttK
	N3vkiFs7s3zFDb7Lm7DkK0U+9il40QIoW62Zatu/LY/iDNdkxa4905eNBUtQtOsFYSUsY0t/70eSE
	gVZcJD4JSCnsQ8XSoYkuq6HLhlFW15vINs0QuXS8Y9dYibycFgm6cZ+bRLCDnjRxOTlZCbxMNVPF5
	+bcadBB6dDJuTKQLBzu9UblC/NCKjb6GHoz2Zi2IE4RBXcCrDcUK6K0UCRrqb3Ioleg4GnCs+I1Nb
	goA3eM2GlZoeMNwsvsGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWxm-0004bh-EY; Mon, 04 Nov 2019 07:39:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWxe-0004bE-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:39:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFBB2205C9;
 Mon,  4 Nov 2019 07:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572853178;
 bh=0btWQZ/A2BUDNkIHPwbXhBS2yMK898sYA7OTvZ/A/kM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eP4zRw3aA67jEZP2e1660qzvfePuKZvb1xI9F6E/uHXRsxN+Lsi3Mofnfo2oStjmQ
 b2bfTIei9WEZxjGb7i1aLsxUFvg1NsS323Lgui0Xr+5PfZl3vYQjrF7S2lqOUJrpLb
 5pORMKu6PSNjmYOZdL4mVa4Cy6HQLVUQeF6nnpzk=
Date: Mon, 4 Nov 2019 08:39:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2 2/7] mac80211: Use debugfs_create_xul() helper
Message-ID: <20191104073935.GA1292321@kroah.com>
References: <20191025094130.26033-1-geert+renesas@glider.be>
 <20191025094130.26033-3-geert+renesas@glider.be>
 <69baa44c928ae7f6ca1f4631b7beb6b2c2b1c033.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69baa44c928ae7f6ca1f4631b7beb6b2c2b1c033.camel@sipsolutions.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_233938_964572_363292E2 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Jonathan Corbet <corbet@lwn.net>,
 linux-mmc@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, netdev@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 08:28:57AM +0100, Johannes Berg wrote:
> On Fri, 2019-10-25 at 11:41 +0200, Geert Uytterhoeven wrote:
> > Use the new debugfs_create_xul() helper instead of open-coding the same
> > operation.
> > 
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Sorry Greg, this slipped through on my side.
> 
> Acked-by: Johannes Berg <johannes@sipsolutions.net>
> 
> Do you prefer to take this to your tree still, or should I pick it up
> later once debugfs_create_xul() is available (to me)?

I can take it now, thanks!

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
