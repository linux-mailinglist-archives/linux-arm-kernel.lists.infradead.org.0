Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198FC17EF57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/P0Lo2e8sXYoAWTsd4t3cRVkZ9YpWuiH3jPExR63uU=; b=SyABSNHHTSFWtV
	TCvxgwIiWQnoYSi1vO7RH+D/9tIRlvIqfvqeLD1H/eHlXcpLyhHOaGjyFLNuZwcLzI4fgoUJCnet+
	HAXLWJSWynUJNzYw/z+I4L8HwwwSh8qFSvX8Lh+5jvCOvHPqCNga8UbHYfEivXqL38St4UBrTEIyd
	QK7eXq05kWoH096NTvqP9bYG0join+KKEWy+7NSUVI4uDPlTisG7dRfVZ4043N/bFnALMR0Gi+8Zo
	LcSa1vN9sX+gF46p7SUt2IG3DlRW6LeUsHz5MHUpVLmWjE/S/NKL4Y8roLXb6ZgzsyVerqxJIVwOI
	EZysGyYBNr/b6az1KY8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVfS-0005tj-Cs; Tue, 10 Mar 2020 03:34:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVdM-0003tO-71
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:32:47 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7C6024671;
 Tue, 10 Mar 2020 03:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583811163;
 bh=qkDKOMV7QctTl0QDnIlpTw5MQKWwxRKuxkYh93xEX70=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VwvcrPfjbTGrIGLthzALZvv20YpylM4lN7J8wElvRok/GOACijl8xx1KFWqXrEaCi
 YGvjijssmi8xH+wXHor3numDwqTCSdudVYxCTWHURGULepnCATc3jFutdzFyET6gec
 Di5blsdV1ock5d59nCokk582bmuC3owvrhl6HR4s=
Date: Tue, 10 Mar 2020 11:32:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 1/7] firmware: imx: scu-pd: add power domain for I2C and
 INTMUX in CM40 SS
Message-ID: <20200310033230.GA15729@dragon>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
 <1581909561-12058-2-git-send-email-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581909561-12058-2-git-send-email-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203244_336974_2D9AB18A 
X-CRM114-Status: UNSURE (   7.72  )
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, daniel.baluta@nxp.com, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:19:15AM +0800, Joakim Zhang wrote:
> Add power domain for I2C and INTMUX in CM40 SS.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
