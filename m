Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C47A1BD25B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 04:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBdvoEr+3/KqW+1cWg8Gm2Kq0KSfhRdAIc4UrrH339k=; b=NZiLXf5SHX/TJo
	TgfXKTX7QNqcQvTs/RUYa45s/fmn6hCetyo+jw5f8r0amWKUKpKpQOJfCeSTlB3SN4roIg39TwRvL
	+8Lnj+5waeInEjbRFLOesI0fFO6blL9IU2lmSJGMNNSHyYfTeenpR4sNWh9nLjNxEnCyju0qhhjH0
	sedhcyecJTXDXQiOccaigrlAad8NPfno9GvI81fadgO7ZEdjALGGAiay3fgZxrMh4XfDDvgHGJYxT
	1hsulowIvLttSNbZ6RTERqgKKn7ebye2Qxj0DB0GNQ7+RZ4sqzXGci1F7zXQ/RSEg4AxUiuLDjMBE
	QNRdRtL+tkcPhg4WcsVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTci6-0006vT-OT; Wed, 29 Apr 2020 02:44:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTchx-0006uk-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 02:44:22 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2105D20737;
 Wed, 29 Apr 2020 02:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588128261;
 bh=iKaEe0wr+T3cUT/15Dj5pKEtbeFfU3hERoXeJ5Grxw4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s+P5EFUNmDhJCFYcVgXyNzSE/ZgV3ZgcLPDt+g+W3CiMPo8uZRuOqnnOiDCnI7bJY
 GKrImGkc17aBQneRU/gs1ThRNLvAGOJU04Dn9fNFUuocIi9cTiw3nJFZrb67APV1Lh
 HqaI7gjm+eFHAEGIcHKoLn5MqQyXzNZqCuDd/1sk=
Date: Wed, 29 Apr 2020 10:44:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm: dts: imx6-sr-som: add ethernet PHY configuration
Message-ID: <20200429024414.GK32592@dragon>
References: <E1jOkD3-00067R-RZ@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jOkD3-00067R-RZ@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_194421_706856_F8A7BFD2 
X-CRM114-Status: UNSURE (   8.95  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 04:44:17PM +0100, Russell King wrote:
> Add ethernet PHY configuration ahead of removing the quirk that
> configures the clocking mode for the PHY.  The RGMII delay is
> already set correctly.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Changed the subject prefix to 'ARM: ...', and applied the patch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
