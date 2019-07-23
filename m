Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36EC71179
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FTK5ATezLfCwCPdhbPenUA4Kg59nNbtiE3sA0bbAds=; b=SXiSeOLArvDEzb
	mexjSZwT355eYp3n6XSFObwn0YyW79ezQRQPXUzzmDAlCmQUvTb21BYrrde3CT7z4jqNIkSfGa7Xi
	HzgbAZpknprwKTiqlAwdAtz0ogN49C+b1KRpMVj2ikezKKWmleY+6fKMtJzvhqesdSUoOAQkrNOCz
	vjhc554A46UuUUqK5I15QZ3o/+zdt3lxEKfWxK5TGtj6j7JI81+cHpHQlp2oqOuR2faBQl3zBDPSy
	iY7llfYdfw6CmDhqvB3gplTA+2tPoeKmeAaXP8i7UGWGomlEPv/2ni3oalKIJF88VDz8UJV5+vma0
	UKQ597hJUAeO6d0hL+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnle-0004Nu-Ru; Tue, 23 Jul 2019 05:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnks-00046m-Op
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:54:32 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BA582238E;
 Tue, 23 Jul 2019 05:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563861270;
 bh=Uy/g0mAPtlYuOpPGEkYh9Jv9h93JNBY2oSf8mrwvnDk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wpr+XjeweKguKZyI7EGUKeV0aHAAaEVZZfMsSoX0KsjhMPtBZSow8fA5SWKhAZIZ9
 No3e/BgYLx1CtaCIFFGHwAeIQ4dTsXjbVQgC7sLbxNWjnGHiBf3kc8cOAQ59b6hQJj
 dAAgBonS07ZeLZmUbVsAIW6BRyKy1NLV1CZf5dtM=
Date: Tue, 23 Jul 2019 13:53:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: jun.li@nxp.com
Subject: Re: [PATCH 1/2] clk: imx8mq: set correct parent for usb ctrl clocks
Message-ID: <20190723055351.GP3738@dragon>
References: <20190710111917.6615-1-jun.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710111917.6615-1-jun.li@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_225431_032017_7DB14455 
X-CRM114-Status: UNSURE (   7.65  )
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
Cc: mark.rutland@arm.com, peter.chen@nxp.com, agx@sigxcpu.org, ping.bai@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, sboyd@kernel.org,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-clk@vger.kernel.org,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, mturquette@baylibre.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 07:19:16PM +0800, jun.li@nxp.com wrote:
> From: Li Jun <jun.li@nxp.com>
> 
> Per latest imx8mq datasheet of CCM, the parent of usb1_ctrl_root_clk
> and usb2_ctrl_root_clk is usb_bus.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
