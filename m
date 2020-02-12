Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC77915B25F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 21:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9B0VCJJTwslJ0kI5RiRdGpXCrGblqrc6IYdhFfjl7Go=; b=IFlPR4OmkKTgsP
	1zJf3sLOKaLQF2Ke5lnDNfOX04ECYrs4wP8E1EjwufZJxf+7wEW38mApM/0ekOVPYJpobiSFDnP33
	rMoEkZRUokIYwe3YuCVIbmUmsgI/yN201bLfh/99/vI4A39C3GlKpXf0UDomlgz2Ac8c8ST/8bjyF
	0gzMsWvRp5/sR2qfPjVD1aR9yJMUwQoapF+AfVH05ZoUkWbxObgQqTJ8bGWPkH+Z3PFWoyClMrHgE
	UMZmhMxmg2+6sJ0rGdKR9Vycy3oCAGeo2CxIE8zukKaS2Qib+HlRJgM+X9LkSjN7rWUIHzE6fRIQ8
	d9ff4IM6qnTdIR5lsDrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1z5i-0003XG-74; Wed, 12 Feb 2020 20:58:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1z5a-0003Wu-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 20:58:31 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B3D9206D7;
 Wed, 12 Feb 2020 20:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581541109;
 bh=2vpa1skMHHv9Ha3+HKM2dSp/5etVHrkhSZVxv7QjBc4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=NfTnP7cKKKy2a1j5JTEK3r4kcg7buqdLFwNdkk97cDqmkWgjo98aE9cFpTUewSkYx
 L/3Snkn4R0zlcWAl7P3lE5+oXF3XfC5qvno5l0he7pNDRwP+zhuJOPO+YT14keSPZ5
 bBUpczqAMTrTqybgXDCY03WArDERNSjglw7DAAuE=
MIME-Version: 1.0
In-Reply-To: <1581498584-14674-1-git-send-email-Anson.Huang@nxp.com>
References: <1581498584-14674-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx7ulp: Include clk-provider.h instead of clk.h
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, chen.fang@nxp.com,
 festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Wed, 12 Feb 2020 12:58:28 -0800
Message-ID: <158154110894.184098.12745716367701333930@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_125830_082738_45083D65 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-12 01:09:43)
> The i.MX7ULP clock driver is provider, NOT consumer, so clk-provider.h
> should be used instead of clk.h.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
