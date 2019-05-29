Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 890A22E610
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 22:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8HMGDGzND2E8VXx3SA+hiAoNTgnzM/n5VMXvaW97ns=; b=s1yDcxalt7ffT2
	i9AEXbpDQ1VDT0TBSsVeEdBxQZPQd93lcMfR2QkGpJKOjoVwSEKBa6sj7U+8Qzm16ENe7tvHyBfMW
	jKveBnc/l1vGsQglAdDNg3NiDXdcBbY5XJI+p09ncMF3AobVbk5SN1hDhrNKAUalHvuMIJ45ChRO3
	pjBcZA9avjdbjmqYZyNWGSn8rJPjPdmM3Ejis0xONqAWjZ83pemzTzVvwVb5P1bETNK7B/8DaB4B5
	XlK0NTvcBvr+7rB40qKHeiZQ3zomkvW3gZU1XeuWK6Cb/thsGFqsNzWL0mkrfBq6TXKwX6Q3+V/AX
	zBywp/lNZip/RdSwQJig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5Ab-0004r9-69; Wed, 29 May 2019 20:27:33 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5AU-0004qn-Ab
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 20:27:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9B27614A6BDA8;
 Wed, 29 May 2019 13:27:19 -0700 (PDT)
Date: Wed, 29 May 2019 13:27:19 -0700 (PDT)
Message-Id: <20190529.132719.1367123786586447390.davem@davemloft.net>
To: Jisheng.Zhang@synaptics.com
Subject: Re: [PATCH net-next] net: stmmac: use dev_info() before netdev is
 registered
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190528145253.21b8abbc@xhacker.debian>
References: <20190528145253.21b8abbc@xhacker.debian>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 29 May 2019 13:27:19 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_132726_367790_06207ECC 
X-CRM114-Status: UNSURE (   6.66  )
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

From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Date: Tue, 28 May 2019 07:02:07 +0000

> Before the netdev is registered, calling netdev_info() will emit
> something as "(unnamed net device) (uninitialized)", looks confusing.
> 
> Before this patch:
> [    3.155028] stmmaceth f7b60000.ethernet (unnamed net_device) (uninitialized): device MAC address 52:1a:55:18:9e:9d
> 
> After this patch:
> [    3.155028] stmmaceth f7b60000.ethernet: device MAC address 52:1a:55:18:9e:9d
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
