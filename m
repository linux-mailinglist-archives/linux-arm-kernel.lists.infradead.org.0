Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896A2136568
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 03:35:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTj0KZXg7e+H4UFAO3uHcddbDJWxv4oVQsOo6+b4iMI=; b=r+w3L9Dx3QJOFT
	+K7cTAE8BAdALsZDd0bRroZ2mtbB7kzDpUhVKpyaT9oe9sKQIuVBoZgWem10DukjNtV79ChOXZeKU
	yHUfYwGgrOlIJJyTeHfC1C//VcgBrcOAB+7rv4HgN1OnZlTovi2vyr4ukA1bB1VqI9RPhfr1W2riF
	Lxx30QHQoDklBOf8NE+2DXSFNNVpIlfXh8ODTOzYs0ubPolx/bgPpraDt6V6tUWA+AgdZAGoBIEMW
	qroFxI5XBRZzdX+nM3GEuPz4PMV3Qh452YqP8gkeP3FxMeVEYjOiyXBi+nsNcEmnmObfmK7Q4ERCk
	yeilcZWCp1UVL4B4x7dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipk8s-0004Ny-QQ; Fri, 10 Jan 2020 02:35:18 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipk8l-0004L2-L9
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 02:35:12 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1BB40157363F6;
 Thu,  9 Jan 2020 18:35:04 -0800 (PST)
Date: Thu, 09 Jan 2020 18:35:03 -0800 (PST)
Message-Id: <20200109.183503.1012921424196803099.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH v3] net: stmmac: pci: remove the duplicate code of set
 phy_mask
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200108135649.6091-1-zhengdejin5@gmail.com>
References: <20200108135649.6091-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 09 Jan 2020 18:35:04 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_183511_695098_00F4CBEA 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Wed,  8 Jan 2020 21:56:49 +0800

> All members of mdio_bus_data are cleared to 0 when it was obtained
> by devm_kzalloc(). so It doesn't need to set phy_mask as 0 again.
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
> ---
> 
> Changes since v2:
>     Abandoned the other commits, now only this one commit is
>     in the patch set.
> 
> Changes since v1:
>     adjust some commit comments.

Applied to net-next, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
