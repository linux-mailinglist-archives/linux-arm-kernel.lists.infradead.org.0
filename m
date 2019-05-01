Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD2610E55
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 23:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BhdS1U6qyqJ1XrHZqFPbSPHQVP7WsEUXv6Z7D66A1Q=; b=aO3kLlpjaOOqTl
	qugfNkUl/ZKKgpHLgJrQoBDLYPRragbi0DtYJlHmjGB6Do6qMeB799dgI2S4Zizjj3VXS4G8/LYr9
	CaeDxtoOfQ3bPrQnJgoQv6k6DjDcrob7MDGpv5cHcttBx+xuCZMPeG7zQ1XKj0aeQYySHHfgPXV4D
	RJWG99b1Pot8Zbov+caXRqkB1ukWkb/x+Oc8amMBuQTnKKm4IgT6iZ7vUA6+M8UeuW/xizMNSIshb
	zpVvyY8WDqsdA2mMZnSBJPSmEqkdR2HLUEXXP8cJmnsUdq5AQ9AKrDVbGp3IDnzyYDB3KX4kjO/7i
	LJjQ/WRLSaRtwB4koifA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwLl-0006zd-OY; Wed, 01 May 2019 21:01:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwLc-0006vF-J3
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 21:01:02 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 094E22075E;
 Wed,  1 May 2019 21:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556744460;
 bh=RNfxhTIjmff0paVh7E25ufbTsE9xtP3fIa1eYFm/084=;
 h=In-Reply-To:References:To:Cc:From:Subject:Date:From;
 b=IbF1Cx5Sgla9OzDphVepmru3gr3lihFyNA7Ktxt/wAwj70/vPxCydDr43ABcgLTIE
 C/WulMaNZ+OymYH6AkVZdNkaNdsG3k77QxjCpgpXjl9ONBhYKznyKS+8+0Be1rLTfP
 K255BKxkq4mqk/ACNZaqJJM6Ux6Qo62e6VX/FKJo=
MIME-Version: 1.0
In-Reply-To: <1556585557-28795-1-git-send-email-Anson.Huang@nxp.com>
References: <1556585557-28795-1-git-send-email-Anson.Huang@nxp.com>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Message-ID: <155674445915.200842.2835083854881674143@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Wed, 01 May 2019 14:00:59 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_140100_880569_0CAEE9D8 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Content-transfer-encoding header is still base64. I guess it can't
be fixed.

Quoting Anson Huang (2019-04-29 17:57:22)
> The pllv4 supports fractional-N function, the formula is:
> 
> PLL output freq = input * (mult + num/denom),
> 
> This patch adds fractional-N function support, including
> clock round rate, calculate rate and set rate, with this
> patch, the clock rate of APLL in clock tree is more accurate
> than before:
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
