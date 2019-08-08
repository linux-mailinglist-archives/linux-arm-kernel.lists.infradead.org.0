Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2009286AB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K+zFhre+Cc5mLcOaolhoZliySDVaP08bLRu/Xvn+H8=; b=fFI+wLoWs0nyXF
	LftBaODx1Gs4Uvzk1PBedCYIJsQavS2Ta7n3O2PhbsweIU0plYKl9O9xnyCoNNZ6vyUfLpozR0IOD
	rAb33CLPwezV5nmG2VlLReVo/9VJIxrMWA7stC18KH1J820hYZl0s6PW5KFMMlcgRwzEtBsZ4clwB
	pPLAEe+L5inb+OjC6Lnnw8GpezNeHVCbJ8Xp647UkWLJam0cusMl3VD+kmvEO+e/P8PlZlxOoIEdE
	85Qt5AIP8lW6hnzaLHWikGHKp8bKxDEM7gXGq8AIIVzSPiTN1cAFafeePQr9SBWSCZWgmEo/kc3FN
	VTUJDPVJuq8lBN/UY4Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoMt-0002if-Is; Thu, 08 Aug 2019 19:46:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoMl-0002iC-Ly
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:46:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEEA02084D;
 Thu,  8 Aug 2019 19:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565293586;
 bh=4me4XpvB7qqVvu84vAAL5nGYKbA83wV2yUhPtXDdy2M=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=DWhUDArUOh7Ld3rKR0NbaJJjppzYKgaC0SxZtenmNSc/wyyXMAwseOsG5WlEsxpVo
 7toVidYd+5F0b7ctbVsSw9aU2jav2vCfR2qDFNhcTgE53aRYRmuUDqJEERobeD9pWN
 hHeCXa5I/TuIOWKJNpi6VDgS1ukfTCwfpfujnevU=
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023C8A78321E34492290E56EED70@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <68e96af2df96512300604d797ade2088d7e6e496.1562073871.git.leonard.crestez@nxp.com>
 <20190808150028.0BC1F217D7@mail.kernel.org>
 <VI1PR04MB7023C8A78321E34492290E56EED70@VI1PR04MB7023.eurprd04.prod.outlook.com>
Subject: Re: [PATCH v3 1/2] clk: Add clk_min/max_rate entries in debugfs
From: Stephen Boyd <sboyd@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Leonard Crestez <leonard.crestez@nxp.com>
User-Agent: alot/0.8.1
Date: Thu, 08 Aug 2019 12:46:25 -0700
Message-Id: <20190808194626.BEEA02084D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_124627_741970_A3D00637 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-08-08 09:46:48)
> On 8/8/2019 6:00 PM, Stephen Boyd wrote:
> > Quoting Leonard Crestez (2019-07-02 06:27:09)
> >> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> 
> >>   static void clk_dump_one(struct seq_file *s, struct clk_core *c, int level)
> >>   {
> >> +       clk_core_get_boundaries(c, &min_rate, &max_rate);
> >> +       if (min_rate != 0)
> >> +               seq_printf(s, "\"min_rate\": %lu,", min_rate);
> >> +       if (max_rate != ULONG_MAX)
> >> +               seq_printf(s, "\"max_rate\": %lu,", max_rate);
> > 
> > What are the if conditions about? We always output the values in the
> > individual files, but for some reason we don't want to do that in the
> > json output?
> 
> These if conditions are an easy way to avoid spamming "min_rate": 0, 
> "max_rate": 18446744073709551615 in json. If you object to the 
> inconsistency a nice solution would to be show "null" in both debugfs 
> and json.

Aren't those the min and max values though? I don't see it as spam, it's
just more data that is the "default". Given that json is for machine
parsing maybe the parser of this can ignore them if it wants to when the
values match 0 and ULONG_MAX?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
