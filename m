Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D151EC4E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 00:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/yLXPv4EP3mCD1lt8vqCf/teRWROLsoLcdFNmr/DMM=; b=NK/RwOv7mbtim8
	h1BrL6j9DzyYCRrYJbk/GwaeVgGYc2lW/SmLNClPzysFSrhIEchika0/9sl1LxOHaei5ex45Am2M7
	miaDds6vJR8RfEbGiw/ljgBO7JiMJ0wcvzETDy6FNS4h2MmR/zxDKlY32m64ncGFpH/1UYQpScm3F
	Ghrh27OqTD/4rPHUNxElWGizBAGbdzuhj4nCaZyKXwEDbq63t5X5U57wcj2OnirKyyPs+m9k3kk5W
	9aktA5O+kKcGEiOjhippIltwkmE33w1sVI62oZazjAM8WE+cju1EkwSoNongBs/WWQYpyI5IG2r/P
	jdFmnQmuL+HRUZ6Axg9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgFP2-0007SX-4n; Tue, 02 Jun 2020 22:29:00 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgFOv-0007Q9-7q
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 22:28:54 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477:9e51:a893:b0fe:602a])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D84AE1277CC77;
 Tue,  2 Jun 2020 15:28:45 -0700 (PDT)
Date: Tue, 02 Jun 2020 15:28:45 -0700 (PDT)
Message-Id: <20200602.152845.987253288774299345.davem@davemloft.net>
To: aishwaryarj100@gmail.com
Subject: Re: [PATCH] net: stmmac: Drop condition with no effect
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200602104405.28851-1-aishwaryarj100@gmail.com>
References: <20200602104405.28851-1-aishwaryarj100@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 02 Jun 2020 15:28:46 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_152853_283149_1467AA59 
X-CRM114-Status: UNSURE (   5.55  )
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
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 kuba@kernel.org, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Date: Tue,  2 Jun 2020 16:14:04 +0530

> As the "else if" and "else" branch body are identical the
> condition has no effect. So removing "else if" condition.
> 
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>

I'm not applying these patches, the conditional tests serve as
documentation.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
