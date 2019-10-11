Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E9CD3E3D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFZpsUQ1DEUdg2LF8VIMxd3cOf9c+y/tdOAmwPUQ3gI=; b=bQYMTc2+Ia3JU5
	tWIZBKQS3qnjv7aHRcPAtlXkvdwN8w/7QozEmjFuAGn/W88RQEFp6eiqlGsYz+RLLnSTpVOCMRKcu
	vSYlkyATvrYRi459OE1Zon9UiKfkXsc9QUFql5A/0+DZFFxByPWy21ZWmqOA3X/lLHrGpvYvxF0NZ
	ecdRSo3wvM6S1byVU7bW8MHUO8vUL4P4kZ9wIi0/PkmBxk05sxwKWTTEm70d21p+DD1RTajCgv0rp
	QjSB1MSFLO1FjQmCeLkGgQKIEUROnxRs/jKTUw+N9WT4BXHX+8juElUbFDILs6KwADv0f47/8z6lP
	9l9fJbiG7aiywkm+QIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsym-0008AP-UY; Fri, 11 Oct 2019 11:21:04 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsyc-00089V-9x
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:20:59 +0000
Received: by mail-lj1-x241.google.com with SMTP id q64so9402503ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 04:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EtNnfZSNIM+FE/Ouxm1KBXCTSzFBGzlbFpsvpsa6fzI=;
 b=D2OqE7PnNRoUmWNbgTg4s/KS8g6W7Ej8Lz/BB12Px1dRFIkn9T/mePVU+H/hIHV56J
 64v5oYuvA2yBVwR0KjYpdXT/oXajCzphVepm43ADpOGt2tkvfG7g+ZFrAf7vUYqBiwfu
 EjGV7zGmT3Co3lrzt/KGm2dHBVc8id1bTLHciUJIAOh8xvd9figVUKdPFEFHeguDB88M
 MtLMtaaxHw6QUzwR1PJNwwgfViWo4DK6326sFZVy7QzQuw4tbK0TeUnOf345R0Q4EuZa
 CAzVC4ECxAv5aVbB5KLueckmLSFulPvJYY6CEPwIjImSvxfmQszWMcLYYEHWMSGewiS8
 AtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EtNnfZSNIM+FE/Ouxm1KBXCTSzFBGzlbFpsvpsa6fzI=;
 b=Zs+fj0t3uWEHQ8S2CukvDDtb3lDmmeJVOQ1fr9nKAmEsM/NGVYUL9qK6LzRFaFyDk8
 M6Ird+2d9U75s0c/pygoIfxcXdxO0+VHWPZpUf0lIT+jpQJ2YFjqipnlx0RUQkDEynIp
 7ap1tIb/MHSorMLJ/uPmTy1gxYoABGluwEZ2afPowxb5NWYuTxiOqVJlNeQUJygaCy6x
 DAAZejFClIZVvuE3xpkk+ieIGi5eNfTq/4KiDLo0eukdQ64biebDkTzxUhcv6FAuN5BC
 Xw1TafLoLvEBQysiClThNN2nu5DicgbsRm/Hv/Qymg1E4kJO3x5F+kbOy+mv7cHdWB2y
 RYAQ==
X-Gm-Message-State: APjAAAXaAYlicLLA09h4BoLa1PQ8zX745M+T94cA3cjGwGfqoj6RFVXq
 5AAFHKO4sjKLC+BCnvCEZdElaa/OSipg67Sc5+c=
X-Google-Smtp-Source: APXvYqzE/zVDPjPyTom42qRHj6q37hTnXXPuz3aalIoov7655nQZiN5T5dR7/JP1C+tRL0z2N/CI/hjBxsug7ERVx48=
X-Received: by 2002:a2e:42d6:: with SMTP id h83mr8801587ljf.21.1570792852255; 
 Fri, 11 Oct 2019 04:20:52 -0700 (PDT)
MIME-Version: 1.0
References: <1570784940-5965-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1570784940-5965-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 11 Oct 2019 08:20:43 -0300
Message-ID: <CAOMZO5D_Yxzq83zKGM=qUbBjP3c4UB9_GRBAAcMDEvzTYMuyfA@mail.gmail.com>
Subject: Re: [PATCH] clk: imx7ulp: Correct DDR clock mux options
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_042057_736247_85B0970D 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 6:11 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> In the latest reference manual Rev.0,06/2019, the DDR clock mux
> is extended to 2 bits, and the clock options are also changed,
> correct them accordingly.
>
> Fixes: b1260067ac3d ("clk: imx: add imx7ulp clk driver")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
