Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEA31A77FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEi73ja0dm/u97vQOOjfSa9hx0TszEPVc7geXYXi5V0=; b=Vcwy8vXCVUwHqA
	ul3iGY1V28vtYjJip+9mCqG+HK8ogxCJkxa9bFjnjAG4gyIprd4ZLTm5YzEC7PnqYd0cJ36VWsdYN
	CTAl7Sd4IoBUMGrh6MMl4gwtWUjgRfaFe5nfOegtWvxwDOb1OTJnhShu6w5kGzy+qdO2IaCiY5Cf5
	BiTfuMRCE9o+g8vns+QhYI58v18tYpBKDApjKSm92LkVdvXgmyno4eie71uoVLZerUioG1MJzH5PI
	kwlfdU23+wdoCdQECwIkywITBSWCNu4LfzFhMS4duQpfXCGp694Nc/zAlETNvE3ekICWBC/Yxz9VP
	KzYp5xqNG6wI/LBkmpLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIN4-00054M-A1; Tue, 14 Apr 2020 10:00:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIMx-00053t-Pq
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:00:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 538422072D;
 Tue, 14 Apr 2020 10:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586858438;
 bh=bUSspscmzRCSvZ4XE/xc61Ddj8lVDvKWLD26YrwKLj4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z6TaAMR5PrZW0MuCAOS9g6m7LjEHtcpBTGEx2T1wJDQjWNeP6+nJd2atVBbiKG8oM
 Ouf2eedbRN3I4PkMRGyvlbFPUO0BWxf14PdaEN7JcQdPmhkcHymXGrWhtYTuq+qNcY
 KYu/Ahhjc+T2d1TI8yoUGNC7xMukwE5JQGobvhx0=
Date: Tue, 14 Apr 2020 11:00:33 +0100
From: Will Deacon <will@kernel.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200414100033.GA26395@willie-the-truck>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_030039_857318_BBE31F37 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:02:21PM +0530, Amit Daniel Kachhap wrote:
> Compilers are optimized to not store the stack frame record for the leaf
> function in the stack so applying pointer authentication in the leaf
> function is not useful from security point of view.

I'm missing the reasoning here -- why don't we care about leaf functions?

Sounds like there's a performance/security trade-off that needs spelling
out and justifying with some numbers, or is it clear-cut and I'm missing
something?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
