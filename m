Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDE63D15A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC2JZwMFjHC/MKxUTyBaeSJJXh7Hl7YJARaYca663U4=; b=O3e/TXBwVSFsDL
	YXoegvcqcWESh7adK3G0h7N0y98P1mdKYddcV7EU+oy2N9N8oYmSs1eezDGry0Xowss38FN4x+KrS
	JUNBabzLvpqCP3USZbXSIW8VJUuKJawN4Cc9p1Gt/uTDmxu0LRZHfNAAhAQVf1qcFtIGqkaH+axvT
	FX+fhb50VPI7CMYzRFuEYuYu13FVM8h3WS4e53rhQxmXKtvZuIn6/cCQ/ABRZ4AuSnQ6uxJ1iFP2C
	ZnGtWev2CfHAmcgmKUDyRy24YI+YXe4NZpNGfwUqr3zt56mquO6F9J+lwnUQ9dL6KQFhT5RhpRtaR
	o4BytBr46lwMsw7kPiiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haj2l-00066x-5n; Tue, 11 Jun 2019 15:50:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haj2a-00066S-Ma
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:50:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09939337;
 Tue, 11 Jun 2019 08:50:28 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C6CF3F246;
 Tue, 11 Jun 2019 08:50:27 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:50:25 +0100
From: Will Deacon <will.deacon@arm.com>
To: Laura Abbott <labbott@redhat.com>
Subject: Re: CONFIG_OPTIMIZE_INLINING breaks atomic64 test on arm64
Message-ID: <20190611155025.GI4324@fuggles.cambridge.arm.com>
References: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
 <20190529112956.GE4485@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529112956.GE4485@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_085028_784505_25C3F7D1 
X-CRM114-Status: GOOD (  11.01  )
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Andrew.Murray@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laura,

On Wed, May 29, 2019 at 12:30:00PM +0100, Will Deacon wrote:
> On Tue, May 28, 2019 at 05:42:04PM -0400, Laura Abbott wrote:
> > CONFIG_OPTIMIZE_INLINING is a selectable option on arm64 now. It currently
> > triggers a bug on the CONFIG_ATOMIC64_SELFTEST:
> 
> At this point, I'd be inclined to raise something in the GCC bugzilla
> with the result of --save-temps for the failing atomic64_test.c. Maybe
> they will have a better opinion as to whether we're doing something wrong
> here. Is that something you're willing to do, or shall I do it?

Did you file a GCC bugzilla entry for this, or shall I go ahead and make
a new one (assuming I can remember my credentials for that thing)?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
