Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475B09252D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykkqn8cPY0euno1Z/5NFphhBAJGgm7Ly4F0fi5FhB5w=; b=A2zCcArl7cwYS/
	yv3PRv5NbstSCWmlSF2vUMmNN+IEZ3bUx9C/5RTap9ErN9NcfCtz47Y666TbWUIE6S49NCEHJ2uxE
	5NBAs91ZCkZ3rU55BMxNTSUyjkx/h5j8DEPhFSwfIDFCaTEtu+hpCN9SOcmvYlfIAJi7c3pRaPoc5
	8qOFn3lxoRPhUB/7NFY6HId8qeCT+vNN47RPitdCxx8B5IHi9RXIx1jzhHWkD5wqfcA0vGdM95xIO
	mqNpgsKQUSfkxbet53O+bt/0Foo54/6mIjOpntdOpb3XoqWCQGNjsBIXEdLNOSwTx9CrpMAxoli+k
	Af4k/P4B3yOXuG3BMvzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhpZ-0001Mi-Gd; Mon, 19 Aug 2019 13:36:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhpR-0001M5-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:36:10 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A02592085A;
 Mon, 19 Aug 2019 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566221769;
 bh=fGNcLacIFF8EGFDm3k5zKrSPKgE76dI3XOtZmuEy/QI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dYJ6hXLWwVcQGEbZZ57oeotSATtP4tNQO9J0d0PJYG9OURjR6HlV7kGut4IetqlXh
 c+IDxJejCRxqqPpmsTD4jASWB7sqriZFnPYKJurqR+IyPOxia6LgvSpFeYa+8Dn1dH
 FBn4hJt05jXpnCvUkRAWbS9oAEgRcz8kLyzZwbu4=
Date: Mon, 19 Aug 2019 15:35:56 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH RESEND V2 1/7] arm64: dts: imx8mn-ddr4-evk: Add i2c1
 support
Message-ID: <20190819133553.GL5999@X250>
References: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063609_658703_2C2150C8 
X-CRM114-Status: UNSURE (   8.56  )
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

On Sun, Aug 18, 2019 at 02:32:19AM -0400, Anson Huang wrote:
> Enable i2c1 on i.MX8MN DDR4 EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
