Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 374B7191F55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrrKVUsiGcpF9bgALRHO70wb+gB2isaT7r5n60SV8gk=; b=d99yzrwhdiOlM/
	ulQ9gL7hsn04N6UPawP8xuRRzJ7El15ZfnY3jw20i3khqaArK7j//rcAJegYoQ7wRcIUGEY7G8IgO
	dcEvEQ1GkF3zF6kHtLK85vKv4MM09dZfa3SVhKBId9uHyMlAW79PNTa408gWtmv2qcetN2kQWQFNM
	5ltYLoEjgWH5zieZela1YndNJ4GISbFBt9bIkr7uNGHY90fJqzTwquA7Rc64z2+rTQrSLnDRx3zLH
	xx6Z+iUtPfix8w1790tH8Ng98RvANkN0yE6NKyXR4uYhKbDX1NKS3pgHc6hql8C568f+FhYjZfBqt
	5ZIP1mWEutTAxpjY9gBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvwT-0007lE-Tc; Wed, 25 Mar 2020 02:38:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvwH-0007in-EK
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 02:38:42 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DD8B20724;
 Wed, 25 Mar 2020 02:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585103921;
 bh=REPPFvmAWeExSkY2NpzUI6zxo6aH5C1vRO5zrdUrnx0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Y0t3+bjTgmGfefRowdnStqQvqnUvz8jJU+N/Ly3V1x9mhvlL7LjZfygLAmtuI9yzp
 XytbQ5C5Hh6j3ke5Jl5QLQ8IKI1a1f6+rxlxwp1kqKkNeu5RHQDyWh4SFEkcnsRnX2
 j2hrDSxTP3xMrxHvfrq4lWdgtN/o1QWTFN4Fq0rI=
MIME-Version: 1.0
In-Reply-To: <20200316064322.GI17221@dragon>
References: <20200316064322.GI17221@dragon>
Subject: Re: [GIT PULL] i.MX clock drivers update for 5.7
From: Stephen Boyd <sboyd@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
Date: Tue, 24 Mar 2020 19:38:40 -0700
Message-ID: <158510392026.125146.1277266093057110288@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193841_502670_E5774EDE 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Agner <stefan@agner.ch>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Shawn Guo (2020-03-15 23:43:23)
> Hi Stephen,
> 
> This is i.MX clock driver update I collected for 5.7.  Please consider
> to pull.  Also, 16e71d4da799 ("clk: imx8mn: add SNVS clock to clock tree")
> was pulled into DT branch as dependency, so please keep it stable.
> 
> Thanks!
> 
> Shawn
> 
> 
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
> 
>   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/clk-imx-5.7
> 
> for you to fetch changes up to b5881e8019e0d39c43a2da56c4ae616a50615e00:
> 
>   clk: imx: clk-gate2: Pass the device to the register function (2020-03-16 09:38:30 +0800)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
