Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AD69076B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 20:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UzScx5I/QALqbSK3cOsprwQKKCGItDCEdUZwnDghVY=; b=IZIQ/hBECBOBYv
	DcHp+bc0RuyYp716wTzkjCiLrr8bTXzW3d8rcTa56KIKiCqumgQ0bVa/OqRVviQ7I23+JKEgI0gUx
	v7nUDpApmKWBTlB3mlkr82lCm4tX5iw44aIEJcXqXUJuDzCe6ICvpm1VeHrnQeVclGyRQ1hr21tbG
	VmUufjNEXqK2LgbXmlvVpe8mnsrGhTJqp02PSMSQ7B3toJLR7w0Oj4qPRVMPYG8BcscD9MUFUD8U0
	nVK6nuTFgYYGtZ5iu88Xs3Zd7FsQx0Olg+v+GCfCchQTdOJxGxDjIKsryPdKwqVSbNf8YByaYXh1U
	mKu/icgvOBZDuQQvkeuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygZ1-0002Oc-V6; Fri, 16 Aug 2019 18:03:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygYp-0002OH-9y
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 18:02:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D37BD20665;
 Fri, 16 Aug 2019 18:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565978566;
 bh=I+9AYbqHJGWDLUYrQuzL4EoZcCetSaXNK4owyhlQZyI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=al7+pTCRa1ysK9PYtoeNNO/kgnxQq76VFbXGIcGL7rJbTbm+rtwoWg4jMBmmr59E7
 6BTdiXQk7yhZjY554CMS2cLiigd+VfAc1Rc8VeNgv32zG1XNJbovvwACH6gMzNB/VJ
 yBRATionK4lB9NVFtZ3qqhAN8KmPXf1T2TaXWTTI=
MIME-Version: 1.0
In-Reply-To: <20190814015312.11711-1-peng.fan@nxp.com>
References: <20190814015312.11711-1-peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx8mn: fix int pll clk gate
From: Stephen Boyd <sboyd@kernel.org>
To: mturquette@baylibre.com, peng.fan@nxp.com, s.hauer@pengutronix.de,
 shawnguo@kernel.org
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 11:02:46 -0700
Message-Id: <20190816180246.D37BD20665@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_110247_364912_596086B9 
X-CRM114-Status: UNSURE (   7.55  )
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
Cc: peng.fan@nxp.com, ping.bai@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, abel.vesa@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting peng.fan@nxp.com (2019-08-13 18:53:12)
> From: Peng Fan <peng.fan@nxp.com>
> 
> To Frac pll, the gate shift is 13, however to Int PLL the gate shift
> is 11.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: 96d6392b54db ("clk: imx: Add support for i.MX8MN clock driver")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> ---

This is a fix for a change in -next. Why is stable Cced?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
