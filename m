Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68C62CEA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 20:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4idT1NHvfzv3Vlx3Yk1oHztwCuOB3cX2uZ3qT8/31G4=; b=JAFyS75IcqeL5+
	eZZGD5FUmeK5bC++sd06r/LRaiaANWYtFIQpl5OPFo+Ikcw4u39WJmJ3DcsnfPNJRXIKUQnv9I6ir
	SSSmvqv+DNigMmR8IdsjqEbgNpSVsHCzZHoVHidZu+DTIFIewG6iAEunDvmuv1/ENhQZP0xYHYeKO
	sy5EVFKkmtMJFqipUDbX/JekyZjEJirArqITQo+lyQQO6XHZm7Faof94LtDQNmTn81Eu4OqnwGFAz
	CvO5ZF4GDRbPRMcalrYzFLwSZq2amAiFSWbqcjInsv7LV4RVPuHvdEx02pvaygLnbZwfP/o54nSdp
	csOqeW3hNx7WSj4EUESg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgiQ-0006u3-La; Tue, 28 May 2019 18:20:50 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVgi1-0006sz-SB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 18:20:34 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 352F812DAD570;
 Tue, 28 May 2019 11:20:20 -0700 (PDT)
Date: Tue, 28 May 2019 11:20:19 -0700 (PDT)
Message-Id: <20190528.112019.816281435273023187.davem@davemloft.net>
To: maxime.chevallier@bootlin.com
Subject: Re: [PATCH net-next] net: mvpp2: cls: Check RSS table index
 validity when creating a context
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190527115201.12721-1-maxime.chevallier@bootlin.com>
References: <20190527115201.12721-1-maxime.chevallier@bootlin.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 28 May 2019 11:20:20 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_112025_916352_9CCBF3E7 
X-CRM114-Status: UNSURE (   6.87  )
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
Cc: lkp@intel.com, antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, nadavh@marvell.com, dan.carpenter@oracle.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Date: Mon, 27 May 2019 13:52:01 +0200

> Make sure we don't use an out-of-bound index for the per-port RSS
> context array.
> 
> As of today, the global context creation in mvpp22_rss_context_create
> will prevent us from reaching this case, but we should still make sure
> we are using a sane value anyway.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
