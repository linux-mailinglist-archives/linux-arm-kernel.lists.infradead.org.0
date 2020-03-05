Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E51317AAA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKMsVPGc14reY/W3h9yACO/5OY7rvRGZRRehdO6j6kM=; b=i63H2gUPboP7A4
	kbmxJs73YZG1jv4h7J8u1wrvSLmk0ml2zxf4isZLb9IuIq1xbJSvGi+LgZpKw8e+aNUrI3WPqF4q/
	sJRc+Wx2ZwUrMEJF1prfalG6RBJa2Hgi4pTf5iCOYRRaOcgi0evEnf9oUj4ueJK1FG+VieQaSEVdz
	q4PS2osimvs4JkjrJCN92NCT6x0TRO5+J2HE8+0vO3jGSmuTektDzIBnbN40o8mnsH9tkLZ5hX22U
	u3DlFY6uG1th6wXKJkcS7mM5Xokitj4M0QR51GPzHy5FHojXhNg9kO3xWu59FC5ON1avrFusqguHC
	acxplNcL/9VZvc75PkHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tVw-00075p-N3; Thu, 05 Mar 2020 16:38:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tVn-000750-OK
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:38:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAC3930E;
 Thu,  5 Mar 2020 08:38:13 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3FFEE3F534; Thu,  5 Mar 2020 08:38:12 -0800 (PST)
Date: Thu, 5 Mar 2020 16:38:10 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v2 04/19] arm64: mte: Use Normal Tagged attributes for
 the linear map
Message-ID: <20200305163810.GC1729062@arrakis.emea.arm.com>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
 <20200226180526.3272848-5-catalin.marinas@arm.com>
 <946fcd05-ba8f-90ec-d30b-458b327df59c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <946fcd05-ba8f-90ec-d30b-458b327df59c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_083815_831485_099C84E8 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 04:21:34PM +0000, Steven Price wrote:
> On 26/02/2020 18:05, Catalin Marinas wrote:
> > +	if (system_supports_mte()) {
> > +		/*
> > +		 * Changing the memory type between Normal and Normal-Tagged
> > +		 * is safe since Tagged is considered a permission attribute
> > +		 * from the mismatched attribute aliases perspective.
> > +		 */
> > +		if ((old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
> > +		    (old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED) ||
> > +		    (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
> > +		    (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED))
> > +			mask |= PTE_ATTRINDX_MASK;
> > +	}
> > +
> >  	return ((old ^ new) & ~mask) == 0;
> >  }
> 
> This is much more permissive than I would expect. If either the old or
> new memory type is NORMAL (or NORMAL_TAGGED) then the memory type is
> ignored altogether.
> 
> Should this check be:
> 
> if (((old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
>      (old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED)) &&
>     ((new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
>      (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED)))

You are right, I think my patch allows many other memory type
combinations. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
