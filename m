Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD4EDD087
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cO39ZxXCrJzrXFuthB2tm8B5L1zTVot0Kzj6IuTvwWE=; b=nYZePcvbw/c1wJ
	HlwJ3R48bCYw+Pe6WFNswN+sagjb92eX9BKTUIl6oLTdxQ2XH1V7wI+m5y0JoNw15nJiUCba4WRl8
	NnS796Rd9sCJwqSZGy+LpNFCNq4dmqpKUTwZfdlwlpO1o2GiK623qcUeY0j3IoPK8NH9An2jhioIz
	IvQMORswTYjd2vnu3ViC1C4DipdS9rEJsZfjbRKijIRn83uF9br/yzsOhpDHJGNukO6hFGPjvRTZ5
	wwgUyCT5V3dX6s5BPeUg6+F+bqgLfmzogqN5JrxdtNDiDO71aeB+k3mP8leraNd9fxakKtLLzb/RH
	du4buDUUotuk8oxWFQ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLZ2O-0004PG-5I; Fri, 18 Oct 2019 20:39:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLZ2B-0004Oa-5J
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:39:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id j11so3404952plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 13:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yF7MutHrwkvSGB6U3XIdCr2BIBwvqm916Bsky0mGSyw=;
 b=jpxaFdev7vpkQkBEd6ufvN8+8Syuaax8emVkCAdb5pwQ08+Kx9HfaUAmG/dNO0LruH
 Ru0kVaNEtVe9TtUPNBK2HDfoNRda5QO7P3o/5lHaePEV6vpjkyLRnGWMWfpfNkOLwic4
 dD99vIdupsM6P3loEyJhDAG6j4eJzxkjjn3GzbzghzvuQGp9pzx4ygzylPs+RjDUDHiZ
 7S1C/WpfwV1W36dmHXS0Rl0SrBDOkRGXe+A3yaivtT3PLAWohYyWenjZBURub3C84fD4
 Y2JMkDGtadl07MZ+5Ewc/wwtOmdgYKepH691VkKehLXyc8PrvAZ5aF3mDaPp3Rh6DsJs
 qvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yF7MutHrwkvSGB6U3XIdCr2BIBwvqm916Bsky0mGSyw=;
 b=OXCa3EnWnFO/nOsGyWS8+9cZ0OBwneg7glj0vTam50C0GeX1mJ7d8ouLM/u5NQ3EjP
 zY/oziAk+0lQRCFpKZt/CDJnfPhQzf99mLjVZH83ayVEdz0tlsOSbcfqF4rDDwWrZowd
 ft6bZDqNw0Ns9kEtNuNTkN+49ZWHL4tasU2cXdbg+XJkFcmVIpNS+xfWw6aiaee8xZ78
 HmjnRTt1Fj0rFhCX3+dzG9BXh5Dy0XrAgSzO8CeB5HHlKbWRQDnCLULwN/iNyWrxMTkP
 c4QvriIR+BvZUD6EYDn39vwXb46soVT51XX5ZTgu7hWvmyRjq/FRPHUJ18NGmQxqcup3
 JRag==
X-Gm-Message-State: APjAAAWxOWHK/Cj8PNs92ZXSLHq7zgQL3OqdciUCXnHJvS4FaTXyJz7e
 VMc/ruKN4oUAslPEav5Xuak=
X-Google-Smtp-Source: APXvYqwMMoMg/Sj3XuNx6NavhISCBWY4vd22WowubXqMjUc6xYCpcf344nB/pSVMbxAZVJeeJlF6GA==
X-Received: by 2002:a17:902:6acb:: with SMTP id
 i11mr12268939plt.16.1571431178249; 
 Fri, 18 Oct 2019 13:39:38 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id v3sm7071068pfn.18.2019.10.18.13.39.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 13:39:37 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:39:35 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 25/46] ARM: pxa: mainstone-wm97xx: use gpio lookup table
Message-ID: <20191018203935.GR35946@dtor-ws>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-25-arnd@arndb.de>
 <20191018183940.GM35946@dtor-ws>
 <CAK8P3a1Fc=ogknDRGJ3Sn8bZ8tsR_ebE8_bDtF_kZ4AZ5YG_+g@mail.gmail.com>
 <CAK8P3a00s4=6YHS_2K1r6=i+artkjgxjHJGVHBLuCj1ft5sqFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a00s4=6YHS_2K1r6=i+artkjgxjHJGVHBLuCj1ft5sqFQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_133939_205333_8C0C6C73 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Marek Vasut <marek.vasut@gmail.com>,
 Daniel Mack <daniel@zonque.org>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 09:37:28PM +0200, Arnd Bergmann wrote:
> On Fri, Oct 18, 2019 at 8:39 PM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Fri, Oct 18, 2019 at 05:41:40PM +0200, Arnd Bergmann wrote:
> > > This driver hardcodes gpio numbers without a header file.
> > > Use lookup tables instead.
> > >
> > > Cc: Marek Vasut <marek.vasut@gmail.com>
> > > Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > > Cc: linux-input@vger.kernel.org
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> >
> > Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> >
> > Arnd, do you have these devices by chance? I had stached patches
> > converting wm97xx core to use threaded ISR and it would be great if
> > someone could test them...
> 
> Unfortunately I don't, but I'm hoping that someone can test my series
> on any hardware they might have.
> 
> If you like, send me your patches and I'll add them to this series.

OK, I'll do that, thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
