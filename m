Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EDC33EE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0MdYDpcTP6fTFq4ag7i4xkl3nHNVQ+Th91cOf8kN1k=; b=OuVsMjBxUUhJmV
	sxfL2V62pVXsoxw8K3r2DD50E2txOW3mErR23fUg0R2gTPquz/p9zz64dtjeNArvF3L+mJuQL90OC
	uq6Jn7B0bs4xu2vyRu4Ffs5EveuR29DlR4gdOM1e3DS3W23NB3SCvDirLQTrYT3W/Nv1VwJM0uLBJ
	KDHwYURw0zQmlXF+s55xqSYquGa3rrjDYF/BRgh3B5o8rzunKfyCJDA8/JPRQNlDbacXLY+A97TlP
	0fnESYrTK63b2dA4/WIm/sxMRFT0LLSv1wDTTObvA+UhZxguGpvRWNBdoixMqbPMZjm6FgFsFHYEi
	ttaZNnLT2+cBomRX6Prg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2mr-0004HB-Rc; Tue, 04 Jun 2019 06:19:09 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2mk-0004Gq-RQ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:19:04 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x546Ix78116595;
 Tue, 4 Jun 2019 01:18:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559629139;
 bh=jvqL2oo7kskDDbMtCsx2Fz2AQjGWe3N34LruTZ8+CvE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=A/pg8LgY5XbvJdRfUVgHoYuMS/6Yer5ipsxWstl/0yjWrMGEyz1fM2Y9vY0sR6osh
 mpBUZGoxYi7F59A8aJ+lUZBmMYvmRh671YtwJhPofdPK4teJST3T+DHbKjK3UIF9FV
 cT3ZJti06b0FZ70l4qg5rrbJDcJ9ZS2K2/4Zn4Cg=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x546IxUV045962
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 01:18:59 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 01:18:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 01:18:58 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x546ItYQ079544;
 Tue, 4 Jun 2019 01:18:56 -0500
Subject: Re: [PATCH 0/4] Add Support for MMC in J721E
To: Faiz Abbas <faiz_abbas@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>
References: <20190604060914.10886-1-faiz_abbas@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <2f45cef2-c4ca-0404-b205-fabbb92a40fb@ti.com>
Date: Tue, 4 Jun 2019 11:48:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604060914.10886-1-faiz_abbas@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_231902_970066_9A5F6B8F 
X-CRM114-Status: GOOD (  12.39  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, ulf.hansson@linaro.org, robh+dt@kernel.org,
 adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/06/19 11:39 AM, Faiz Abbas wrote:
> The following patches add driver support for MMC SDHCI interfaces on
> TI's J721E devices. The 8 bit and 4 bit instances have phys which are
> different from the am65x interfaces as well as different from each
> other which leads to 3 different compatibles and a bunch of flags for
> indicating the differences.
> 
> Depends on Nishanth's initial J721E patches here:
> https://lore.kernel.org/patchwork/cover/1077382/

This dependency is only for testing, not for applying these, right?

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
