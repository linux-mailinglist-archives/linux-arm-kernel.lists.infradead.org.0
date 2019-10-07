Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF8DCE4DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4bdJta4h1ZbmUzE/lT6yNyfd8kpno/c0R89QT0EDjE=; b=a89cvoPLFVbuSW
	aviqP7I+8wsr1FlIJez1s+102F8YSrBDDgsTasIP77RoN4LbbCdwtmvW+HAFe0/5jVzXfVOf2YxoA
	f6RdvK45QZaAWpUIEl3sfSfS+o8LqRN4/pgiqlF9aN2hLDGWXKe6HRFfkYRhfGfvQd0ks6vdLRmlm
	gyv9JqYQay11Yz3bTO+LevMAvCv1uhobfwQ2OGWSCjjRnNYIHK5EQpdcPLGbIvC0XUum+qe1cT3oi
	fZS9PsHosJnyf4kd5zN9ZjR6wmZR/1SBxME/p2nNVaR79e0JohczuogEGkhAyCtrBhOPo+pBD+mMj
	uj8/5LE92vlRRTbGg9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTmc-0004ut-SG; Mon, 07 Oct 2019 14:14:42 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTmW-0004uH-Da
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:14:37 +0000
Received: from localhost (unknown [144.121.20.163])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B623614218221;
 Mon,  7 Oct 2019 07:14:27 -0700 (PDT)
Date: Mon, 07 Oct 2019 16:14:26 +0200 (CEST)
Message-Id: <20191007.161426.108032588372697075.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next] net: stmmac: Fix sparse warning
From: David Miller <davem@davemloft.net>
In-Reply-To: <b59904022c2f96aca956aa693040faf0dddeb802.1570454078.git.Jose.Abreu@synopsys.com>
References: <b59904022c2f96aca956aa693040faf0dddeb802.1570454078.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 07 Oct 2019 07:14:28 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_071436_459754_5C7C0085 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon,  7 Oct 2019 15:16:08 +0200

> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 8b76745a7ec4..40b0756f3a14 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4207,6 +4207,7 @@ static u32 stmmac_vid_crc32_le(__le16 vid_le)
>  static int stmmac_vlan_update(struct stmmac_priv *priv, bool is_double)
>  {
>  	u32 crc, hash = 0;
> +	__le16 pmatch = 0;
>  	int count = 0;
>  	u16 vid = 0;
>  
> @@ -4221,11 +4222,11 @@ static int stmmac_vlan_update(struct stmmac_priv *priv, bool is_double)
>  		if (count > 2) /* VID = 0 always passes filter */
>  			return -EOPNOTSUPP;
>  
> -		vid = cpu_to_le16(vid);
> +		pmatch = cpu_to_le16(vid);
>  		hash = 0;
>  	}
>  
> -	return stmmac_update_vlan_hash(priv, priv->hw, hash, vid, is_double);
> +	return stmmac_update_vlan_hash(priv, priv->hw, hash, pmatch, is_double);
>  }

I dunno about this.

The original code would use the last "vid" iterated over in the
for_each_set_bit() loop if the priv->dma_cap.vlhash test does not
pass.

Now, it will use zero in that case.

This does not look like an equivalent transformation.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
