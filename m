Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3947811D204
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUUjLbKXSnLRX5+Se7OVthz3x+Pm90fjAeGfo34KdQg=; b=JXD44Xwb25F8Gd
	rRYP6ksuZ2VewK8IOBKVtE2kB/j/lrCervM0tLkDT+9pI2/lbKHhTpSsXygJ6tP8Gr/t5EfWDlSFx
	IS8Vy6y/BskCOWX+G7Frh1byzMbJlhx04hYc9WIzNBHOuI/tA6RyDKZIbiKsDKlubhpDlDB8qz742
	emDScSsMax9i30bOsFQpV5IX1gVdBTR4hxf6urXtL54gZUrRXwqc5yctknHYYJQc1kERNc9D1Xagv
	35HYyIRMZuD8WpNdX8JGu0umyOv8NzGVuE87iJyMImkGPJEnQ1tGPMkBCWJ2bsIz2bL4cGyOlA8nJ
	mTOP3RXBmZOffxlia++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifR67-0006tZ-2x; Thu, 12 Dec 2019 16:13:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifR5t-0006si-M9
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9JV0lxxuv671N8NKDdLe7T2sZ0c3sP/gDG4QJmH6v6I=; b=O7qKrYCh4SxHNiVfo4LTPQ/DO
 U+hCmjmuk4IQ799vwQ5um1611eJpj4PQUb0cYEaKZ3rK4kc+wExWFpX3srZwyNIXinvP6MUDHjboi
 UK8o1uGU/IawIuph3RM1AW/yuZNyJgaLtI79uSPqOe2WyPGOR6JbXnMSuuFCTw1jgLmEWJJ8xYfB3
 WtQgpsG9evG8UM4mL1Zl5IdFe7K+o0h+AmcI9zk/lA1p1RQ8dP3MK0XWOF3K+fsP4Z7uCGyeKif6w
 y2yCqfK/88wBNjaoxW2R44hknsK857fuLorjm86sNhCDC6AWEulFIpsSytQR54FB2g0aBo/vZd4uL
 bOHnjSs4A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:40386)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ifR5f-0007lu-IU; Thu, 12 Dec 2019 16:13:23 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ifR5c-0006wl-IL; Thu, 12 Dec 2019 16:13:20 +0000
Date: Thu, 12 Dec 2019 16:13:20 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191212161320.GK25745@shell.armlinux.org.uk>
References: <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
 <20191212141747.GI25745@shell.armlinux.org.uk>
 <58c27422-e06c-f42e-16ea-baeca3bb9b01@free.fr>
 <20191212144616.GJ25745@shell.armlinux.org.uk>
 <d2595721-b5cb-d268-d6bd-bc794c07aacc@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2595721-b5cb-d268-d6bd-bc794c07aacc@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_081337_723351_2E0F2A00 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 04:51:25PM +0100, Marc Gonzalez wrote:
> On 12/12/2019 15:46, Russell King - ARM Linux admin wrote:
> 
> > However, please don't call this __clk_put().
> > git grep __clk_put will tell you why.  Thanks.
> 
> $ git grep __clk_put
> drivers/clk/clk-devres.c:static void __clk_put(struct device *dev, void *data)
> drivers/clk/clk-devres.c:               if (!devm_add(dev, __clk_put, &clk, sizeof(clk)))
> drivers/clk/clk.c:void __clk_put(struct clk *clk)
> drivers/clk/clk.h:void __clk_put(struct clk *clk);
> drivers/clk/clk.h:static inline void __clk_put(struct clk *clk) { }
> drivers/clk/clkdev.c:   __clk_put(clk);
> 
> I see. I will s/__clk_put/my_clk_put/ in my proposal.
> 
> Out of curiosity...
> 
> $ git grep __clk_put v2.6.29-rc1
> v2.6.29-rc1:arch/arm/common/clkdev.c:   __clk_put(clk);
> v2.6.29-rc1:arch/arm/mach-ep93xx/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)
> v2.6.29-rc1:arch/arm/mach-integrator/include/mach/clkdev.h:static inline void __clk_put(struct clk *clk)
> v2.6.29-rc1:arch/arm/mach-pxa/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)
> v2.6.29-rc1:arch/arm/mach-realview/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)
> v2.6.29-rc1:arch/arm/mach-versatile/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)
> 
> Genesis seems to be 0318e693d3a56
> 
> The clkdev API expected platforms to export a __clk_put method?

Along with __clk_get(), these were the interfaces from the cross-
platform clkdev code to the clk API implementation specific code.
__clk_get() no longer exists as its uses were eliminated, but
__clk_put() remains.

It's quite logical if you read the patch which your above commit ID
references.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
