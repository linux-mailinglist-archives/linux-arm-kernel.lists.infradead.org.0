Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEE21391FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FrgRNe944jOUhyLR6S6HsSqzwgxJLm/dTgvNBLHKVM=; b=P+9e0eJnTlbgTQ
	26XOyNml4pxvuC2DbL2T+NKeqjoNE3bj1ecjuAoX4jGLrTJRRqOn3OGDBUbG3Mm2DJvuSix+hbkdE
	AgRuTR178NhqNnL/7N/D/4LHq5RwPzk7oGWwBzDRnrABOfMT7Hl3RaYPDt/imH2cegw5wj2pKfrWH
	k7YAvjrCPfZdQasZFz66pkXcvEwSP7U4ZLFkof3YCOudeoHNkm1P1i+TBO9b6yBcW0W9+zrs0BQg0
	GMVc5UpLvc4sSqRFvD1gEZDVhFP+XtiV9V5BSimHrKlhBLMTXzodreLEMH61mVV6X4yGqEOh5hjZ6
	Pwv2O9NYdJ/8ExmrFEyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzbC-0001TR-Li; Mon, 13 Jan 2020 13:17:42 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzb1-0001Rw-MM
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:17:33 +0000
Received: (wp-smtpd smtp.wp.pl 467 invoked from network);
 13 Jan 2020 14:17:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1578921446; bh=fiL5feLAQg1wnn446GC+3zMpF7346AQGDCS3XeChSTA=;
 h=From:To:Cc:Subject;
 b=qzBDUTyY3N87LSG2hKt7ZSXgIJ4yQdIF3Os+2js59ftWgJBrd/cPmAI/+Hdwlnkg6
 Fyed6NcUYyiy55TmsPGH5Wenjb7lct8Nj6qQX3SY6YaR/ETLhN91iUyNG/C0oGr5Hi
 kCBZomcIlnMvzE7EYGBk9nRfqXBXXMu5T905jGjM=
Received: from c-73-93-4-247.hsd1.ca.comcast.net (HELO cakuba)
 (kubakici@wp.pl@[73.93.4.247]) (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <boon.leong.ong@intel.com>; 13 Jan 2020 14:17:26 +0100
Date: Mon, 13 Jan 2020 05:17:12 -0800
From: Jakub Kicinski <kubakici@wp.pl>
To: Ong Boon Leong <boon.leong.ong@intel.com>
Subject: Re: [PATCH net 3/7] net: stmmac: fix missing netdev->features in
 stmmac_set_features
Message-ID: <20200113051712.73442991@cakuba>
In-Reply-To: <1578967276-55956-4-git-send-email-boon.leong.ong@intel.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
 <1578967276-55956-4-git-send-email-boon.leong.ong@intel.com>
MIME-Version: 1.0
X-WP-MailID: 9114ca6d95137af99c81d33196a332a9
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [YVNE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_051731_913500_3A38C0C4 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kubakici[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 10:01:12 +0800, Ong Boon Leong wrote:

Please fix the date on your system.

Please always provide a patch description. For bug fixes description of
how the bug manifest to the users is important to have.

> Fixes: d2afb5bdffde ("stmmac: fix the rx csum feature")
> 

Please remove the empty lines between the Fixes tag and the other tags
on all patches.

> Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index cd55d16..dc739cd 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -3911,6 +3911,8 @@ static int stmmac_set_features(struct net_device *netdev,
>  	for (chan = 0; chan < priv->plat->rx_queues_to_use; chan++)
>  		stmmac_enable_sph(priv, priv->ioaddr, sph_en, chan);
>  
> +	netdev->features = features;
> +
>  	return 0;
>  }
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
