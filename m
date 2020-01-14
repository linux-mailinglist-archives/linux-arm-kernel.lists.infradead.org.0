Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5745513A8D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3+xfQhjH/+Ru0wj4JxRNqDUsRoWhIrzhCbTqxRhpbk=; b=FZ9a+/vDm6E0pY
	oM0OBohB78sGm3ofAZX1GUgToAI1s8SqtbXJnZ9gXPD3ozNympwFBe2HvEdLfZfjfGztGRaW6i7er
	e7btvU6viTKL7Lr0FsSwT7THKhNLpHoVZwB5FMO2MjTVX/HN9XtCm8FMBcamCYP7Fv+5txK5QZgg2
	o/eFT5nuagThFqKojLnEC1mKyO7pivBkHRrqAjJh+oeYn7wecOwrhJFx1xfOMV3yHtHFf3LUyvt+r
	l6rkZKzwuLbb/iVoIbnL+bnGIlDFhSQu2758nB8SbrRA0f+3iRxvteXlsMgWLIyb3/PuYaKY3A8Y9
	zFZbKH0FSktTo5iRo6Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irKp1-0002iC-Oi; Tue, 14 Jan 2020 11:57:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKop-0002du-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:57:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49D921435;
 Tue, 14 Jan 2020 03:57:11 -0800 (PST)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B4A13F6C4;
 Tue, 14 Jan 2020 03:57:10 -0800 (PST)
Date: Tue, 14 Jan 2020 11:57:07 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 5/7] arm64: ptrace: nofpsimd: Fail FP/SIMD regset
 operations
Message-ID: <20200114115707.GD2289@mbp>
References: <20200113233023.928028-1-suzuki.poulose@arm.com>
 <20200113233023.928028-6-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113233023.928028-6-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_035711_940998_C326FCC8 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 linux-kernel@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 11:30:21PM +0000, Suzuki K Poulose wrote:
> When fp/simd is not supported on the system, fail the operations
> of FP/SIMD regsets.
> 
> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
