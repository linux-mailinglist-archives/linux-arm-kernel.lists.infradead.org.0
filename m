Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4029E4BC04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMLupUCBWaTKis7axYf0WikHqh4wXtmfh1/DvkPvKno=; b=ODk4qNCgrT9YVN
	kiukncDshDPQDLllKiLyuQIeniq8vb1a6t0VHaM5gkyuw8iQuWLf68SZiGP1gSXMj83jbVaCY2q9B
	AsojWJv9HTRuEwHsXIk5fsAL3oKqXaLxceTBc2OCxK0TUhzgDYUq4V5gTtA94Lk8aoTU9Lko4mT1j
	xhKsu7qYisfyvG4nmujH4qmEbfoUe0X4jetCaqg9d2XyY8v7TUzJhVUeuLgIgFvyUCb/EBHg5WuQ6
	rwLcbgPgsudJHdYYSzymXWyaLxlhy1jgCoSaDUGxDN+vltNxiuJ2cxqsBe/Tl2Wu0pvdiahoUaF6n
	+wY/jklXtj/H/jl825EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbsL-0002Sa-Vg; Wed, 19 Jun 2019 14:47:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbs9-0002Rh-L7
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:47:38 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 461BF2187F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560955657;
 bh=MispwiBeGhFnc70/V895Ut0pfCpszgeSw5NVXb/tVqE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UtqG5Q7O8kyz0HVnCptfeQpM5R6jfDGYeTfYLwvI6q/0SZ4o6PXqkVCPTICjtHVVa
 DBBz/iW04N6UCDfKNGSMzAY+V2sJ0ShYJkox90+pzW71p5Rt+h69+RHD8zQvMNGI8F
 x/2cl2r7QSkT06+DC3ICEfHDuPoOv/E8uUn88lqk=
Received: by mail-qt1-f179.google.com with SMTP id m29so20224582qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:47:37 -0700 (PDT)
X-Gm-Message-State: APjAAAVK+z1tc5A4kCCyChWVQSGhelsR6RT9mSPC7Qz+W8NKSJJ/7h2U
 MoMIbdWlNUM82t8bHVtjWZ8mlD5QOalXf5fE6A==
X-Google-Smtp-Source: APXvYqzxfiq+J/8q3EtSbIQaJxlL5XeiaNwyKA4fxgTdB/b6ypNd2gAyff/wVi4H6PtRE56OBERhjbnLodMppIC8+hc=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr34545269qve.72.1560955656548; 
 Wed, 19 Jun 2019 07:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <07bc6b607cf1ad88214b7ce528fadf0b1ce30784.1560937626.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <07bc6b607cf1ad88214b7ce528fadf0b1ce30784.1560937626.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 Jun 2019 08:47:24 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+69nL40xUxYAEWaixEqs9=oNdbp-59Jogx8o2wyYFdnw@mail.gmail.com>
Message-ID: <CAL_Jsq+69nL40xUxYAEWaixEqs9=oNdbp-59Jogx8o2wyYFdnw@mail.gmail.com>
Subject: Re: [PATCH v3 11/16] dt-bindings: net: dwmac: Deprecate the PHY reset
 properties
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_074737_707909_F3297F7B 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 3:47 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Even though the DWMAC driver uses some driver specific properties, the PHY
> core has a bunch of generic properties and can deal with them nicely.
>
> Let's deprecate our specific properties.
>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Use the deprecated keyword instead of duplicating them
>
> Changes from v1:
>   - New patch
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
