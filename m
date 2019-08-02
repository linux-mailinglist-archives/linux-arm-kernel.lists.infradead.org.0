Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AC17EACF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 05:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=io05lf4t2FHlSOdh8UyzBhnGm1Zqa6v+h6DTwvyZ32c=; b=RCY0vXGHLYoFA4
	dnYEa1dgnBbFpDisF0QDbKgbWij6LmEHjoGEXUhWZxHlH6QLAeQRGv99+agsuKbiNdjb6Ka9neWiS
	1Fd3H7/KElzaVFIurquhqu9nCc7dvNOOeOVAHSqQVDlIkK4QnyzpVkMs63Zh1Et8qsNeLDO0Xek7D
	WWY7sO9UeeFXUclNK9/cEc9Q89r0H2aDS+L0r1PxCANWrnuyJ4Z5uIZCSiB/WMdN5K23YqcUbspVy
	7uaPUCSrlDhxUQxQ5aJ6VsYFIWMWp/PRJkp4oXL1/QWlapICtCRINpCJW5LMjzl8d2Mv0ANYB4c5Y
	+2UHX0JdGraLbGPqgm7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htOea-0003Bg-KW; Fri, 02 Aug 2019 03:54:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htOeP-0003BP-KM
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 03:54:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so1115738wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 20:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OVqjc4SdzxvCshXdZKDlYnySqqfw/iPc/gG+SV8VbwM=;
 b=kBxO6004q3rhYWAVNzIZNtb/WL8zj3N1Pu2zH+LEBTWUQp4XLD2XKnvwBjGSqD8SRT
 M3w1KabHdm2hPnAMf1b24wCA41ZW9KaOl/12Kq0fhdZ2qlJv6WD3A+Aww0ObbuiMeWeL
 jIEHFb26zAV+839jrYoawQLynYbtobwHxfn2rRmnrhhDPjaSHyWHuiCNgHCY1krr8Pn5
 tYhM9kiWECemZb4y/RNM4gFvRr/zaeAK/0SwW4ywnaiI8B7hrL96LyrgN3+B5j+Qe2wD
 w/KFRoYLrs/xL4lmLBFoSvkv12HZvOm+TO7tgm5lYPOhF/JYKfqiQ53KYcjZ27D8hoGD
 59sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OVqjc4SdzxvCshXdZKDlYnySqqfw/iPc/gG+SV8VbwM=;
 b=pwrWT5yjzD9XyMMS+J1fJADgGiNyFGwsYiaV/wPBkz1Z44hejItBYna7aFFjQ4rwSS
 XMAPqees55lAvSvGV4lbF2x+7WRAH7N8ktpvC/RuQHu45yOAhIAH4F7jQS3es8g/MgTO
 UuXn8KPd7gvDAIuBqRnxlYfavZ9CiYjnt3BIHSoHvcPICw/mSkVZO2G0GEmhS3AzqGjA
 KE0CvXZ9MeIYUbSGE9/2a+eGbwKNrPrIoDa4Gzu42KkPskUDOn1f9cQupJyf6t3EPFan
 8ODOZNohePUcMEgMz4gyzInyxLAjqB3CXcUrXWUuDzzcQDeUz9YRgDZNlhoB5HhVbH5C
 kefA==
X-Gm-Message-State: APjAAAVbXSmpSJhODfAWkBisdqG+Cio/QbOIjgRIM2TO6r9CvoED3qUY
 e7EkBJg6NSD1jis2MxNRzqOZ5u/UlIvJaaKpbok=
X-Google-Smtp-Source: APXvYqyWCf2W+0oBxAYOAcUKe/KR5cL6hEPHRfQUH2gFRlKRc1q61WXi2UXVrjeR7SJrgfQd/UMlBdIhq32zh6m8JZQ=
X-Received: by 2002:adf:f450:: with SMTP id
 f16mr111399931wrp.335.1564718079127; 
 Thu, 01 Aug 2019 20:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <1564563107-23736-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564563107-23736-1-git-send-email-hongxing.zhu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 2 Aug 2019 06:54:27 +0300
Message-ID: <CAEnQRZBJTCMYXwBz9pDVGD+7-gE_Jba-5kwXYC8qOPkEBiVT=g@mail.gmail.com>
Subject: Re: [PATCH v3] mailbox: imx: add support for imx v1 mu
To: Richard Zhu <hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_205441_695811_85F61C4A 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, jassisinghbrar@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One more thing. See below:

On Wed, Jul 31, 2019 at 12:14 PM Richard Zhu <hongxing.zhu@nxp.com> wrote:

<snip>

> -/* Control Register */
> -#define IMX_MU_xCR             0x24
>  /* General Purpose Interrupt Enable */
>  #define IMX_MU_xCR_GIEn(x)     BIT(28 + (3 - (x)))
>  /* Receive Interrupt Enable */
> @@ -44,6 +36,13 @@ enum imx_mu_chan_type {
>         IMX_MU_TYPE_RXDB,       /* Rx doorbell */
>  };
>
> +struct imx_mu_dcfg {

Can you rename this into imx_mu_regs ?

> +       u32     xTR[4];         /* Transmit Registers */
> +       u32     xRR[4];         /* Receive Registers */
> +       u32     xSR;            /* Status Register */
> +       u32     xCR;            /* Control Register */
> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
