Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B591E135575
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etj1YiaLxTD813ZPNeIHY7fyefWwJGluFRynm7pxDu4=; b=rIgk9JOajs/Tfg
	324Z9GuJBYsOnT4IGbwdIggj8zKiW0LhxgtiOuDRVee8xh/U/axVgONcZzlpiBR7FvDJmmm7SaPc7
	ph5PpmVLjTxO/nzeLjIiTVRKm8QrJEZuO8mQeGCAwGlVyPh0crN1pZH65cwlChH3W1eJUMLpeMf5l
	zXoysJSgKvHl+rGlyC+fZtJkfyq/Duq20tPbyT+Yt7yigoGKCf1HfByjGEMmR3QCkV5RLnm3Ob/EH
	JWu+O19hm5pNha4P5npuELHQrOFxTy9UFr1nEUT9+4VogSPCtHHaEmA5s09Vn2u2a8huKs9EuHTs5
	68AmTsEkEp4vtCjBRtVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTxQ-0002Jx-54; Thu, 09 Jan 2020 09:18:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTxE-0002J5-6z
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:18:17 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBDAC206ED;
 Thu,  9 Jan 2020 09:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578561491;
 bh=SptgEpC6uBoCgIiwV8qQCok3tqCD2QV/W7Pb1LSHw4k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eQ/5B9lgXSzYjka9B4bj6vKedRzeeydEOcjwX9NXHRKjsE6taNt9sGg5YYlY/NxMK
 QDGKoGxdmrsirdwC9qeE+OsStInPBdnQz04lKZpUfrkV793gmc0Rk1veZhWTRFThHF
 VUgz83tCglEcNJXdYuS0eQ79VlUG46uck9wDLXB8=
Date: Thu, 9 Jan 2020 17:18:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Joris Offouga <offougajoris@gmail.com>
Subject: Re: [PATCH V4] ARM: dts: imx7d-pico: Add LCD support
Message-ID: <20200109091800.GL4456@T480>
References: <20200101235719.21466-1-offougajoris@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200101235719.21466-1-offougajoris@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_011812_269367_C42C4E64 
X-CRM114-Status: UNSURE (   9.27  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 12:57:18AM +0100, Joris Offouga wrote:
> From: Fabio Estevam <festevam@gmail.com>
> 
> Add support for the VXT VL050-8048NT-C01 panel connected through
> the 24 bit parallel LCDIF interface.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
> Signed-off-by: Joris Offouga <offougajoris@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
