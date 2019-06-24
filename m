Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F91F51C8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLCAWINsCnS4D5Ujs5PfrZiyLPLWw+llv4a+MZWqONU=; b=tBiRvfNd1F6XN/
	2zxwMZP8Vr1Lvkk+0YAsjJwW3ZbDAK1OXCYFsuGdFRfc1o5wePi5KFFiyW16S7SP3jS584Xzs0tmX
	PlqNYh8ookcJYxLI1/hAS9Ud2pAOy4wihcX42TRRLdG58ZVBNwhMwHu5E3F5KEJyE7xzwCjjDKS65
	WEPHt/RPKC1KQutnCaGevyltolPjFbcg66Qavyv0vYGj6QUAH5bzky5dZ+Ran0CYc6YPmufOJvor4
	1LbPhx6HJ6kSsEjUSKFn3YJc4id2lTdBuSHq1W6f5ZJN0Raj2eo4IVVR98y3HsCUuuaMR/UPSB6cq
	BKMkxXcaXn9CsA8rHq4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVkn-0002cg-Sd; Mon, 24 Jun 2019 20:39:53 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVkX-0002c9-PI
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:39:39 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5OKdZCS077530;
 Mon, 24 Jun 2019 15:39:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561408775;
 bh=oIggU2usg7ip92ERe3n8UI5GnQ67C5U97I7Ca1/uLxw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=PXmZABqByRnONJkq4IlV58VJMYG2qoNypXsSXYUb9lYL8kntL4D1kvhndujxPF8ZW
 1go4rpAo3ktU3Up5YbUgyQLWcPKFsctVlVxZSUpo44VbxwZJJuikzMMdsDAJOsJR2G
 G9UFie8rQJdHNniqlGTm16JM62GsByKyV2pS13iM=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5OKdZD1076634
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Jun 2019 15:39:35 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 24
 Jun 2019 15:39:34 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 24 Jun 2019 15:39:34 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5OKdYHJ075028;
 Mon, 24 Jun 2019 15:39:34 -0500
Subject: Re: [PATCH 0/2] Add Mailbox support for TI K3 SoCs
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20190604170146.12205-1-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <47b8f278-85ff-18be-d5a0-fde9de6e17f2@ti.com>
Date: Mon, 24 Jun 2019 15:39:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190604170146.12205-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_133937_904266_B269C68F 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jassi,

On 6/4/19 12:01 PM, Suman Anna wrote:
> Hi Jassi,
> 
> The following series adds the support for the Mailbox IP present
> within the Main NavSS module on the newer TI K3 AM65x and J721E SoCs.
> 
> The Mailbox IP is similar to the previous generation IP on OMAP SoCs
> with a few differences:
>  - Multiple IP instances from previous DRA7/AM57 family each form a
>    cluster and are part of the same IP. The driver support will continue
>    to be based on a cluster.
>  - The IP is present within a Main NaVSS, and interrupts have to go
>    through an Interrupt Router within Main NavSS before they reach the
>    respective processor sub-system's interrupt controllers.
>  - The register layout is mostly same, with difference in two registers
> 
> Support is added by enhancing the existing OMAP Mailbox driver to 
> support the K3 IP using a new compatible. The driver also has to be
> adjusted to deal with the 32-bit mailbox payloads vs the 64-bit 
> pointers used by the Mailbox API on these Arm v8 platforms.
> 
> DT nodes will be posted separately once the binding is acked.

Can you please pick this series up for 5.3 merge window if you do not
have any comments.

Thanks,
Suman

> 
> Suman Anna (2):
>   dt-bindings: mailbox: omap: Update bindings for TI K3 SoCs
>   mailbox/omap: Add support for TI K3 SoCs
> 
>  .../bindings/mailbox/omap-mailbox.txt         | 59 ++++++++++++++++---
>  drivers/mailbox/Kconfig                       |  2 +-
>  drivers/mailbox/omap-mailbox.c                | 43 ++++++++------
>  include/linux/omap-mailbox.h                  |  4 +-
>  4 files changed, 80 insertions(+), 28 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
