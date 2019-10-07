Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F36CE3C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yd0h1utgegeObBnGjjIAkntnBKktUezaZXzUfvLWO2o=; b=DBaKY7pqDhYfO3
	RR/UjbID09fsC3trOYoVIig9jVyw0czinPptfo3k2cUKc8FL529zbiEQosJF++Tgol8lFIAAANPLf
	0kp3KmX6cZdc1AbxUhETJbmFqzo9jUo6NYWRpzKULyROnlbD54oCtCr8CDKLyFOiAgbSWWN0EPkg3
	9bYvUXc7ndyCRX3ikElWGWIMwGEWmU4I1U3/suYozzU8JNcb1rgMh/5oXRV1evfDSH2M2b/PgBXiq
	rTEAMxWOj4pCgmX/WUDQxLlAqYxgqgrrJlgeRbE7ovYBFPtcIO8A1avs0Oxn/4Xde9n3+zIB8np11
	7xzV/CutDZfLp0cQ/59w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHT6f-0002lr-OO; Mon, 07 Oct 2019 13:31:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHT6W-0002l4-BL
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:31:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2572B2064A;
 Mon,  7 Oct 2019 13:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570455071;
 bh=SzbScYJPmELZRm1TdfBaiuYWfrUbV/b6oBF4qLoaKjU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lYi4NjeYnQM0VYJEspUyZiqHyjHD5KXx4V1DrJZPljVcORJ078gFaWk196k3KKTg0
 kKhH4LbEkurvhUfNoDXb8BBUs4uWeg8dd6WlRzryvsZVWLLtyYyo0n/EsxTzTa3emf
 XUv0N3fmMAxwXcprlmKsuyLFwWz6S6c4VBb+bCeQ=
Date: Mon, 7 Oct 2019 14:31:06 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v5 0/6] arm64: vdso32: Address various issues
Message-ID: <20191007133106.j3gtsuatsw6hgllz@willie-the-truck>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003174838.8872-1-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_063112_407282_C02B431A 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, luto@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

On Thu, Oct 03, 2019 at 06:48:32PM +0100, Vincenzo Frascino wrote:
> This patch series is meant to address the various compilation issues
> reported recently for arm64 vdso32 [1].
> 
> From v4, the series contains a cleanup of lib/vdso Kconfig as well since
> CROSS_COMPILE_COMPAT_VDSO is not required anymore by any architecture.

I've queued this up as fixes for 5.4, but I ended up making quite a few
additional changes to address some other issues and minor inconsistencies
I ran into. In particular, with my changes, you can now easily build the
kernel with clang but the compat vDSO with gcc. The header files still need
sorting out properly, but I think this is a decent starting point:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/fixes

Please have a look.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
