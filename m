Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44991E344F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yq1e3CuS0HBMtKKpr+xT8W4AlKYA0cAXkQPT9teHY+U=; b=OdG555swMxiZjv
	+D5EAkMAXxTcQYym6NQpM7p+I80nYwXSVwMx3ySt5MpoUTYGS+Su5Tr+5H3gRzt8BvqB+cPtSczlN
	saqKWsIwTMPGhIi1ShkH+aVxxMuLaf29OBYwwcGFloMSeWCE+C3tnTaUrH7cw8I+LN8Z0CLKkTlzI
	1WQfbN0gV8q8sMmspaR7KWjYAsthuA2yV7wibUia6VpbRlvjxO3+raCtutE/M05t0n7yAPipyWk6k
	gIZ5FgYVKELq1TCntUMAv+geQRFepOZTchpMW9qtyS4aOPLTfk5nKMblGW2MaQu/qB8fIwe+4QeX8
	SFuj22Nk6hlzjzP3hQbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkSA-0000Wo-LD; Wed, 27 May 2020 01:01:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkRg-0000Kc-MC
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:01:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 429A12089D;
 Wed, 27 May 2020 01:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590541284;
 bh=7HwgQxVbxeDNjkFpYDIO+vMeXrVkj8rNi6w8tqtSoxg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=r9ZaXpZyVctNKBY9sKwr9ta+onwSWey67y1GzMg0lXOxZCHbRs1a0xX9pmzTsVUiU
 sdn1ksPevmgdSmxMfIgno0i43GPN8Hle2Mrd9nDboaW81GOXNnjW8+c8Q2+Q/zycLA
 ZFSal+keSpHvrzRAL6GVPPu02w7uLnradcIh0Aw4=
MIME-Version: 1.0
In-Reply-To: <1583185843-20707-3-git-send-email-jolly.shah@xilinx.com>
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
 <1583185843-20707-3-git-send-email-jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 2/4] drivers: clk: zynqmp: Fix divider2 calculation
From: Stephen Boyd <sboyd@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>, arm@kernel.org,
 linux-clk@vger.kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 olof@lixom.net
Date: Tue, 26 May 2020 18:01:23 -0700
Message-ID: <159054128348.88029.11223617733496629973@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_180124_765081_B97A1DCC 
X-CRM114-Status: UNSURE (   8.09  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Jolly Shah <jolly.shah@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jolly Shah (2020-03-02 13:50:41)
> From: Tejas Patel <tejas.patel@xilinx.com>
> 
> zynqmp_get_divider2_val() calculates, divider value of type DIV2 clock,
> considering best possible combination of DIV1 and DIV2.
> 
> To find best possible values of DIV1 and DIV2, DIV1's parent rate
> should be consider and not DIV2's parent rate since it would rate of
> div1 clock. Consider a below topology,
> 
>         out_clk->div2_clk->div1_clk->fixed_parent
> 
> where out_clk = (fixed_parent/div1_clk) / div2_clk, so parent clock
> of div1_clk (i.e. out_clk) should be divided by div1_clk and div2_clk.
> 
> Existing code divides parent rate of div2_clk's clock instead of
> div1_clk's parent rate, which is wrong.
> 
> Fix the same by considering div1's parent clock rate.
> 
> Fixes: 4ebd92d2e228 ("clk: zynqmp: Fix divider calculation")
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
