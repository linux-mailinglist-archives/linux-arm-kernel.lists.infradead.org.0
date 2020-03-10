Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E39117ED67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 01:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UkXQ7S8dqSdUsM7DrRD080lDJOelaZimS3THsWf2Ls=; b=Iw+UitxZgBGppl
	9ytpPD1Kiakrno/9TgdsShCbrqqLTMc4p/lQrlaVz2mFiE41abifDTUb+TjzG5p2DIccJI0YPjHlP
	u7yzqKHWs6gyL8ZNpdGw0Ca2c5HFzvuzaod0tDQ5j/16M8CpXfM5q83MXfD6HkRqxS9DO1UA1IKuY
	U7x9ktnhIlZxNz+uL7Y+qmKoRtya/ximv9a5xQa1BSr2Zd1/Kdt4hHH5uOQtKm0V5aWvvYqAOQOJm
	qxC1d11Gjcx3bRcSamRFT0SHCinyHGZXs2/MK1+e5762tvLjp3JaNhDwA0auYKhMV4G4/4C+qTkbL
	LWwO8KG0VBMYu71V5QPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBT4R-00075l-7w; Tue, 10 Mar 2020 00:48:31 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBT4J-000750-Ej
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 00:48:24 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 57F1415A0069C;
 Mon,  9 Mar 2020 17:48:17 -0700 (PDT)
Date: Mon, 09 Mar 2020 17:48:16 -0700 (PDT)
Message-Id: <20200309.174816.1763845933351180364.davem@davemloft.net>
To: andre.przywara@arm.com
Subject: Re: [PATCH v2 06/14] net: axienet: Factor out TX descriptor chain
 cleanup
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200309181851.190164-7-andre.przywara@arm.com>
References: <20200309181851.190164-1-andre.przywara@arm.com>
 <20200309181851.190164-7-andre.przywara@arm.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 09 Mar 2020 17:48:17 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_174823_496257_D7C84F01 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, radhey.shyam.pandey@xilinx.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, hancock@sedsystems.ca,
 rmk+kernel@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>
Date: Mon,  9 Mar 2020 18:18:43 +0000

> -static void axienet_start_xmit_done(struct net_device *ndev)
> +static int axienet_free_tx_chain(struct net_device *ndev, u32 first_bd,
> +				 int nr_bds, u32 *sizep)
>  {
> -	u32 size = 0;
> -	u32 packets = 0;
>  	struct axienet_local *lp = netdev_priv(ndev);
> +	int max_bds = (nr_bds != -1) ? nr_bds : lp->tx_bd_num;
>  	struct axidma_bd *cur_p;
> -	unsigned int status = 0;
> +	unsigned int status;
> +	int i;

Please use reverse christms tree ordering for local variable
declarations.

> +static void axienet_start_xmit_done(struct net_device *ndev)
> +{
> +	u32 size = 0;
> +	u32 packets = 0;
> +	struct axienet_local *lp = netdev_priv(ndev);

Likewise.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
