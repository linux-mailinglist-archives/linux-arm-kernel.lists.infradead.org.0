Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4521D0456
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 03:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvHI+6q5QopJ9NZcl9AfpkAFifO3ZJ9f6wV9uqdi75g=; b=g49IAh2dVpDpdP
	N+vfLcQjpYP2V9x0xtfRa5GVDr4KtxmJ1Tdo5rJ356WF8Qcf6X30tYQr3T3wIorQ8jk92W2nZvgz8
	dIUYoa5dJ2gJDo3decfjhnBhlDL1j3X0acEyUlKzKSksSMWxSodWStgDiPO1xVkfkHgAol4Xy99KW
	0KRXRqKOg/XGISsVwqFH79tyxiVjLWvz5THaMuKqKIDJb3DUWy9hfOcdeqU4ZCtFiCEgRPe/fwUJG
	EWhQ3r/UTjpra+2K2eCn9My2cfrQcGk+mT829AgeKPwJvqBQRQRYBaLv5SmQZ1kNQPTsK4ACX16he
	85cGgM/PjQM3i0akGNQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYgGF-0004M2-Pp; Wed, 13 May 2020 01:32:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYgG9-0004Lk-Gp
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 01:32:34 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E589A206A3;
 Wed, 13 May 2020 01:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589333553;
 bh=nbZ6e21LUS6jlKUaB+td5gtdRMCE+fq54dDdh1JlO/E=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=AVbIooIY1gVflrQxp4pA+CH1WIo6x2zVR2yJNiGUcx93FkcWHnXiXxgQlepZ02xyW
 3YHaxiVSygYvb7HtLTA4I4weIvjoyVr3W6GuoxepHibAK1RHeBsPZ4Qcey7It2V0x8
 1a0Y6d5wpamO/XxfObhwZGSQBoZpkCzOYZsNl/1Y=
MIME-Version: 1.0
In-Reply-To: <20200507112955.23520-4-geert+renesas@glider.be>
References: <20200507112955.23520-1-geert+renesas@glider.be>
 <20200507112955.23520-4-geert+renesas@glider.be>
Subject: Re: [PATCH 3/4] clk: qoriq: Add platform dependencies
From: Stephen Boyd <sboyd@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Jens Axboe <axboe@kernel.dk>,
 Li Yang <leoyang.li@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 Rafael J . Wysocki <rjw@rjwysocki.net>, Shawn Guo <shawnguo@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Date: Tue, 12 May 2020 18:32:32 -0700
Message-ID: <158933355211.215346.2191470764724379110@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_183233_581444_C9D66C1A 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Geert Uytterhoeven (2020-05-07 04:29:54)
> The Freescale QorIQ clock controller is only present on Freescale E500MC
> and Layerscape SoCs.  Add platform dependencies to the CLK_QORIQ config
> symbol, to avoid asking the user about it when configuring a kernel
> without E500MC or Layerscape support.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
