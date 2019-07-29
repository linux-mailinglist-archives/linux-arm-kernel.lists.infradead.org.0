Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A50E78B9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHy7t8+Hx2lNpSS/zDix+CC6fYP1jIzSbkJ5iOd1czI=; b=WButlC/tQGk4Tx
	S3x1cIMP+7SPApWV4wFG1L2tLbCwq9h1Z9Zd315kHLRZAIsmf4rJfJMYNpUoZKGOK/Noczj8+0GiR
	QPGbJdswUxZQS6sG35lF2z0UuRyncCopIV1OlkzchT8WgRk+iWZ7bXLsPLT/Tkz1mKc1Jy/ifgAMh
	pSzvVQxkdXu5M4/8k3XX6fWKV0P08+PLW+AVcNOHK7wXvMx/3qAbXVs7Ct5XzDlpiG9qiuRnRjEwb
	IesqJ9JNAiXC29UDFsJLz8RApQ9R2vOAn0wcg3Pgo869iMGwaSTpsPQgKyAT0Y/nEpqs/EZdX3AbV
	GOXAUa4Y2ImAMvEjG4Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4cR-0001dP-Q9; Mon, 29 Jul 2019 12:19:11 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4cJ-0001cX-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:19:04 +0000
Received: by mail-lj1-x242.google.com with SMTP id z28so4118395ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 05:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OHoxMyQA6kSrFJxXpyiV+IieJpLzNWL4IkZqs98PDx8=;
 b=jbAZxACt64pCVZRPdYTO6bc2vXa4ld10XHt0YApN2vDvR47mq6DamPBCdKAnS3lRmt
 MenvKMYTWsX0THdu7OkNfQ8/WJaWWfthdJZzfGa2eIDlPy6r2cH/Zml1LAD5lC77hgyR
 wCQQmecaSB7huytlu7WMGDOgw/Uy7J6NykyxOZWuj1jJxaE+I3Ko+42QI/HAuH8wF5CC
 z4iip9y/ZoaOMn9LAwW8lMtz99gU9Ng4yTbf5l7vwFrQEo8vjHicLhsUMLnZwRVJW0bG
 /YFeLLaobZrs2dTg3ks6KLTDdou/P2GXzPSJYAOtpx5gaIXg6MUTr+aoWBtiozTQmdY2
 dn8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OHoxMyQA6kSrFJxXpyiV+IieJpLzNWL4IkZqs98PDx8=;
 b=VZcT6RyP5LLSNQUVc8s6Zq3CzCFg8Xf0O5hFrVjBQ91Oev1Xbjm4lTD64TsoBbvEsz
 xjCbNSM/LT0iqSjs6L0h1VN6UITVp3WyZI/9JcuQBf+eQpL0TDGk2+gKuPLKD077TDLR
 Xv3oinXYgLshGexEyKaFC0uOovq6I/HtdixFM3fz0nkP+BJCWKww3hFQgixmGNby+asd
 ZqSHFeF5roq/8oClFpVF8mC1anvpoiZt1vStqJAttYmp02cg5mHK/s0myEtuI8EmFTtX
 jYmM5VvrQDRIB/AlmmSO3ESTH1Osksq4lZ8aHp0cSIqpr2CUT/wSUc79rBABSL6KUi9j
 +jXA==
X-Gm-Message-State: APjAAAX8qgt938jAkwbnK426Jj7JGXbCnaNwkKerZu1cAaaEX/pZRk2+
 hPBSSXCByCaGOP2M2XFMcDtGeMoCHR4UaK8otrQ=
X-Google-Smtp-Source: APXvYqysQdZFO4P/tp354iNeuFQYqW32qWFHcnvkV9JqmCqp9aTaQNiKQTyV59gsaic8TYmRtI9rWh0QxXKZhEGC8gY=
X-Received: by 2002:a2e:8650:: with SMTP id i16mr58240101ljj.178.1564402737462; 
 Mon, 29 Jul 2019 05:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <1564384997-16775-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1564384997-16775-1-git-send-email-abel.vesa@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 09:19:01 -0300
Message-ID: <CAOMZO5C0WbaDzFcjeXeS1PivWUme=bzPur6Hj_xNz1oVzvpW2Q@mail.gmail.com>
Subject: Re: [PATCH v2] clk: imx8mq: Mark AHB clock as critical
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_051903_393959_4E1A7603 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Guido Gunther <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Abel,

On Mon, Jul 29, 2019 at 4:23 AM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> Keep the AHB clock always on since there is no driver to control it and
> all the other clocks that use it as parent rely on it being always enabled.
>
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Tested-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>
> Changes since v1:
>  * added comment in code why this clock is critical
>  * added T-b by Daniel
>
> This needs to go in ASAP to fix the boot hang.

Which boot hang exactly? Are you referring to the TMU clock hang?

On the TMU clock hang, the issue was that the qoriq_thermal needs to
enable the TMU clock.

Please always provide a detailed description in the commit log.

Also, if this fixes a hang it should contain a Fixes tag.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
