Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0785725F86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDZxKFd+M7B06VrRjhDx6F7hU4hRZQsxw0U1ELN2/tk=; b=tjNkTyNw2x9oMP
	/i8OiHpcMr1FdE6wo31t8AxpfzwXeNCUlPT4znCRoQhagZS7KkCdn3mzkhrmVsRl1uLmCaBoAHi6a
	HXYI+cyi6BX7UzhHfMHwpb99ob4SbffsiJguBI0C66kIjSed1yiN7fpKRk0EYiuz+THDOjRDZSG8P
	2j3joHi21pLGHh3j155ewSho4VXLXHXN8zDIzBNKCzaq1pJsqZnYw3F0laHgbkOAVuYZxcUu5kTvr
	9Ur9T4o2LEcChWBHUrz0GFL2X/bDKn/z4xgJSR0sS1MmSwj/t6D/ywd+KJ9A5aEEpySpP9gNQQm9b
	Ylhcp20d77Bj+fk6LvrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMdz-0007RW-QQ; Wed, 22 May 2019 08:30:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMdr-0007Qx-LD
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 08:30:32 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27B36204EC;
 Wed, 22 May 2019 08:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558513830;
 bh=5S6RxRIhK7LmYwNwDZdpP3Oig4cYnbDSbf2KlMY3wr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kdqgrnyAVly1Pf4LmDAgDiXMnWSM9G9ZBsQjsDei2RBNUfNBcWLl4LI8ETBpaiBHr
 0GOuPlJ7s0PjrqHWgSp5a/7wp1j6Dao/8iRNfc8PxyK8a3AMNMtEInL08PDx/PgTqy
 0gKScf9utb5BwfoBnjqz/w6tERvpAEP+nE16r1RI=
Date: Wed, 22 May 2019 16:29:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v9 1/3] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
Message-ID: <20190522082929.GA9261@dragon>
References: <20190513145539.28174-1-angus@akkea.ca>
 <20190513145539.28174-2-angus@akkea.ca>
 <0f355f524122cb4dd6388431495a9d182e3ed9d6.camel@perches.com>
 <11c9a715ee0599e50359eb5ad5bd093e@www.akkea.ca>
 <a2a45d8f881d877027e2c32faf71c7a3f4897324.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2a45d8f881d877027e2c32faf71c7a3f4897324.camel@perches.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_013031_712407_8CD62F9C 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel-owner@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Angus Ainslie <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:05:27AM -0700, Joe Perches wrote:
> On Mon, 2019-05-13 at 08:35 -0700, Angus Ainslie wrote:
> > Hi Joe,
> 
> Hi.
> 
> > On 2019-05-13 08:11, Joe Perches wrote:
> > > On Mon, 2019-05-13 at 07:55 -0700, Angus Ainslie (Purism) wrote:
> > > > This is for the development kit board for the Librem 5. The current 
> > > > level
> > > > of support yields a working console and is able to boot userspace from
> > > > the network or eMMC.
> > > []
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts 
> > > > b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > > > new file mode 100644
> > > 
> > > Perhaps add an entry in the MAINTAINERS file for this
> > > .dts file similar to other freescale boards?
> > 
> > The MAINTAINERS files has this entry
> > 
> > ARM/FREESCALE IMX / MXC ARM ARCHITECTURE
> > M:  Shawn Guo <shawnguo@kernel.org>
> > M:  Sascha Hauer <s.hauer@pengutronix.de>
> > R:  Pengutronix Kernel Team <kernel@pengutronix.de>
> > R:  Fabio Estevam <festevam@gmail.com>
> > R:  NXP Linux Team <linux-imx@nxp.com>
> > L:  linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > S:  Maintained
> > T:  git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
> > N:  imx
> > N:  mxs
> > X:  drivers/media/i2c/
> > 
> > Shouldn't the "N: imx" cover this board already ?
> 
> Yes, it would, but not 'exclusively' by the get_maintainer.pl
> script.

We moved to 'N' match with commit da8b7f0fb02b ("MAINTAINERS: add all
files matching "imx" and "mxs" to the IMX entry").  As long as
get_maintainer.pl reports those M/R/L addresses, we are fine, I think.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
