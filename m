Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A42A1B5DE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94rNQ33iCQjl5RPXSnstC6R9qYxNw2utEw4ENC07E4g=; b=YDIUxJFzf2WWuT
	piZDWP3gAhZ8gf7/6y0DHbEsKp2LVqcXzeIfmXBHV4FcvztEfj2acnwrAXK3YBWbGd2n0gb7XRm0o
	HbdnpK+rHa5hnGmCzdJKkFF0M9LVqDc3hRjFk6DqNjmkka/ecdvBtm1g2qjhUz+KPwgExAv0bIbkw
	Ij/9zxKHTvEGUHKAdfZ5QdNVhxf3QHDQu3bK1d5hNcxSrEHfuL9BbhZUp515QFcX1yiz4dF1EgTex
	8q0IixfzWSIXPU2Y+2rADvcUTImweZBWVZNBgkqjoAFU+E3yvWE0M2eNYhIxJj+BCVcuKVJygLOrY
	Xhlp3EFrR1UkmqZmlh2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcx2-0004cv-8H; Thu, 23 Apr 2020 14:35:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcwt-0004cD-OC
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:35:33 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED0CF20728;
 Thu, 23 Apr 2020 14:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587652531;
 bh=Ee+RD+OrRjDd8d6DdnRs7oPT8hzvTilk3x0tw9gsORA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X7pKWg6D9PARol2JiFqEgz07RTYtk8QumlideyX+SsrZhpbtyNIMDbcinxy5AHhjN
 HH1e/ns54nnrepTdJMC5i0KS5fGoqPr40lSMi0v8eXto3fy01qvzEFshiui1yyC8t1
 SsJTqSW4vwcvGTDZRnMmd06hwJc0Opgep4LtgUJY=
Date: Thu, 23 Apr 2020 22:35:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] firmware: imx: scu: Fix corruption of header
Message-ID: <20200423143523.GC9391@dragon>
References: <be0c5e442b5c0d29c136e802e8f4552d85955c32.1585173194.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be0c5e442b5c0d29c136e802e8f4552d85955c32.1585173194.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_073531_800815_6B70FBCF 
X-CRM114-Status: GOOD (  13.98  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Franck LENORMAND <franck.lenormand@nxp.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 12:00:05AM +0200, Leonard Crestez wrote:
> From: Franck LENORMAND <franck.lenormand@nxp.com>
> 
> The header of the message to send can be changed if the
> response is longer than the request:
>  - 1st word, the header is sent
>  - the remaining words of the message are sent
>  - the response is received asynchronously during the
>    execution of the loop, changing the size field in
>    the header
>  - the for loop test the termination condition using
>    the corrupted header
> 
> It is the case for the API build_info which has just a
> header as request but 3 words in response.
> 
> This issue is fixed storing the header locally instead of
> using a pointer on it.
> 
> Fixes: edbee095fafb (firmware: imx: add SCU firmware driver support)
> 
> Signed-off-by: Franck LENORMAND <franck.lenormand@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: stable@vger.kernel.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
