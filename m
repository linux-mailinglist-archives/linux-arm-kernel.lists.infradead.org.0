Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33E948572
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TE3nDepmlcxXGJkXMoNrrPd5U1tPHwxCB3p23+Yb8/o=; b=Heh4WfQHuQ/RoW
	WapatHikYjnKkPUuY1mY22FIaqmq5XxgIncrb1E28KpkfCfJeAiaesidnaaErsdExw2jCCATpAsRc
	W8fQvly5ZhQ1I2085P/0Hys98pYEFewphME64EmD+NsYodj5Bh/WHwfjWQ4Sf6lt7rVi4HIj6f1nX
	2RiI9btWAHnvI1S/qwfqFCcU2FIE4O2597dMWSi4n4X08XNl4Yz/8FfLkm+bH577qpMkKn1LdS1eN
	VNhYNgR2FFZs1i51GaAQ/BiZNce+30amu0rmucURaFaUmu42xOiNe7uyIs8fwHlQJNnIgHZj17L2u
	TVRFRW+SqPG1ALlbyEow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsgR-0003dw-Gb; Mon, 17 Jun 2019 14:32:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsgC-0003d9-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:32:18 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2107121655
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 14:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560781935;
 bh=YVeXqhOTacEiBNpdGFxeX6iKuMZYINJ5rCe1iWJz0vE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LUUhyHLo9MgYHOLj0zjchSniPPEa++duHCyqMUsC+2KQR5L9XBR8YInRUgb0snjWB
 iy15bMQkEZKLg0uYhznWWOuMC0fTsmusuLUw4keDRmkKstb5StB3z39WZksfDBi5Yc
 oA50f3IAbzHY1Wp6Dtivua5rdlaAkT0sPt7ewcWY=
Received: by mail-qk1-f172.google.com with SMTP id s22so6257719qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 07:32:15 -0700 (PDT)
X-Gm-Message-State: APjAAAXNUJ46sbIIwdzAb+DfguH20UMbDsPY/4ftl8xuJpy5vFXj7iga
 GmNQJUGvGZmbADDmW1e0XHTtHBdma/pkqDhk5g==
X-Google-Smtp-Source: APXvYqzypWzH9+FR9vkOBKVJHu+Un0gXYkhnqI88qXB3NL4H9/fIbTzA62+ik8Z0kWUIMebLB0X+tfIaTGYexkCkI1o=
X-Received: by 2002:a05:620a:5b1:: with SMTP id
 q17mr23213999qkq.174.1560781934347; 
 Mon, 17 Jun 2019 07:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190614080317.16850-1-andrew.smirnov@gmail.com>
 <20190614080317.16850-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190614080317.16850-2-andrew.smirnov@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 17 Jun 2019 08:32:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKqh-iuTk-P7NH2BfEnmnwdB8yMumCd-KeoszCbBNjy7Q@mail.gmail.com>
Message-ID: <CAL_JsqKqh-iuTk-P7NH2BfEnmnwdB8yMumCd-KeoszCbBNjy7Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: fsl: Add support for ZII i.MX7 RMU2
 board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_073216_932965_4A8E61D8 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
 Liang Pan <Liang.Pan@zii.aero>, Shawn Guo <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chris Healy <cphealy@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Bob Langer <Bob.Langer@zii.aero>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:03 AM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Add support for ZII i.MX7 RMU2 board.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Bob Langer <Bob.Langer@zii.aero>
> Cc: Liang Pan <Liang.Pan@zii.aero>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
