Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F96072151
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IA/wqhbol9enqUPnaliku4DF+hUrnWPTSyM7GPKLXMU=; b=TG5ugo+mjEeV+3
	MOtFH4dBZrWeypcmdQNoFRsQNQkI0bojb4Xp7YLwt7uXwmfOEv02AB2U1J/KAdAomhy7gaLJUb34N
	Rs7y21xfsRww8azRVkRjLKzZyzaMQOxJI/gMZ+Jjt6mOeLMVaByBzbH4g1fFvVD3EibGbvqR1qbd2
	vYozbiuG16NZwsjOLQZ3ckD77aQDiCoFTUB2y0Mj6Ookx0E3kc9LNUqXsUjAJqrzckx3KoMzG1YyO
	p9Kpys9PfY3T7MCp26lUIqxJUHfyNk45da9b8HUEtjSt3yhm3CKX3cRYz/H8qFYMHs1eku1Rc3irB
	4ddMxiO3+9eGICPPvWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq237-0001wK-06; Tue, 23 Jul 2019 21:10:17 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq22q-0001m8-Of
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 21:10:01 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8CB0E153BF442;
 Tue, 23 Jul 2019 14:09:54 -0700 (PDT)
Date: Tue, 23 Jul 2019 14:09:54 -0700 (PDT)
Message-Id: <20190723.140954.1162767455885272582.davem@davemloft.net>
To: andriy.shevchenko@linux.intel.com
Subject: Re: [PATCH v1] net: thunderx: Use fwnode_get_mac_address()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190723200344.69864-1-andriy.shevchenko@linux.intel.com>
References: <20190723200344.69864-1-andriy.shevchenko@linux.intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 23 Jul 2019 14:09:54 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_141000_805408_E9B71640 
X-CRM114-Status: UNSURE (   5.90  )
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
Cc: netdev@vger.kernel.org, sgoutham@cavium.com, rric@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Tue, 23 Jul 2019 23:03:43 +0300

> Replace the custom implementation with fwnode_get_mac_address,
> which works on both DT and ACPI platforms.
> 
> While here, replace memcpy() by ether_addr_copy().
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
