Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3082922D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqasBMMk7k3DoMUZhmSpNvwkwABm5sfjd0aQxpiVF6k=; b=gvQA50shc1QVs4
	ESsklcYT5sLLfYHtiiyqjDs9VKcq9S2xr3uIfzjaMwKxjCtrkolXsEEufYXycBeP7jpym+pk9ZW1F
	iubHTGAtnPi27BemkPfrRnyl4gGiBLm5veKiUmC1XSQ+GXmK7bJ8TvNi+y4Ar3ySvqZ5VmpCdrVVe
	qUKis1aJ+8Gc+6fLGNLb6U6/kLs2BOkL9bSNItfqESp+IQIFtSYPYZbs6xUAqy0obwC7mnXmCUAWZ
	Y1FJiVCDsMnxqmSIXn3+C7/FF0KhJLN3SVFeA9fzgZVwoWnK4hCjHzQS2rKVYiVP6VXcTJZIuxwxY
	hCdyHh8NyMd0YJDlQj4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgFv-0005Ir-CA; Mon, 19 Aug 2019 11:55:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgFn-0005IR-S9
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:55:17 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5A992085A;
 Mon, 19 Aug 2019 11:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566215715;
 bh=dEeA2uQyaoXqutXQcrXuZVMeCePDLqTpkPsRnQe15N8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t6w9eaym8VxzPY29L9jVJSOgQXWZKbfZnoYfh2255ufHURxQstc1vc4z5/7KjfJBP
 1Vk0ED/DyhxJbI4OfaU1nQkgYvU73mtQuzoIKHaFNH3b7bSZ5bLHDo259KKc6bNXZw
 8KnVWuPfaX9e/K0CUVy8RVwOa6h7RTfMEVOe7/KA=
Date: Mon, 19 Aug 2019 13:55:03 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 0/4] clk: imx8m: Fix incorrect parents
Message-ID: <20190819115502.GA5999@X250>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_045515_931017_C1E06451 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 08:05:27PM +0300, Leonard Crestez wrote:
> No checks are made to ensure the parents in the _sels arrays actually
> exist and it turns out that several are incorrect.
> 
> I found the errors using a hack to clk core, is there a better way?
> Link: https://github.com/cdleonard/linux/commit/da32c2e76eb373e8a03aec905af2eef28a7997a7
> 
> Also add imx8mn GIC clock while we're at it because otherwise parent
> could get disabled and lock the system.
> 
> Leonard Crestez (4):
>   clk: imx8mq: Fix sys3 pll references
>   clk: imx8mm: Fix incorrect parents
>   clk: imx8mn: Fix incorrect parents
>   clk: imx8mn: Add GIC clock

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
