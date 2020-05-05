Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737061C5D36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTNPNLcKC6nvI2shO3mkEG5pTI7sZeT77gVNY/59jjs=; b=REOKF+NdA8mtg+
	ObRaxB/Lc5L9ZrbE8shh9o9KOnJC9/7OvxuIXUSFo/yCiKPKvR+DtIT7e79IubN/LG97q2cDeJe/6
	Qso1kSGF/XlyCmepIjPjtHHpnCpuC5VSktl35w/ARKKgIu8pho/qC0xHaiefO6Szfg3TgNxOt3t9l
	ARyG6b/rpzvCdOjoJ3OIBcYA7sZ7MWkRcRplrgf/XZInlpXTJFGJ9LmLhQ8cqgB2uLL9ndMjebTVL
	s5MJiL0mN3sIDV+iQxkJUchUcvDMxjZ2uBK0TFPlQzYtdD/Av1I3egffR4d4aK1ELNNpqvjkLmkId
	eM+XIXgsGCofYapZnzLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0Db-0004BD-35; Tue, 05 May 2020 16:14:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0Cd-0003HJ-In
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 16:13:53 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75F6D206A4;
 Tue,  5 May 2020 16:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588695230;
 bh=dpXPFwKuVMrPa7413QY+1yJ7/pkzBpNiSnMEv+1die4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YMruXtbwRLDiFtaSuq49ZBOGAUPM520/Z9wz5f24Zvyj55NVRs57wCT7bIIr9epPJ
 MN6iiyCoC+MWBt+bCoJImrZ5O06KJ9UN5+NBbB+5xYeQ0a2RtMSXZUCXHXGNrYM+Im
 QUSZiMN0CryEfhf6eFAFwD5DGN046UE6m+oBJFlI=
From: Will Deacon <will@kernel.org>
To: Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: cacheflush: Fix KGDB trap detection
Date: Tue,  5 May 2020 17:13:45 +0100
Message-Id: <158869137087.244424.4260224460496540281.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504170518.2959478-1-daniel.thompson@linaro.org>
References: <20200504170518.2959478-1-daniel.thompson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_091351_690933_8C48CD53 
X-CRM114-Status: UNSURE (   9.48  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patches@linaro.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Jason Wessel <jason.wessel@windriver.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 18:05:18 +0100, Daniel Thompson wrote:
> flush_icache_range() contains a bodge to avoid issuing IPIs when the kgdb
> trap handler is running because issuing IPIs is unsafe (and not needed)
> in this execution context. However the current test, based on
> kgdb_connected is flawed: it both over-matches and under-matches.
> 
> The over match occurs because kgdb_connected is set when gdb attaches
> to the stub and remains set during normal running. This is relatively
> harmelss because in almost all cases irq_disabled() will be false.
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: cacheflush: Fix KGDB trap detection
      https://git.kernel.org/arm64/c/ab8ad279ceac

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
