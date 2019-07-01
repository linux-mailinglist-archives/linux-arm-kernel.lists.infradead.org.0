Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BEE5B803
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ds5bZmysqQz1/496pJPGql8hHzsLneFs0v7pUqox2N8=; b=YtVLJ/MKy1BNew
	w45rUWLysyTWWB5Ty5HOQqqkGl4UXN0uxsIQuXomr1SRYYK5HUEXx63utgZhCBMLJjEVj9SwTSy+a
	YKS6iDZLYQmX3o8X7MpqKkP+0OP00/AHk6on+pB8C3wsMsoVZw7QQUJctKzeel3S6rjG0QQxrz6LZ
	hNjyeMU0AZXTkCq16Ynld15QuDcQTHsFbQYaZg/dFurJYFuMyt9PDvFUVJ9tp91wh2mIh1bHUkCH6
	oxAwzWVnfMtALhTWcyLvb9WOVc0yZjuF9RwxHspC52o+pCVJZmwhwBNjuvgvPaKOWunTV8H+FybYF
	//ksF/2qmVZBpLccoHwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsbg-0004er-OC; Mon, 01 Jul 2019 09:28:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsbS-0004eB-ON
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:28:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50ACF2089C;
 Mon,  1 Jul 2019 09:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561973282;
 bh=vGGhLIH0q7yG4i6ZhfftLCHdchxHJ/vmrYRS0LXQQIw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wbfy/UDnFu7AV7EVkBeEbTEFUi7+cuNIjsKmOymazsu3SH1OX8v5r5szm5MXCfGmu
 RH2qxtH1DohcNqBOMBm/SXfrp+lwiclFgsHSKwXOefDBanFU9uYc17ezhL9NTuw0cM
 zF4ZrwabN0rIsBtgDIHHd3RIrWasEIQkBmhR+8nk=
Date: Mon, 1 Jul 2019 10:27:57 +0100
From: Will Deacon <will@kernel.org>
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/3] arm64: mm: Add p?d_large() definitions
Message-ID: <20190701092756.s4u5rdjr7gazvu66@willie-the-truck>
References: <20190623094446.28722-1-npiggin@gmail.com>
 <20190623094446.28722-2-npiggin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623094446.28722-2-npiggin@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_022802_809116_E5049C4F 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Will Deacon <will.deacon@arm.com>, Steven Price <steven.price@arm.com>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Sun, Jun 23, 2019 at 07:44:44PM +1000, Nicholas Piggin wrote:
> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information will be provided by the
> p?d_large() functions/macros.

I can't remember whether or not I asked this before, but why not call
this macro p?d_leaf() if that's what it's identifying? "Large" and "huge"
are usually synonymous, so I find this naming needlessly confusing based
on this patch in isolation.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
