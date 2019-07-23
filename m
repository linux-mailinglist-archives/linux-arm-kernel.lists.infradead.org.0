Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3773F72200
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgnpC+7bA3SJyV3vEoG1bmfjCpwR28x1+NRt8+MbI7o=; b=IQqF9LVrUAVGJY
	WYqCwzEwcCn69Ps8RxrV0EoG4mCQ6tb+7KNOtenw2d9wct06hGcL4ct8ynjRByxMSjc+WILXwdiTj
	KYsnXgWFvPRnddPQivL+mQp1MmRFPZnMuDlw4C4yCFAEwFHTj9nWhIirC5m1EXFIJnXZ498uDsrVS
	tt0SKbT8fV9x66mSrzMmzU50Y7UFTiaBe0sZDQ3CxI/aD1OXFQP2FI3Y5xDjIbsdQtSGdbQJCWZ5I
	NgSCuSsgMG+hLcpQiXPH1yimZO++q7bVZlgsYhAYR7xqWVDqNO35b1T04aopmqzgqjAe8/SykVYB7
	yqXt9meoMHeu8JlqwWTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq2zn-00023m-I3; Tue, 23 Jul 2019 22:10:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq2zZ-00022x-6a
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:10:42 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NMAe7w114631;
 Tue, 23 Jul 2019 17:10:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563919840;
 bh=oFV9Rl15COlNVufQk+aL7I2gNNHPcjN8RZ7HyGgNjpA=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=o2rUjuTKy1Yv1EVj04iWmuneZduogqXc+tdhe+yPeCiNxOoHy56UTPh3HF1L+ZmrJ
 prWDfiyNZYdAuG7HXTyUp2v5xA+AH/gOQrUvk+xM2e31Hz28mvq53/172BdK7Hc9oa
 6rtjAFJhUg8vW4UJQ3e0pB0LVu1I+yFCmwU6VNGk=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NMAeEC075698
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 17:10:40 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 17:10:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 17:10:40 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NMAeCK036446;
 Tue, 23 Jul 2019 17:10:40 -0500
Date: Tue, 23 Jul 2019 17:10:16 -0500
From: Nishanth Menon <nm@ti.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/4] arm64: dts: ti: k3-am65-main: Add mailbox cluster
 nodes
Message-ID: <20190723221016.ozelg3zhiygt4oia@kahuna>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-2-s-anna@ti.com>
 <20190723113540.xvhsrlbf66lr5aaq@kahuna>
 <664f4a6f-697d-3463-bfd9-1423ad95bf62@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <664f4a6f-697d-3463-bfd9-1423ad95bf62@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_151041_305888_3BF4FA7E 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12:50-20190723, Suman Anna wrote:
> For the OMAP mailboxes, we do not want to enable just the cluster. A
> cluster without any enabled sub-mailboxes or interrupts will fail the probe.
> 
> There are 12 clusters but we won't be enabling all clusters for the MPU
> core running Linux. There are some clusters that are dedicated to
> RTOS-to-RTOS IPC which we don't want to even probe on Linux. This patch
> adds all the clusters, and the next patch enables only the clusters used
> by Linux that have the proper sub-mailboxes and interrupts. Please see
> the NOTE above for the reason why not all the 4 interrupts from each
> cluster are added here.

Please follow the example of uart and disable in the board file. Please
see existing code when posting new nodes.

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
