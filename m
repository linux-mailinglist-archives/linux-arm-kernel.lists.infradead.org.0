Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A324191D93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 00:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3leEQS9DRIEAEpk8zUjKZTbti+/UetQ7emn70TfVOw=; b=u1+OrQHo49kqS3
	8yBEl1WZDpHYkxCO0LoRfdnDYhpqr+HojAprmEVX1iTnELsKwGpdwBks1sNBaYnv/beps+x+zrYCK
	Lp7zADNXz46A9umexks9n88RId3KeVJ8cq5sMJ37Dt3GCAbHaMUtddD9NYJOxHbqeiFekIkmQGp+y
	Yi53ahsBdJDrkr5KkJz8ExSvxhN7S5VjH2WGewVTdUvJtdi+i4aIfytQiRaW7J/F98fjhx3BNp+SW
	jrG1bL7g/ynUWpe6AhGPHzMujX40ixDWCuC6RCdW9Mm6j0LVebGuBzioDsqLp3HpS+DXcpMlqhZ+o
	ccYiAyRFBsAHFZ1UUTDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGt39-000799-3n; Tue, 24 Mar 2020 23:33:35 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGt32-00078r-2G
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 23:33:29 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 225F8159F5B45;
 Tue, 24 Mar 2020 16:33:27 -0700 (PDT)
Date: Tue, 24 Mar 2020 16:33:26 -0700 (PDT)
Message-Id: <20200324.163326.1433477326280968127.davem@davemloft.net>
To: andre.przywara@arm.com
Subject: Re: [PATCH v3 00/14] net: axienet: Update error handling and add
 64-bit DMA support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200324132347.23709-1-andre.przywara@arm.com>
References: <20200324132347.23709-1-andre.przywara@arm.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 24 Mar 2020 16:33:27 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_163328_110489_CBA89710 
X-CRM114-Status: UNSURE (   5.09  )
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, radhey.shyam.pandey@xilinx.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, hancock@sedsystems.ca,
 rmk+kernel@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>
Date: Tue, 24 Mar 2020 13:23:33 +0000

> a minor update, fixing the 32-bit build breakage, and brightening up
> Dave's christmas tree. Rebased against latest net-next/master.

Series applied to net-next, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
