Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C9486D09
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 00:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySZXmjacm11BmS10Rse+zgM1tSP7vGFOC/zBEVg5iWo=; b=FsAM/K3WhVadEA
	yuCRw3fiZuH6jo2WlIKUQlT9ZQXiAMnqLAPbeb6SwTDDztygRtbaQsM3iKx7foJqbc5bcCmoicZqW
	qMWOBXsJT+EqwhdQpTFKOal7QIWYbowtXgOjWPN/d7FfDxFdBdaR+LW8d3oLQaNQGS2uhUy8qNI/H
	LFUJleolmS4YNxHZP4aO0QNGEpR+d4oRMSIcQgPr74ck08x8h3T8pIUJeYUJl3IXTiDAM8naGhFhe
	nc4ZJvZnaBqEjzfzMTzadbrfpFxn7Lt+QLHjGdB9Fr2SFBz+R82mGwEo9bkCMqzEvFYvQlEcY/BiV
	zxnQN7YohK+Ubs1nF2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqlX-0003zx-K1; Thu, 08 Aug 2019 22:20:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqlI-0003zX-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 22:19:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so44174225pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 15:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=omRmukneOt0MihHCUXZxNMX0+Ltg0mZt7H7F1zd8n2o=;
 b=lWTD+L5aENuLpdP+hbVz1zW94JBamoAdCqcl86FgB4Gq9OrSkWn2cAWXw3HhPgL/AD
 LiezOx8NTMfm54Zk+tA0F8ccqHvwL4T6yOQTl2KpQW0lxwNsuI0EwgMb9oV8Uf+Ial0k
 AMtVVUM108PnFiS5TUGJO+vV9el6Mh4eHHHwvOJH2GczA9dyg9nroNBmOkKRtFHTsg+g
 IpdES4WsGHSD1kzvb+Etmb3+QFdH+e6Atz+FHIzATLwrK6XczxnXHPhqruYKFDgFvAaD
 b6vG5gNLw2Pm/hvX8D5DtqTVsnkvOHffDD0YLHsR61zX3tL3kDut3H9Qndrwt6kxPC8N
 0/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=omRmukneOt0MihHCUXZxNMX0+Ltg0mZt7H7F1zd8n2o=;
 b=c982M/+f+Uogla2F4c1Lfw8yxVkXzy8S/UoRI/b4Yd/OAa5vEp/BFzQr+ngOglC1yQ
 mkDAiZ/3EqKvRgw79AOU3Ywp0LJG0NvY9TH3+7HStTI9C05O+J6IRuHLeNliZ/k+TUBQ
 J35K/seFOxYgeAbOTatPU5EDluDIRTRhXAgMPux0y/buGAzPL8QxMU1Qlp0sTHFEaCeG
 Sk70PpFNwXfzqzJPHe1+ER52LHaclilYS28onIPITX7rp7XU4AZKAl+33kVd6MefM7h3
 CLk+2ih+OXMFwq4s7hgM5L81a4BSjZwmqLdD06lSAwTaLnVcoE88gYoY0YF5Vkvsrda7
 8cvA==
X-Gm-Message-State: APjAAAWEQ2+1qvkV32IvaAS2sJTJ5ymnF8y5DdbHKZa81XgbOUtctX/3
 tqRzh9Z3zXM21JTNWeiOVvE=
X-Google-Smtp-Source: APXvYqxAqj5pomkBptw7TZm8uK7olIgSEFMF7BjQX2oUK35RHeOgdBG2oB9nWLf4oq+3hoFGh5F+SA==
X-Received: by 2002:a17:902:b285:: with SMTP id
 u5mr15611069plr.329.1565302795687; 
 Thu, 08 Aug 2019 15:19:55 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id s43sm3266138pjb.10.2019.08.08.15.19.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 15:19:52 -0700 (PDT)
Date: Thu, 8 Aug 2019 15:19:50 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 13/22] input: omap: void using mach/*.h headers
Message-ID: <20190808221950.GG178933@dtor-ws>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-14-arnd@arndb.de>
 <20190808214257.GF178933@dtor-ws>
 <CAK8P3a2TOcjxwCBGkZAhMAf9HuTL=FAB1e0=FAg+oHB0U1nJ0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2TOcjxwCBGkZAhMAf9HuTL=FAB1e0=FAg+oHB0U1nJ0A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_151957_034777_26628AF1 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 11:46:45PM +0200, Arnd Bergmann wrote:
> On Thu, Aug 8, 2019 at 11:43 PM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > Hi Arnd,
> >
> > On Thu, Aug 08, 2019 at 11:22:22PM +0200, Arnd Bergmann wrote:
> > > By using the new linux/soc/ti/omap1-io.h header instead,
> > > compile-testing can be enabled, and a CONFIG_ARCH_MULTIPLATFORM
> > > conversion of omap1 may eventually be possible.
> > >
> > > The warning in the header file gets removed in order to
> > > allow CONFIG_COMPILE_TEST.
> >
> > Given that we want to migrate people off this driver everywhere but
> > OMAP1 I wonder why we would want to improve compile coverage of it.
> 
> Mainly for consistency: I'm converting all omap1 drivers in this series to
> not rely on mach/* headers and to let them be compiled standalone.
> The other drivers don't have a replacement, so I could treat this different
> from the rest and skip the Kconfig and platform_data changes if you
> prefer.

Yes, because at least with the version you posted we are losing the
#warning telling people to move to matrix_keypad. We could do:

#ifndef CONFIG_COMPILE_TEST
#warning ...
#endif

if you really want to allow compiling standalone for testing.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
