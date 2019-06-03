Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9800F32E80
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCUaaiXD1VssUKkyn1Bi15P99+Okp73Z3mo9y/ufj0w=; b=Q1iUphQOJSjvnI
	t3y4eds8qbzhJlOEcxgAyHPrq1K06F1MInjALuqrkHwauQfLcuxkRc4NHrelcxC57ZGCM1flLV/+I
	too8SZ3pjuBDO5Cd8lpxTFde5wWp2jM+menw0Qhh8OKCmb0lojqwLyR6GJeXY0ojbd7XIxTMGer2n
	jMJKdz0RB0sOVL8YA55BjULrEkZNx8krSF+37s5S65yGKkNch1f8RFC4mIeDE4HGVJoF7CgB5+kYx
	Hkib+OymTfmw8J1LBe2vZJv41Xd2jKZHobqb7aBAIcqFYUHjVlu7/rhjvhgOR5Q5rqxA280AJWDK8
	ZMHJ8ypTCvgGWVSnW5xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXl0c-0005Uo-Ot; Mon, 03 Jun 2019 11:20:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXl0S-00059b-It
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:20:01 +0000
Received: from dragon (li1232-89.members.linode.com [45.79.133.89])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C71F2248FE;
 Mon,  3 Jun 2019 11:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559560799;
 bh=51bKqvI2Kh1iIsbEEX1iYpa3HSCjXs9uBGXPd8wvuP8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XDVP7lay24TybY1VpQ1VnqW1oABadoI+k+LLsl4bRjiQuVoYsAN6y9COAJHDqlhZY
 m66hFh5zTqaZH2OU8SZO8qJ+xppQicaQatCPxa2bIw3z8tWX8xdxY0RnemDOxqZEfH
 vJVu95BZ8U90k63FFY6stxhTo+W4t4L86BD/VBKg=
Date: Mon, 3 Jun 2019 19:19:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH RESEND] clk: imx: imx8mm: correct audio_pll2_clk to
 audio_pll2_out
Message-ID: <20190603111947.GA15919@dragon>
References: <20190531075638.7892-1-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531075638.7892-1-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_042000_637819_2822800D 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-clk@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 03:56:38PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> There is no audio_pll2_clk registered, it should be audio_pll2_out.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
