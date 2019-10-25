Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EC5E4330
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q61diHmjm49qKW2ZJQoGlw13aDIT7r1wxI6lAUYkJxY=; b=qpu8E2doli+TQD
	ejbtWit8LRsjAwc5q890NLHjiF/XM6/iwvAaWlKqdSXZjRgCIvo93npXECO6V1uURwPbRGAt/o/f7
	810Qw7vD7czfQ6YS8NFysdbOsjpznqSvnz9zFgITRSNqyeDPOpfH4JB5Ie/+tp0CW2+O6HUTSwiAB
	U9Lb29lAqHa+AGRaCL3ZUAV7S149mBYOJiarBmReZW4XsdA7vYTY7VNB1niaYN4L9Z7sQYKJP0ePs
	NOpY+XXqGbuzxyhTZ8uf80M8NKFOfq6NCW4mXUBkdU1T12jn2MmX6tMKT9A0bwJD1ew9ZakuolEuR
	aMMLYfzrUWDoMHodckPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNsiu-00033o-00; Fri, 25 Oct 2019 06:05:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNsih-0002k1-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 06:05:09 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEFE621929;
 Fri, 25 Oct 2019 06:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571983507;
 bh=fBJRRwheXU1MJ98d8dPNJRL9K8CPlTP6wigRKmHU5H8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CItcbHo19ZH8Tsjrxq66F0Ak0UPU72fpIEjLBf71IiAhSTnjilyrxdbhpXaEkrbx/
 EEVqNgzKCjJN4DHwBsSbSDkB4IHkyI2ze7TTjScrr+5gfiRzj+XaasvDNI2Cpt+G2m
 Zjt5zct0NmzVQMqoR5FNSXyJlyFoVicy02V/9Ajo=
Date: Fri, 25 Oct 2019 14:04:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mq-evk: VDD_ARM power rail is always ON
Message-ID: <20191025060444.GC3208@dragon>
References: <1570604659-28314-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570604659-28314-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_230507_924487_26DB904E 
X-CRM114-Status: UNSURE (   9.46  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 ccaione@baylibre.com, andrew.smirnov@gmail.com, daniel.baluta@nxp.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 03:04:19PM +0800, Anson Huang wrote:
> On i.MX8MQ EVK board, VDD_ARM is from a DC-DC converter which
> is always ON, the GPIO1_IO13 is ONLY to switch VDD_ARM's voltage
> between 0.9V and 1V for CPU DVFS, so VDD_ARM's GPIO regulator
> should be always ON to avoid below confusion after kernel boot
> up:
> 
> imx8mqevk login:
> [   31.776619] vdd_arm: disabling
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
