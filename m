Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A9D56F37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:00:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNCYWscgJByzFdsM9dsOgxowcIB9N0MC2YVlMCO62po=; b=iFkfp8uztP2wpX
	uPTH2HnGRRaPZN+q1zHPYRZjr6qsULAWtLP1xhiHDhnu1DquycRCD69MG3YDRNlsU+GPNViolNZ8I
	pkvmrJjKu9D8HioPtgMh7hBU0Yb03Rv9wb1q6ExQwWFrBZTX2ZV2AVel0wq0IGvkBsd1JlEl5lz6R
	Bs/A4F3i0nRb2XtGbh/VLQaMYbIFmQujgEoaJ8l389HRiCghXlF3GH7VJzezKwVZEo/JYV3ho0cGh
	13gt5JWLPLvIlPHlXx8SkpJ3wn9LxyAF9dGveMIYATq8UDLWXkMODAUtl68fYWMVRwEU0tAiqe6AB
	WFWZSGUwmkjpvtBLZVGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBHD-00080i-8R; Wed, 26 Jun 2019 17:00:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBGx-00080E-Sy
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 16:59:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B6462B;
 Wed, 26 Jun 2019 09:59:51 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A90673F706; Wed, 26 Jun 2019 09:59:49 -0700 (PDT)
Date: Wed, 26 Jun 2019 17:59:47 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: jinho lim <jordan.lim@samsung.com>
Subject: Re: [PATCH v3] arm64: rename dump_instr as dump_kernel_instr
Message-ID: <20190626165947.GF29672@arrakis.emea.arm.com>
References: <CGME20190626115016epcas1p455530417de86ea2e72ce1b389ae57a75@epcas1p4.samsung.com>
 <20190626115013.13044-1-jordan.lim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626115013.13044-1-jordan.lim@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_095951_986967_1815EF91 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 andreyknvl@google.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 seroto7@gmail.com, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 08:50:13PM +0900, jinho lim wrote:
> In traps.c, only __die calls dump_instr.
> However, this function has sub-function as __dump_instr.
> 
> dump_kernel_instr can replace those functions.
> By using aarch64_insn_read, it does not have to change fs to KERNEL_DS.
> 
> Signed-off-by: jinho lim <jordan.lim@samsung.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
