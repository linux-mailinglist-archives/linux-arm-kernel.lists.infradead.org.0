Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D18E213F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qy5ZpUB6WQBtfVdHCbsLGBYAfbEw7UexgES2Db18BM=; b=Sq+s60pHCnHB0m
	WFtFtKqHBkvZBdZNXMo/790p4QaDq7YEgrjhfoSA4NY5z3M4fwEPXt/SUM4g9XaKNdE51OTJUpr2w
	7NWu0boaXA74bekg5LiAwQm4b5jQtP9wPHYuV+VA33Xy5O4cGGR/WsG71V7zUnxrRIRnXfuGTnh7n
	sCpmx6eIzVnWtmef+r7v/lTHiMVTXenucY2lMTEYJlRi6KCSun1k67EGRAxMYrwtpCILmyGEeya1F
	VGBIlqsH525CwfucksFXBCqYsZ4047mLst0Wa90HOd+DyDn+XKuyXUosjx+guO18hN64L0ZHINJuS
	UILcI/ZtAo7Fff/dZisw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJza-0003vQ-CS; Wed, 23 Oct 2019 17:00:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJyz-0003gH-Q7
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:59:39 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 33CBF80CF;
 Wed, 23 Oct 2019 17:00:12 +0000 (UTC)
Date: Wed, 23 Oct 2019 09:59:34 -0700
From: Tony Lindgren <tony@atomide.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ARM: OMAP2+: Remove duplicated include from
 pmic-cpcap.c
Message-ID: <20191023165934.GN5610@atomide.com>
References: <20191023062900.43576-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023062900.43576-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095937_885899_B6BF617A 
X-CRM114-Status: UNSURE (   4.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* YueHaibing <yuehaibing@huawei.com> [191022 23:29]:
> Remove duplicated include.

Thanks applying into omap-for-v5.5/pm.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
