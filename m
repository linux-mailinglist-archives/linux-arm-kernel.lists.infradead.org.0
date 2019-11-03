Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032A3ED3F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 18:13:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UArrQqpWwCOa/AcirDugTR3eBmIn2lP7YKXBvyPZk8=; b=Y6IsFvvTlfcBkj
	v2CdSoodYbgDubjRLK2OW0f8GWm6QZRWEpBXjFG52iuel6rIjmTnwhdFoG0BHuHpU1m/vO0LL/rZ8
	RugotSJLsVTKceOYuHrPFK4SKHYLH1ekqVjGOKygXuy/kO2+X8vzZ0rlysW82lGRMUcZCgiCo23/4
	/uwYZS29I9Rpb12ZfYSfm0QNNUbVsJZmqVs1shrGEPK+UjrjNFecv8gChNEfCnowDyNlGIxwawnV0
	SiBe58GhwYvuqOQw2UcpA7dV5RsiOTzQJh9Qru31B+sY5+5aw2Tz+J7yddc54ijsNeR2URGEbRXX+
	MbznBlvqRTvAsG4Oy7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRJRX-00021A-CB; Sun, 03 Nov 2019 17:13:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRJRP-00020B-UI
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 17:13:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F35120848;
 Sun,  3 Nov 2019 17:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572801206;
 bh=1f8uqX2M3g4e8ajbRWXxGgjt5VZyz4HsWLqzRg8UxC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=diUW5bwnXwDv0EaVWoRkouwwU+DHIHaJ0WEJF3KaeoA40jZb5mtcybcBEzJOCdBup
 08VLIoBPIrKhOhvvLA+YH3NtAJJikRqR1xypdfnNjIQ5S2gs2Um8qD4wEo74nMWmpf
 BXOMfC6kDROQaNqnaig5Y0TO4HDqClQhM3OfVjzk=
Date: Sun, 3 Nov 2019 18:13:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 0/7] debugfs: Add and use debugfs_create_xul()
Message-ID: <20191103171324.GA700462@kroah.com>
References: <20191025094130.26033-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025094130.26033-1-geert+renesas@glider.be>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_091328_000328_7E4C9D0A 
X-CRM114-Status: GOOD (  15.23  )
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
Cc: linux-wireless@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-mmc@vger.kernel.org,
 "Rafael J . Wysocki" <rafael@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jaehoon Chung <jh80.chung@samsung.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>, netdev@vger.kernel.org,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 11:41:23AM +0200, Geert Uytterhoeven wrote:
>         Hi all,
> 
> The existing debugfs_create_ulong() function supports objects of
> type "unsigned long", which are 32-bit or 64-bit depending on the
> platform, in decimal form.  To format objects in hexadecimal, various
> debugfs_create_x*() functions exist, but all of them take fixed-size
> types. 
>   
> To work around this, some drivers call one of debugfs_create_x{32,64}(),
> depending on the size of unsigned long.
> Other drivers just cast the value pointer to "u32 *" or "u64 *",
> introducing portability bugs or data leaks in the process.
>  
> Hence this patch series adds a debugfs helper for "unsigned long"
> objects in hexadecimal format, and converts drivers to make use of it.
> It also contains two cleanups removing superfluous casts, which I added
> to this series to avoid conflicts.
>  
> Changes compared to v1[1]:
>   - Add kerneldoc,
>   - Update Documentation/filesystems/debugfs.txt,
>   - Add Acked-by.
> 
> Dependencies:
>   - The first patch now depends on "Documentation: debugfs: Document
>     debugfs helper for unsigned long values"[2], which Jon said he
>     applied to his tree.

I did not take patches 2 or 3 as I need acks from those subsystem
maintainers to do so.

But I did take all the others.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
