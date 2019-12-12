Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB67C11D175
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3co6qAKHC2zW9wq1duwBg92h3s0YyXmbPN1rp+ZmKk=; b=O9K1a4W7KCfxJ8
	SMsHk33RR1KTCmX6dJij9JzxUocFm6XLFfhCuheXinvfaP3xEsktk1eM5dJ2l1p8JiKg8j+jdgXOc
	4gOIMLqdo6nXOnm0cOZmYllGAkK2GsVyGPErKxRkQaLvoP28kna7N8PPqObCRY0GPlMhCUBS1nkXd
	LygO7MqXGiwgR3KgVxrhs4MTySSef+LrDOfAcuCm2EKUGW2Cg+ifnjQgUqfK6cZjSyf+hwK6o3a7g
	ktMipuLIz5MjcFPd1TYlT7nfrybQB+ffEX5IUgTYCyT6z+SPfNXiOOBrworXhrwrkT5wIW5wChN9/
	epzU7GNi6YGb7n7F0h5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQkf-0004ie-7d; Thu, 12 Dec 2019 15:51:41 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQkV-0004eD-MY
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:51:33 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 05F9E20348;
 Thu, 12 Dec 2019 16:51:26 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id E13E42007E;
 Thu, 12 Dec 2019 16:51:25 +0100 (CET)
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
 <20191212141747.GI25745@shell.armlinux.org.uk>
 <58c27422-e06c-f42e-16ea-baeca3bb9b01@free.fr>
 <20191212144616.GJ25745@shell.armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <d2595721-b5cb-d268-d6bd-bc794c07aacc@free.fr>
Date: Thu, 12 Dec 2019 16:51:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212144616.GJ25745@shell.armlinux.org.uk>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Dec 12 16:51:26 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_075131_883663_F02AEBDC 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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

On 12/12/2019 15:46, Russell King - ARM Linux admin wrote:

> However, please don't call this __clk_put().
> git grep __clk_put will tell you why.  Thanks.

$ git grep __clk_put
drivers/clk/clk-devres.c:static void __clk_put(struct device *dev, void *data)
drivers/clk/clk-devres.c:               if (!devm_add(dev, __clk_put, &clk, sizeof(clk)))
drivers/clk/clk.c:void __clk_put(struct clk *clk)
drivers/clk/clk.h:void __clk_put(struct clk *clk);
drivers/clk/clk.h:static inline void __clk_put(struct clk *clk) { }
drivers/clk/clkdev.c:   __clk_put(clk);

I see. I will s/__clk_put/my_clk_put/ in my proposal.

Out of curiosity...

$ git grep __clk_put v2.6.29-rc1
v2.6.29-rc1:arch/arm/common/clkdev.c:   __clk_put(clk);
v2.6.29-rc1:arch/arm/mach-ep93xx/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)
v2.6.29-rc1:arch/arm/mach-integrator/include/mach/clkdev.h:static inline void __clk_put(struct clk *clk)
v2.6.29-rc1:arch/arm/mach-pxa/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)
v2.6.29-rc1:arch/arm/mach-realview/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)
v2.6.29-rc1:arch/arm/mach-versatile/include/mach/clkdev.h:#define __clk_put(clk) do { } while (0)

Genesis seems to be 0318e693d3a56

The clkdev API expected platforms to export a __clk_put method?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
