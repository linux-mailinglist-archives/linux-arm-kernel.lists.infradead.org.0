Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA9E90C82
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 05:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7liExxgk78liZ4KW/tKNgqibIRpqiwKblaxOMUIKhI=; b=tRKGYpuO1RKe0Z
	pLM8MLXV/E59ezgqpu1PZMQX+1z0ndrJ6NQxRWwX+Diue+jVduKaEvMC1Su4Fj8Ja+JdrtJFQuwtD
	5qRruUsoDoMq1zHJRUZMV1utnG/d2FTzFmEyh7XDFamplhZ31TCBkgFwNr22PsX89zz/EpxPwz9v3
	VYoNFhGcf2Q8SJQl+03ZJhZo/re0v1MIn7kUdlxkwOrDrXiglXZ2bHhXzwBewHMIOzqHUhbb2h0eG
	LJXnl37SWM6zfdgAwU3P6ZwYhOn6elQW6fbwZA4kssc+VVY85vHyOakRIPl9qliMY25K2LFmkXxbM
	lFGM0zgNS6GpwbWsUeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hypdz-0005ym-16; Sat, 17 Aug 2019 03:44:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hypdn-0005yQ-C4
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 03:44:32 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B279E21721;
 Sat, 17 Aug 2019 03:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566013467;
 bh=j8TXwFB6j98ui75A50ZJ0dzN8Pbi4Y6VAFCzYvL6znQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=jOt8Oz1kYCBxK3bcvLUbknZG7C5i366pVpAyaChybF70WUMSwKBUkDj2XYOlomCVi
 spn+o5quAGQz5nZZaEP9BVdF4HgP1RX1x/Zxz1F7Eay6gjnU5E7to+2/g4/5zxl0GL
 mCUhinxUnUK/HaY1oC35jClxAzIvZaAKG/R+j4G8=
MIME-Version: 1.0
In-Reply-To: <7132b72b-bd73-f53f-8966-a9b88dd444e4@canonical.com>
References: <7132b72b-bd73-f53f-8966-a9b88dd444e4@canonical.com>
Subject: re: clk: actions: Don't reference clk_init_data after registration
 [bug report]
From: Stephen Boyd <sboyd@kernel.org>
To: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Andreas Färber <afaerber@suse.de>, Colin Ian King <colin.king@canonical.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 20:44:26 -0700
Message-Id: <20190817034427.B279E21721@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_204431_436611_B239FCA8 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Colin Ian King (2019-08-16 15:31:11)
> Hi,
> 
> Static analysis with Coverity Scan on linux-next has found an issue with
> the following commit:

Thanks, it's already been fixed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
