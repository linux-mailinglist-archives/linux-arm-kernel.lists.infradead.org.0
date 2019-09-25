Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D093BE308
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 19:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnLbcmRsp9c7YiKm4UsPcr7H+7SZcs0LX1iWW9dRn/k=; b=ecqVjnvIxsGQw+
	Xg5TqUDeYkuiioQOAj+wziLUYT7hQLyBDzdQR9lZn2TZIH+qJnGXOYt4IJdDpR9D1pgX//g853RgG
	0dGRw+9Try3cWcBKD2fc89zLIsYoMdQ8cIn4epjZAMxHSpeCpXYZ0wosxCQvMdonvkSF3//O+YsvH
	W2qAWgiTokFPL+z5dhnd7ZRbzy1rF7aQnjvo8m/X32XleIGIRb0jPZ0I+O6bJkI44XEtA1/4gilzC
	c5ypocH0Cd2IXuVmMj9f1gYaYewEnlkYnSH1pKBqNDyjhaL2nnM1mea+t4b5qIevlKMWxi9d+iNSo
	zaJYG+GyGBnGD2Vj8vPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAjV-0002Kf-PA; Wed, 25 Sep 2019 17:05:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAjD-0002Jr-MJ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 17:05:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D96AB68B02; Wed, 25 Sep 2019 19:05:16 +0200 (CEST)
Date: Wed, 25 Sep 2019 19:05:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH v2 linux-next 0/4] arm/arm64: configs: Convert all
 CONFIG_REMOTEPROC instances to y
Message-ID: <20190925170516.GA16678@lst.de>
References: <20190920075946.13282-1-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920075946.13282-1-j-keerthy@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_100523_881686_1E083D7F 
X-CRM114-Status: UNSURE (   5.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, arnd@arndb.de, tony@atomide.com,
 catalin.marinas@arm.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, t-kristo@ti.com, olof@lixom.net, will@kernel.org,
 hch@lst.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Keerthy,

the patches look good to me:

Acked-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
