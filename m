Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421971904B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 05:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dejVPQI4noejCxaeuJ10OWDC8FDA3RWY6yML730AqwE=; b=dao1B6I06WggM7
	+SBDue+120v0Jkt95lFcq91hxsOcD8L7xvAXKpT5e7puZseJLPEuUFU42Ob+djdY5VV0JaCRsclpj
	nnLJ07mpC/sqBDJSigdQLtYf0/cw/f3vHyDka5wR/orh6Rrj8U8HlH1eVEG3BzmtwZjNC1sk9zIqE
	IBUoMlFp48O423qiz+EukU6cAAWIKYI6L2qkidd1L+u269Qq1KB4Klkw51YKwJYGE3zKT1LcLt9Sh
	aVNpthxnPOwSPOk81IXggdxwYpYdfHYXWtY56cxKVQzylZR6haxOoC2sDbwIrM4qnG5scvyLJdWW+
	WCx2UL+0s2i6UFlf1qaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGbaH-0008O5-85; Tue, 24 Mar 2020 04:54:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGba7-0008NH-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 04:54:29 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 233D3157A5EBC;
 Mon, 23 Mar 2020 21:54:23 -0700 (PDT)
Date: Mon, 23 Mar 2020 21:54:22 -0700 (PDT)
Message-Id: <20200323.215422.456286022120023020.davem@davemloft.net>
To: zhengzengkai@huawei.com
Subject: Re: [PATCH net-next] net: thunderx: remove set but not used
 variable 'tail'
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200323065116.45399-1-zhengzengkai@huawei.com>
References: <20200323065116.45399-1-zhengzengkai@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 23 Mar 2020 21:54:23 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_215427_340074_A00FECE1 
X-CRM114-Status: UNSURE (   6.17  )
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
Cc: netdev@vger.kernel.org, ast@kernel.org, linux-kernel@vger.kernel.org,
 rrichter@marvell.com, sgoutham@marvell.com, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zheng Zengkai <zhengzengkai@huawei.com>
Date: Mon, 23 Mar 2020 14:51:16 +0800

> From: Zheng zengkai <zhengzengkai@huawei.com>
> 
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/net/ethernet/cavium/thunder/nicvf_queues.c: In function nicvf_sq_free_used_descs:
> drivers/net/ethernet/cavium/thunder/nicvf_queues.c:1182:12: warning:
>  variable tail set but not used [-Wunused-but-set-variable]
> 
> It's not used since commit 4863dea3fab01("net: Adding support for Cavium ThunderX network controller"),
> so remove it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Zheng zengkai <zhengzengkai@huawei.com>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
