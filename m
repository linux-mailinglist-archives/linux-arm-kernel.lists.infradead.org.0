Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27541DF03D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxOcneOLY25glfMwbzYufXXKdZrAhWXPxqD6WWYKvq0=; b=tpQS0pL6yRyLiF
	bv2tj+aKtVQshmiTAo6JhIvcrYIMQWG3aptoNHyaMm2lryG4fn71789ZMPLfcaL1/UKCEKvCz32vY
	mc5x+iDM4ZDivmUTBa63KslCjqkns3cTWq3iek6Bi5Wq+hABqVwqq5afrkc/PgFANCUx/+QFkbk4f
	oIEgcjLMwhugY4h0KEwkQEq8p6NnZJry+dhDiClLjoeojpGF5BHoKybXqCWk9Z35lgI+cTDgMLavC
	q1ajf42yVkpODYV1zEBNkjqjAjY9CCXbQC/mkXXLMHkenCVgnqQ6kiGb8oJD+S2Rp3jnMKqvqV8fg
	J2Dd+Orl6VpNehULqNPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYwc-00027P-Jg; Mon, 21 Oct 2019 14:46:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYwS-00026m-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:45:53 +0000
Received: from localhost (unknown [107.87.137.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A29D12053B;
 Mon, 21 Oct 2019 14:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571669151;
 bh=zSxr6boC9XHsm0JY6dQGUP4Y+pfXYhmlbUslvFJagHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wzQU8e0ZUFNA8uAikS25qhU+PVVOE1nVLd8tB20kS4RhTnUBXXeHPWRWyrc6EfC/U
 3MxufZMwym9OBnJTJHOyQO6DC35w13zixXNgT34vkVW+/WGisLaRsfWiKq9PCWqjMn
 eR5n3fRA7Hjg+DR0PEPA/XiaRHmax8grcGZk3iAs=
Date: Mon, 21 Oct 2019 10:45:48 -0400
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 1/7] debugfs: Add debugfs_create_xul() for hexadecimal
 unsigned long
Message-ID: <20191021144548.GA41107@kroah.com>
References: <20191021143742.14487-1-geert+renesas@glider.be>
 <20191021143742.14487-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021143742.14487-2-geert+renesas@glider.be>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_074552_524377_F8AF1404 
X-CRM114-Status: GOOD (  17.76  )
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
Cc: linux-wireless@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-kernel@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>,
 netdev@vger.kernel.org, linux-mmc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 04:37:36PM +0200, Geert Uytterhoeven wrote:
> The existing debugfs_create_ulong() function supports objects of
> type "unsigned long", which are 32-bit or 64-bit depending on the
> platform, in decimal form.  To format objects in hexadecimal, various
> debugfs_create_x*() functions exist, but all of them take fixed-size
> types.
> 
> Add a debugfs helper for "unsigned long" objects in hexadecimal format.
> This avoids the need for users to open-code the same, or introduce
> bugs when casting the value pointer to "u32 *" or "u64 *" to call
> debugfs_create_x{32,64}().
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  include/linux/debugfs.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/linux/debugfs.h b/include/linux/debugfs.h
> index 33690949b45d6904..d7b2aebcc277d65e 100644
> --- a/include/linux/debugfs.h
> +++ b/include/linux/debugfs.h
> @@ -356,4 +356,14 @@ static inline ssize_t debugfs_write_file_bool(struct file *file,
>  
>  #endif
>  
> +static inline void debugfs_create_xul(const char *name, umode_t mode,
> +				      struct dentry *parent,
> +				      unsigned long *value)
> +{
> +	if (sizeof(*value) == sizeof(u32))
> +		debugfs_create_x32(name, mode, parent, (u32 *)value);
> +	else
> +		debugfs_create_x64(name, mode, parent, (u64 *)value);
> +}

Looks sane, but can you add some kernel-doc comments here so that we can
pull it into the debugfs documentation?  Also there is debugfs
documentation in Documentation/filesystems/ so maybe also add this
there?  I am going to be overhauling the debugfs documentation "soon"
but it's at the lower part of my todo list, so it will take a while,
might as well keep it up to date with new stuff added like this so that
people don't get lost.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
