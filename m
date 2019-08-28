Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFE8A0CBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 23:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n34yRN+7x7ZTJ5f5YWcwKlNJbluhz7v+Tg3wrj0nLIc=; b=I9GdmKFYbEw2zL
	vkIu8OEpUoYav/UDUso8b5X/qwYp5Ljm0Isu+BO/BGcVzH1k3RXHG+POfeSEUXaPUc/cMuOCgvxMR
	Xmi82JVnVrVf18nCqRz6iWx8L0J2Vj2RFPL+A6KuxnomwwPoC6+N/7KMtdUEN/l55boFtRCoimCDa
	sqxvSiRfzwIEMJjiVIRf/VLgDI2ibdfMeO5rPt80qugHQqWC/FkMNTVcLUsUbMiwroctITknmP8f9
	V50r5IQoRmbYLEiHpKKomzWTNlYGZMJqCcOpeTCemKwnbPyyx0LD8eoSIJrw8ZMcbEb5k+Q6n0byF
	2UWoQ5mrsKa3fVwUHGjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35qt-00027T-AE; Wed, 28 Aug 2019 21:51:39 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35qk-00026q-RK
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 21:51:31 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2A1D0153A4E4F;
 Wed, 28 Aug 2019 14:51:30 -0700 (PDT)
Date: Wed, 28 Aug 2019 14:51:29 -0700 (PDT)
Message-Id: <20190828.145129.1525046644524646212.davem@davemloft.net>
To: yuehaibing@huawei.com
Subject: Re: [PATCH net-next] phy: mdio-bcm-iproc: use
 devm_platform_ioremap_resource() to simplify code
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190827134616.11396-1-yuehaibing@huawei.com>
References: <20190827134616.11396-1-yuehaibing@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 28 Aug 2019 14:51:30 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_145130_888087_D21AC12F 
X-CRM114-Status: UNSURE (   6.12  )
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, sbranden@broadcom.com,
 rjui@broadcom.com, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>
Date: Tue, 27 Aug 2019 21:46:16 +0800

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
