Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FC015D056
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:11:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJ5yJMvjCG4kojkXId99U00m+y8WZAzZkd6XjnOaXug=; b=q+LsCwNoQJdJFp
	JqO0lb0MdbNZ6OAWZKfVqiNWCCaVgHvITOiAOaYp3QthOB8kfvAmNtLyCQ/EHbMtFyj6Gg6B8MZC3
	Caggcpj3hS2ek5JOslvq/rLjwYBfdEXIP+XxYQ5eWnQVch16L3ADVTZ0wNDnY7xTtuiUOmtveJqyz
	jpbER6qX8t4K+yX6znSUA/xSd+sj9t5XI6/Wxv731GSOoItQ/A8D5XgB7E7x7T4DkVECasHYlPQlw
	U3egErhacpQf/xD0t7k5Vhaf6LhN0PbDeGS2nTxcaq/lCH5mrVaY0NayJyoXhCB0JAp/s2Q+dcGEx
	6OXVLidVsGloFiNoPMMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RNq-0006tl-V2; Fri, 14 Feb 2020 03:11:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2RNj-0006tK-5m
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:11:08 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09C812168B;
 Fri, 14 Feb 2020 03:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581649866;
 bh=TEYIlstObw2uDSz1d4UQtuSSdbIIhoZdfE4KAKtkNO8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UDWVeR9le9MvjICefdX/Bl9flkUmrz7o98D3kpXfkmZziN5XrbDPxbAvsbKCnYqwB
 +UngDFFWGYp+02M77cXpFrcXvZI64LxCm44QGYFxawop+jROAEheQoOiNxU3uyFk5I
 HGXHlJwyOzXGR7KxvSL4zKvYAmrg0lAHac6+G4F0=
Date: Fri, 14 Feb 2020 11:10:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] ARM: dts: imx7-colibri: add gpio-line-names
Message-ID: <20200214031056.GM22842@dragon>
References: <20200129215336.417431-1-stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129215336.417431-1-stefan@agner.ch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_191107_242737_E44A9D8F 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 Stefan Agner <stefan.agner@toradex.com>, marcel.ziswiler@toradex.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 philippe.schenker@toradex.com, robh+dt@kernel.org,
 max.krummenacher@toradex.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 10:53:36PM +0100, Stefan Agner wrote:
> From: Stefan Agner <stefan.agner@toradex.com>
> 
> Add Colibri SODIMM numbers as GPIO line names on module level. The GPIO
> lines with a name are all available on the SODIMM edge connector of the
> Colibri iMX7 module and therefore a customer might use it as a GPIO. The
> Toradex Evaluation Board has the SODIMM numbers printed on the silk-
> screen. This allows a customer to quickly control a GPIO on a pin-header
> by using the name printed next to it.
> 
> Putting the GPIO line name on module level makes sure that a customer
> gets a reasonable default. If more meaningful names are available on a
> custom carrier board, the user can overwrite the line names in a carrier
> board level device tree.
> 
> The eMMC based modules share all GPIO names except two GPIOs on bank 6
> which are not available on the raw NAND devices. Hence overwrite GPIO
> line names of bank 6 in the eMMC specific device tree file.
> 
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
