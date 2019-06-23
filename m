Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 877A84FBE5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 15:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGp+wDYXDdFHP9qR3Ey2T54BlP48IFvXfUe+EqjP3K8=; b=Y82unYzID+jzAG
	QMeSWFFQzVEtCAozRy+ZRKyGyH6K+uOsHdp9XvnmBf5R/fKyqhWTOXbsCKxcFao9z6ndhKQHz91Q6
	lP6rt3RZpF1MDx0KdxmwAzEj49DSwTuLAsBmgbM/0QifkUqPPdM0V3OwLZccdlsGKzFPTlRK6hkEH
	S5csgzIOiisz9A7Oe+ijeytqa6qpqAZrl6rkuQy2i38Xd6uAOzMFUVdmVQ3ED+FrMvK95Mrv3+nIM
	QKDBBDXI22JHOLqZIRLDVkwM50mgfQeF4ghvlxNTC5HjwyxnX2ZYCjjNpETxs46pjpRTFnBPCrAwi
	57vAE6TLEgDum4yMBcWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf2Z5-0006Nj-Do; Sun, 23 Jun 2019 13:29:51 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf2Ys-0006NG-2Y
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 13:29:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id 205so1251012ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 06:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iMugYLM0TSOEeMqLodsERtuvP9u+O/W19OcUNx2qqKE=;
 b=Nh82cgbCfdV3W9T0ZBzgKCen4UA43UBWLl8zNTUvlTbg62Y/vtLA+46MWCaMkhYfcB
 QoRsH+Kz3+V8IKyJ4dXfPjY1JYaxljjg7CZV+Jpg54/PyN/bRZQyiZ+smKKGJjV3/p4q
 VON83vTm7uZTYuGd9YVXOUylqlNpHzM9HOW+gGocuWXTRhALAo29VmkDh5l4lo1uxacz
 JOPO+5vd5ApDAC00Ibq7BfB/GIDSMaBFunF6ua+CHmVVXhTIbVdbKRd/aAwL52M+rBtA
 GnJqa/p9VsICM8jbMKWgDwDrqu0Ej8wWueg0HLx/ymewi7d0x9NjoxNYyCMqajrG6qZD
 lX8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iMugYLM0TSOEeMqLodsERtuvP9u+O/W19OcUNx2qqKE=;
 b=WMjKhNM6CnUveiTgX/gbv8X10ACKk+gEXEmtgYfOx47vfTjd239QnBVFh0mDyphbBU
 YWvSMqC4caawosmMHaRb9l1q39DVyN2b43oGBmVz152igY/n7d989pzyLUktzf9Sj0q8
 LIpYfl2ta9322vXHDznPC3yfmUloAGPdW7vugFv31roBtvNi3LWkxN45nZAm0M7VZCSO
 sp4X7tZAzev5izBlVucfS/J8WQMQRHKctc01kYJMTaluKzI9UTk7KQDVSUWyPCj/MjCc
 rrrr7s2vBNE9dkC5kWLy9dMaWYSDcd5VkPb2Tj+vFkHBwbfZGZu4atPs2FINgmJtxsPH
 M1eA==
X-Gm-Message-State: APjAAAUbmCkXAr30tMfQoBXIm0iY4p08kfHTqTZ+nIZvaPxXGj8HBXha
 Zsrv4GNthKxXy5xM+nR6bCLTAPDp+I2XY4jxwpQ=
X-Google-Smtp-Source: APXvYqyFgGq3y585l8TEj8J6rLVJh4Dg4GMJOjYNsFKOYXQ+e4N/qbOsEinXobwd5zUm8asmKUGq+283TfBTN6yr91w=
X-Received: by 2002:a2e:7d03:: with SMTP id y3mr31940463ljc.240.1561296571399; 
 Sun, 23 Jun 2019 06:29:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <E1helB3-0005d6-7m@rmk-PC.armlinux.org.uk>
 <20190622192653.puxds354sx5v3jg7@shell.armlinux.org.uk>
 <20190622202655.lwj43wpvw2ylzmcf@shell.armlinux.org.uk>
In-Reply-To: <20190622202655.lwj43wpvw2ylzmcf@shell.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 23 Jun 2019 10:29:50 -0300
Message-ID: <CAOMZO5CdHXXP1X_71SVL4nrV=009xNugPFjbjP8s7NZ3byyP2w@mail.gmail.com>
Subject: Re: [PATCH v2] dmaengine: imx-sdma: fix incorrect conversion to
 readl_relaxed_poll_timeout_atomic()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_062938_115988_4C9AEB3B 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Michael Olbrich <m.olbrich@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Sat, Jun 22, 2019 at 5:27 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Sat, Jun 22, 2019 at 08:26:53PM +0100, Russell King - ARM Linux admin wrote:
> > Well, this doesn't appear to completely solve the problem either -
> > one out of four of my platforms still spat out the error (because
> > the SDMA initialisation can run on a different CPU to that which
> > receives the interrupt.)
> >
> > I've thought about using a completion, but that doesn't work either,
> > because in the case of a single CPU, the interrupts will be masked,
> > so we can't wait for completion.  I think we need to eliminate that
> > spinlock around this code.
>
> It looks like iMX6 Dual does not initialise DMA properly using the 1.1
> firmware - md5sum is:
>
> 5d4584134cc4cba62e1be2f382cd6f3a  /lib/firmware/imx/sdma/sdma-imx6q.bin
>
> I've tried extending the timeout to 5ms, checking HI[0] (both from the
> interrupt handler and from sdma_run_channel0() to cover the case of a
> single-core setup).
>
> After boot:
>
>  60:          0          0       GPC   2 Level     sdma
>
> So no interrupt was received.  Looking at the registers:
>
> # /shared/bin32/devmem2 0x20ec02c
> Value at address 0x020ec02c: 0x00000000  <= H_INTRMASK
> # /shared/bin32/devmem2 0x20ec004
> Value at address 0x020ec004: 0x00000000  <= H_INTR
> # /shared/bin32/devmem2 0x20ec00c
> Value at address 0x020ec00c: 0x00000000  <= H_START
> # /shared/bin32/devmem2 0x20ec008
> Value at address 0x020ec008: 0x00000001  <= H_STATSTOP
>
> Any ideas?

Could you please try this patch from Robin?
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-June/661914.html

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
