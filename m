Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991D9135565
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Wif7OvGq4FMfynUWZNuCDmhaB+gnfeIrqlz8MZ+RNE=; b=RT5CJ89xHPC4Ju
	bL6EuyjuHaZ3nvoVxBMROP+LqjMxNbQpG8KuBUVcKfpPJNQomXsS3IhrNiF55dHHx+YXNzTEMoBPC
	3G0p5iqKts/VEwgkSffnumKwxikxNsFG7NjtfU+a3ls1m+X1f714kt4eO7M5gl3Fc1YIVnIBtzwVi
	4DlTkRdqlBOnckZSNGyEFyZYuYtXfwa1CoCYphpo5CrHYOYATWRa7+0DyDHeQhd4EhHDSXdCpdMxm
	ftzESIC7kgDTnojO8Aelu9x+aSGjV0xuv6r/H4TE7M4E/4kqqTrNECOL3YQ3GMOR+utCZMnOsjkEn
	eST/M351h0H2PsH3oO5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTuP-00016A-Kb; Thu, 09 Jan 2020 09:15:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTuH-0000wv-6B
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:15:10 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65C0C206ED;
 Thu,  9 Jan 2020 09:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578561308;
 bh=2OYOWw8kIT5u37JnMwH2Tlck424dUqNtjdvKfy3n73A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B53RbnpNRivTlIz3gwgye/IKC2l6EXR+e3JO8CzRiDFfJLOOtYZ+8TOJrfQI8vSHH
 4R82870nCcgGz+Td3/LWgXdsAFiCqICR4P5m52SHbUwvlfp/626IOVWxNxoehlD3Dq
 nmTDoaVEFirZzbJnsIlIVj08WUOZeia/dvI7KV4M=
Date: Thu, 9 Jan 2020 17:15:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq-sr-som: add eeprom description
Message-ID: <20200109091459.GK4456@T480>
References: <a1bcbe877b1c636fa773dbcd544252ba8e94c231.1577897347.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a1bcbe877b1c636fa773dbcd544252ba8e94c231.1577897347.git.baruch@tkos.co.il>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_011509_279446_20F0770D 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: linux-arm-kernel@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 01, 2020 at 06:49:06PM +0200, Baruch Siach wrote:
> Add DT node for the eeprom data storage on SolidRun i.MX8M SOM.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
