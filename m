Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33711853CE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 02:17:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRBZBFMQ0K4Y7SF9uBkn6A/t7Y4ji6uZRCalePSA7kw=; b=TMNT68w7+b319R
	LjEQNlhivk6JfqREzXGhx6KzF1aHZm8FCyDf9V4+vxqtHh6pMZ6osRZ5CLYaV6gIuktvEgaDy2Nyd
	F/9GkmTc5iQm0CbDYOJ2O8yZGmzpwne69WPNio62CHweRpm3vzdilyegiFFLTi3yHWnwZHnrxpqIU
	+WVaYpUpI8rLeWGjekWnSatiBt5eUj54dSo7RPZugQnp9YGS/2mj0ohqIcYecEmyJM1BDEsYa2bbu
	dtb2eASt0CNnPbysfUoaTCL768hKjw+Hum31+ht1mbOzHHaetCzOkC6w9AMkjELPQjA6cyN+QWGfc
	GYQiC0ztD8H5zRWZY5jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCvQu-00083W-PU; Sat, 14 Mar 2020 01:17:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCvQi-00082s-QP
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 01:17:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A13DC2074A;
 Sat, 14 Mar 2020 01:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584148651;
 bh=+OILuvouBCX8uMF/DlchLPyrx1JavU6/eR/UOXvuv8c=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=R7xvdtknuSkmlj0jrBNdhaBIycSQ2z7QKYLKtuKhx4O87Qcm/sNM8vE+OeWqk5IlB
 Zz74RpD+G7TgqxXlffwyX6UUf506YN4U+yRzn0iS+3a8CELbDkU83dsKnanJHrok9c
 fZimPWbrxN9BfUoGqhYBr+IUC3iseze8NpNOD/YQ=
MIME-Version: 1.0
In-Reply-To: <1d569e023b6cb7b8d0da8d1bcccd92e97fe436c8.1583896348.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
 <1d569e023b6cb7b8d0da8d1bcccd92e97fe436c8.1583896348.git.joe@perches.com>
Subject: Re: [PATCH -next 010/491] ARM/SAMSUNG EXYNOS ARM ARCHITECTURES: Use
 fallthrough; 
From: Stephen Boyd <sboyd@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>, Joe Perches <joe@perches.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>
Date: Fri, 13 Mar 2020 18:17:30 -0700
Message-ID: <158414865091.164562.17682025008359421835@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_181733_821237_2B775CC6 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joe Perches (2020-03-10 21:51:24)
> Convert the various uses of fallthrough comments to fallthrough;
> 
> Done via script
> Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/
> 

This link doesn't work for me. It leads to a redirect for 

https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com/

>  drivers/clk/samsung/clk-s3c2443.c | 2 +-

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
