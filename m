Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD83F2F21
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 14:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWAxuiVeA9mZbzDGfMmlwOGwvmZDwjp/ztAQxktbVx0=; b=EWooKPy2oI25QK
	vDU1lwJKoEZ9QHgDSDoNPj8TIhJ6iYD4MEKxNhag1EZFuYpyIQSME0R2eiG0NjCSxjwwL4EsptQpO
	J3T3cZnOYpz9EBYy7+5sWn3hPgdYZsFZA4enj2sbPsqSZVCjkm/vmwgE/HgaBCF6VR+3Bp/sOYVc8
	TzHCGUnLRw4whWNPZvYdx/kjvfyeAN1iwYT2GG6FqCQFgVunhqawLhitka5oJY896U0Abc675ozgS
	mtBYj+/L57vEsScSZMenWjgA2HyqZxMAdhRCNmwHRLyS6E7UR2FJyUaBvNxeQQ+E+AHnC4RN9rAF6
	a0Nc33AirOCebpqx9BrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iShlD-00028A-J7; Thu, 07 Nov 2019 13:23:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iShl6-00027B-8R; Thu, 07 Nov 2019 13:23:33 +0000
X-UUID: e8c020057f31483a981adc71185ddfbe-20191107
X-UUID: e8c020057f31483a981adc71185ddfbe-20191107
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1487721755; Thu, 07 Nov 2019 05:23:25 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 7 Nov 2019 05:23:24 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 7 Nov 2019 21:23:23 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 7 Nov 2019 21:23:16 +0800
Message-ID: <1573132996.8833.3.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] mtd: mtk-quadspi: add support for memory-mapped
 flash reading
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 7 Nov 2019 21:23:16 +0800
In-Reply-To: <20191106140748.13100-2-gch981213@gmail.com>
References: <20191106140748.13100-1-gch981213@gmail.com>
 <20191106140748.13100-2-gch981213@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_052332_301996_0C622CD2 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Vignesh Raghavendra <vigneshr@ti.com>, Tudor
 Ambarus <tudor.ambarus@microchip.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-06 at 22:07 +0800, Chuanhong Guo wrote:
> PIO reading mode on this controller is ridiculously inefficient
> (one cmd+addr+dummy sequence reads only one byte)
> This patch adds support for reading from memory-mapped flash area
> which increases reading speed from 1MB/s to 5.6MB/s

This may not be true for all MTK SoC. Which one are you testing?

Joe.C





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
