Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E2A1A26F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 19:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ye55pjkXRcowTqZTS9+8f30JYzQqYR+F8ud1alyy/9A=; b=koXCXrguuO/bme
	NbofXtbnyHYSs+vkExFzijjSGbNVQ9QNs6Whl0vwr2zgW2YZrB3aMfZqAArtR0C3TAjlN9MAjuLCp
	i9qQZsTjTMkckyw+D8DNdg5lfDUDhftv7Y1498BMt5R/2s2vI6q6Nu8uIaNVZ5tQelVsLQQ593RfK
	rqiRRtRGqmc60BDngygTpTBhfvOy//1BQJEIIjqmOkJc0/Xe+2t95seGeCiHt8R/qZg/HDVEum1sq
	sWEOQTlGGgmN/zlwyfTntmvvj7RRHgV4aIJPx7UckhqQeQeXuHepV2HkST1ij9Tp3SHSCFxMj5Uy1
	L7cMXyeaX7feJDmwX2Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP9Sf-00024v-7z; Fri, 10 May 2019 17:37:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP9SX-00024D-52
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 17:37:26 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7418F20882;
 Fri, 10 May 2019 17:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557509844;
 bh=u8hWeVj3XoAErt5dCdOn71vsL+AxoM2DGoFvFOxbdKo=;
 h=In-Reply-To:References:From:Subject:Cc:To:Date:From;
 b=FWQ7nA8yA5jTt1QLv/ezUcpDBHmepM6VBA5IpNAh4OE3556etLqEVYiGfxYtmCZUR
 d7+Pa9QLBh3kb9N3Uq1/A/RuOdu4LV8ODIqrm4BFfvM9RpyWli+NgG2ZWovKQSpNws
 KlKxwIRdqaHvPH6+0D8e7yJYnR92Iomifb9DRuFU=
MIME-Version: 1.0
In-Reply-To: <20190510032746.GF15856@dragon>
References: <8776296d079b3b4d67d4421656238757a8ad373d.1556046082.git.leonard.crestez@nxp.com>
 <20190510032746.GF15856@dragon>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx6sll: Fix mispelling uart4_serial as serail
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Message-ID: <155750984356.14659.16650159344577092731@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 10 May 2019 10:37:23 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_103725_208599_A44F75CA 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2019-05-09 20:27:47)
> On Tue, Apr 23, 2019 at 07:05:08PM +0000, Leonard Crestez wrote:
> > This looks like a copy-paste error. This string is not referenced
> > anywhere so it's safe to rename it.
> > 
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> I see this keep coming, so have to ask you to fix your patch sender.
> The base64 encoding makes it very difficult to apply patch.  I have done
> manual applying for your patches a couple of times, and I thought that's
> just accident.  It seems not.  Please fix and resend. 
> 

I already applied this one. Sorry, forgot to send the email.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
