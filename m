Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A61A15BED5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWgKvqIX0SwlFyx0GN0N2Ja/EglV30NZxyH4SZuggg8=; b=KmsqLx4EURv18Z
	MD/bBAzIl0O6/fpFOjd0YBivuqKdQSVWrzYBJMp43LdEqB8OljH70mfE/vw2buGjolGe3mjpM4JlH
	XqkDNHvncUp95wVWb9h/c7isuF8H2MrLfUaAHGJoxnAXbOW1eU/wyVZSWYKW3sh8LNnUVHwF6KSQh
	bzJSVgk7Rm2hC9MDVtrw+h8aSIRvFx1wY6+1oE9e4oDlp6e7qD3kAIF6WNcxcg0Cadi7kHmRS1WPT
	6fbXUTn3TVZQJmahBoY4Mg1k7MlgHORYAl/FAwHKg3RUaRxe+WAl8aBsxl0F5POvvMroKvuT1EDkN
	JK0WdKB7h+oqNQQpShDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2E4u-0008Fx-RM; Thu, 13 Feb 2020 12:58:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2E4n-0008FX-9x
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:58:42 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0876F2168B;
 Thu, 13 Feb 2020 12:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581598720;
 bh=qsnwqRufSnTuK8ERKhkDuCcurMHdvnXzTh7EcHChSPo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QR+Pky9TwuAH/pQTlReJIFbclIZ5X3xogr69UMEZQ3AHi7LSGcX/b2zXSDBJX5Rfe
 GQmLoAuXxZbvM2UtazzUBCUGTdXeilS6TIwvXHjrzMlQj/hcuKDaHKDu0/j9RIW0H4
 8p5JtPuf5ETC15lMooZTXhcsDdQ0s4ChQWCFI0FM=
Date: Thu, 13 Feb 2020 20:58:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 2/2] ARM: dts: imx6: phycore-som: fix emmc supply
Message-ID: <20200213125830.GO11096@dragon>
References: <20200116140108.6069-1-m.felsch@pengutronix.de>
 <20200116140108.6069-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116140108.6069-2-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_045841_364578_9D9788A9 
X-CRM114-Status: UNSURE (   9.92  )
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
Cc: s.riedmueller@phytec.de, festevam@gmail.com, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 03:01:08PM +0100, Marco Felsch wrote:
> Currently the vmmc is supplied by the 1.8V pmic rail but this is wrong.
> The default module behaviour is to power VCCQ and VCC by the 3.3V power
> rail. Optional the user can connect the VCCQ to the pmic 1.8V emmc
> power rail using a solder jumper.
> 
> Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
