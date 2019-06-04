Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07420350AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTx/akwRInwx3N9KRw3GqjN3Ef1Z7NI2ZOPgawBrM5w=; b=Qq31Q2b57BuOBe
	urh5xUba9O97IuvY6/jFT23Q96IfOyyTqigt66kqAycwdgwhFbwJ6jDTYGAxp4o5ntPkliYGNofvg
	8y+044Hd7Sni7CIvqNSuwG6TaeCYK+aGCZYn/BGeY/Abi76LPmoGD76jejvwuG9WXb+PeEEc1P/jY
	8V3dPVfbeoUo2LCyHbe/4yW5neLUY2sfSiGqS0GIzFAdoSIpiqH+nXyHyoEQgbgHJdvDT6KVkRvLN
	aUChHt1CeSaBlLVvaNnFnbcpvLQRZM50gCiBZTmmoI+BC5pLa1/Tar8L8CzEcKzphDxOuwJdi+X9y
	KLAKFQ/N5xdAZHehJ0YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYFkj-0005fl-9i; Tue, 04 Jun 2019 20:09:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYFkc-0005f3-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:09:44 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYFkU-00035B-AC; Tue, 04 Jun 2019 22:09:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Subject: Re: [PATCH v2] pwm: rockchip: Use of_clk_get_parent_count()
Date: Tue, 04 Jun 2019 22:09:33 +0200
Message-ID: <1745663.OII0xTbMCj@diego>
In-Reply-To: <20190527135509.184544-1-wangkefeng.wang@huawei.com>
References: <20190525115941.108309-1-wangkefeng.wang@huawei.com>
 <20190527135509.184544-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_130942_538276_012429C7 
X-CRM114-Status: UNSURE (   8.09  )
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
Cc: Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 27. Mai 2019, 15:55:09 CEST schrieb Kefeng Wang:
> Use of_clk_get_parent_count() instead of open coding.
> 
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>

on multiple rockchip boards with multiple pwm-regulator and -backlight
Tested-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
