Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FC1186788
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:10:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48ZgtOm3P/7AfbqVUwZaiVhr54DDpfhxE2GN1ZZD+vM=; b=Y8uvkmwSjfi/6T
	Xcrvn8t8Yiw2onStXyv1u0pgIPQSe7qxDqyPoPaW3F5fzRzVD9p4wSLum6Fr5YfcK7lyGcx9IWlTk
	wBao9oJhJXa+UovyxlCYEG13oQYkaMdp9N6QN3+RuQIFOX7qUTBrw3BkVK99dN1ZvI28I0kON9wWE
	WebUjoMnASb5MEJLkHp5tuEVLHlb83CXSxF6VlgK8KqXPY37KpBZkWu3G9cJQaF02noVcChrMw3Cn
	5RdNBDKpgEXNOev+CM/dGwF1WzCW0mJBQAXUOb+J2TqPa/X9YUtTQr/WTrnCQ6USzVmackmwItj8a
	wwkPph5f6Nt60AE4iE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlll-0004m4-Gf; Mon, 16 Mar 2020 09:10:45 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDllb-0004kE-7F
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:10:37 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D89EA14706AC7;
 Mon, 16 Mar 2020 02:10:27 -0700 (PDT)
Date: Mon, 16 Mar 2020 02:10:27 -0700 (PDT)
Message-Id: <20200316.021027.1748414593839565698.davem@davemloft.net>
To: zhengdejin5@gmail.com
Subject: Re: [PATCH net-next v3 0/2] net: stmmac: Use readl_poll_timeout()
 to simplify the code
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200316023254.13201-1-zhengdejin5@gmail.com>
References: <20200316023254.13201-1-zhengdejin5@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 16 Mar 2020 02:10:28 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_021035_267859_D4DAD4BD 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dejin Zheng <zhengdejin5@gmail.com>
Date: Mon, 16 Mar 2020 10:32:52 +0800

> This patch sets just for replace the open-coded loop to the
> readl_poll_timeout() helper macro for simplify the code in
> stmmac driver.
> 
> v2 -> v3:
> 	- return whatever error code by readl_poll_timeout() returned.
> v1 -> v2:
> 	- no changed. I am a newbie and sent this patch a month
> 	  ago (February 6th). So far, I have not received any comments or
> 	  suggestion. I think it may be lost somewhere in the world, so
> 	  resend it.

Looks good, series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
