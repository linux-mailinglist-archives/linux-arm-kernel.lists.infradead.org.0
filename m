Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191E8832E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 21:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiTnFQaIM7vGW4mg+YuLzBqNkYfdmn95UHtuxAj0rYM=; b=bPK3pYxfCQ/VoN
	z1VipmztQJZHpItv7q4BnJyRsLMPUC8E9LehQtkwjURki4JIyGCG6qrPIa5Mwm0YTNIUuLgJEeA+T
	tTUl1HKf8lryhf8uW2tiz3VhsUbJ66SyNYDzlZJ0C0QLIc2aSyBzf8E8ztiLPFtk0CmGFdD0vDpYz
	a2cm6+Fi0zbsYHQ5ZuE8YBNYfdaToBDG3NHoiUsLd009wCJlEAJeou+fvvTNl55czaAFw7fHc2zDw
	M8FBYHef20tKswx8eUCNSzaoFS+X/fplgwktfUnnDFEbDhsJg2crxMPdW+yLEg1aW7FdYL548yn/n
	s6Y7/NWgaCYTTA+bJhHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwANC-0004Xw-6f; Fri, 09 Aug 2019 19:16:22 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwAN3-0004Xb-9n
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 19:16:14 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79JGANv048070;
 Fri, 9 Aug 2019 14:16:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565378170;
 bh=9CMUBE+vJ1FqMMj/PUgX3IexImp2swWsHQYpecxgeCc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=BWUc+bxuf8jNqnEvVm7EUuXDFDQDVKiwZeqBpf6ME1+JbsaBmEi0vEO7PaTXyHOr3
 /rhypyrXMNE+V+AzGA1DFdvSKqOz+neODymqmRX1VzjjkWCVUwsqMDKDy1Q4dExoDf
 4fNVDDPhD+r6DH4SLFY5Fj0jtQa9jipiYYMDIx/M=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79JGAoK128393
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 14:16:10 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 14:16:10 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 14:16:10 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79JGAAI078760;
 Fri, 9 Aug 2019 14:16:10 -0500
Subject: Re: [PATCH 0/3] ARM: OMAP2+: pdata quirk fixes for OMAP IOMMUs
To: Tero Kristo <t-kristo@ti.com>, <linux-omap@vger.kernel.org>,
 <tony@atomide.com>
References: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <efabe829-90eb-247c-7d7a-9ab5a3c8e6bf@ti.com>
Date: Fri, 9 Aug 2019 14:16:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1565171081-7899-1-git-send-email-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_121613_407385_F816D366 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On 8/7/19 4:44 AM, Tero Kristo wrote:
> Hi,
> 
> A few quick fixes for OMAP IOMMU pdata quirks. These basically apply
> one errata for remoteprocs, and also convert the support of iommus
> to ti-sysc from hwmod for omap4+ devices.

I do not think this series can go in independently by itself, right. I
understand that you have posted the individual bits based on your
integrated branch but the patches do have dependencies against patches
against other subsystems.

You cannot remove the reset stuff without a breakage in functionality
and without the PRM driver being merged. The second patch has
dependencies from the OMAP IOMMU fixes series [1] which Joerg has picked
up today.

Have you tested these series individually? We will want to restore the
current broken functionality with clkctrl when using hwmods first, bring
in the PRM pieces and ti-sysc pieces and then transition over. We can
directly go ti-sysc with DRA7 MMUs.

regards
Suman

[1]
https://lore.kernel.org/linux-iommu/20190809153730.GF12930@8bytes.org/T/#mec99f8e8ed351689f4fcc76f4f000f9144a02b51

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
