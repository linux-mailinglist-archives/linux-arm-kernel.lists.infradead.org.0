Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B596610CF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 21:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSfiVGhZDoV2Nrxtfo6QJCacd4RtAQfwDAVC4MXjvX0=; b=SRVkhiqBYbMktf
	qpMGfb7d7Au0EWg+XcjDYf4PPYUO1WTyhZjOCOoMtTU/3KGjZcmYvji4p8tLldfGihi1x6ceYVXpD
	6xFIfzwYsR9fb3uib6rcx/CcOvBPJ6VpTEGJjNEWrbzc+s7gyDcvSsC5hj8Af2jXrXZhcxrau3eui
	h8IyTejSzvoTttoymH6GGqSiDr4KuhcU2viDfaMtWtK9ZSPjHlpagTxU/LpZcHlrQz0ASt7MNH+Rd
	zjKJK97JxtA+Obe78+bKynddVKnHvOqHR0s0No4T/xafThlD3E7Ywzs1pqcL/7xwBB0jG/cuzZh0c
	pi2KQv241nykPws1Sg3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuTL-0003a3-KN; Wed, 01 May 2019 19:00:51 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuTF-0003WG-E8
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 19:00:46 +0000
Received: by mail-ot1-f68.google.com with SMTP id o39so4303139ota.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 12:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i9+tfL6fSxYsK1rZcVSRQNqUCLp68RFEdLLJQMKSpDU=;
 b=iFmjMVi7SZyx+3oR5JDn/ttOFQPDCeLSobFr3EypKIqqQE6eHN5ALrbuiWHN0vl09t
 8kEvtpqP+66SDs62yjR+GTF1MxPrFvUG0CNwxFe+hzAf7yBr73JzSZpUEiVrTrFfaPwJ
 G///MESnEmuVIxX6o4Hznzl7i5CrWqB06z+LOmSPz9kEE16QeGSmxYPmM2BKN+rTPnwe
 Vnp1lXJGFAs9iJv6mMVNpI4MjvoVglg9YMP7Sf9qurkbGq6pRQRiX3BEsfbZEXt5wiSc
 bWCWLQBHx47ak4wlPUyuTGNuzSb+RUk0OB+bw+8xJ9CmsU/Rb4KnEec7R8fAGkwc3oXH
 gI3A==
X-Gm-Message-State: APjAAAWJFWfiEc66N4uc2+P47TWPbsj1Z+6bnM5KZCX6uudlbfhud2ua
 XbZg6mQ3ZaCC3nEescWWezzdrodTb+k=
X-Google-Smtp-Source: APXvYqztLawFs/uTLv78/nNMkAud8ZM2DxkpOmO4xK7lpz5Hzh9G9nlcPAm3dgmweGsSv2PpTKFp4w==
X-Received: by 2002:a9d:6543:: with SMTP id q3mr22864910otl.370.1556737244663; 
 Wed, 01 May 2019 12:00:44 -0700 (PDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com.
 [209.85.210.47])
 by smtp.gmail.com with ESMTPSA id p205sm16542681oia.49.2019.05.01.12.00.43
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 12:00:44 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id g8so14567513otl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 12:00:43 -0700 (PDT)
X-Received: by 2002:a9d:6409:: with SMTP id h9mr18431913otl.68.1556737243506; 
 Wed, 01 May 2019 12:00:43 -0700 (PDT)
MIME-Version: 1.0
References: <1552325436-8907-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1552325436-8907-1-git-send-email-roy.pledge@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 1 May 2019 14:00:32 -0500
X-Gmail-Original-Message-ID: <CADRPPNRgDN9O2GGd2XyVdByQ8_00MF83ZJ+P8tf13to=-FuN7g@mail.gmail.com>
Message-ID: <CADRPPNRgDN9O2GGd2XyVdByQ8_00MF83ZJ+P8tf13to=-FuN7g@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: dpio: Increase timeout for QBMan Management
 Commands
To: Roy Pledge <roy.pledge@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_120045_473491_D3376C76 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Youri Querry <youri.querry_1@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 11, 2019 at 12:32 PM Roy Pledge <roy.pledge@nxp.com> wrote:
>
> From: Youri Querry <youri.querry_1@nxp.com>
>
> The timeout for QBMan Management Commands can falsely trigger on a
> busy system. This patch doubles the timeout to avoid the
> false error reports
>
> Signed-off-by: Youri Querry <youri.querry_1@nxp.com>
> Signed-off-by: Roy Pledge <roy.pledge@nxp.com>

Applied for next.  Thanks.

> ---
>  drivers/soc/fsl/dpio/qbman-portal.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/fsl/dpio/qbman-portal.h b/drivers/soc/fsl/dpio/qbman-portal.h
> index 78c700e..f3ec5d2 100644
> --- a/drivers/soc/fsl/dpio/qbman-portal.h
> +++ b/drivers/soc/fsl/dpio/qbman-portal.h
> @@ -1,7 +1,7 @@
>  /* SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause) */
>  /*
>   * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
> - * Copyright 2016 NXP
> + * Copyright 2016-2019 NXP
>   *
>   */
>  #ifndef __FSL_QBMAN_PORTAL_H
> @@ -433,7 +433,7 @@ static inline int qbman_swp_CDAN_set_context_enable(struct qbman_swp *s,
>  static inline void *qbman_swp_mc_complete(struct qbman_swp *swp, void *cmd,
>                                           u8 cmd_verb)
>  {
> -       int loopvar = 1000;
> +       int loopvar = 2000;
>
>         qbman_swp_mc_submit(swp, cmd, cmd_verb);
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
