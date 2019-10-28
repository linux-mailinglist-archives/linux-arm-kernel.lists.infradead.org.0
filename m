Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8B8E6F2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBFyOKJG8FqZOxdBCGWqy4/PYizCpiGn05Hjg4nLCdI=; b=skNTnYfY4qbQ+l
	xELy0Xd/LKuLRbxgsdAoT5bL0p4quZfNrJLKOF101birWqkfzdX9yJ50wIF3zES8IQY4glBKTKWaX
	K6aOhCrNVD1ZhbQUl4zj4+y8dex9rtP44puHCEHi4hUKEK8Ari/O0eqaGqLRtEcIovPjJmH4zhEe1
	CrX4zduDCPW9/s8AKk+HI9GhVFi11Qg2KMXnnJcJv+sg8jUKmJ8pAP0Ze18XG52RV9NGaojKizBOb
	I6xUeGrIvJ22ww5EohNnhSPynrJ4kXBZX6yrzjHzHGUWN1hUjj7p8FIOrfwC2c9F1wWhz9bZtpZdW
	f0LixAXF5OpSYmzX5k0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1QN-0003b8-CH; Mon, 28 Oct 2019 09:34:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1Pp-0003W7-Vq
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:34:23 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F5C120B7C;
 Mon, 28 Oct 2019 09:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572255261;
 bh=5SNe1YQt5wJ+qM2Hq/9urdRM6IpimM8L/9d2E8ooBA8=;
 h=In-Reply-To:References:Cc:From:Subject:To:Date:From;
 b=I4bKVX0icw11mdMLxAGaZvsJ33V2GZI6JsqYC3vyXtWqf0qiQiXzL/6YpjfHgurov
 mxhD0Zy3ct8a5kr9vAbMnxz+jpwYrJgFbtAiw+pVgGsbk7lFCoHKp/aJ4qwK/dwbLS
 Ce0CioKx30+Ni5bHrzTF7toEoitPOxivfxWTkKDU=
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-37-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-37-arnd@arndb.de>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 37/46] ARM: pxa: move clk register definitions to driver
To: Arnd Bergmann <arnd@arndb.de>, Daniel Mack <daniel@zonque.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
User-Agent: alot/0.8.1
Date: Mon, 28 Oct 2019 02:34:20 -0700
Message-Id: <20191028093421.4F5C120B7C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_023422_055492_A71C816A 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Arnd Bergmann (2019-10-18 08:41:52)
> The clock register definitions are now used (almost) exclusively in the
> clk driver, and that relies on no other mach/*.h header files any more.
> 
> Remove the dependency on mach/pxa*-regs.h by addressing the registers
> as offsets from a void __iomem * pointer, which is either passed from
> a board file, or (for the moment) ioremapped at boot time from a hardcoded
> address in case of DT (this should be moved into the DT of course).
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
