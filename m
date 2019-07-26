Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7D076309
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ms6fkruKcMy3XluX85T75wUABdPN/H1GdObY8wflbFo=; b=rw+eLOh7XtGMOE
	7bVyDZl2PwLPTZCrVi3UlNngrXxAYwKvDTsU2FCK+xLL+p60x8hGe1Lq/syE6BGvGup4PowwIrg7v
	6gHKH/WSj5J9MxnXIIMIgg94Bvx3FdamceZOW+gszhAsAQM98BX+xNl754vKJ8e85n1DYdG3V6FnI
	wxS6ssrScM0MLHv0DfZjqujOfscYB/Slxx/P5lJ8zYCdkF1RBNkEJJa7uYuk9i8NQv97ha6xnBO3o
	9sBZR90VjV6/xgYea9YY4vGp+bBx+KKp0sNzen93yEmOiwL8RLdUszz3pcjlX9fUjDiB82XiqDPgr
	u78bRfsL1e7HdwpWidBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqx3y-0002xz-FH; Fri, 26 Jul 2019 10:02:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqx3f-0002uA-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:02:40 +0000
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6197722CBE
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 10:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564135358;
 bh=7MJ+vCNVbPSQe5xb35xJesroJsELZsRfJAQgN2m8Yo0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YqZlO8xaCrORR7NUWRK1YWzCAoX0fQGCAruiUvd0EbGpIcxG7y98zfuBT2WRffOtp
 rLYVGVw70r+Q97IxDQosEpuYSC7i+iFzWd0XKqxj7MT33yDLIHZqL/5Qvv9kvIfAb3
 47QnWfX36rb6cJH5/SPwNc6vSmEE34SAQhP1ANMY=
Received: by mail-lj1-f170.google.com with SMTP id d24so50892132ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:02:38 -0700 (PDT)
X-Gm-Message-State: APjAAAVhhW2+oKjowjjeFmJQt0/HPzHJllXNAUwTEaUicaXjt8E9ebCU
 VN1P4Yv0mdrJ67GnM0FT3L0bkBxPnE19fYaFfCk=
X-Google-Smtp-Source: APXvYqyOZ17x945oZf2yalALHm6hxXvu7W9AcifjqVUkBG7YT744y3x06dMet0dxxzuVhl2gudIP27bO87jyn3ITadI=
X-Received: by 2002:a2e:7818:: with SMTP id t24mr21589590ljc.210.1564135356368; 
 Fri, 26 Jul 2019 03:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190726061705.14764-1-krzk@kernel.org>
 <963ba555-dde0-9c3c-1e15-740ca200853f@kontron.de>
In-Reply-To: <963ba555-dde0-9c3c-1e15-740ca200853f@kontron.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 26 Jul 2019 12:02:25 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdbBXEy0zzjZ1ytts0y5STQ5x9xQVBmU1vn46tmu8uCGg@mail.gmail.com>
Message-ID: <CAJKOXPdbBXEy0zzjZ1ytts0y5STQ5x9xQVBmU1vn46tmu8uCGg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: vendor-prefixes: Add Admatec AG
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_030239_578122_D3A53221 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019 at 11:48, Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> On 26.07.19 08:17, Krzysztof Kozlowski wrote:
> > Add vendor prefix for Admatec AG.
>
> We get the displays used with the Kontron eval kits from "admatec GmbH"
> in Hamburg, not "Admatec AG" in Switzerland. I think we have to
> differentiate here.
>
> I will review patch 2/2 soon...

What a coincidence... they have so similar portfolio. After looking at
vendor prefixes that would be the first duplication of name.

To avoid conflict, how about: "admatecde"?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
