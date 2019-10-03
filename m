Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B47BCB0A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XoW1JXxZP4oCFB92llFqrMTOdaeSy9JZRFGGHJl93sg=; b=V7/sU3Kanbqv88
	UUYcRubBI2iGp40nplg8u3m36qwXuzGbkpIfY1Qoc6NOoTPHcskCgEu05/TPuQa8xmhIvsSscPbhF
	Fii8CH9rrZMOMnLGrujbX2Gk3cPuDodrrG31wBt8riEQ77ULJN1Je+uNGQQyylNM33+5MR3k69EfZ
	4qaeuaKNk3k6v+9QU5W6157t5PtFbICxo2JZ+Krrzc9UsZdOI/I/Kcq1+sK0OTpienf7vm7fQfNZg
	MVN0CtQVrGTxOBCYFdWkph5/6TkO7E38Yd6qctZEWgZBYZ9rFEkUGbt/2mHwLj+RyqVEjSHD9ddXE
	ijfdgqIDpAiklqnVssNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG8CH-0001hV-PC; Thu, 03 Oct 2019 20:59:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8C9-0001gO-O8
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:59:30 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5943A2086A;
 Thu,  3 Oct 2019 20:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570136369;
 bh=+pRfoOO7vbNetx3C0ZzaCJWPfudCEYI1WCY6NU95QVs=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=dXsQ6d8BdsympZ1beP5XI8Unh+SRTzRgqXebdbS3KC+XkzCq7X3GXjMXtuLGLRo8J
 uu7CRHVGYOMZEMRBoy9UOE7dTSrJ6dqFTB6Clt/SQ3fCNiW/Hp1ZNLV8DqBUu2yUZa
 CPaur9pfgJXCSK8+Hdkv8bfv5UBD+bbLVJJwFGZU=
MIME-Version: 1.0
In-Reply-To: <1569321191-27606-1-git-send-email-eugen.hristev@microchip.com>
References: <1569321191-27606-1-git-send-email-eugen.hristev@microchip.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Eugen.Hristev@microchip.com, alexandre.belloni@bootlin.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com
Subject: Re: [PATCH] clk: at91: sam9x60: fix programmable clock
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 13:59:28 -0700
Message-Id: <20191003205929.5943A2086A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135929_804809_C4260F54 
X-CRM114-Status: UNSURE (   6.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Eugen.Hristev@microchip.com (2019-09-24 03:39:09)
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The prescaler mask for sam9x60 must be 0xff (8 bits).
> Being set to 0, means that we cannot set any prescaler, thus the
> programmable clocks do not work (except the case with prescaler 0)
> Set the mask accordingly in layout struct.
> 
> Fixes: 01e2113de9a5 ("clk: at91: add sam9x60 pmc driver")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

Applied to clk-fixes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
