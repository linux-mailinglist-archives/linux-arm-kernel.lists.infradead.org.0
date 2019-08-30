Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF17EA3675
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjHdQvAcmIMp5ZSscQGEGESmoL4gAKM1ZwXulFGhhrQ=; b=Yae/c8HnXWXbN3
	OsJI2jBFuI11dYMurMSKk1LPsyPGkPxI5Lr4hKJ0Pzh382aTA3fjaOPhdZpH+n6lADhtZyDKu/2pP
	gRRJtzOr1dz9NySD8K3bBVmbX2mn8E9BS7NAYo310mnuLVF44IiiKzKRtRGJp5MoZvv7UKFV5/Anj
	Y7d7RMmFXqQ1Zu1PDAw7fDaGHes9XT9IhuPvPVb0AJ1lwniP8xfqi9bSuQpXIpstdFgC5TjSyq/R3
	aZ5RIR4B/OsSqtAQqzunpAgZJYF0irkcO8zIg2jpxsG44SMJFZHND/IKkwy71NVsFbTzvLMlBOl0G
	QR7wE4wXzpFzXXEjh46g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fmV-0005mz-5z; Fri, 30 Aug 2019 12:13:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3fmO-0005mE-SX
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:13:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C67F337;
 Fri, 30 Aug 2019 05:13:22 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0CC233F246; Fri, 30 Aug 2019 05:13:20 -0700 (PDT)
Date: Fri, 30 Aug 2019 13:13:18 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/7] arm64: compat: vdso: Expose BUILD_VDSO32
Message-ID: <20190830121318.GH36992@arrakis.emea.arm.com>
References: <20190829111843.41003-1-vincenzo.frascino@arm.com>
 <20190829111843.41003-2-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829111843.41003-2-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_051324_969244_9DCFA0FD 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, 0x7f454c46@gmail.com,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, paul.burton@mips.com,
 luto@kernel.org, tglx@linutronix.de, salyzyn@android.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 12:18:37PM +0100, Vincenzo Frascino wrote:
> clock_gettime32 and clock_getres_time32 should be compiled only with the
> 32 bit vdso library.
> 
> Expose BUILD_VDSO32 when arm64 compat is compiled, to provide an
> indication to the generic library to include these symbols.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
