Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C65F1DB7CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JXEvpRHefw6spTyFTl3MRzwczyJvdEMXWwdDfrinvo=; b=DT7JVK1MrL9JLJ
	4VQGdQ2/66HM9kpoiCWodYCijN+aJLoB+jl5Gu+m1Gy0781dKRejrpc7re/1YBjyIruCVvKlXQv/w
	6TaOUOHWjylJTioPU9cyiuEoE8YLj3KzN8BFdRHWZHKq25gAzrT8KsYjVT0V7mMUW6mb0xqhgAoSN
	u7C0sIvwyk0vtVCTYDOWSl1b7QMhi8PlKYksNlG8fqCaENF/CIAXjwuEnVdaxvP1TfhLX9wJBhKlO
	mwMowICW0YrrHjiEV51bCqkUvqqu7lu2/UXRMtaBa4a1Ibf6/4yDzTEvh2RUgor8hNzC+nDfY3hke
	BsrVymZ2wahXDtwg9ifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQNN-0003eG-PY; Wed, 20 May 2020 15:11:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQND-0003dJ-0c
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:11:12 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12571206C3;
 Wed, 20 May 2020 15:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589987470;
 bh=HjS8Q28PCaGh/MsNZ8yOFVrlJ4XtB4FguAsuv4Dq9C4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RG1NGrEKjOZ+0KA3JyTJtc4rWbibnuXDdUVQV0EVKC5HEW9fZUN0KCKr9qEZqqrBU
 UotX5+JP+cbk+CHnZgm4rAkAJ7qmxBlpE/5QkSNuRhYHjzWY4L91ADCFAai5JFOLN/
 /r/k7jmzKJOUUmbkiY1cKkZKP5SDfU3Ol2lqCsoc=
Date: Wed, 20 May 2020 23:11:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V3 0/3] ARM: imx: move cpu code to drivers/soc/imx
Message-ID: <20200520151103.GC9249@dragon>
References: <1589953889-30955-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589953889-30955-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_081111_076427_42346F96 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 cphealy@gmail.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 01:51:26PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> V3:
>  Rebased to latest next tree
>  Resolved the conflicts with vf610 soc patch
> 
> V2:
>  Keep i.MX1/2/3/5 cpu type for completness
>  Correct return value in patch 1/3
>  use CONFIG_ARM to guard compile soc-imx.c in patch 3/3
> 
> V1:
> https://patchwork.kernel.org/cover/11433689/
> RFC version :
> https://patchwork.kernel.org/cover/11336433/
> 
> Nothing changed in v1, just rename to formal patches
> 
> Shawn,
>  The original concern has been eliminated in RFC discussion,
>  so this patchset is ready to be in next.
> Thanks.
> 
> Follow i.MX8, move the soc device register code to drivers/soc/imx
> to simplify arch/arm/mach-imx/cpu.c
> 
> I planned to use similar logic as soc-imx8m.c to restructure soc-imx.c
> and merged the two files into one. But not sure, so still keep
> the logic in cpu.c.
> 
> There is one change is the platform devices are not under
> /sys/devices/soc0 after patch 1/4. Actually ARM64 platform
> devices are not under /sys/devices/soc0, such as i.MX8/8M.
> So it should not hurt to let the platform devices under platform dir.
> 
> Peng Fan (3):
>   ARM: imx: use device_initcall for imx_soc_device_init
>   ARM: imx: move cpu definitions into a header
>   soc: imx: move cpu code to drivers/soc/imx

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
