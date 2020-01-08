Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C83D134436
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2b2PQngDNTm8jFVtjr7iGtGuY+zmOVnyyVXoHf2Mp7g=; b=bDYZyTdFmOmOSH
	lGulgo9yTXeVK4KDaL2up+q6aDMwKE06jFeeE064eYX7w/Me7NEGxPo+xUF5+IlVhO1/yytiepjY8
	vfuoySFXUWATW46z6EHmEUYtzPfapHpowV6DH8tHkLupk4Xih8jZnB8HvtLA2xhQ/AM07jh4LLn3i
	KNiV//VHLjWps3q21xApYmrqLA5nk4K/e+az5JwBkdkgy94Adla2bb4TtUTGpEPznfdFAr9+0wyMX
	wiqUVMxntrVX2DMknYNY3gbQfnlBQ9ppR4/EAKp2jJeVhAWRhhP636MTU2UXQGWLLYhrZC0JUvBpZ
	bnLk78M0b90+hDGL9P4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBeb-0000FU-O4; Wed, 08 Jan 2020 13:45:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBeL-0000D4-JE
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:45:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DB2431B;
 Wed,  8 Jan 2020 05:45:28 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B79F73F703;
 Wed,  8 Jan 2020 05:45:26 -0800 (PST)
Date: Wed, 8 Jan 2020 13:45:24 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 maz@kernel.org, alexandru.elisei@arm.com
Subject: Re: [PATCHv2 0/3] KVM: arm/arm64: exception injection fixes
Message-ID: <20200108134524.GE49203@lakrids.cambridge.arm.com>
References: <20200108134324.46500-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108134324.46500-1-mark.rutland@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_054529_691473_44859207 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: peter.maydell@linaro.org, drjones@redhat.com, suzuki.poulose@arm.com,
 stable@vger.kernel.org, james.morse@arm.com, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 01:43:21PM +0000, Mark Rutland wrote:
> Since v1 [2]:
> * Fix host_spsr_to_spsr32() bit preservation
> * Fix SPAN polarity; tested with a modified arm64 guest
> * Fix DIT preservation on 32-bit hosts
> * Add Alex's Reviewed-by to patch 3
> 
> Thanks,
> Mark.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=kvm/exception-state

Whoops; I missed the list reference for v1:

[2] https://lore.kernel.org/r/20191220150549.31948-1-mark.rutland@arm.com

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
