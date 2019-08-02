Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941877EB7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 06:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3f5/Cy40C9PK2LzGfaKc2RTZbK9n7mul3BR6f4YH2cY=; b=nrTy8gVHnTv052
	fv9kE3Zw7td1hEGW4iutR+rSKIdkeaGW+OIyO8IlkVpDJDwskeYbV9ctUq4dTRPCq82gGsdKNR4Ls
	lw6+SWs+iDas8ThvaWK+HJY5qZOdzz2Q6V3YsXp8BVK4Kup8yXYxkdXIJ9rGr3tQ+TwXofM3q1fS5
	n8BVflYMv0lI6kvv5oMAFQC6KxHL4b1V3S3BCJ25h8KH4KXXuAX/NQlVQdzEpa5aHTqzN0TFqs1iN
	Jdfdg3q5yFgbsp/YVp/q3GZfhYqv1IbRJxygylCQGfC0qIZKxWryN7w54cSgtQKKuy/zW0P9/HIlM
	gF8bobhVMgoYiZBgCTCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htPCY-0005nF-Ar; Fri, 02 Aug 2019 04:29:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htPCO-0005mu-Hb
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 04:29:50 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1htPCI-0004kg-U4; Fri, 02 Aug 2019 06:29:42 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1htPCG-0000hC-To; Fri, 02 Aug 2019 06:29:40 +0200
Date: Fri, 2 Aug 2019 06:29:40 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH v3] mailbox: imx: add support for imx v1 mu
Message-ID: <20190802042940.5rhmrwr3dxona4kr@pengutronix.de>
References: <1564563107-23736-1-git-send-email-hongxing.zhu@nxp.com>
 <CAEnQRZBJTCMYXwBz9pDVGD+7-gE_Jba-5kwXYC8qOPkEBiVT=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZBJTCMYXwBz9pDVGD+7-gE_Jba-5kwXYC8qOPkEBiVT=g@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:27:45 up 76 days, 10:45, 46 users,  load average: 0.05, 0.03, 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_212948_588075_AF1E6481 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, jassisinghbrar@gmail.com,
 Richard Zhu <hongxing.zhu@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 06:54:27AM +0300, Daniel Baluta wrote:
> One more thing. See below:
> 
> On Wed, Jul 31, 2019 at 12:14 PM Richard Zhu <hongxing.zhu@nxp.com> wrote:
> 
> <snip>
> 
> > -/* Control Register */
> > -#define IMX_MU_xCR             0x24
> >  /* General Purpose Interrupt Enable */
> >  #define IMX_MU_xCR_GIEn(x)     BIT(28 + (3 - (x)))
> >  /* Receive Interrupt Enable */
> > @@ -44,6 +36,13 @@ enum imx_mu_chan_type {
> >         IMX_MU_TYPE_RXDB,       /* Rx doorbell */
> >  };
> >
> > +struct imx_mu_dcfg {
> 
> Can you rename this into imx_mu_regs ?

I decided not blame this part. Otherwise adding other type of quirks
will lead to more refactoring work.

> > +       u32     xTR[4];         /* Transmit Registers */
> > +       u32     xRR[4];         /* Receive Registers */
> > +       u32     xSR;            /* Status Register */
> > +       u32     xCR;            /* Control Register */
> > +};
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
