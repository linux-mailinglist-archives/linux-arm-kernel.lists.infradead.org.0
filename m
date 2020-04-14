Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781D21A7843
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYKakbMQJWXDui5TsJrPBJFaSh7dd4Z6qYSYBuL3yzA=; b=OsM/2Qvj7sNyxo
	1GaWexgpQeY9AL51d3KOr4EjVoYqInB/P0sYre0JvHD4v2r6NOv59E7VYaPqeKFiDT6iBQPmxPkMd
	JmHIL0jiKaMw6U5v/FyVjHgjFEBGfe0IZEY4jksuomOJ4+fjQK4lW1GEOkWLbn6UQYOKoo00D8jqq
	DkHMLaC50FNDwbrJe7aGCSBf847oBREHLskO3S4N4sMR4s+8dYCOCeH+m6TD1aLQ//lpSWzcnGjaZ
	Jj9QGSZEVzdRHnfouEMteHdkzor81wxtSAFOyhBPCi2/J0uGeOR7sAyiQbCgys+bccSpb0S8KJjHP
	FHGDYinBwfQfT9c+0D7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIco-00071h-2y; Tue, 14 Apr 2020 10:17:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIcf-00071C-RW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:16:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 162751FB;
 Tue, 14 Apr 2020 03:16:53 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A674E3F6C4;
 Tue, 14 Apr 2020 03:16:51 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:16:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200414101649.GC1278@C02TD0UTHF1T.local>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414100033.GA26395@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_031653_932608_B8FA7AB1 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 11:00:33AM +0100, Will Deacon wrote:
> On Tue, Apr 14, 2020 at 03:02:21PM +0530, Amit Daniel Kachhap wrote:
> > Compilers are optimized to not store the stack frame record for the leaf
> > function in the stack so applying pointer authentication in the leaf
> > function is not useful from security point of view.
> 
> I'm missing the reasoning here -- why don't we care about leaf functions?
> 
> Sounds like there's a performance/security trade-off that needs spelling
> out and justifying with some numbers, or is it clear-cut and I'm missing
> something?

I believe this is because leaf functions don't store the LR to the stack
(as they don't create a frame record), so it cannot be modified by a
stray memory write.

Amit, if you create a leaf function like:

void leaf_function(void)
{
	asm volatile("" : : : "x30");
}

... what assembly does the compiler generate when passed
`-msign-return-address=non-leaf` ? 

* Does the compiler create a stack-frame for this function?
* Where does the compiler spill x30?
* Does the compiler sign the LR?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
