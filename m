Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4844F8056E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVTyAlQmJsU6ULorzBardCS0+ZemQBhFI+R7yezwPa4=; b=uTY9yw3XZAcpOx
	NnD7UYoCWiWHhp0qgwQ8CAD1QpPxYcw4P97A66t3y4gK+H6skxaoQlw8YncEHd3OvZNgndxf3pvuY
	v1TqwYpvQ0kVduwJzJIlcA4qnAubEn+iERpiNJ/ZWE1BGvsM9xOWwWkeKoqFNhpmX9pLUxfTU3SKF
	ddFw77T7GFnROCH6aae4Jmw8IOH0VrQ9PAmfBvecPHF/2wxd6pJkwfvh4kQLYVOcc160J+jLaF4NU
	73KKvMdaRGZnUy2ZsRlhYGZkB2GAovq3viI+8dTF35RUwYkJ8lYK5QC436qAZAFFMtrw/OTJ+Qf4a
	Wiw/0O0YMUi0IcjTvqsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htpqz-0007zO-Pz; Sat, 03 Aug 2019 08:57:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htpqp-0007yj-Bb
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:57:20 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28B4F21726;
 Sat,  3 Aug 2019 08:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564822638;
 bh=l3mc7sIAGnYKZ5dbrLxRC+O8nRnUq21i3R4wry0I2AE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x45xeD4Z7e/Wn6MpDqvNmYZHAeBDgQ39s0X53S8yYKsAQYkxG1XpFoqakkI6sixQy
 v3CBCkLWo3P7beQeaaAPwKVR9cpeXwXq2EpF5eOCQp7f/2CeHgCn86NKcOhEY/zFGK
 KF6Fq1RH1iLeB6BqHjSqDrIPrnHWoy83HK4xgRCk=
Date: Sat, 3 Aug 2019 10:57:11 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] clk: imx7ulp: Make sure earlycon's clock is enabled
Message-ID: <20190803085708.GG8870@X250.getinternet.no>
References: <20190724030600.17839-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724030600.17839-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_015719_419881_12BC8F45 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aisheng.dong@nxp.com, gustavo@embeddedor.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 11:06:00AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Earlycon's clock could be disabled during kernel boot up,
> if earlycon is enabled and its clock is gated, then kernel
> boot up will fail. Make sure earlycon's clock is enabled
> during kernel boot up.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
