Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CCF10CF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 20:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O02uQmL5p1ueYCF2oxMOpGXBBD/HJI+tLE3eZRocjJE=; b=eUR4BS/SDG2pdv
	JFw7fJWa6NEIeNBCEBYCva757I5eB7JFjx2aNlC849xNC9gQLGYrOCxg8wq/bccGxNXRjqwA837Ia
	TznTmnepvYonJ0r/RQNtK/fR60zI4ugtWf8LO/UvLTGPNil4BnB23VFmHQSDXdhjnlcFqAI1T4DAh
	QtLZ2diZGEGXJdjdkLwnrBObiy50zUh6X4yboHg4u4Dl8758iiifoBZPRpzi6CpXdJDNkkiQh1/y6
	wf7snLTMeh6dC+cDFJn8puoXAr9TgVicGIbeRs1oKFtzRLjpI7cYySu02fqvG1bG6oSBrC2V+cN2g
	8OyTbBYbyfSPof86G+7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuSB-000198-84; Wed, 01 May 2019 18:59:39 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuS4-00014C-PU
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 18:59:34 +0000
Received: by mail-ot1-f68.google.com with SMTP id w6so15559641otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 11:59:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z+2ax8ZyIZztFylyBB7zkL9d45BwY6plRBtZFuq3Y0w=;
 b=bMnO0uNrNYPZ/jM7SQYRxPyQak1yKiscaWNVXoaQnTS+HbsSEmagiuuofPhuxyxO8N
 Xg7s4rypKNUU9KUKJ7ptKRZD4hXsk0VpWX0yEp7khOy9l7u/VpvPq1wtuhTylz1Oi5Fp
 br4+cJHvMf5F7Lv8ctnCasggzJZy+CfAZbF5lDHlrGark0XlttGup5iHWzC/f9yvoOtO
 hduJ5tCSZmB/Zm6jvKVhIrWFRhzr0GU/9+nDT1h5P+AyhKe5cEDXngy7clSlUnhv+dKp
 YW1Hs2evMXF1EWZHTXZ5E933s+4iZc+x7z4CJuuwY59kjKdjjJ5m1f10N8qUOmKYal6h
 lnNQ==
X-Gm-Message-State: APjAAAVAn0vbxTxi2/XtQiZt1aEoFquF1C8vPwWLge+fiEQ/jy+BXnOy
 3KtUcMmjzw2sZSFljazXxwFIHLErcx8=
X-Google-Smtp-Source: APXvYqzbHOnCaZ0GXzK+wjQT/uIdrjr8oe3PK+47no/V45oOWBYCBCM0plambR1leoQYY+FcWGPtEQ==
X-Received: by 2002:a9d:19af:: with SMTP id k44mr16692468otk.300.1556737171072; 
 Wed, 01 May 2019 11:59:31 -0700 (PDT)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com.
 [209.85.167.179])
 by smtp.gmail.com with ESMTPSA id r25sm15846780otk.37.2019.05.01.11.59.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 11:59:30 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id y64so8991493oia.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 11:59:30 -0700 (PDT)
X-Received: by 2002:aca:d984:: with SMTP id q126mr7776664oig.108.1556737169867; 
 Wed, 01 May 2019 11:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <1554475256-4805-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1554475256-4805-1-git-send-email-roy.pledge@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 1 May 2019 13:59:18 -0500
X-Gmail-Original-Message-ID: <CADRPPNSLGYDGnhVfJAYk66=bP2oZVtJiynwwgLiKiAKeSseR7w@mail.gmail.com>
Message-ID: <CADRPPNSLGYDGnhVfJAYk66=bP2oZVtJiynwwgLiKiAKeSseR7w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] soc: fsl: dpio: Add support for memory backed
 QBMan portals
To: Roy Pledge <roy.pledge@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_115932_834372_3747F49F 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 5, 2019 at 9:42 AM Roy Pledge <roy.pledge@nxp.com> wrote:
>
> This patch series adds support for QBMan memory backed portals which is
> avaialble in devices containing QBMan verion 5.0 and above (for example
> NXP's LX2160A SoC).
>
> Memory backed portals can be mapped as normal cacheable/shareable memory
> which allows the portals to migrate between cores without needing manual
> cache manipulations by the CPU.
>
> The patches add support for the new portal attributes in the fsl-mc bus
> drivers as well as modifying the QBMan driver to use the new portal read
> trigger mechanism.
>
> Changes since v1:
>  * Support older DPRC command in case of older MC firmware
>  * Fix issue with padding in command
>
>
> Roy Pledge (2):
>   bus: mc-bus: Add support for mapping shareable portals
>   soc: fsl: dpio: Add support for memory backed QBMan portals

Both applied for next.  Thanks.

>
>  drivers/bus/fsl-mc/dprc.c           |  30 +++++++-
>  drivers/bus/fsl-mc/fsl-mc-bus.c     |  15 +++-
>  drivers/bus/fsl-mc/fsl-mc-private.h |  17 ++++-
>  drivers/soc/fsl/dpio/dpio-driver.c  |  23 ++++--
>  drivers/soc/fsl/dpio/qbman-portal.c | 148 ++++++++++++++++++++++++++++++------
>  drivers/soc/fsl/dpio/qbman-portal.h |   5 ++
>  6 files changed, 199 insertions(+), 39 deletions(-)
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
