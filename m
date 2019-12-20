Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AD7127473
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 05:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srYdTLJrMWV6NstNWBDqp4B9z6orG/qvYUyXu0QOugc=; b=M+O49f/k0XV7+3
	jNGq9UY5P9HDHXbuJx6DCE/aZ084ZfG9gVn8cRh48A0UXPICfvMGys6hyx5hP9Dh0OB1Qf8ar3ypQ
	+L/t1T8cHlHa1LfNN6nPHUWyxiVrqTxmyJvO8cwc3m44ZpqrMFOCHXRi38M2dKY0bfhWgWjQt8I6R
	qrW/oaDJsZgeTT2hxWSDg7w9uAHvyS6aM0ImNPYjz8sgRJ5ZEPp3Q5m985GwYI5qF3DQM7toGedvd
	5lIfOMFmcsd7mFgevLKe72Mswc1/FgLmeAatWc3VQlM/5SQx3e97j3Jaksnbnj8a7E9ylRK/3r0FV
	hKifl+HmKETQSmkSwtng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii9bX-00075a-Gf; Fri, 20 Dec 2019 04:09:31 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii9bM-00073s-8F
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 04:09:21 +0000
Received: by mail-qk1-x742.google.com with SMTP id z76so6944274qka.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 20:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iWH2rtI+yo+f6Uui9r4utAB0db9s0smuFWVbuUxv/60=;
 b=Ge7vJSYdnt7deD6kR9fLEvZNkE16NR9RLAQVmVdh5o+lyvc2n4VcUt3iIWoIebvnaQ
 4qovegTLVPk4Tdp3Bw65X6UM1HludsBNsvoxkk5P6L1rTqJRQ2Z1QHXr2KxV7RjHYpS7
 aIIno4goROur4619EjBV4jXY5IGKj7lq66+NY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iWH2rtI+yo+f6Uui9r4utAB0db9s0smuFWVbuUxv/60=;
 b=tK7nlxlrorWrzJT6ltXG/6t3XTYCIpQ8DM0P4tyrLGgGVs+3u6dTXNB5XRyFNV3etb
 JqhnCgTq7xzG0/9Qt9gnNUwzS2NB4D+u5GQqfsr2ptKd5mPpDJuAqPC4JpqV4WR8Gkrh
 cdXTjp7lncKuCxt+sWien9tpr96g2O4YZ6f49WV97scuRtZp6OnqD6OtMp5ks23eEjkH
 JF/n3bG6YrlOZHuhFhGknjm+lFZrnBRYDD/shTfbJYOpN6HwPHi30pDLMuMQyPm61vT8
 L3CHThAJMex3gQSIzICKdcBosm5m81HZwkKtFsgjq9o7/NIU9gXz4+KoV58v2KQ0+UQc
 4Dtg==
X-Gm-Message-State: APjAAAXC6ecIruzbKHm4t3nrHtKUedAJ4IKtkRaZBT5h+rw/Nq4FcSVD
 ZGUn83kdGZZ/HNpTLV5BIKn2SCnZRejj4Se0bVPqwg==
X-Google-Smtp-Source: APXvYqyKlFLkKf97nbSI3FdciNJl4vfBubiJ5SkVtcJcYc3HIVAvB6w/kPk0zMeJU+zuW03LhaGoMPxI3g4/KGpiJKk=
X-Received: by 2002:ae9:e103:: with SMTP id g3mr4794526qkm.353.1576814959140; 
 Thu, 19 Dec 2019 20:09:19 -0800 (PST)
MIME-Version: 1.0
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-5-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1576813564-23927-5-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 20 Dec 2019 12:09:08 +0800
Message-ID: <CANMq1KBk179u67S0VKHr_Ymh3mcd6yddJKNhvChjW7=QMe0xMQ@mail.gmail.com>
Subject: Re: [PATCH v11 04/10] soc: mediatek: Add multiple step bus protection
 control
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_200920_297318_68342E2C 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 11:46 AM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Both MT8183 & MT6765 have more control steps of bus protection
> than previous project. And there add more bus protection registers
> reside at infracfg & smi-common. Also add new APIs for multiple
> step bus protection control with more customized arguments.
> And then use bp_table for bus protection of all compatibles,
> instead of mixing bus_prot_mask and bus_prot_reg_update.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

I think this looks much better, thanks!

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/soc/mediatek/Makefile         |   2 +-
>  drivers/soc/mediatek/mtk-scpsys-ext.c | 101 +++++++++++++++++++++++++++++
>  drivers/soc/mediatek/mtk-scpsys.c     | 117 +++++++++++++++++++++-------------
>  drivers/soc/mediatek/scpsys-ext.h     |  67 +++++++++++++++++++
>  4 files changed, 240 insertions(+), 47 deletions(-)
>  create mode 100644 drivers/soc/mediatek/mtk-scpsys-ext.c
>  create mode 100644 drivers/soc/mediatek/scpsys-ext.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
