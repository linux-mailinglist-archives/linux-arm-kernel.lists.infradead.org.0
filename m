Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ABB148C72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:45:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAZs3ZZ6xvT3kUaYlGj42orSBXcRyeI80cAcYlGDhi8=; b=RKy85cNi3/Jx83
	Tq4hndTcOQhO6EYSEkBA/6dR13ZQMNX0kbYR68MV84w13DXZ/M0qnhaOo2wORUKiWVyMSSz0Kx7Np
	lhMO8/cESrdlCe5Tt+e8FuGMKKvQWXQwVvxRiZnLNN1mQOt81sYFevhjPIKcjAb+/UGOTGakCoTwK
	G8ECwGElsa/3+m6dNmuOFWAY8ldm5fEeBmYTScJFRE/om5CtwXtTBVoL9pD11HgYp9UOdJC+Sl5sl
	VQ7qc555cnhraMq4rOAn9+IQTmdQOiIPPAlJg5koo4MeSBX+lULZEFi8ETreywL9EwJqsqTkzV2an
	uhbYOnwug3tYOTVaSeLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv24x-0003ck-04; Fri, 24 Jan 2020 16:45:07 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv24j-0003bv-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 16:44:55 +0000
Received: from mail-qv1-f52.google.com ([209.85.219.52]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M8QiW-1izPmp3Faq-004VNI for <linux-arm-kernel@lists.infradead.org>; Fri,
 24 Jan 2020 17:44:47 +0100
Received: by mail-qv1-f52.google.com with SMTP id u10so1206586qvi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 08:44:47 -0800 (PST)
X-Gm-Message-State: APjAAAVE9W20j9hmB4Oo5Nx/jeMVWMSDg5LLi0xaAIB4gaQ3+03va+p9
 r3GoU+sR6/jfj6eGuoQ4V+X6TAKVUMBISfhgXmM=
X-Google-Smtp-Source: APXvYqzFQ1FtUSG9wkimTmxteMnVFvr9Gz1AZVLyLtQ0jTyI+0DlAmS2jcwdJ/giEZ8tJzV4iznRbrDorlKqP0K6C+c=
X-Received: by 2002:a0c:8e08:: with SMTP id v8mr3741766qvb.4.1579884286531;
 Fri, 24 Jan 2020 08:44:46 -0800 (PST)
MIME-Version: 1.0
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
 <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
 <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
In-Reply-To: <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 24 Jan 2020 17:44:30 +0100
X-Gmail-Original-Message-ID: <CAK8P3a19FPc_=RK3_NthZEhryx6t1PmFvj2h_Gzo2M2rJEehhg@mail.gmail.com>
Message-ID: <CAK8P3a19FPc_=RK3_NthZEhryx6t1PmFvj2h_Gzo2M2rJEehhg@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
To: Adam Ford <aford173@gmail.com>
X-Provags-ID: V03:K1:TEIyO3yhdjyug+zRqGa0SZ1wY92VVWPLuZHt8JP+f+UhXXG4ejq
 J4gjc4sgAW0DRn4iWuYEZAdOnC8ShiJMzJEiPN9sC92ohlAbZzEmFUYGaeLMYPWBcDgNdsQ
 R27aznQ547EZhYEn2mUSm34Omjv/3TKxvEirNhXbtqrQuy32ND2wn6GFlQjLCvu8qctQ/BR
 U66sfR/3b8cyJW0QAyHwQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3UgBk0DJawQ=:s64M12qz58J1K57oJ8xHS5
 +LxR6y4Hwz6hgyFZ2cr4yIRPs1niKsSR/Hz0pG4oX+kjWkvZYqVVVe4K2PucKE61lgkocOEh/
 nMqzfvqv2j6YuraVL246QcB3Bv/tYD0hyZ5i7DEyD+lH5Ka66xVt1IpVNcqT6SUUGHWjTMuhw
 mThVxEt1s0AwTnf51E6+yMY+VRaTfhZbVkbW28SSSKxcNe7IOnquvZuCDVIHfkh/MWcNE9I4h
 TgI/RUvUOXpe4o6k4OLylkmSE14jml/YHbradGMpo4KEgHAE+tQe9C+j9wTki7GttwkWbTIno
 9YUPpNrcdIEZrkXyLY9d4VZDtimkxsbYwLmpneiedlI/Xx8QRTWSm+yRvXybeScjFgLjnz47F
 aDVGeAz75bdmZMWjyRNPkDdOm3vxjB93Vkw9a0wuUGZKJogl2zO1kJuue6RRuTYBjVDORh5O6
 9mZuAEWkDA073dLtt2MuJaeCFw5wZGRwpiOXLGH9KYdqtDLSv7jyslFR5BZDFdR3XKLxk6RLp
 geBcwBbQyGAuP9VUCO2UhE7h0nfWENAEmDG92Ha5F/Nw9O/JmHHw0Pur9NAHx10jUft16PSmZ
 j9Wq5ZZw3lgsWfpZdAy92IZC0dFXDbP6idwl3cc2R6BDHTbx8gLrvKaSstrsI3aABS2219ibb
 MotFFKfalaINTTLaM2HiYmpW+/POOxCiXpT2jIix8Bs+Xj7utk0bWwLz+8nq9reNAJhLP11XB
 8o2n8bKdkPeZeGV0D6C1/lRJ2WG+GFSSqPH95z/3MlEq+lixgXkI7u4r477AiWnlSumxui3cY
 pIesfVcSYxbquhlKwVDn6tLdL3iP+c8L3Vl4YkDo5t8bhyLa0E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_084453_797184_F08343C5 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 4:54 PM Adam Ford <aford173@gmail.com> wrote:
> On Wed, Jan 15, 2020 at 4:39 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wed, Jan 15, 2020 at 3:38 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> I would be interested in learning more about running the i.MX8M in
> 32-bit mode.  I'm looking at running Linux on a device with < 1GB of
> RAM, so having 32-bit pointers and instructions would be preferred.
> My preference would be to run as ARMv7 for migration purposes, but I'm
> open to alternatives.
>
> Does anyone have any suggestions on where I might find some generic
> stuff for either iMX8M or generic ARMv8 docs for doing something like
> this?

By far the easiest way is to just run a 64-bit kernel and 32-bit user space,
which should give you 90% of the space savings. This requires no further
work, just pick the 32-bit distro of your choice.

The get the last few percent of memory savings and run a 64-bit kernel,
at least a bit of porting effort should be needed. In principle you should
be able to pass the dtb file for your machine to a 32-bit kernel, but
all drivers have to be there and you need to adjust a few dependencies
to allow 32-bit builds such as

 config CLK_IMX8MM
         bool "IMX8MM CCM Clock Driver"
-        depends on ARCH_MXC && ARM64
+       depends on ARCH_MXC && ARM64
         help
             Build the driver for i.MX8MM CCM Clock Driver

and then there will likely be a few bugs.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
