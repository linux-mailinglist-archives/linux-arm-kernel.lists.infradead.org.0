Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECFB1E78A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Pul5N6M9SQoqc25HJfYI4huzfqnvLlXMMThqW4Vh5g=; b=nyJfEkjk30zqsR
	oE1/MpiN7CbXArkneKIr9bN2L6x8EtN/pC1ILUNZFUIZXi1HA5HMpImiPlOapaLb9bUhStF4b8uFM
	13/wm5SE4G1PD+NSa95SzEOwfRPNEZ+cVn61Do5epwiQXKmD8ZBHihWkX4XFUK6K/HCTePVBYDXHW
	MjLaS+Xw8ejxONPjR9Ozb1Z4K7iVKbna8KBuMg7fPnvydACFOg5DXvJzw+jraHegMB+ZR/hrk9Sxp
	VlmEMIKzkQ4/lBY5Yx8yHFAK8IJgr1gVXQO0wx8n/NPNlaTxRI4RWFQNGseAZKMUi7VUr5y5yWCwb
	IU5+HGEBidsMwUQkkr+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeafG-0007iJ-BD; Fri, 29 May 2020 08:46:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaf6-0007hq-QK; Fri, 29 May 2020 08:46:46 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 468C32A4304;
 Fri, 29 May 2020 09:46:43 +0100 (BST)
Date: Fri, 29 May 2020 10:46:40 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v7 17/20] mtd: rawnand: Hide the generic OOB layout
 objects behind helpers
Message-ID: <20200529104640.1997434f@collabora.com>
In-Reply-To: <20200529104548.0038bbe7@collabora.com>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
 <20200529002517.3546-18-miquel.raynal@bootlin.com>
 <20200529104548.0038bbe7@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_014644_977078_ABFBA9D9 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 10:45:48 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Fri, 29 May 2020 02:25:14 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > +const struct mtd_ooblayout_ops *nand_get_large_page_layout(void)  
> 
> nand_get_large_page_ooblayout() (same for the other helpers).
> 

And sorry if I got it wrong in my previous review :-/.

> > +{
> > +	return &nand_ooblayout_lp_ops;
> > +}
> > +EXPORT_SYMBOL_GPL(nand_get_large_page_layout);  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
