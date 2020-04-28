Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EF41BC208
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MyVA8YwMjWnSvpHJfKxVB8anEOwvyvBGMh65SfPVeGg=; b=hgLPtAr2oGXIKA
	TCaLqSF9KCbSml/r8Vuiz/O3+fhRosrSUs2WZWrr2tIGbqLzFmdD6/DqswRXs1MkV6KZ6QvgznAdY
	LNYiM3q0DQXfN+HIXdQtgn1fVYtlB/Ux2Ael1ejMrXdw4F27WU97i6QHeRqFEdsVLLmXQDc2sZQIC
	Gs266n7WNv+7uQ0c/FdfyIXunhktCAXCN68Xl5BmuP/HuBOJD6cZ+kOynxygbldbbEnEpEpw3CJMr
	7u3i/6dQ4K+8p4gpApbR+5qiKqaPf08UxfiRvtgT2X08aRW/4xRnHNETGge/3ah6VjMtCel/8mqp/
	7jHblWqUw1cUTsYf5yyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRdv-0006Cv-Qa; Tue, 28 Apr 2020 14:55:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYj-0000Bu-30
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:50:09 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A4902070B;
 Tue, 28 Apr 2020 14:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085403;
 bh=wLkMog+C31R9s35T9i+aq0ijLlgLzB9NiqhRDEWFHMQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uB8e0UjJMU74eFifX38zXKgiEWe5bPcwPZo6dQ4B8kxElcPzsVdGWiWxaUJXmWQht
 HMqWj7ty10mNGN1QhEW6R0qQw3+wJ/YhtTkQXXiSAgij77C1YfHWYuwNI86nwJwmmW
 AI7IT2t8GdCO5wjcb3fuXrLuo20ZTElweDMz59l4=
From: Will Deacon <will@kernel.org>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] KVM: arm64: Drop PTE_S2_MEMATTR_MASK
Date: Tue, 28 Apr 2020 15:49:41 +0100
Message-Id: <158808189342.219357.12380979087402977148.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415105746.314-1-yuzenghui@huawei.com>
References: <20200415105746.314-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_075005_252353_A28B6A20 
X-CRM114-Status: UNSURE (   6.78  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 18:57:46 +0800, Zenghui Yu wrote:
> The only user of PTE_S2_MEMATTR_MASK macro had been removed since
> commit a501e32430d4 ("arm64: Clean up the default pgprot setting").
> It has been about six years and no one has used it again.
> 
> Let's drop it.

Applied to arm64 (for-next/misc), thanks!

[1/1] KVM: arm64: Drop PTE_S2_MEMATTR_MASK
      https://git.kernel.org/arm64/c/f4be140fa33f

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
