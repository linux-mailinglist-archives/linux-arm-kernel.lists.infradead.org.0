Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058E91E60F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FISLQ/1I8ntEJabg8mGlur6MpbB/wn8s8b6S7fX9a6Y=; b=k1cB6ZaqjynoE6
	Bn70qzqEBDkihnWCXBdfLBUDizz7ALtTWqkdlGcWmIGeQHpiyjQIj1qH9I0J/itaCny4mZq3OtJLp
	jry4WlqReEkTvZWUEybqvv+7jqEpwP6XkdMWCVJK1OgGilocdX0FBKsG8zrsiEZNSksgBmrnJ0ETo
	JTebMCdA+RnKjtZxcyBn9FFcOJWq1EZAiscvcKBq44shuSsZo/SBpV+H0+Vx5V4JKRlEQN0hio9h4
	zuo5tRKyfEQkNUM0NTJhHApBLUL8gzrpriE8mCQcXekDdGgYFMG2JDNzNmF2F4zqNOVeHCcYzDMwN
	ueyboA7E+AnOQ6+XXduw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHjH-0004pq-A0; Thu, 28 May 2020 12:33:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHj4-0004oH-2i
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 12:33:36 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeHiv-0000ic-LM; Thu, 28 May 2020 14:33:25 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jeHiu-0004hf-5T; Thu, 28 May 2020 14:33:24 +0200
Date: Thu, 28 May 2020 14:33:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [RESEND PATCH v11 2/3] drivers: input: keyboard: Add mtk keypad
 driver
Message-ID: <20200528123324.baoihyrg7rqjtt6r@pengutronix.de>
References: <20200528090144.54033-1-fengping.yu@mediatek.com>
 <20200528090144.54033-3-fengping.yu@mediatek.com>
 <20200528102730.GK1634618@smile.fi.intel.com>
 <20200528114558.5decxsun2o65k2fr@pengutronix.de>
 <20200528122248.GL1634618@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528122248.GL1634618@smile.fi.intel.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:31:38 up 195 days,  3:50, 196 users,  load average: 0.17, 0.13,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053335_367955_894A41B7 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Fengping Yu <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-28 15:22, Andy Shevchenko wrote:
> On Thu, May 28, 2020 at 01:45:58PM +0200, Marco Felsch wrote:
> > On 20-05-28 13:27, Andy Shevchenko wrote:
> > > On Thu, May 28, 2020 at 05:01:47PM +0800, Fengping Yu wrote:
> 
> ...
> 
> > > > +	select CONFIG_REGMAP_MMIO
> > > 
> > > This is wrong.
> > 
> > Why is this wrong? The driver uses the rmap-mmio functions.
> 
> In Kconfig CONFIG_ prefix is implied.
> 
> There is no CONFIG_CONFIG_REGMAP_MMIO.
> 
> > Thanks for the explanation =)
> 
> Sorry, I think it's obvious...

Damn, you right it is. Bloody automatism mismatch in my brain.

Regards,
  Marco

> 
> > > > +	select INPUT_MATRIXKMAP
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
