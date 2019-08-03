Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCE38053C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27bp4vTtdmYgE/neoOdrbx5mnYBaFQlKmX3O/5Upc1Y=; b=LW/yv6Bc/ymrVG
	VNfYbyTWhk6Db56THPQ/OHou7W+sW7FJX/E94nxCpe724+8YGAXrovTBP/CwYpWjgTwsfecShW7kX
	wlonaNfsF6fd2c5oj6JAydOknmBq8KucvDZfClMWCcAf46ifOml96qASXiWrByRAmrbbUyIEHbnH4
	Mk2I5OceK+kfc4BTjFhPZni+nxaKDd8r1se8aJ4DZ/Np89vgfQe02LQ6gi61hOXXQyBia9as/601A
	Z5szk1Jazz70N9AwN54+3HwtoOq5sX7qpbo7jk8QoA0iUJ9MhgwkUICpogI+1UgqCv2Td6Pd53Wft
	IQAhhEM5YelQWCEZwxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpAw-0002FU-6o; Sat, 03 Aug 2019 08:14:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpAm-0002FA-2k
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:13:53 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CBC321726;
 Sat,  3 Aug 2019 08:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564820031;
 bh=xRf3PhzKfClVfWXbj3OVmFX6p7PLIiziHpTBekdtiCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ss9AepiccoCuwp3jI5V+AvCYwJ22kCiRaDT5KOS6xQIatNXunmHVenhgXnMD80Qc7
 TqOSBRs+EXOFgBBij2U6aNxOn0caKeWWE6vXq6w/NSBgOCx27W/Ng3JVTPvTg/Eryz
 5i7jnRf79SbA0CzZKOO5R8mlymy/qdjEkCD2L+vU=
Date: Sat, 3 Aug 2019 10:13:44 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCH v2] clk: imx8mm: Switch to platform driver
Message-ID: <20190803081344.GD8870@X250.getinternet.no>
References: <1562682003-20951-1-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562682003-20951-1-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_011352_138669_FBA3C408 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 05:20:03PM +0300, Abel Vesa wrote:
> There is no strong reason for this to use CLK_OF_DECLARE instead
> of being a platform driver. Plus, this will now be aligned with the
> other i.MX8M clock drivers which are platform drivers.
> 
> In order to make the clock provider a platform driver
> all the data and code needs to be outside of .init section.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
