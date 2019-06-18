Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A0D4A228
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqFRaVjyLV2SIUnlYEcvMv1kI15TegpC2F3OdmK/F0k=; b=adeetKd6f4f0t5
	d37FddyzXQ75vFxE+gjmRDuGHOymreD0djbHE4mTYh3h4t4Xz+JqORp6P9UNwNqs8J6IQkeKmcDGS
	U9FSvn13H1IrT5c7lteS+hFCFu2OKtFBV5KirCfdcsQJShs5KAN9M2TCS4qm26WwX+xY9UAyxAEUE
	/d7MhZqFjaA9q+eLY+ddMHL2mWC3+TKRsIZLiemnJuj7Ha6ZppxgGYIMy4W8kg3dVtABhKhohECb9
	T3fdqe+GsmGB8K1M70/WEpMsWE6brfEBSZUgeMwZ2McijkwvFAAiTNqMcge0cKZjmu8WwBhuSjC8w
	yIbWOkc7PIwka3fpWkgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdECI-0004Wv-Kp; Tue, 18 Jun 2019 13:30:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE2z-00065j-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:21:15 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 358972070B;
 Tue, 18 Jun 2019 13:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560864073;
 bh=z2OTz29gGjO1r9/j3/FdDQwDaOmqMmdwfbDUt50zhF8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=02QlH3n/pNSgksJ/eL2RLYkp3gckL3seRwli0+1D0FBoylXP6OS3XW9iqML/oAOWy
 cOkzc+4VcyVqM3AkEGdV13hgi/LJUi4el8NK2uSXg2u6hs5tvY2Wy32lNRRwZ0IsSC
 L5dAIE5rd4m/Ym2eBWaSJRKv7jADcZ7JGcy4muOw=
Date: Tue, 18 Jun 2019 21:20:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
Subject: Re: [PATCH v16 0/3] Add support for the Purism Librem5 devkit
Message-ID: <20190618132009.GF1959@dragon>
References: <20190617135215.550-1-angus@akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617135215.550-1-angus@akkea.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062114_055928_6FDD64E7 
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 pavel@ucw.cz, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 07:52:12AM -0600, Angus Ainslie (Purism) wrote:
> Angus Ainslie (Purism) (3):
>   arm64: dts: fsl: librem5: Add a device tree for the Librem5 devkit
>   dt-bindings: Add an entry for Purism SPC
>   dt-bindings: arm: fsl: Add the imx8mq boards

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
