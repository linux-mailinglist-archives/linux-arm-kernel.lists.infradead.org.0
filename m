Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3475B87B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vt7ASUGaj0U2GCA7V2UvIEoHOdeYq285QshSTJoKneI=; b=baq3AW+HYAMDd6
	kyHxeSSclO7aZlG7++a5GLAWcd9h67ANt1CVhX5N1nCfBJP2PHOLllj6MlRut+L+c7RcM0XAPg9zG
	9jvwjN5nw09LVaIUNXcGxatvBgJikOeORONYD/jqfXOa7MYVbb7j8ncCQ/HA/KFqK5q/+U2UeUDUL
	3CBiDHbfR6fq+kjHAtn8HxekU6ZWUfBKv4KQcws6J5CaNYu5Mw/LhgBEwOPzt4sD0LLSy9KXUFIHS
	H09+baXSxwBwtmMLNDnnMJNsRRq+viVDJ6SmyK6o1F7K85qg7sNwf7sIY2fbZrSnu0E+VBdUlLdvc
	vGQ10VRodYjo/PFioAnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hht56-0002Um-GZ; Mon, 01 Jul 2019 09:58:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hht4v-0002U7-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:58:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2FB82B;
 Mon,  1 Jul 2019 02:58:26 -0700 (PDT)
Received: from [10.162.42.133] (p8cg001049571a15.blr.arm.com [10.162.42.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C5EAF3F718; Mon,  1 Jul 2019 02:58:24 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] mm/vmalloc: fix vmalloc_to_page for huge vmap
 mappings
To: Nicholas Piggin <npiggin@gmail.com>,
 "linux-mm @ kvack . org" <linux-mm@kvack.org>
References: <20190701064026.970-1-npiggin@gmail.com>
 <20190701064026.970-4-npiggin@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <8369ca48-ebab-fe2d-363d-00769827fd0b@arm.com>
Date: Mon, 1 Jul 2019 15:28:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190701064026.970-4-npiggin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_025829_637927_DD367C46 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev @ lists . ozlabs . org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 07/01/2019 12:10 PM, Nicholas Piggin wrote:
> vmalloc_to_page returns NULL for addresses mapped by larger pages[*].
> Whether or not a vmap is huge depends on the architecture details,
> alignments, boot options, etc., which the caller can not be expected
> to know. Therefore HUGE_VMAP is a regression for vmalloc_to_page.
> 
> This change teaches vmalloc_to_page about larger pages, and returns
> the struct page that corresponds to the offset within the large page.
> This makes the API agnostic to mapping implementation details.
> 
> [*] As explained by commit 029c54b095995 ("mm/vmalloc.c: huge-vmap:
>     fail gracefully on unexpected huge vmap mappings")
> 
> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
