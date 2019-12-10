Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4AE1185B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 12:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2bRNqyYoyuTApJX98MhD9TyQKKzQ1g55JcfZzQ+3xc=; b=YsPIxUHT3yywSz
	HZXWZuVRqI1mBO+VzJSiJaEwmGQqfsIxlYovD4xOk0FxXgkD1bRJOL/Wj90Yo/9/AMTUjZ7oERPvL
	5pwtxW69rAV8k2N8p3iPVjum7WEpdwTDoRwCiMR9wh7zob6Kme7ILhp8JSsmiUqz2ZsjJaA4kH1dv
	1uLK90SyVlMG7CX714PoxXEISkGx6+e6+ymLEVj54jiRYVeStcImL+XDtaMvxTyVBqA8BDRKSYhnn
	le+0vQ/j9mPh+Sq1xRR4YduCXWMgow4qivA+rcptZ8LBC5XF0W+rUbaGtr+svOUUwMx/H4UXNlkqj
	+hMghTpj+gAvYNRv/ceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedGl-0003BH-5a; Tue, 10 Dec 2019 11:01:31 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedGd-0003Ah-Hc
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 11:01:25 +0000
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 4F39B100008;
 Tue, 10 Dec 2019 11:01:21 +0000 (UTC)
Date: Tue, 10 Dec 2019 12:01:18 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v3] ARM: dts: at91: rearrange kizbox dts using aliases
 nodes
Message-ID: <20191210110118.GH1463890@piout.net>
References: <20191205223021.1370083-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205223021.1370083-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_030123_722575_2FA56508 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/12/2019 23:30:21+0100, Kamel Bouhara wrote:
> Use aliases nodes to easy kizbox dts readability.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v3:
> 	- Fixed missing i2c-gpio0 label in dtsi
> Changes in v2:
> 	- Fixed some missing aliases label from dtsi
> 
>  arch/arm/boot/dts/at91-kizbox.dts  | 172 ++++++++++++++---------------
>  arch/arm/boot/dts/at91sam9260.dtsi |   4 +-
>  2 files changed, 86 insertions(+), 90 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
