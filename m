Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8567B123FDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 07:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bkx1+bhtX7aiQDkP3Wy5EcdbaduUIwGNWluyidLJ1Js=; b=S8w2usmm0eb1Af
	Y+aJph6zK/HtSFdr24Df1AhCkJnBJpceYvN3W31TmYs3i+CH4nDX2a7yFi5es5HZCLxmviYgJqyX2
	JyQyDGti0vDUrshv6mk5hhw1tL1/ZfwxlZkEwVi+ogeMqczoBcjb29ZHC6tdtrR0TmkG8sCu0+y1d
	VQdBTUt0dCeXgNP9ygAzuDHLahfC9UUoGhNMbdHRrCzgB2XsnkRSLUSQnQzQgjlJDwCkbxKyqFFPx
	IlJ8hazawjNVfAWLM5C/9aB/AFmOh8FjdbBKnbeVFsg9CJQfKOTGGxkBo1giG/UBc9NdkkNH582x0
	GNU2pRwS0BMmbzMYCc7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihTFz-0004Om-Bf; Wed, 18 Dec 2019 06:56:27 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTFo-0004Nm-VX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 06:56:19 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2447315036C0C;
 Tue, 17 Dec 2019 22:56:15 -0800 (PST)
Date: Tue, 17 Dec 2019 22:56:14 -0800 (PST)
Message-Id: <20191217.225614.1797207200536618024.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net v2 6/8] net: stmmac: RX buffer size must be 16 byte
 aligned
From: David Miller <davem@davemloft.net>
In-Reply-To: <8d7b87265a2727a28896203f5569d7039c2c34c8.1576581853.git.Jose.Abreu@synopsys.com>
References: <cover.1576581853.git.Jose.Abreu@synopsys.com>
 <cover.1576581853.git.Jose.Abreu@synopsys.com>
 <8d7b87265a2727a28896203f5569d7039c2c34c8.1576581853.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 17 Dec 2019 22:56:15 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_225617_037150_C700E27A 
X-CRM114-Status: UNSURE (   4.03  )
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
Cc: Joao.Pinto@synopsys.com, jakub.kicinski@netronome.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue, 17 Dec 2019 12:42:36 +0100

> We need to align the RX buffer size to at least 16 byte so that IP
> doesn't mis-behave. This is required by HW.
 ...
>  
> -#define	STMMAC_ALIGN(x)		__ALIGN_KERNEL(x, SMP_CACHE_BYTES)
> +#define	STMMAC_ALIGN(x)		ALIGN_DOWN(ALIGN_DOWN(x, SMP_CACHE_BYTES), 16)

You need to align up, not down.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
