Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA07A74A49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cy8+KD4bjbvf1M1WXrjEOCXpIQfXnpz4htPbZhgk3pI=; b=tjoTdXzUPj4E7D
	aGRCWYIB8SuD8BkibsCzAjssgMLgmUCQil0h/hFr3IDpfmcycj3EAZq9gmolxyZh20heCiOJIpBft
	GMSfLhO1bMV7bRJ8PbGhBJJMUz8+7nNthacDMTcRY/pmWKWEwFraS7vlXC9i6RktneaUeYoS3wu8f
	zE6aH3xcB643YuXLNu5pxXEj5y91pWMD18vd8VhA4/8MqEBxNKZLMLzOVFU60eWZkaspTATo+/PhR
	r8gyDCkES46KvO073tjsyXFM+ZBt4f5VlyKyQtLNQvXsgDkkOY3YtZTxiltI7cmQ7BXi/C5xjoEmT
	XUbZsgv7v3WjPcc/3tfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaM5-0005RX-17; Thu, 25 Jul 2019 09:48:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqaLq-0005Qw-8a; Thu, 25 Jul 2019 09:47:55 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AB9A2190F;
 Thu, 25 Jul 2019 09:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564048073;
 bh=MhJw4d4ewEjprJObjjCY8FP2AVv98yCru+fqqnG/PHY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t6o12Ytv1Exhs1I28zrnl74wKI6nj20dIk4ddtdSkBZj82Q3hbBIzpXiEN2p9hcr8
 4Lf6Kc3PtesJ7+rw9u0xR8M+zkG9aE6KRJv2iGAfKtndAT+rrAHXAc7x5xJaJpDqPO
 taGI+2++x+7/eT/mcJJohNw9CUWwtKkrpgqf4mr8=
Date: Thu, 25 Jul 2019 11:47:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Changqi Hu <changqi.hu@mediatek.com>
Subject: Re: [PATCH v3] serial: 8250-mtk: modify mtk uart power and clock
 management
Message-ID: <20190725094751.GB31845@kroah.com>
References: <1563505182-2408-1-git-send-email-changqi.hu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563505182-2408-1-git-send-email-changqi.hu@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_024754_318776_1968BE0C 
X-CRM114-Status: UNSURE (   9.66  )
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
Cc: Peter Shih <pihsun@chromium.org>, srv_heupstream@mediatek.com,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 10:59:42AM +0800, Changqi Hu wrote:
> modify mtk uart runtime interface, add uart clock use count.
> merge patch v1 and patch v2 together.
> 
> Signed-off-by: Changqi Hu <changqi.hu@mediatek.com>
> ---
>  drivers/tty/serial/8250/8250_mtk.c | 50 ++++++++++++++++++++++++--------------
>  1 file changed, 32 insertions(+), 18 deletions(-)

Always describe what changed from the previous versions in the area
below the --- line.

Also, your changelog needs a lot more work.  Please read the section
entitled "The canonical patch format" in the kernel file,
Documentation/SubmittingPatches for a description of how to do this.

thanks,

greg k-h's patch email bot

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
