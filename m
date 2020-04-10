Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D011A4892
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKUc0pv1oaDXYb+XWrlK1F3sp+WvZDzblpa9/zmog5M=; b=WHoje7v/tItrF2
	F0RrkbUZZ6CIetNC2eqKn/tUVElPXhbqyy24lNMO1ouFj9tFMx2nadlTaQ3M8NtByS710/cKkGxL8
	VzHaQ06iepRfqh+SI1DTnX14ntUi3EDcbJQBRv8LQ5PTvGXs+h8zUQx/bSPEV5YtLCNDlkeeDDixK
	U00ftHlfg0Ux3oF0a8b+jWMua+X9M6OQjs1W0I5Sqk2I6uyHAkYcZVZD1z7t42t9YoIUcGgBGS4K4
	txdsZ76QCC36oLKmA1xVCWzmAUPv2d5qWpUmr2DdQiSUqIwZVQXS69zuKTzkrCVGQ9sjp+qwQCUPy
	dH15OAyZAqY3yQlEDG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwf3-000312-6F; Fri, 10 Apr 2020 16:37:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwev-00030c-PE
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:37:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id k15so1244143pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 09:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kMGQicetD64osreTQ6vhdHosnrVVm4nm7kya26WOitg=;
 b=oRm6j05JIM7UtqWRYrfSaxrrD/Ym6w6VtNQlVuCeHZOGUlJq9iJJAh63qp1VuVWcnA
 6tUrvMc5w4jbFD/AEDrwfhn0pnO8VUMXS9o2V3U88KWSQjZyXn01Pr4uT8GZzHYHUUlj
 d45zmXh82TAbafnNSli99toZ75v+WESMrHLBti5hZNs09ZkSQMY6t37mDOPxI54VxfsQ
 NCSL++sfB7WZeeWQBhiT53A66H5yn/uKbxYxLAwjfHXGLl4KDmVP9gEYLWtPsNy6iie2
 F6ZjMej+3ND1Zh5h5E4dlvdeik9GhQCePrfp7d1nHUVJz4i6+6SUj+1g9ApCazQWm2Sl
 3HgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kMGQicetD64osreTQ6vhdHosnrVVm4nm7kya26WOitg=;
 b=ZQg6Wx/OCgJWZgBZ/4+6GEZiM7FAXYxf1dAAhV4Q+XgEH3zd4yotxxxtKsBVfr6KPs
 bgTJ7B8NeVKIeK9QIDjFR6kjVLdz8GmZaNdemH3vvMNCbCRA+Nn02Pd2jW3PjyVMApWx
 2IAbKxg0y66ZwLiIOtQgPkXBghn9obtF78s7QPqW7FiUVCif5gQlTzRkWPcjikHifNsQ
 J4b183ZqKJzbH+Zn1M9aMHYiWCndogTTdFUxz2aSfjfktYzxEzQ6f82G2Ui4+TbLy8Tm
 pY34rXOLqSMFmEbHJrkINBkryLDtgcEqypl1+N1R0gqHXZ3GrizQCnmV7wCXqivfS56i
 bc3Q==
X-Gm-Message-State: AGi0PuY9CIqZut7SRbkdpeeLXx/GP63X8skQlWtoU+EBdEcH9e5vaUBu
 LN3URKF8CfY52rcT/SNzisKYEMTRKecOykWuJTU=
X-Google-Smtp-Source: APiQypJSQVwaIbthGggDlTt2w0s1ErVhplhyXFG6YjdOuX1gpc0tMcIF6YG/7QdSDKsX+jLRYmIsK3fng1xEOpqLE+M=
X-Received: by 2002:a63:1d4:: with SMTP id 203mr5113227pgb.74.1586536656920;
 Fri, 10 Apr 2020 09:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200409151125.32677-1-aishwaryarj100@gmail.com>
 <20200409155936.GV3628@piout.net>
 <CAHp75VcLLjjc5T+Qq8du4QgnQ-rtzFLh=5Jt-DPjigb+QUWOSg@mail.gmail.com>
 <20200410112236.GX3628@piout.net>
In-Reply-To: <20200410112236.GX3628@piout.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 10 Apr 2020 19:37:25 +0300
Message-ID: <CAHp75VfJMsVB2rC-Qx6mQw+e8Vw9sVaWTu2Jvxj-nO1LzadHeA@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: at91-adc: Use devm_platform_ioremap_resource
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_093737_841329_B1E8E484 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Apr 10, 2020 at 2:22 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> On 10/04/2020 13:55:26+0300, Andy Shevchenko wrote:
> > On Thu, Apr 9, 2020 at 7:00 PM Alexandre Belloni
> > <alexandre.belloni@bootlin.com> wrote:
> > > On 09/04/2020 20:41:23+0530, Aishwarya R wrote:
> > > > Use the helper function that wraps the calls to
> > > > platform_get_resource() and devm_ioremap_resource()
> > > > together.
> >
> > > Please elaborate the actual value of doing that.
> >
> > Please, elaborate actual value of not doing that.
> >
> > Yes, I know that you are p* off of these changes, but why you not
> > going further and forbid all clean ups we are doing in the code?
> >
> > To the point. Above change is reducing code base and showing the new
> > comers modern APIs to use.

> The value of doing it is to reduce the code size by 16 bytes. The same
> people doing that will actively ruin that by adding error string for
> error that will never ever happen.

I don't see it in the patch we are discussing, so, not an argument.

> Also, the commit message is definitively lacking. A good commit message
> would say that the patch has been generated using coccinelle, that no
> testing has been done and that no thought has been given.

That's I agree with.
But somebody need to teach people how to do it better.

> It would definitively make sense to send one patch per subsystem instead
> of having 475 different patches each changing only one location.

Depends on the maintainer and subsystem. This is arguable argument.
In my subsystems (let's forget about PDx86, where one per subsystem in
principle is not working by nature of the subsystem, but consider
others I'm maintaining) I prefer to have a possibility to track
changes independently on driver basis.

> The whole "let's let newcomers fix trivial bugs" thing is definitively
> not working and it is not leading to an increase of the number of useful
> reviewers and contributors

Semi-agree. That people can be self-organized into a reviewer gang and
try to learn together.
In any case, as for maintainers, the task has not only technical
aspects, but mentoring as well.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
