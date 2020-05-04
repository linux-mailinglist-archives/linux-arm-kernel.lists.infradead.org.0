Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA9B1C467D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSkaecUj0OjW53Pxb89mJOLUmaql6c7uQXfjH4xzgb4=; b=gD66WBgFsr+hPC
	PfCmDvXZdtly68PWzj5+Axi0Xvn8qaglAF7bhKuTmjdwQwKqHBQT+v5Rg5FFuvhpG7G5+t6BcrXTX
	Shapg5SWTANYrTN55dEoVaj0H46xDbLBPTttQ5Y4ZCb2KxjtQ876mAYY+J0Dne/ol191pH8h3UTuH
	TfTAroKd6ZGDXVLoG9RyAz0qAems/WDOAs5bSJFRf7u0VKwslwvAYGgX4dNix+HbzgaHIPfWdGwQI
	u+Z0dRbz/E5s+1JDypYa+yyUU9wPlUPSa1VBp6WF1odWktJV4ylCz0g/bhsQ1dolG0JRC0FpTEZG+
	TUGaEDTRSia/5j5Ox1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgHj-0003mL-D1; Mon, 04 May 2020 18:57:47 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgHc-0003lB-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:57:42 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2B69711F5F61A;
 Mon,  4 May 2020 11:57:39 -0700 (PDT)
Date: Mon, 04 May 2020 11:57:38 -0700 (PDT)
Message-Id: <20200504.115738.1197878174801820355.davem@davemloft.net>
To: colin.king@canonical.com
Subject: Re: [PATCH] net: stmmac: gmac5+: fix potential integer overflow on
 32 bit multiply
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200501141016.290699-1-colin.king@canonical.com>
References: <20200501141016.290699-1-colin.king@canonical.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 04 May 2020 11:57:39 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_115740_889075_5B6FC5CF 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin King <colin.king@canonical.com>
Date: Fri,  1 May 2020 15:10:16 +0100

> From: Colin Ian King <colin.king@canonical.com>
> 
> The multiplication of cfg->ctr[1] by 1000000000 is performed using a
> 32 bit multiplication (since cfg->ctr[1] is a u32) and this can lead
> to a potential overflow. Fix this by making the constant a ULL to
> ensure a 64 bit multiply occurs.
> 
> Fixes: 504723af0d85 ("net: stmmac: Add basic EST support for GMAC5+")
> Addresses-Coverity: ("Unintentional integer overflow")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
