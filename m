Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7BED9B30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cyjkRlytKiXfOEfHr0ntSJfMyhkvjGB3gjm/neoBuM=; b=TuEObJFdG3HMWm
	lf/51ItjH66pk1RRQ3Gb2muU+P8LP8djU9NhtnStTmW5yVGjdTuvW1nZxzywejDTtlKoXJcGWafxv
	jRYU/rSuL5jBV7hns7nTTGNHLjnOHmfJj96ml8WlLMHadHzqO++UW0Nz0PTRyCfC3K74wCoh1f270
	6JB8uXzjmRfy7R4ECZlJlGjbob4IZopLDFA08HTSuYAD+OrIfFXoCnMSsGM21hTwfY5KvIooMoA4X
	sJBsuRpFqfSyweO93iyEwIqmZdvPrKsVajUa1Ql6cZLYysWt6MxClW9onlmy1cautwRu5swNOenEP
	crIrMiSQlpSA/XaQVHAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpf9-0007Cn-3Q; Wed, 16 Oct 2019 20:12:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZI-0001lk-4g
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:06:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF8032064B;
 Wed, 16 Oct 2019 20:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571256406;
 bh=ZOsiycWlcu+SnL6IZ3oaAxvxPo3wW8QAyUj/9tKCtvo=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=B9NUNTRP+CR61Zxnndl+/V3ZoFYybuIX36+wPHeBqad6DqY92dc/6Nt/sq9pzmylP
 liwk3NROPaBBFnZ9NXpDxuYoPC30nEwnxl1crMQZ+yK69LELdd9mdaoMM9oVjtkM1e
 9Tk/EGuK17KAHY9D1yfSgN6NTJIKF7hldDACe0Zw=
MIME-Version: 1.0
In-Reply-To: <1571122989-29361-1-git-send-email-peng.fan@nxp.com>
References: <1571122989-29361-1-git-send-email-peng.fan@nxp.com>
From: Stephen Boyd <sboyd@kernel.org>
To: "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: imx8mn: drop unused pll enum
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 13:06:46 -0700
Message-Id: <20191016200646.CF8032064B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130648_243383_FBE22DEC 
X-CRM114-Status: UNSURE (   6.30  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Peng Fan (2019-10-15 00:05:53)
> From: Peng Fan <peng.fan@nxp.com>
> 
> The PLL enum definition is not used, so drop it.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Was it ever used?

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
