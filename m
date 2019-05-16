Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB2020456
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXeA2pOAQipik3CZ116yJ+YG04AdImzp61Q7UrFlRzU=; b=aB26uISOSztuks
	bmYCgVkv2gCqsAvG4nAuvZ2IwIyYD4DJyet9fSUw6GxXoRNPjMHxorpNZEpr2Q+i4JW+gsNQvDvHe
	ZmVcNiM8UfqCIYpdB89hK2GCImPEcCredH57jEeAvmGT1sCCYlpZQ85n+VFGhni/m4qWFU6hN5usa
	zVABukY6GawAa8TaMxR3J225cZB+yryRoTCCoXfpnfh7FDZ/FLIu8IajRLt+KJUZBTfc7m5g4mpG8
	xH0SBeCGywCp3Ni0bh4En7wCa6DFdk3ccuRDtqyXC4r20k1m8fzqE+oij7zGaIiwuAtwE/rZNgh8H
	SAK2ZZOAdcrqWSV7l3Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREMr-0008G7-3M; Thu, 16 May 2019 11:16:09 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREMk-0008FT-0q
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:16:03 +0000
Received: by mail-lf1-x142.google.com with SMTP id q17so2332470lfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 04:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VDfFPtrlnpqwUaUdqz5weQzlWggy+CkkkVDF2uvXW4I=;
 b=DuWdqyRah9rmU/k+o+K3d48/HAPTJkJgxRZ9XDa/YklYAsImS6XeUWpKtBMh5d0yH2
 YtdXAJjyue3cL1GW50nKH4D6WdwKZm+TBozHUNdP65lAaCMP/v4NB7nVtOYBEzH8fI6w
 dOSQ+81XOJqpSKGlDxjWZ9pRRwz2o8fC8p3JFVSUfyBgzC70UJypNP9Fa1P7+4PqsbvH
 9onkSJMVaEkSI77q8c1kmRtI/2zND9D4uG2ky5FO/o93vyyuLogJFjqzmEYYv6fRMpVt
 9d0hAh+utAmkiuJruuegMV1EaTp5h9JCt1AXSoilT5TlHSbIxJ75EJpT0bRy1tPeynil
 UDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VDfFPtrlnpqwUaUdqz5weQzlWggy+CkkkVDF2uvXW4I=;
 b=JPpI5+8GHYNGuVgLNFTtwqMaEkxjUYC79pzsjoa3Vl2ciF90sR0n9jKgvK59krn0VT
 0V4zcq+DvuKWjRy30TCFG9orsOKkTaWba+q+BJxwdoZP+QXce6a0f7nBSFbPKRmxnm67
 fwmgSH0VaKVjB5FtD6fLdQQWsfUFVwDS1QFVXNZ87zihqe9M7pMUliR5VDST9xC/f7jB
 BRyKIJSR6ywZboBRz3yyOhN2xuRyfSER0cNYkZ09p8rTrqg5hxOtpp8WGonvvtJPnjYz
 Xgffs9I45Sqnyurc1yHtblNXNQrhoN/ZcJnuMFLn7YT7Ahn10BEffQdyKz/N8x28hZRo
 FQmw==
X-Gm-Message-State: APjAAAXOz5ACVUG5XFUD4yY8K3LE1xLwSBcSccVGzUJL2NmVIfOS7EYt
 LDDABNq+oue3btFnpdB+kBgKZFDQTD7humEui3k=
X-Google-Smtp-Source: APXvYqyAM7BbkaCaY4ubFbArKWx+xD3PbuXTEr4PfJLpk2m6wXskcVUzBXF+93mlhWBRgGZbJcXpkKdyke+2PldSGHU=
X-Received: by 2002:a19:c746:: with SMTP id x67mr23211530lff.152.1558005359664; 
 Thu, 16 May 2019 04:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190516092157.29017-1-peng.fan@nxp.com>
In-Reply-To: <20190516092157.29017-1-peng.fan@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 16 May 2019 08:15:49 -0300
Message-ID: <CAOMZO5CoqOUkvoHUNk1snPEwFG=v4Wpa6R0z3szBauHt=JJJ+g@mail.gmail.com>
Subject: Re: [PATCH] clk: imx: imx8mm: fix int pll clk gate
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_041602_241105_04CE0C24 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Thu, May 16, 2019 at 6:08 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> To Frac pll, the gate shift is 13, however to Int PLL the gate shift
> is 11.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Please add a Fixes tag and Cc stable.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
