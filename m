Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D876350DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFQXV/o/m2V4R+EooKwDZrc1hjJBdu/3ZVOMuDo9ToQ=; b=HBtCeyrPBZpxbZ
	oPqt6h3y4wazyqzn3djQeMnlUtJQe3MMA6P0SiveJx8JvS+7I6XZuYoKPvH9Eof48tRKJLCNnbtoL
	1LwcduRxQWhAMInVN/HDLY5+REcE+PyoeWSFe/1KlgVvtm7ylkWwMUv0PIeIQ4OAPS5W+GG+/czo8
	EcOr5IRDoVXbl5Q5wKBy8IZHg+uBxh+9w29PC0skeDr/V8xovTlj5mqGCf3PkiVbBgTteqRmt1lKS
	nIcAefbYzp/kgrhLuaBSPYZ4zYQAzdWmf0RYc1489so8KY0b0ub4jEVNUveg8boXygR5m+hqOcNIZ
	vTEHw30nZrc6CngSPaqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYG41-000394-Qh; Tue, 04 Jun 2019 20:29:45 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYG3u-00038I-G5
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:29:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id t24so7102963otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 13:29:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ShuaCglHMPdgyal6GGIwZRaEUD77Ogg+O3HSaYQ63/E=;
 b=dVKB8nNoymYLpvJgwlRqAV6YUEKjq8laJTS2kfTPYFb5+bs2TeJ6rJCZ9Buvv2hobj
 5IU09WRu5wr1vzYk649bA0pP+xREkzOXzPyOSWuFStCkNMWUNTnR2s40dN458rAo2/Lo
 GlLNFPLaaRQsMre1Gn3RDkzXEN3v8KTelOm6DVuJJhXdxvlU8dbOY5t6vhkWTkh3cbzK
 Ujmo1W99hvIAB+N2GQw/YWptHbR6bqw6/2BL5CN0h78I1QLX9/VilWWEbMt3muFh8N9w
 WRWLUN0Qotbl5xcq8bOTt8mm4tNQuhafnMo99wvTzRcZzp9JsyB+T1V7TJzgiJZ44XP6
 0tmA==
X-Gm-Message-State: APjAAAUfztN1pM1+iVI5edqQvCs6KFqY2e0WuZVM0y+owrjQYrVm1XoA
 MSOukkHBdaSKfzQUoiZl0AKmRmkn5rM=
X-Google-Smtp-Source: APXvYqw9GHHg2RZqog0IopdIP6DdisjszoNHbM3niJAX4SX/BSwfmCOuc38gXUU4mRImzC3tlX/8Tw==
X-Received: by 2002:a9d:2967:: with SMTP id d94mr6672894otb.12.1559680175184; 
 Tue, 04 Jun 2019 13:29:35 -0700 (PDT)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com.
 [209.85.210.45])
 by smtp.gmail.com with ESMTPSA id g10sm2651699otg.81.2019.06.04.13.29.33
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 13:29:34 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id u11so20822749otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 13:29:33 -0700 (PDT)
X-Received: by 2002:a9d:6058:: with SMTP id v24mr441623otj.110.1559680173629; 
 Tue, 04 Jun 2019 13:29:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 4 Jun 2019 15:29:22 -0500
X-Gmail-Original-Message-ID: <CADRPPNRfAk2ZWJQt=Wx5SEqvw4iSpzkj8_XvHa_CZYHDAxFgxg@mail.gmail.com>
Message-ID: <CADRPPNRfAk2ZWJQt=Wx5SEqvw4iSpzkj8_XvHa_CZYHDAxFgxg@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] soc/fsl/qe: cleanups and new DT binding
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_132938_546653_4FA93008 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 6:17 AM Rasmus Villemoes
<rasmus.villemoes@prevas.dk> wrote:
>
> This small series consists of some small cleanups and simplifications
> of the QUICC engine driver, and introduces a new DT binding that makes
> it much easier to support other variants of the QUICC engine IP block
> that appears in the wild: There's no reason to expect in general that
> the number of valid SNUMs uniquely determines the set of such, so it's
> better to simply let the device tree specify the values (and,
> implicitly via the array length, also the count).
>
> Which tree should this go through?
>
> v3:
> - Move example from commit log into binding document (adapting to
>   MPC8360 which the existing example pertains to).
> - Add more review tags.
> - Fix minor style issue.
>
> v2:
> - Address comments from Christophe Leroy
> - Add his Reviewed-by to 1/6 and 3/6
> - Split DT binding update to separate patch as per
>   Documentation/devicetree/bindings/submitting-patches.txt
>
> Rasmus Villemoes (6):
>   soc/fsl/qe: qe.c: drop useless static qualifier
>   soc/fsl/qe: qe.c: reduce static memory footprint by 1.7K
>   soc/fsl/qe: qe.c: introduce qe_get_device_node helper
>   dt-bindings: soc/fsl: qe: document new fsl,qe-snums binding
>   soc/fsl/qe: qe.c: support fsl,qe-snums property
>   soc/fsl/qe: qe.c: fold qe_get_num_of_snums into qe_snums_init

Series applied to soc/fsl for-next.  Thanks!

Regards,
Leo

>
>  .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt |  13 +-
>  drivers/soc/fsl/qe/qe.c                       | 163 +++++++-----------
>  2 files changed, 77 insertions(+), 99 deletions(-)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
