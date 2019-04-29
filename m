Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7EEE9ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 20:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoWq/4d849EoSPgj2BTeA56fgp/WNuT7Kt27gRBmfgk=; b=N30kUy6P58IB7w
	UXwNzVrsObgQbo5x0gEdP52WT9PRYn0J5u1Hw93doCp+h7PGlWBKkbEDTQJieRqULfoLpUoaB40c+
	mBPdtPfpJnLh+hdMFMNCxXnVPR7R+D4vcQRT5ci/n5RySFBhvticwoAnPgiXiQmEhXAO3BoLF5DZ0
	FzZInr0ljKAuYREY7MA/7jaISSVIYNGESvEoNCkmfnswiJpYS0mLN/UIheHAgJJgp+z987cSCH94Q
	o2DE8c/6sw2efaMSQMXQbKwdHObDiWz0KUp/ynNK+ec1gDNKP7YMgRDBaeJFb0iYseL5LeLhX2BHU
	hJam/1ptj6JEpI8bD6Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAoO-0003ia-QJ; Mon, 29 Apr 2019 18:15:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAoG-0003ht-Q1
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 18:15:25 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 342122075E;
 Mon, 29 Apr 2019 18:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556561724;
 bh=fx4OITbER8lfWRFsjpKYjxmfmM4FFQhcrIIX7592miI=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=hBkCppFmJ6UYtguHRR5FERpqeoSf2uQwVsMZ3cArS4hrgDCvnGEo7gmPYlowPOfVb
 quvs3JIhvpsjrbJpAU0yu4UAxQ2Ru3YE66nAaLGgP8bHIudOJNmemEVx5ZF4aSTejH
 mQwBWkqB2SX2rwUhnemVjspcamqOIs9TjpSxXOTM=
MIME-Version: 1.0
In-Reply-To: <1556531652-27740-1-git-send-email-gerald.baeza@st.com>
References: <1556531652-27740-1-git-send-email-gerald.baeza@st.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/1] clk: stm32mp1: Add ddrperfm clock
To: "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Gerald BAEZA <gerald.baeza@st.com>
Message-ID: <155656172338.168659.837239195206058428@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Mon, 29 Apr 2019 11:15:23 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_111524_862324_0CFEC676 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Gerald BAEZA <gerald.baeza@st.com>,
 Gabriel FERNANDEZ <gabriel.fernandez@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Gerald BAEZA (2019-04-29 02:54:44)
> From: Gabriel Fernandez <gabriel.fernandez@st.com>
> 
> Add ddrperfm clock for DDR Performance Monitor driver
> 
> Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
> Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
