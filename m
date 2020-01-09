Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92381135909
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGF0iIScgpfd5uX1oY2zdisrwvckUO2Z9Z4we+dzvoU=; b=EWGnNVOiqVYITh
	K6D0dy9DaCeBcDpXO4/g4lC7ae4SOnapv2xgN+wiwBcknRIlSFAckrpCxJF1HcIor30EDEJpa1X0v
	na/Gc04tsGtFo0sLcVtbTp2Hpjp4nHqloU3VuV82hCeOQUM3Bb+MZGIkyTNz02KF403KLCnz19PCJ
	TMgrETtV7yHNZYsISouGNzCk4X3IHaKNXHRZoafQGPCR21fODPuZT5EwEEZs5KFaJnw6pJUP/NFkx
	mgOtXB8kogrKD4/qNyPb706R1U3GgRVyounS74qlALJfAhvokkdzdBoUGKuDCPjlCQEOikX5+SWSj
	kOd+ttEbH6PWtQN9Bbxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWl9-0004AW-LZ; Thu, 09 Jan 2020 12:17:55 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWl2-00049o-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:17:50 +0000
Received: by mail-lj1-x234.google.com with SMTP id u1so6988650ljk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 04:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kJr9DdZZf2/ANld+Ul9RudgAsohen5RqZzNVnbAqTsg=;
 b=mjvHnzbEaIbsQ0NrLtzCJRIhUTVzBGpQVrz43beSCllrFgzbAODIdEWPM6fiwSkcIu
 xD/gC+72yKJXiV0m/oD9K9IyhwgwpCMl2rrp0ynPOetXgn3z4+wy5Frbb36/2PqTqZHn
 HcHBVnCKltDcjjTRy+NsKATYq8umfzgbRbIroF1FYyTOLdBhKJsARpLUQ/uDGdqqtnRj
 x6IL2kwuJCygf3xZtI5IguBxcK4MlZjaYTVcrO9+PrG2dTV90SlbpjXZByf6qskfTMDL
 OqSqTQJLRYLbZkRDtN7X6jbLlHh+aBwkl7O0axkckjmj46m89yeyNbKH73C2Pohga2Pk
 CpfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kJr9DdZZf2/ANld+Ul9RudgAsohen5RqZzNVnbAqTsg=;
 b=VjsdoebDlqGHk3nY/3h9c7TRKuaD4VWSKMMBkhqt5NKa+zj5Vj7etoR2mmLRXh+EcH
 lUu8WP3GvaTsOxK4ZrHw9J2RVdJMRkQllFdrYmfujeq9bh9/m05+g/mqJZvywp3Pv/j8
 5dmzr9srknmZmzvaWU44jYRDlsnBQTlOfMxGp0nzq39ZSCtLsPn4TFYfE/Y+87ZdeKgB
 kcfiUyurHlCzcmEZKjJgMNYfXqjmMa2gqdMt1cODV6S3DcJfj02wgH8DZLe0npesWGDf
 AA2iNKlCQGXYXH5xIjkpHsbH78tKNm21ugU2a5aVIVd0/cjGN+88zQ/eQ94wgDfk3CFL
 Cx2w==
X-Gm-Message-State: APjAAAXW3ba3CnDPyqaIYsrWmBPcg6JwK4/M/J7X7qALFfEThdNUaRPu
 uEmm9wHjItXWmqfJUc5pnlGFBnjNOXWEzSn2cng=
X-Google-Smtp-Source: APXvYqwTcIlvIE0lUCJi3FRLOlS1u3VgGMOmgYWiU57KWCLBT1IzZv7XrENayxwaVo2Wm+OfP7BbhpaMMuEa7apsGDA=
X-Received: by 2002:a2e:943:: with SMTP id 64mr6356480ljj.17.1578572266871;
 Thu, 09 Jan 2020 04:17:46 -0800 (PST)
MIME-Version: 1.0
References: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
 <20191203101509.wte47aad5k4mqu2y@pengutronix.de>
 <CAOMZO5Cn993y9VeFN6hPO3-cfNnUKiuFd_rqAZ8htz=dO6t6ig@mail.gmail.com>
 <CAOMZO5BniszDhWKkoWY=P62kv9cY160r9P=pjpbSOZasxJvdBA@mail.gmail.com>
 <77fff313-3f40-6b5e-fe30-5a65a189bdff@gmail.com>
In-Reply-To: <77fff313-3f40-6b5e-fe30-5a65a189bdff@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 9 Jan 2020 09:17:35 -0300
Message-ID: <CAOMZO5DyJ_niuoBX62B1NLkKRpYQQtKUiX06L62TmA6PNMKO5A@mail.gmail.com>
Subject: Re: Issue with imx_get_temp()
To: Igor Plyatov <plyatov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_041748_645991_E1491D52 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor,

On Tue, Dec 3, 2019 at 11:36 AM Igor Plyatov <plyatov@gmail.com> wrote:
>
> Dear Fabio,
>
> > Does the following patch help?
> > http://code.bulix.org/l3rz2e-982595
>
> Thank you!
>
> Patch applied and will be tested.
>
> I will inform you about results.

Have you had a chance to test the patch?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
