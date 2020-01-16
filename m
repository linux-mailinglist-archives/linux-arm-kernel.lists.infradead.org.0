Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402CE13E615
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:18:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTaCM0knqdJnNqfFpz+087ypxxLusqMz4jZbnNPvdtM=; b=TJX3Eu8pbtLeJ0
	oSgBzaBwDSFQXX34ZFPNHKPU2t/iylHbqXtFJYxHW+a14/sbh4dWuT8IQTe8CrPRwY2anlDfLHd+o
	/Ey43zzKdtEn7kaEDVbG5jS2iLIQG/YzOQnaKLnIfKoI8zNOS3VMEJNKfeiNhDdNmrxtdYYei0n9Y
	K74x8OMzOGI98X81YZKL+d2q2XJDVC4jPFyeNLNOiK6Z77K1YYid4pcwM0L5ojPs0t2RQDgIx76Fo
	INdc77TtuaXw3kryFVTBGLGVbCY/ZwwvM4vDsBEYIHI0MkR7bFXh10nUJ18OYtGXRJCSTEBSl9I1o
	is1N6FqDtgKZqC4z7CZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8n2-0003Vy-JH; Thu, 16 Jan 2020 17:18:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8aH-0007HI-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:05:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A03E72077B;
 Thu, 16 Jan 2020 17:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194328;
 bh=A6Z7jOfd+OQTDKe1kq58OeNgsQqWUkVXWSp8srLhlIk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PzlqwGPB7jsNwvb30iPS+PEdmVSY0tLg/JxV9pvMNgpx6XGtj3oghgDvRhWfrNjM5
 Auxk6GyzZ9E9+KTK0in3e3IhMghzUv3NKXEVqfzaWIEfVeoxOKT1ctIMNqkUubWl41
 FeUX6Cox+5sET37hnvmBFRppgQh2NUSQJxR+RMRA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 276/671] arm64/vdso: don't leak kernel addresses
Date: Thu, 16 Jan 2020 11:58:34 -0500
Message-Id: <20200116170509.12787-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090530_084629_B98505B9 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 Matteo Croce <mcroce@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matteo Croce <mcroce@redhat.com>

[ Upstream commit 0f1bf7e39822476b2f921435cf990f67a61f5f92 ]

Since commit ad67b74d2469d9b8 ("printk: hash addresses printed with %p"),
two obfuscated kernel pointer are printed at every boot:

    vdso: 2 pages (1 code @ (____ptrval____), 1 data @ (____ptrval____))

Remove the the print completely, as it's useless without the addresses.

Fixes: ad67b74d2469d9b8 ("printk: hash addresses printed with %p")
Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Matteo Croce <mcroce@redhat.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/kernel/vdso.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index ec0bb588d755..42b7082029e1 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -146,8 +146,6 @@ static int __init vdso_init(void)
 	}
 
 	vdso_pages = (vdso_end - vdso_start) >> PAGE_SHIFT;
-	pr_info("vdso: %ld pages (%ld code @ %p, %ld data @ %p)\n",
-		vdso_pages + 1, vdso_pages, vdso_start, 1L, vdso_data);
 
 	/* Allocate the vDSO pagelist, plus a page for the data. */
 	vdso_pagelist = kcalloc(vdso_pages + 1, sizeof(struct page *),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
