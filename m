Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61FEFBF5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcKRwjOyQdGBI0CWBCIBR1YsvRZ/4tF+VSUCkhmysG0=; b=tvDvKbkPTfba1R
	EcBGTnmTCTO9KuKB/6VH+7op/CMbjnkE6jlug0seUnOCewsAky+a7MPP+VUIIX000kLX5Dv9ptJcS
	CchgSWDR0EfiRgbVsaEwZtxwaZCbdkyM/elo56zD2taacjrvgeYjWIVA7RX9ouc1t4CP9CrZHgFp8
	n/SXtQ52WaGZwIEYSXywMxD96iy/nis/CTMbnfQuMKT6N8KaUgJf7PKo6M2XWLBDMPSh3vyiNjy1z
	OP9qZPB/qPEHNhE8X9HvcwsjZoyxk5ZeewzS/sylW0F45f6jicVCeA94WpLUdLTmPCpL47bEmO42m
	EoypXXQLYrvGmZ7+6S+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7Xo-00059s-0U; Thu, 14 Nov 2019 05:19:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7Tc-0000k1-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 05:15:29 +0000
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C250206F0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 05:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573708527;
 bh=WigUSF3alcgcj3pSwFXkYJTAsdWSBKH1LxuGN0UIWDw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hfgI9clc/bfFjOJFNB8C3UnyfZXN9St0vvpgPg/LyZdPTevrQKGiWvHgi+DnGBZaa
 ZYT84kVbh/eZSglzPmBmRMhXVUUXNHrsxH0co3c4tcKweJVZbfuqDHUDvczV5IEAu5
 OX7MG6Aqd2BpTIhh+V2DBODnIkR0Uwxqxi+myWC4=
Received: by mail-qv1-f43.google.com with SMTP id v16so1854391qvq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 21:15:27 -0800 (PST)
X-Gm-Message-State: APjAAAU5Ige3RMYKmp8BaYK86l5F3OEuheAg8gXvQUJCzTlpLK+4IVet
 LSw7RSfLPGN2gMDqxpLEtHT0/55OaJ74UvzxFec=
X-Google-Smtp-Source: APXvYqwlPTIblvxl8u3zUhl8hD3W9ECXciROrFiU7RcbJjYQxah0YbroDoQ4zkxAaXhihEABx4qt8MPf48+py6OCV2g=
X-Received: by 2002:ad4:462d:: with SMTP id x13mr6475849qvv.105.1573708526559; 
 Wed, 13 Nov 2019 21:15:26 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-31-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-31-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Date: Wed, 13 Nov 2019 23:14:49 -0600
X-Gmail-Original-Message-ID: <CAOZdJXVQ_wQLK-4uutb2e6zOt0b8FBVY3qoWdoo4UM8p7=bV0A@mail.gmail.com>
Message-ID: <CAOZdJXVQ_wQLK-4uutb2e6zOt0b8FBVY3qoWdoo4UM8p7=bV0A@mail.gmail.com>
Subject: Re: [PATCH v4 30/47] serial: ucc_uart: factor out soft_uart
 initialization
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_211528_586785_6A47D162 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> -       /*
> -        * Determine if we need Soft-UART mode
> -        */
>         if (of_find_property(np, "soft-uart", NULL)) {
>                 dev_dbg(&ofdev->dev, "using Soft-UART mode\n");
>                 soft_uart = 1;
> +       } else {
> +               return 0;
>         }

How about:

if (!of_find_property(np, "soft-uart", NULL))
    return 0;

And I think you should be able to get rid of the "soft_uart" variable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
