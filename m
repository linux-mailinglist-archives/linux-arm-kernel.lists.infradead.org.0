Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6206415B4D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJTaVgx7WPoNkfAcCoRZ8m1Q/hbdXNy0pKnjv4f+ei4=; b=iYN2NAHYvZhbqa
	T+DVnPt/Lh1nftiepwKw0A0jeRcGKrvLY1hCOduoTesTLbla0nb43LTX1VvC5Yj92LoKisK19M4I6
	AinxAnErhjurxw8IzSCTe2o8J+ozjNT472fy6rGBbAgRjCQtbzZCjgPQ+DYS6O8yzcAuZ3DP72bhk
	5wWg7+TDn3WZep0J4tWnFbg3C6Ta9rb9BnQXUkRb+4QE12FME9lvPcb2Vqhjm1HwOm8BQ1WOWWSVg
	Mqp0cKKO97ij8YXdtJvJwsDwF141SSVO85b9PySgmhGqLlBHOvGbja2iK1x6Pb5LHCM/JWJHyM5KO
	1zePBdxqV69CkSXjD4Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21Ye-0005G8-0c; Wed, 12 Feb 2020 23:36:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21YV-0005Fr-Ch
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:36:32 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0BFC20578;
 Wed, 12 Feb 2020 23:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550591;
 bh=iPspr5s2ptBIIbAwLVWe93p65n+sLv2qq7YV0NAW0ks=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=hwL6iK0EGTdTNJ8RXVrdjB1B2fkaEDI+Qsb5GB3G6vTBtABSKLN+qY+09+bHVuVBu
 kJLhRifeDjLZGNM13PUk4HhDxDKS7fajN4MNZ++3HpbITu857VSlb4VL8Br6IntQa9
 cu4IXHSgRhEOL9O9+TAa9qJjT2n2amMJ8DksePXk=
MIME-Version: 1.0
In-Reply-To: <20200116172316.426703-1-alexandre.belloni@bootlin.com>
References: <20200116172316.426703-1-alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: add at91sam9n12 pmc driver
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Wed, 12 Feb 2020 15:36:30 -0800
Message-ID: <158155059017.184098.12058118253179800556@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153631_454877_12D1B5B3 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Karl Rudbæk Olsen <karl@micro-technic.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2020-01-16 09:23:16)
> Add a driver for the PMC clocks of the at91sam9n12 family.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
