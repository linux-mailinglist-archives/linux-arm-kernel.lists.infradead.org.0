Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1C21A4595
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHaw33EoL/VlkcQnGv/BOaDDy4lzwei+l/he9Dsa12w=; b=pmEGh5t/RN6f8F
	XurM7+2SICca8H3sQjIXroxUCu2QyBUzCl6vQQ7l89SloeRrzrUSoU78BOyny2awwpEkbXGnBnoiK
	YHlaI15yEqC/pncX2eL+M4ufmPxMDwHX8Z8kU5+W3UF8/FB2Uz58IvKFaSw4FN2C1Eq3+JliRezvh
	xjXpPCJSxq0NJDB59XPo3gmpPDbX+Ym5HlVbMAZbX1a36t1ABfTWSjuo0/E2kObwi5H2iY4qJmk5x
	E0Kaqgvd/HTZnqzWcDd1yUumdeiNFKHjuRS4Dte1fZMHfYvwwu+PIxMfqUhW+1L/0MZ3rRvMxYGK+
	52IXaIBpU+sDqLC0jvOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrkI-0008F9-Ow; Fri, 10 Apr 2020 11:22:50 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrk9-0008El-BP
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 11:22:43 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5B594240010;
 Fri, 10 Apr 2020 11:22:36 +0000 (UTC)
Date: Fri, 10 Apr 2020 13:22:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
Message-ID: <20200410112236.GX3628@piout.net>
References: <20200409151125.32677-1-aishwaryarj100@gmail.com>
 <20200409155936.GV3628@piout.net>
 <CAHp75VcLLjjc5T+Qq8du4QgnQ-rtzFLh=5Jt-DPjigb+QUWOSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VcLLjjc5T+Qq8du4QgnQ-rtzFLh=5Jt-DPjigb+QUWOSg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_042241_528095_DE5544C9 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, Lars-Peter Clausen <lars@metafoo.de>,
 linux-iio <linux-iio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Allison Randal <allison@lohutok.net>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Aishwarya R <aishwaryarj100@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/04/2020 13:55:26+0300, Andy Shevchenko wrote:
> On Thu, Apr 9, 2020 at 7:00 PM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> > On 09/04/2020 20:41:23+0530, Aishwarya R wrote:
> > > Use the helper function that wraps the calls to
> > > platform_get_resource() and devm_ioremap_resource()
> > > together.
> 
> > Please elaborate the actual value of doing that.
> 
> Please, elaborate actual value of not doing that.
> 
> Yes, I know that you are p* off of these changes, but why you not
> going further and forbid all clean ups we are doing in the code?
> 
> To the point. Above change is reducing code base and showing the new
> comers modern APIs to use.
> 

The value of doing it is to reduce the code size by 16 bytes. The same
people doing that will actively ruin that by adding error string for
error that will never ever happen.

Also, the commit message is definitively lacking. A good commit message
would say that the patch has been generated using coccinelle, that no
testing has been done and that no thought has been given.

It would definitively make sense to send one patch per subsystem instead
of having 475 different patches each changing only one location.

The whole "let's let newcomers fix trivial bugs" thing is definitively
not working and it is not leading to an increase of the number of useful
reviewers and contributors

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
