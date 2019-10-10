Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE93D22B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYcf2JokXw2tRqY+bHsYns5DMn1k+0fDTbhjCHsye5Y=; b=WWjSS0WiD8xgey
	nn/GKlJyEyLjYSXao4CIg1s4ypGr47zh6UsVALHIzgBoXJtvSiaEGpSI1aYn7V/TaIQlqNcBV366p
	fMeu8kvUc4XZVbogCF5JFONLafPF6udgW8xAJ05qeUzcR5LwI0dVbCHBJtubtgT4EB7H3MknLUiXJ
	+4rkMMaTL58oe/Sgf09CXSMXPcIVq1flYqQDyHtn04dSBCbKG2Ct7LKfLKvFgbbr827xlf4/9lT+D
	c/NkXTMw5mVwELVqYoaIZR7RP6cNDyBQGfZnBgBM4pvFbFiMJGItTBy/PbnJdhF3dGukVAbm6Z+h5
	gua5UFhOOYgdo2R7QDAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITn3-00034S-W1; Thu, 10 Oct 2019 08:27:17 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITmv-00032g-Im
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:27:11 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iITm9-0002M8-BR; Thu, 10 Oct 2019 10:26:21 +0200
Date: Thu, 10 Oct 2019 10:26:21 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 0/8] clocksource/drivers/timer-atmel-tcb: add sama5d2
 support
Message-ID: <20191010082602.ytfc2tilizruwrts@linutronix.de>
References: <20191009224006.5021-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009224006.5021-1-alexandre.belloni@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_012709_761951_5D6734E1 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-10 00:39:58 [+0200], Alexandre Belloni wrote:
> This series mainly adds sama5d2 support where we need to avoid using
> clock index 0 because that clock is never enabled by the driver.
> 
> There is also a rework of the 32khz clock handling so it is not used for
> clockevents on 32 bit counter because the increased rate improves the
> resolution and doesn't have any drawback with that counter width. This
> replaces a patch that has been carried in the linux-rt tree for a while.

Thank you for doing this!

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
