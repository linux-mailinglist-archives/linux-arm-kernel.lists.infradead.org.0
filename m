Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFA4AC770
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 17:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YdvIm846dkzsjqpRZNGprDM520vCfomq75Ez2Qr990=; b=hByUunuXz7xNYU
	vSxlltwCk0ES5fzGR40TJKbW7pY+5fni7UBDEUzBV2ThMSqZgBpXCuwYtJ9WfNkR8I8iKYKual6gf
	H7Cms9qJGiktwMlfBcpCIu4bE7SbgY4QJZBKr6zBgKEUp7bBI3bngU4YgJFFpRH6LBiucqR+DAVSC
	lDMaBceEkSicvbvpm5GdPrF0aHCGqt720YZ++pNjmGPrHXD1Da3HUN7yg7p1id8O50d2MSG/gUuLj
	iAQgnts5m4lg1GkFKY/lN/MtxMwRNG/OBm1jF/fuqeNNoOjqzD3cBSBF7aqDGKcO/79/ah7SvLg5i
	mH7rQ7e9u3aQEus8jFaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6d6V-0004Ei-1B; Sat, 07 Sep 2019 15:58:23 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6d6G-0004Di-SD
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 15:58:10 +0000
Received: from localhost (unknown [88.214.184.0])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 25170152F3D4C;
 Sat,  7 Sep 2019 08:57:59 -0700 (PDT)
Date: Sat, 07 Sep 2019 17:57:58 +0200 (CEST)
Message-Id: <20190907.175758.2126161580468981282.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next 0/5] net: stmmac: Improvements and fixes for -next
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 07 Sep 2019 08:58:02 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_085808_915786_FC53F2E1 
X-CRM114-Status: UNSURE (   4.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 peppe.cavallaro@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Fri,  6 Sep 2019 09:41:12 +0200

> Improvements and fixes for recently introduced features. All for -next tree.
> More info in commit logs.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
