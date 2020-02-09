Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17727156CC9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 22:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KUwegBtAP00ICUDO3lSVMRwrdRbe8CkG7DBQR/BphA=; b=GzY8TGvRJ0YUEV
	ZIMeVfsopdavU36TPr/6bgfp4MA/PgMDfRZu3ro4lQkU/umvZvdHTOabi0WTRQG7AeS7K2c5UXzt7
	VyyYCUP75TBcW5WvbOlYiW/WwADe8BW13tgid0Pfp9P2146ppuri0KcUty227w/BvWdzbshw0Ae9a
	z/LyHNVPEnBmth9Zpo8BqaYMcb7PbgcZPdUYcjd2OVJxSDqjlEV8rGxvyOJkf5qwS89ADf8rCw/8h
	cKBv/wI83uhDZesF4SBBBUVyrRnMftc1t79AYd8Ad7IJQak3OhdKW1nFo5Ed54geJkJYLIkCe32Uv
	yDMunhwfQ6vkbJoNtnjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0uGh-0004XG-5X; Sun, 09 Feb 2020 21:37:31 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0uGa-0004Wh-5q
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 21:37:25 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 089288081;
 Sun,  9 Feb 2020 21:38:03 +0000 (UTC)
Date: Sun, 9 Feb 2020 13:37:17 -0800
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: 5.6-rc0.95: /dev/motmdm no longer there
Message-ID: <20200209213717.GD64767@atomide.com>
References: <20200209213422.GA3009@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200209213422.GA3009@amd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_133724_256139_23EE4CC9 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mpartap@gmx.net, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@ucw.cz> [200209 21:35]:
> Hi!
> 
> 5.6-rc0.95 -- based on:
> 
> commit fdfa3a6778b194974df77b384cc71eb2e503639a
> Merge: 291abfea4746 e0a514259378
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Sat Feb 8 17:24:41 2020 -0800
> 
>     Merge tag 'scsi-misc' of
>     git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi
> 
> 
> /dev/motmdm* is not there for me. Unfortunately,
> drivers/mfd/motorola-mdm.c is not mainline, so I can't just try with
> the mainline....
> 
> Does it work for you?
> 
> I have ... rather a lot of warnings in dmesg :-(. /dev/ttyUSB4 works
> ok for me.
> 
> Can I somehow help get /dev/motmdmX upstream?

Heh yeah actually I'm cleaning up those patches right now :)

Meanwhile, try droid4-pending-v5.5 branch or pick the related
patches from there.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
