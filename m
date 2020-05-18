Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FFB1D8B74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLYAJrxrOfUQZJAQBOUqxExAD359XBTOv6xOfgtxFMg=; b=aXUKVTBSaWCU3P
	slnWly72YLTDxrhrhFLjB6ukRdkyq5lnqQqwkt85eWLw4J1YUU8rcE8cXq0bsg3Mifw6CKSsIfb3g
	ebXZC4AZjLGtxSzLVA6vBuiDCsg6LaBc+iXVTJZhxJ38+RHslfQAETtm/0nLvj0Pd8o2B/at7n1Ve
	4bFcg41YBOiBRijfDCNcIi6vHUvWuTBksRIes2BCrdWS899IOk+8xms/m0VaeK16zVwM55ZfbebP7
	HXS2R9bUs7hf4i4ag5fNFTiruSoRTK3Fs8icXrIdZuhW7oKK4TLtBZvg2HlI+cF4iDwwmDcP+ef6J
	w9wzp1asSYfwRhLb/ppQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoqQ-00047E-RI; Mon, 18 May 2020 23:06:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaooD-00005E-H7
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:37 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E8B8207ED;
 Mon, 18 May 2020 23:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843072;
 bh=lrFNLpW8KhYy18+5zt78mNnTXnB06Ha6B7EMQ8Ew1kM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AWpoxrgPDf7dHjixCPxuo1Su1pauZNr02N4tTNozX2hUN/540HjmaC0K1kG3jKhaB
 9Ox9BcHZdgsvrPOlZvZOvy2c6CqmdwH5J+gUZpdzTbcTjfT3omagoaIg20l8Iye4eI
 KHJ9xy5WlX37vdnwk31MsMLcKJHaZuqphRw62ENQ=
From: Will Deacon <will@kernel.org>
To: catalin.marinas@arm.com, 0x7f454c46@gmail.com, hewenliang4@huawei.com,
 lorenzo.pieralisi@arm.com, Dave.Martin@arm.com, hushiyuan@huawei.com,
 tglx@linutronix.de, mark.rutland@arm.com, james.morse@arm.com,
 linux-kernel@vger.kernel.org, Yunfeng Ye <yeyunfeng@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: stacktrace: Factor out some common code into
 on_stack()
Date: Tue, 19 May 2020 00:04:10 +0100
Message-Id: <158982146278.388.8558956941501712685.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <07b3b0e6-3f58-4fed-07ea-7d17b7508948@huawei.com>
References: <07b3b0e6-3f58-4fed-07ea-7d17b7508948@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160433_622726_6C011A02 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 May 2020 11:15:45 +0800, Yunfeng Ye wrote:
> There are some common codes for stack checking, so factors it out into
> the function on_stack().
> 
> No functional change.

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: stacktrace: Factor out some common code into on_stack()
      https://git.kernel.org/arm64/c/bd4298c72b56

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
