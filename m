Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50787D8F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BjOz8EDAmSVmBiSq8gWnoM0CI+eahz1BEO+jykd0H8=; b=UPyAy9LiDLp0IY
	5ZQ3ckPQoS+HUs5Y6sEAJropf34gbXnwXvAEwS+ljHwvqJ40dbbHYB+1zYBLC313JM8rG66NkbThe
	2xq48EURwN7bR6zPWsiFZPkOn0pH0v8ZOk1Ze+fi9CwUFItNDImk1qBBx5S1/MU/b7RcKyh4la2xG
	u/loh6uiCITe3cpUKokjxsaWTQ+nKBoNYcFnp01IIcL5GRbZYR/rpCLo/7AyC+nvl0eQ891vWRO9X
	o3SW2669b+iHXPDnqKZ2uG7/jApNJaRqwt8/J624+TeE7wrbitGIMJH5RijhUYh/BwPcv7sMZcosC
	/7GYqU7KbuAXvjEw0dtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7tD-0000Sc-IQ; Thu, 01 Aug 2019 10:00:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7t5-0000QL-EZ
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:00:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so63940811wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 03:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yvHG7Hz/9Ob9jRno4A8HIYiT+6WnolNDgY5X2fx9PzU=;
 b=jGl8hQ/pylifHAOf3LpUpjcMCa5xTk3o+Q7hIr2Zk43YehF+D2KOJVACNGmIekvP8t
 0fz+rZ/9PtRp4D2+7EKqYokYbm+LUPjdQtaPTQrYoirgot6tSTDgDaWTFeKmCd42f2ka
 5rViSC5YK4uLRwZ4rcKL6Ty1mnr9yS1Rt7VP4c6nKbdP4gLtoJDKRCPA1p/dsKwTVV7J
 QjfKlLJ3WarnA/ldHWKIqG7iBGrtljS1TDe08rV6CGEwZTRErFVHFQqeqF3hrBqwOba9
 UXSK5K5XbLzVljkbulWklgFpcEU7AFsVdH3OAzfvngez1lUliGdIWrt/4yrLIqLNljx5
 R/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yvHG7Hz/9Ob9jRno4A8HIYiT+6WnolNDgY5X2fx9PzU=;
 b=e4oJJ/ngvdUs2Jzbe1Cir5EiOaicF7FU9EmmnoIsmDAmSklKrqHND8ioEsly1GdnLK
 0uOM2NqC+zMDp/YyjqBFoiM1jb2pCYb9mcioxaw2Rigs/8c/kyvfXHTgyzo1edrdvgGo
 3kNngOPi7XkqH5KDqe5S3/ct5gHLaVNvUAlPptFNAyuJ3298jNMkTzQCmyFjSYZOVMwi
 2f/Zl8MjAe80QJjLgM3ugtdSwY8AxnGl4la12QlHMUVc1YtDXOW/eUK7AWOcbHwIAvhD
 5E38GSng3JH+Mvpp40YZCUQuUw2aqvC1Sw7c2SoCXIp6llD+xfnwp6sKo4bgoAq6AMhq
 a4Lg==
X-Gm-Message-State: APjAAAUBNwLE314woAUTeXd1YH2j69rMtDMuQxCx3606VAAeQ0NnO9Le
 /NgLSJsWOOx/XQgekUxs0iVphoDfo87gjIJLvM8=
X-Google-Smtp-Source: APXvYqzT72lIJX2ZUzpbek39yvgjAfsK6WJhLdzqr139lfB2Vbf6gWavQ9ep9qqYNrYgh51kzEO4py2b6kecaqVXnrM=
X-Received: by 2002:a1c:96c7:: with SMTP id
 y190mr106706275wmd.87.1564653640133; 
 Thu, 01 Aug 2019 03:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190718081943.10272-1-daniel.baluta@nxp.com>
 <CAEnQRZDwBBR5qQT9NQX7c6kyrjp2Mw_so=QgkARw-gUgj3VeEA@mail.gmail.com>
 <20190723074633.GJ15632@dragon>
In-Reply-To: <20190723074633.GJ15632@dragon>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 1 Aug 2019 13:00:28 +0300
Message-ID: <CAEnQRZDQd5x69CFaUULyh-5zR+g8Tw1VmUjPBQKJe-GHzhHjwA@mail.gmail.com>
Subject: Re: [PATCH] firmware: imx: Add DSP IPC protocol interface
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_030043_510087_3CF35286 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 10:47 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Tue, Jul 23, 2019 at 10:44:09AM +0300, Daniel Baluta wrote:
> > Just realized that for this patch I forgot to add [PATCH v3]. Shawn,
> > should I resend?
>
> No need.

Just sent v4 out there adding support for remove. Hope you can have some time
to have a look.

thanks,
daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
