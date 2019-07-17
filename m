Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CA06BCE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 15:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aqt6lUfyKuJXHFldNGoEac2U6ModMNMoTfVDneDfpkI=; b=bzuvdaDFQpfLY/
	cQMAL5kX63KfY4eyURszFofPIB5PmFjYmyzuu909YqkKuVmFTBqrU8DdLdIGyaVWO5f+wNoqJo94n
	8XhBmc0BOW4fbrSes4Qb2rY1IymbZ0vokiu/WR6pGgnf0/321CLrDHgyaAiz9Plvm68nmcLTn2vKp
	UFLiD686k7vVCF7ts2XnwIdvhk+xjw9CJgo4MBxsdUHxlnaIG+d70vW6qgZWtIQ5TJeqwA8w5qjaR
	xDxkxi5tkvd/U+AYxApwtsUKMDETzoYvUzET0q7ygKNU9mrjkMGOnu9EIf3HZiMTurSldhYl0x4o4
	0ZeEpLrG8OpRDSeOXE0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjsB-0005Ww-N0; Wed, 17 Jul 2019 13:21:31 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjrz-0005Vs-Dj
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 13:21:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6HDL8qN053169;
 Wed, 17 Jul 2019 08:21:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563369668;
 bh=OxgZ7MOvt4xRiKGYYeG81gjj0/OIKQv6y5JnxuhZoFs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WOeN+a/NksI2gXRM1SIQMWBRCbkHU4+xz6sNcwoGcsflztrZ8fWvud/ITcx8IMtBZ
 Jqe2MuuqMbWwsADPB7hpQx93ITyiEVQLzAF66bT7TU+2wm8E65D8sYkDzD1OSOLIYM
 iHR73DUXVai/YXFmwNCnUO5tTqu0O2j+IODDAZiw=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6HDL8PI058396
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jul 2019 08:21:08 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 17
 Jul 2019 08:21:07 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 17 Jul 2019 08:21:07 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6HDL4cF000406;
 Wed, 17 Jul 2019 08:21:05 -0500
Subject: Re: add swiotlb support to arm32
To: Christoph Hellwig <hch@lst.de>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>
References: <20190709142011.24984-1-hch@lst.de>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <6a56eacd-d481-de93-e0d8-64d8385de214@ti.com>
Date: Wed, 17 Jul 2019 18:51:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709142011.24984-1-hch@lst.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_062122_964991_CFDB9D4C 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: iommu@lists.linux-foundation.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 09/07/19 7:50 PM, Christoph Hellwig wrote:
> Hi Russell,
> 
> This series adds swiotlb support to the 32-bit arm port to ensure
> platforms with LPAE support can support DMA mapping for all devices
> using 32-bit dma masks, just like we do on other ports that support
>> 32-bit physical addressing and don't have an iommu.


This series fixes SATA errors seen on TI platforms with LPAE like DRA7
Rev H EVM.

Tested-by: Vignesh Raghavendra <vigneshr@ti.com>

Thanks for the fix!

-- 
Regards
Vignesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
