Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4853BAB9CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZdwdVLLa0kkAXfrusQYzFize22fNexrjd0jNZU/azw=; b=bvYLiYEGpVzrsC
	PMQMvNCILk22C13+Aqt6APmcc2REa40Fg5T5tBGwisUAMZheE7v084NbEyhDYBWYBdKLww9AU//P3
	Zz4vvU57K0o13k8wbY96zC30t+QGs8eYWFeU29Lye1/Kl0zxwO2C8oVgA2LbJ79tMP+FbVHX7rzoe
	ZVISqrel9g+ffnTfe6MNcWLi1csfRjgijtEK/P/Vp9uaj4kFASJThNA62i/ZgufzUzS/av88Oaj8t
	R6fYI/VcJLK27CEF0dEFYYYrBLleHJeR5dM/Gl5HIiZ3aNk1loQrFYjDJ1+flS287+b5cECZRy3HH
	O5sIUP5MTPQi0nHMstaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Eei-0006t4-J0; Fri, 06 Sep 2019 13:52:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Eeb-0006sf-Kn
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:51:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6AE9206B8;
 Fri,  6 Sep 2019 13:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567777916;
 bh=as/XjEUMXPVqoYxYK9HcXrjJdB7meJhPBQv74NDA/Dk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iMZVKIcOsXlK0ngWB5tyhZEhgyNFdmZHPUhDUdhmVp+8oNUG/hplV1I6BSIy1yYbg
 GMoDei2fYhooB2Lhxi8Jx6If241kcTs4lAIrBhENf86AzWSP/CfqMOnzjr3i+zT9WT
 1h6XQDCU+hbkkt7A0kSKkKu5auro86K7FdeEEZgU=
Date: Fri, 6 Sep 2019 14:51:52 +0100
From: Will Deacon <will@kernel.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH ARM64] selftests, arm64: add kernel headers path for
 tags_test
Message-ID: <20190906135151.d74nq3qzjmhe4mb5@willie-the-truck>
References: <c28135c82eaf6d6e2c7e02c1ebc2b99a607d8116.1567615235.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c28135c82eaf6d6e2c7e02c1ebc2b99a607d8116.1567615235.git.andreyknvl@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_065157_705407_997E85C0 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Kostya Serebryany <kcc@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-kselftest@vger.kernel.org, Amit Kachhap <Amit.Kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 06:41:00PM +0200, Andrey Konovalov wrote:
> tags_test.c relies on PR_SET_TAGGED_ADDR_CTRL/PR_TAGGED_ADDR_ENABLE being
> present in system headers. When this is not the case the build of this
> test fails with undeclared identifier errors.
> 
> Fix by providing the path to the KSFT installed kernel headers in CFLAGS.
> 
> Reported-by: Cristian Marussi <cristian.marussi@arm.com>
> Suggested-by: Cristian Marussi <cristian.marussi@arm.com>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> ---
>  tools/testing/selftests/arm64/Makefile | 1 +
>  1 file changed, 1 insertion(+)

Damn, I just tagged the arm64 queue for 5.4 and didn't spot this patch.

I'll queue it at -rc1 instead, if that's ok? It doesn't look urgent.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
