Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDB09A027
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArTk1HRZVNWIkHir2+bZANL8ugqJByfkuBJ9fd390GQ=; b=n3rGe9Y6wl/sG+
	zGWz7LFCgfNsQRwtOFIE9lx3aFKSQ3b45aNjJASoAhbUauqyuRhG3wZ72VrMhAeZ9TJT4Iolwp3qK
	N21IpZKSz0YulWR9x8mK6UyieVN6xDd81aHOTn9uppWpbySGQoTAYFHuf3OA7cNApGpIRwzXlxj4R
	KNWIYKxjaqK+JuDWZzdRaPb+YYVp4S0+uUXyKWRm9mqvFahVh/JQSLT+BtPEMyPJbOg+j4GRkD8mI
	iUjfreWGVLBd76YkX2SZ9kmCtJvX/eV4mFukbUELkM+7yCYnGDdYtnEQwZnUcNWJtpSng8TGBB0pB
	aYFkPbKltxIs2PPLjnhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0stL-00021j-Sf; Thu, 22 Aug 2019 19:37:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0st5-00020R-RE; Thu, 22 Aug 2019 19:36:49 +0000
Received: from wsip-184-188-36-2.sd.sd.cox.net ([184.188.36.2]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i0ssy-0001tD-FK; Thu, 22 Aug 2019 21:36:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: remove rk3288 fennec board
 support
Date: Thu, 22 Aug 2019 21:36:35 +0200
Message-ID: <9055349.xFmPUmBtRx@phil>
In-Reply-To: <20190821031124.17806-1-kever.yang@rock-chips.com>
References: <20190821031124.17806-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_123648_034220_A4A070F4 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 21. August 2019, 05:11:23 CEST schrieb Kever Yang:
> Since there is no one using this board, remove it.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

applied both patches for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
