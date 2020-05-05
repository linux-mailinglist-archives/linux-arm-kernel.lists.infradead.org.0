Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198AF1C4D97
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGvJDoChnxC7BclHbPC/U6uC5cUaCs5mvejTP9GWJTo=; b=tJsg/195WGzzQS
	9aBTnfMzTVCXAVvAyZanT8kAXjyOeEYT4dCEX63rZKE+rtdxvfFOJNLem+AO0iOuUnM4xKGD5sgJh
	LMiH9HdD3hSQqjmH9bmX5JxZOEXDa9ZobtLmN7XbN6ZDjUsI6OPROh/YUyYKcCdNGW8o7hF0kJxSs
	pCSy7Np/IwMEQKoIOq8Bq5fxpxNzZXLYDifCVMewotyeKz8Kvn46SByIAWpPEvNAjyQzOpIYL6jvG
	1oRvNCYPffo+MkC67VjH8LtL98K/yq/NpJqRlk6BVFkDM72C9UqOVbYYol7z+MjVEuMbznjbHlr9d
	qdC4Og7QRc+LdcY0mY+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVps7-0005Gz-RN; Tue, 05 May 2020 05:11:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVps1-0005GI-8p
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 05:11:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7628206E6;
 Tue,  5 May 2020 05:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588655513;
 bh=7beKXtqfcevOBrmt8PXopFbz7a9kMyc8NTMd2vb28JQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=B6W0O4loejbjeKSNJsIGAaZBhWccW/WcYhb9InlZDn22Vd5SLHfOIQka7W2QMMj+W
 5SeHkRVr+B2Y/D6xg6SXR51h4ixIm9bOVZdsrZU1Nnacdmucs2hTtp6FGPUT5aj+Sl
 1pKApoUjU9U/8qMjbRYhiyjk4qvNXTIckbmgfnPM=
MIME-Version: 1.0
In-Reply-To: <1584279836-29825-9-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-9-git-send-email-aisheng.dong@nxp.com>
Subject: Re: [PATCH V6 08/12] clk: imx: imx8qxp-lpcg: add parsing clocks from
 device tree
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
Date: Mon, 04 May 2020 22:11:52 -0700
Message-ID: <158865551207.11125.13566322645527803121@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_221153_332850_1904C183 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2020-03-15 06:43:52)
> One LPCG controller supports up to 8 clock outputs while each of them
> is fixed to 4 bits.  It supports only gating function with fixed bits.
> So we can use the clk-indices to fetch the corresponding clock idx from
> device tree. With this way, we can write a generic LPCG clock drivers.
> 
> This patch add that support to parse clocks from device tree.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
