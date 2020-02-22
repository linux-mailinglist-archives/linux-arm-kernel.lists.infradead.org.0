Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5E8168AB5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 01:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdvPlNjQGeIoy1Bd7lXiGFtiSObr/zKvsxPoCtM6Wfk=; b=kOhiXHz0ukAyDu
	Q9ljpaTrFsDMrupq9u4iM8p3LSHm3DAJ1H8ApEDtZ8XLHnaXA9fTDlj5CXeRra/6N0LI8sptKDJsD
	zbGWscyqKr1KXasdXiyRlEwrF1srJYZ5Vt8nJZOl+WOToJUpGfvkh4kK0uC9BE9X8E1Ewsy1FRGuZ
	y8v1wRY1Q+A+1fDDJkBBii5k4ZEZgwbS5nTD3mJ27Ne9VDYtU3IhN7XcG+1lFX1C8xxPdFP1QWkS0
	T4MCCdW3sD5EfvY/uTgF+gj90CzMTR7KKAysxZIgLpEb5BI3rR7ejRTeJD5WqXDGQi0cxeltF96Ge
	qkqW9YWuaipg3dsWxqhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5IIz-0002iI-6X; Sat, 22 Feb 2020 00:06:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5IIp-0002hZ-QX
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 00:05:53 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3710C15828FFF;
 Fri, 21 Feb 2020 16:05:48 -0800 (PST)
Date: Fri, 21 Feb 2020 16:05:47 -0800 (PST)
Message-Id: <20200221.160547.1967010307076185614.davem@davemloft.net>
To: esben@geanix.com
Subject: Re: [PATCH net v2 0/4] net: ll_temac: Bugfixes
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1582267079.git.esben@geanix.com>
References: <cover.1582108989.git.esben@geanix.com>
 <cover.1582267079.git.esben@geanix.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 21 Feb 2020 16:05:48 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_160551_860774_44A4B694 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, ynezz@true.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Esben Haabendal <esben@geanix.com>
Date: Fri, 21 Feb 2020 07:47:09 +0100

> Fix a number of bugs which have been present since the first commit.
> 
> The bugs fixed in patch 1,2 and 4 have all been observed in real systems, and
> was relatively easy to reproduce given an appropriate stress setup.
> 
> Changes since v1:
> 
> - Changed error handling of of dma_map_single() in temac_start_xmit() to drop
>   packet instead of returning NETDEV_TX_BUSY.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
