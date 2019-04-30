Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC59FDA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuC8yaQOI0FwO0HBKGI1RS/asGDfbT7h8RrAl0ald1w=; b=oJFcyyAbxYWbs3
	li6ZSAuN43HGoxDA/gLilB7limCno+Z/AQtCMsyXuQgjgCQnkp2twLcn/HnCeZBYP/gH0Qh3Pwix/
	xdRz6zW5WCdh0kaMDB/Oyqft5nzflig0DXfI/fsIq19Vf+4ZAnmRzSAZPObEbZeG/I2tY3dNkBrGI
	7bB6BOl2sM/Yv0jQX2RP41FwqeBuYuNPz0AOMSPkxGiHjgE+3w8y8H9b3IkqAK9LJXN+g/Jp41AsA
	9+L6JF0++0PIM4BqT6zuOSYZxAOxAZDrYmIZuLrAs6ZiPPPbQWdRcykkaotx5oT7LPHq57br9FKQq
	7cRZ0R0hlPsa5WBw4SOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVSM-0007OS-Ec; Tue, 30 Apr 2019 16:18:10 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVSF-0007O6-Md
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:18:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28BA0374;
 Tue, 30 Apr 2019 09:18:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2FF4D3F5C1; Tue, 30 Apr 2019 09:18:02 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:17:59 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/mm: Fix pgtable page offset address in
 [pud|pmd]_free_[pmd|pte]_page
Message-ID: <20190430161759.GI29799@arrakis.emea.arm.com>
References: <1556595839-9282-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556595839-9282-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_091803_741285_585D2954 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 09:13:59AM +0530, Anshuman Khandual wrote:
> @@ -1026,8 +1028,10 @@ int pud_free_pmd_page(pud_t *pudp, unsigned long addr)
>  		return 1;
>  	}
>  
> -	table = pmd_offset(pudp, addr);
> -	pmdp = table;
> +	VM_WARN_ONCE(!IS_ALIGNED(addr, PUD_SIZE),
> +		"%s: unaligned address 0x%016llx\n", __func__, addr);
> +	table = pmd_offset(pudp, 0UL);
> +	pmdp = pmd_offset(pudp, addr);

Why does pmdp need to use addr? We are freeing the whole pmd page, so I
don't think pmdp should be different from table here.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
