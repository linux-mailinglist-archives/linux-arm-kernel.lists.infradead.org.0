Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07C518128E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:03:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3FBJSES7Tw0gGkkTGMXTQ30vlaPKrnbQLwJlUCBqI4=; b=k+6Jns5zJJ/mY/
	jCq3J4gRZT2NI1FNpGlbV/m1YzCAX+or1VsZsGuungn0u190b7nhJ4aDEdDDHqQkamN1Lq2ruC58b
	Rz5ixccuo5HIJmUXBWUk/Oh6VuMmk4aOv5Wsj9JgdXtdGlWoBur6WzInbPlb51QT+OicdlV3voFWr
	DoEvEoggiD2VPJ73yeKplluwOYkqhwUyCUUH7HwmQ4UjVR2ht18GYMf13P8OW/vSy2BXOe6oax3p/
	svWiH9lSMSmao0cLXgko4PR2T+HGPz+oBq+3X4ST3sPOr/VSpn/rpvr3d/q1EnH5nR3vNEQ7KTUxu
	VoIp85E8X18G/7v7WPBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwL1-0006uI-NN; Wed, 11 Mar 2020 08:03:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwKs-0006u1-IK
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:03:27 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0C1E205C9;
 Wed, 11 Mar 2020 08:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583913806;
 bh=i+e9hsYmW68wGUCT151eIEEHi/A3kvscJoF3PETWz7g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MtXOd4J6/fhczVwCahGJb7ODhabdsPYvxnGvGPaJjFB2jlRPYZB1RCat3QWKvN5oq
 vlm4GfG76rm4DJvTaus+sgKraZcHTx2R1Pqx8QRyt7Z1uyMRrZRgDtrtCUbTynsBzK
 BMaw6CE+ChpL0bPWbgegluGWA0RqsdQEW0Hhb+Xg=
Date: Wed, 11 Mar 2020 16:03:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-gw5910: add CC1352 UART
Message-ID: <20200311080316.GW29269@dragon>
References: <1582919167-28690-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582919167-28690-1-git-send-email-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_010326_627704_261FEE20 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 11:46:07AM -0800, Tim Harvey wrote:
> The GW5910-C revision adds a TI CC1352 connected to IMX UART4
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
