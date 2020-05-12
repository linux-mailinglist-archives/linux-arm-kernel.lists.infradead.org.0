Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9141CFC5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 19:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lh6+ZJoUl6hMgJdUcM+QNT56GUdm+Gegb8ZC1BF99Ik=; b=T5M+pS2h4I8h2e
	QVRdalVrDElcxV23nBf3URqbtl4TS3e4GWVjTQf0zIxQAQM9boH4chYiBUGlxErPFd3PHciUlqSzS
	KsNc0yeDIXsjVHPB9m1Bdh3EVnPNEuGgir0ClmsL4ZbzbXEsIDQc6ANS4JVQ1c0MyZI80s4sxyLnK
	dMtLz0+SNrfTm34LElz5SqJfcEPzZ4U6iSoKisQ2XdzT9Nym2o2NJBnskSRqSJuXoigG8BmXBdzia
	V7Bk/A0mh3HkDW7yAEq8zn59rurjIWlrihu6mNiPHrVrNYCnbY4lEiZQtafcr5PeyHEBwLCvkkFXk
	fp7P0eqAgirE86As5hTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYts-00023J-Qy; Tue, 12 May 2020 17:41:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYtX-0001vj-RZ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 17:40:45 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9014A20714;
 Tue, 12 May 2020 17:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589305243;
 bh=/URzC6VGuwBTM/0QXjea3OFpEst1nciR25t4Xb7qZE8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TyqnCB2Lre2uRgpoes9HvChWMD4LHKM1zC9Y9ma0CYbabycrdKdUPXSut/yyxZKI0
 Ea0jJgN5nP3eWeJlnswJ0+Ug7K/nXCgJaOawH51Bs3xZCicJAVkSn7CkrM5BOiP8Fp
 ZlzKGciYHBtF7FjiLl3/DucPveBeb9q2ZQWEpZfE=
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2] arm64: cpufeature: Add "or" to mitigations for
 multiple errata
Date: Tue, 12 May 2020 18:40:37 +0100
Message-Id: <158930503373.2884.12713544688468253876.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200512145255.5520-1-geert+renesas@glider.be>
References: <20200512145255.5520-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_104043_906925_5BFC943C 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 16:52:55 +0200, Geert Uytterhoeven wrote:
> Several actions are not mitigations for a single erratum, but for
> multiple errata.  However, printing a line like
> 
>     CPU features: detected: ARM errata 1165522, 1530923
> 
> may give the false impression that all three listed errata have been
> detected.  This can confuse the user, who may think his Cortex-A55 is
> suddenly affected by a Cortex-A76 erratum.
> 
> [...]

Applied to arm64 (for-next/kconfig), thanks!

[1/1] arm64: cpufeature: Add "or" to mitigations for multiple errata
      https://git.kernel.org/arm64/c/357dd8a2aff2

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
