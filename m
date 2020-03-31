Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA30199B37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LE/LI4H4Q2bBmFeJDmMYAL7lF/UmSBe+ogTMLPci7fU=; b=f6Q1Y7O55JLHUu
	fHwR2pvVYBAS1Oi6dNSTtgMt2ORhIGdN8tKBf+mhEPGRnG5uyCnglIHTvg3q2gH1cjnU/pXtfgRZc
	d/wbrKsF6Db6vTPQFUP+IiZ80MXIo/x6JDQ/fvT4W2No1XVn49CsoaG2qE+xID4qPxLdhAcJojozv
	tw7izFVjgM8W750wpPythUt3wbarSC+OgD6sfcFfMUhvHslQCm13fqYHluzxJyryVqZNGzUdU69/P
	4ijTQWFB3PKvT+ZD0a0UImLhynFqjGSzHbZgOisrZSjFRjS7J52c6fV4bveCiq+NhtiBULrlyJGIX
	B1fy+LJCC4FCLx5UcEiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJb5-000533-7E; Tue, 31 Mar 2020 16:18:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJaC-0004UI-Oz; Tue, 31 Mar 2020 16:17:46 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 67802999;
 Tue, 31 Mar 2020 14:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1585658360;
 bh=tbwJXIHNoJr98k60FTTbX816TC3Gd5IRxDKktQ2VVdo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f1VlS2f3ga3DvS+b4oT5dZqA2XEt0P7BtWTsz1Rh8OoaxqE1EOB4CoxtnoDmy4iB6
 X5iUhOXekkGa+8ZaSHi1+2aHuVd6i4awTQurv1cdH/lNYkacF7pfIxB7GLfJZznSya
 j4N0EW5NB1mkaPQTASiH/ozxp3qP4ZsgZza5luwE=
Date: Tue, 31 Mar 2020 15:39:14 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile
 files
Message-ID: <20200331123914.GC4767@pendragon.ideasonboard.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
 <20200331122209.GA1627483@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331122209.GA1627483@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_091744_971257_5B1E49E7 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Tue, Mar 31, 2020 at 02:22:09PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Mar 31, 2020 at 03:06:08PM +0300, Laurent Pinchart wrote:
> > On Tue, Mar 31, 2020 at 01:11:53PM +0200, Mauro Carvalho Chehab wrote:
> > > Most of media Kconfig/Makefile files already has SPDX,
> > > but there are a few ones still missing. Add it to them.
> > 
> > I think it's a good idea to state the license of each source file, the
> > patch looks fine to me. I've however been thinking about licenses for
> > build system files recently, and I'll hijack this thread a bit to ask a
> > question :-)
> > 
> > For a project like the Linux kernel, and especially for subsystems that
> > are covered by a single license, the choice is easy, we can apply the
> > same license to the build files. However, for a project that contains
> > components covered by different licenses (such as, for instance, an LGPL
> > library, a GPL application and a BSD plugin), how should the license
> > covering the build system files be selected ? I searched a bit for
> > guidance on this topic, and couldn't find much.
> 
> By "default" if there is no license on a file in the kernel tree, it
> falls under the GPLv2 license and we should explicity state it, like
> this patch does.
> 
> So this is fine, but if you want to license the build files some other
> way, that's good too, but do so when you add them to the tree, not at
> some later time when it could cause confusion :)

Thanks for your answer. I was hijacking the thread a little bit, the
question wasn't related to the kernel, but in this case to libcamera.
We've been wondering how to pick licenses for build files there, and I
thought fellow kernel developers may have valuable input on this topic.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
