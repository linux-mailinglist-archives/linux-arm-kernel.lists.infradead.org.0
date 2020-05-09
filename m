Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EB21CC2FE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 19:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHUW3NuwCE2AMyMaIqgUlZGeS3oaiWcp7yHecWGJNYI=; b=gV5zHIFEwP8UdN
	s2us8WDH3/12yPlM+eYp++MWnLhasC4jhpq2EXKLrbZHgOtkg6TSToRo7o3UIT5aBWd7njgjEPRzR
	/Pfu+N2S+FakA9uWrbwIn+G/i+7GrVuJf+K2HAlOUIk8CWR5JZzm9h/cSKhA2UiTMIfYOphTvakqx
	GR1X+7xEzp2Ncl3dkpREFOhdO+ezsoUheHACqHbwwIAyEHOivvBtR4UydKiBOzK6a1KfHshnN7hBb
	yy+PrEqlVbgcp/fXPex/YOAW+c5wUiZRdttOGhYgl01bmQiS+hRYy2nZmP/adGN7pZCuza0BBEwt0
	KEx/y+9rZyYkoJyIUhIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSv0-0000O8-Kj; Sat, 09 May 2020 17:05:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSuu-0000Na-2H
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 17:05:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31E282184D;
 Sat,  9 May 2020 17:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589043934;
 bh=TNwiGuU59AdvUvN9asdWl7nZzKASsxAJBDv7IGkPFr8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WaOxtm11ka0eex5A8IsSAhiIQBAAbnR1SlGVN+p5m/ApPhE02EghMulZ9Tou7XakE
 7HY+DjVjwBpIcsK4hpuUu+FsG5MLegFztrLn++fr1ADvBPMEJG7w3sIGb3tCOYnVB0
 53m6aX7zpOBwe9pbkk2fIKjqHJCKTio5j3vjQXHw=
Date: Sat, 9 May 2020 19:05:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harshal Chaudhari <harshalchau04@gmail.com>
Subject: Re: [PATCH] Driver: Adding helper macro for platform_driver
 boilerplate.
Message-ID: <20200509170532.GB2482887@kroah.com>
References: <20200509100716.11044-1-harshalchau04@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509100716.11044-1-harshalchau04@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_100536_130009_26CC98B2 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: arnd@arndb.de, dragan.cvetic@xilinx.com, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, derek.kiernan@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 03:37:16PM +0530, Harshal Chaudhari wrote:
> From: Harshal <harshalchau04@gmail.com>
> 
> For simple module that contain a single platform_driver without any additional setup code then ends up being a block
> of duplicated boilerplate.
> 
> This patch add a new micro, module_platform_driver(), which replace the module_init()/module_exit() registrations
> with template functions.

Please properly wrap your changelog text.

And fixup the Subject line to match other patches for this driver.

And the text needs to be revised a bit to say what this really is doing,
as what you describe is not correct.

> 
> Signed-off-by: harshal chaudhari <harshalchau04@gmail.com>

Finally, this does not match your "From:" line for the patch, which
means I couldn't take it even if all of the above was correct :(

Please fix up and resend.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
