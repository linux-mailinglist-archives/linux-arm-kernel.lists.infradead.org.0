Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79568D0062
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 20:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YugFONc/0YlIzt/5Lq/kjwTCABb9NcJt8UsqTNVf330=; b=QNxa1kinMRRZKN
	X4kGtYMbBnH8Szm+VeDMWBVkvIKhyN4URn8smctVYpKEmuxWMmKuZB+Ifk9Fhp//U59njm9Zh+bYS
	PgsgbxfaMTu1dORyAfR0d9fg7SxgJg89nkqnx6gSJsQ40OLtCm4N3ec2jcEouUkWZ34ZSLK4QhZIe
	yDHM/yhIiQb3mFUYOxeRQJVbcEoTgEbmRON8Ww+KYIDUwV+E5hbhpaRxpMez/pUFYGs3LTcZ8STu2
	aXYwW8Hm5YMUQnC/d+I+DEI6S4MAhCcjl9jTDBjhUlOySTZB9MAyZ/79L536VHKcJKWn0YeA4mYJP
	DD2DmQZvrkARQPM5xhdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtnx-0005lE-Uk; Tue, 08 Oct 2019 18:01:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtnX-0005Xz-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 18:01:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4F3415BE;
 Tue,  8 Oct 2019 11:01:22 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD9013F6C4;
 Tue,  8 Oct 2019 11:01:21 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:01:19 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v7 02/11] kselftest: arm64:
 mangle_pstate_invalid_compat_toggle and common utils
Message-ID: <20191008180119.GZ27757@arm.com>
References: <20191007182954.25730-1-cristian.marussi@arm.com>
 <20191007182954.25730-3-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007182954.25730-3-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_110123_818425_48C5BFF7 
X-CRM114-Status: GOOD (  11.05  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 07:29:45pm +0100, Cristian Marussi wrote:
> Add some arm64/signal specific boilerplate and utility code to help
> further testcases' development.
> 
> Introduce also one simple testcase mangle_pstate_invalid_compat_toggle
> and some related helpers: it is a simple mangle testcase which messes
> with the ucontext_t from within the signal handler, trying to toggle
> PSTATE state bits to switch the system between 32bit/64bit execution
> state. Expects SIGSEGV on test PASS.
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v6 --> v7
> - removed ambiguos fprintf in test_init
> - fixed spacing

[...]

> diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h

[...]

> +/* Local Helpers */
> +#define ID_AA64MMFR1_EL1_PAN_SUPPORTED(val) \
> +	(!!((val) & (0xfUL << ID_AA64MMFR1_PAN_SHIFT)))
> +#define ID_AA64MMFR2_EL1_UAO_SUPPORTED(val) \
> +	(!!((val) & (0xfUL << ID_AA64MMFR2_UAO_SHIFT)))
> +
> +#define SSBS_SYSREG		S3_3_C4_C2_6	/* EL0 supported */

Does anything in the series still use SSBS_SYSREG?

If not, please drop it.  No need to remove my Reviewed-by just for thato
change.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
