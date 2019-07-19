Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5736E9BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 19:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Y7KMeyFUHjJNk0QQ6sYoWzgN+Ik5EHJwOwOUFx+t9s=; b=IQH9AWvn/cvi2g
	190bWRrAOYNOGDmban2lvnIas4vRyYyN0J58a1n61y77MpPXDyyXSCcxCcHdQQ/Aw74eJxeKCa6MY
	Ato7O1hTEcbsTRBmZ4R4huzSarjqPVjvakZjBXA2guYhNY0pzMFxbYqJ45kx+gy0b3YT98nBUwpy9
	R6/mtRcGImooiAu6k0aqrPkssojgbIFUwLmsuOdq+tBRHWcYXgdVr/fs683lJU7J+NX3I1naPVQ/a
	uJOd5C+Tbo6ap29NbpCVHrroYiLyS7lK7GsZ7rjOVVBe/3Ua1+sFtOiPvS8tRicKAYPBsKXX6q4vk
	XWIb4gEe9pXLgWFaoo+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoWHD-0006lM-QB; Fri, 19 Jul 2019 17:02:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoWGz-0006kW-T7
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 17:02:23 +0000
Received: from localhost (unknown [84.241.199.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 825C12184E;
 Fri, 19 Jul 2019 17:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563555740;
 bh=mc9dpku4ZlCQzY0VURDm7LZ8gZlKE0j++u2PjTJ3XdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OW4hvB/DoSAgfh3FWmT4AWO+a7FQdlt3aM00yFr9oP8qSAOzd3w7U5lc3JHGO0mlD
 /XpP4yAmtEhIIugEoVZ014rhWASJywD3fnNthzH8n+t8hHsG2V97sX+qrmaZq60zjK
 uFs3Q+fcX+VG0Q769/eDIvnWXP4oFaAtbg6a5YHw=
Date: Fri, 19 Jul 2019 19:27:48 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Pavel Machek <pavel@denx.de>
Subject: Re: USB Modem support for Droid 4
Message-ID: <20190719102748.GA14546@kroah.com>
References: <20190718201713.GA25103@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718201713.GA25103@amd>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_100221_959801_003421EC 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.9 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mpartap@gmx.net, tony@atomide.com, merlijn@wizzup.org,
 linux-usb@vger.kernel.org, kernel list <linux-kernel@vger.kernel.org>,
 sre@kernel.org, nekit1000@gmail.com, johan@kernel.org,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 10:17:13PM +0200, Pavel Machek wrote:
> From: Tony Lindgren <tony@atomide.com>
> 
> Droid starts to have useful support in linux-next. Modem is tricky to
> play with, but this is enough to get basic support.
> 
> Signed-off-by: Pavel Machek <pavel@ucw.cz>

No signed-off-by from Tony?

And no [PATCH] in the subject?

odd...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
