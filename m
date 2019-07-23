Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309A670EAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 03:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOZXMSFCU61RPrF+TX/43uE1Hc3XmEQW1E7YtWnW4Po=; b=XimkJj82ofDEZS
	FJMEYkaCq9J0S7Ar9nt1MywR7oZcq8N2y1+0rZy/om3+232C23tUn/Gpp9DifMOFP8DmMHzwuEBxm
	t6nQamoUnkXHhN54wb9uK7I2bOJ5maokHjW+cIm9wqLo5hvJYuwzeMYC4tfxKaL6HQSmvJA/7njyC
	IVKxxQ8JD+Wgzog9WhZLdeo3/FNcqMvFmA3L4zMIdfLk9ySR3q9KcmWwAqn70JOX+FlnVI3NLmHDV
	z/Qc8Cpp4xuOmdvUq1dP+lC9+DbdmWliK7dqFbGFPxz5iIKbgW98b1OzCRR1HA9KNs3B3s6hkKg8b
	BkR9N47rm7460dR5fmpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjdx-0008Ka-G8; Tue, 23 Jul 2019 01:31:05 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjdT-0008KI-Mx
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 01:30:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 21AD915305EB2;
 Mon, 22 Jul 2019 18:30:35 -0700 (PDT)
Date: Mon, 22 Jul 2019 18:30:34 -0700 (PDT)
Message-Id: <20190722.183034.1093194142173051399.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net] net: stmmac: Do not cut down 1G modes
From: David Miller <davem@davemloft.net>
In-Reply-To: <f9b8245ef4fbaca463a6084166c7f72793cb799b.1563804016.git.joabreu@synopsys.com>
References: <f9b8245ef4fbaca463a6084166c7f72793cb799b.1563804016.git.joabreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 22 Jul 2019 18:30:35 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_183035_953726_8F0EEA68 
X-CRM114-Status: UNSURE (   5.81  )
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, megi@xff.cz, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Mon, 22 Jul 2019 16:07:21 +0200

> Some glue logic drivers support 1G without having GMAC/GMAC4/XGMAC.
> 
> Let's allow this speed by default.
> 
> Reported-by: Ondrej Jirman <megi@xff.cz>
> Tested-by: Ondrej Jirman <megi@xff.cz>
> Fixes: 5b0d7d7da64b ("net: stmmac: Add the missing speeds that XGMAC supports")
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
