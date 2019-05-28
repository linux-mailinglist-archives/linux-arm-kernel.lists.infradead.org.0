Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E42CE39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 20:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTXh3mKc+UhbpPnQP0/Mvo2nhzugfsSZq5s/WRPUDVc=; b=JDHiM2vjErwNI4
	isSq5SkpFr/MjeDnRQqZlZqXONtCPKVjfcI+6a60BSqYZf3ndz3+54+AKJv58CBeKO5bLCI/irnG0
	dlL4i+kN3ODOh6CfkBi0/nGDpkbEdhoAqBoE/g1KelaSI10XPaYAy1u6EGPkIzKCUP82co5rYCbBZ
	MVCcGjoLLjLxtordFuB7R+5c+gWj7HzbGWgB6cvjoaE284a8VJzKo8DB5d/AHUbc6YECc+bi1+LXT
	rrLwoIb+jgCLt3zxAGMQO42+oTb9KVnouHd+nD39mDXmeQN7NtQ3sm0sAU0LG8+CWJenyHOpdcqBI
	hsPWesKyhVyA7mfqku9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgW1-0002PJ-KH; Tue, 28 May 2019 18:08:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVgVu-0002Os-77
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 18:07:56 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B266F12D6C929;
 Tue, 28 May 2019 11:07:53 -0700 (PDT)
Date: Tue, 28 May 2019 11:07:53 -0700 (PDT)
Message-Id: <20190528.110753.377345658167716646.davem@davemloft.net>
To: Jisheng.Zhang@synaptics.com
Subject: Re: [PATCH net-next] net: stmmac: Switch to devm_alloc_etherdev_mqs
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190527190833.5955c851@xhacker.debian>
References: <20190527190833.5955c851@xhacker.debian>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 28 May 2019 11:07:54 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_110754_260263_692EFA76 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


You never even tried to compiled this patch.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
