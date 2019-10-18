Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198CFDCFDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMOFJijSKGARhZogya4+8Gv/iIg3UeYL2aaWqyyLM/k=; b=sTco939lncA7bf
	HSB7+7GMT3Kowx2ZIlHrmPCmRxkTZXbV1P1eQurQoIEndz26ydCmP1TguZZ8PgKhqnKPH+AtVLQeW
	engsB2KkH+ZcZsdXNLOCuaXSxNQdXsRNUEF7whGQI1719dccb7VgkyrVg8eJGhwVhPxeraekFDzlD
	220Z+87KOC35ldLMPkphpwoo1v3KmnkUyMjTxL5+jrdgkDX7obJ3CPMqDDcsoCNMIbTssbC0bkFO3
	uRCnErUZkEa3E/4YSmuOfSYZfw9OBZ0zm7OXmr7ysLWFhVPlq1nKhnVOMZNaJfn5vww8TH2FD81zf
	TLCEOuOqwL2uxVbXLRQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLYfw-0001Y5-25; Fri, 18 Oct 2019 20:16:40 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLYfn-0001Wy-3G
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:16:33 +0000
Received: from localhost (unknown [8.46.73.196])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6BD1612651D7B;
 Fri, 18 Oct 2019 13:16:22 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:16:16 -0700 (PDT)
Message-Id: <20191018.131616.1212114496307486279.davem@davemloft.net>
To: alexandre.belloni@bootlin.com
Subject: Re: [PATCH net-next v3 0/2] net: lpc_eth: parse phy nodes from
 device tree
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191017222231.29122-1-alexandre.belloni@bootlin.com>
References: <20191017222231.29122-1-alexandre.belloni@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 18 Oct 2019 13:16:25 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_131631_146013_3C244C0D 
X-CRM114-Status: UNSURE (   7.10  )
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 vz@mleia.com, slemieux.tyco@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Fri, 18 Oct 2019 00:22:29 +0200

> Allow describing connected phys using device tree. This solves issues finding
> the phy on the mdio bus and allows decribing the interrupt line the phy is
> possibly connected to.
> 
> Changes in v3:
>  - rebased on net-next
>  - collected Reviewed-by
> 
> Changes in v2:
>  - move the phy decription in the mdio subnode.

Series applied to net-next, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
