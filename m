Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1D192535
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td3vn5WxjGoqgHwFgm2WVVP43ic8nrvYjEyl8OQyOzI=; b=tIeDNu8tROpADB
	JJtDCt4BFX24UPgGywlvD548AwPvvIznc7D6JMAE5ZIAYKr6vUS2vWmUa8J1D58a6BYqSV/4Dhkuz
	QX4BTQD4pOh5+2cE/TOstt63S3wS59IhDjGyyHa/GZ3XrcjjG756x2Nf1KTIdKbwXAQnXWv6uQItH
	6twl0Y09T00DJ0fwkO6ftr66ecomBe6Hjg9LIZf37XBsEgpghyXO3/hPU4NnEx9H5qagBJgocp2Nu
	mga105GmS9QLgsPRN+Ls6cxp4IPcTrv7TJIi5FWAsyG/X0IEGRiDziUSZbbHaDipE4gTfsqMR7xsd
	UFP0iNd8++PgS2VPA5oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhpu-0001cr-8U; Mon, 19 Aug 2019 13:36:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhpl-0001cP-Py
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:36:31 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D235D2085A;
 Mon, 19 Aug 2019 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566221789;
 bh=Bqv26nTV/Ia2eL7crmeJCMH7ixSvJr/6wY1pgK5NU6w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jfMOD0gJ1BDNi7cWr6vtW7uI3ReDUj17kpzemGGFLbuWizjiA+S3en8/EP6Mt9HhT
 v5mEneUnRAyEwjYPrM27h9uGFXyRRy0usqrZq9H1cMLHOAEYOxll+OvH54XBhRo64j
 n0o5fNDQSTAaAXz8ILB4MplbFZZabUkfSo4V9dvg=
Date: Mon, 19 Aug 2019 15:36:17 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH RESEND V2 2/7] arm64: dts: imx8mn-ddr4-evk: Add
 rohm,bd71847 PMIC support
Message-ID: <20190819133614.GM5999@X250>
References: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
 <1566109945-11149-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566109945-11149-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063629_861053_9A45021B 
X-CRM114-Status: UNSURE (   8.78  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org, viresh.kumar@linaro.org,
 s.hauer@pengutronix.de, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 18, 2019 at 02:32:20AM -0400, Anson Huang wrote:
> On i.MX8MN DDR4 EVK board, there is a rohm,bd71847 PMIC
> on i2c1 bus, enable it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
