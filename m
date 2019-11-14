Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2343FBE43
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 04:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZIODpDfaTpRnCLYZ+Nop4taTZI0uz6VhAt8SXvdWls=; b=eDp1/ny2hv1Y4s
	Qg8SDmmlNXWkLcMepeiHbaV89WdK/IR6LEyXBPUU/bdL/Q070DHI8HttV7b1ICW3FBbWOT2DAKtHk
	c7s8X4+q1b6DR3H/cOH1roiwha6+zSG6CcfVk1Rrz8jUOzY/MpzN6Ttx6dJ7FONu0SLM+xeG2Xwpj
	uZB6/mQ7wK6KaB9knzN3+g87Qv6AOi8M/zhIBrBvgIXylWIDmdOPekSHWKsoSTqGCcbTSsaTtRCck
	GmJytd13RQmnwAhNdzAl87b7kJtBjt/PDAT+gS80TCIVWqPnRY8Doli/rMu2XVZelGHgeSyXzOmsb
	3GglPM8u55z/bt05Xmgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5gM-0001u0-7T; Thu, 14 Nov 2019 03:20:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5gE-0001t4-Ap; Thu, 14 Nov 2019 03:20:23 +0000
Received: from localhost (unknown [124.219.31.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBE25206F3;
 Thu, 14 Nov 2019 03:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573701621;
 bh=OtP6MQL/9zqWPLBJmcEhDTenHXMX6HLpeiVYH4UmMDE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=gQLXWXktL91SJAhfZP1kDUlvFwg3yUAhxTlw3gEyBZm+csv1Fe3nn+RAgRYOGy8zH
 MrSA9ov5qkWicZMsu5PnaUDmANrLHTjaP2NrEUP2gsBQBdTLLG9FbXwLZ1HPjT/uxn
 CEEBcRjEjnPcIOLb6WihxH/e2FQ07IVp9PbR/Az4=
Date: Thu, 14 Nov 2019 11:20:18 +0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bin Liu <b-liu@ti.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Felipe Balbi <balbi@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peter Chen <Peter.Chen@nxp.com>, Minas Harutyunyan <hminas@synopsys.com>,
 Cristian Birsan <cristian.birsan@microchip.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kevin Cernekee <cernekee@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Daniel Mack <daniel@zonque.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Stephen Boyd <swboyd@chromium.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Colin Ian King <colin.king@canonical.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Yangtao Li <tiny.windzz@gmail.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 05/13] usb: musb: create debugfs directory under usb
 root
Message-ID: <20191114032018.GA122287@kroah.com>
References: <1573541519-28488-1-git-send-email-chunfeng.yun@mediatek.com>
 <1573541519-28488-5-git-send-email-chunfeng.yun@mediatek.com>
 <20191112152857.GA5853@uda0271908>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112152857.GA5853@uda0271908>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_192022_395637_CD629BB0 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 09:28:57AM -0600, Bin Liu wrote:
> Hi,
> 
> On Tue, Nov 12, 2019 at 02:51:51PM +0800, Chunfeng Yun wrote:
> > Now the USB gadget subsystem can use the USB debugfs root directory,
> > so move musb's directory from the root of the debugfs filesystem into
> > the root of usb
> 
> My opinion is this move is unnecessary. I breaks existing debug tools or
> documentation which is already published on Internet. 

Having a "root" directory for a single random driver seems like you are
making your driver a "very important" thing in the overall scheme of the
kernel, right?  What's wrong with using the usb subdirectory like all
other USB drivers use (after this patch series is merged)?  That feels
like a much more "sane" way to handle the wide-open debugfs namespace.

Yes, there are no rules when it comes to debugfs file names and
locations, but let's try to be sane please.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
