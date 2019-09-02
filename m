Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F533A5841
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GUrdufTc6siczwxTaRberjHk5ErxM1mFUncG/LcwzUs=; b=E7zF8q7nnGip9GdF/GvbMMxbvc
	0oudnxu+xQvShduJlWuXF4ed0ZyN/v4yGyZ3C2k6qXi4jLSx3A/o3BCjhoylDLxkUT/50i1MKGmA+
	M8j/gAhq8EeixpvFbxqNzB6hAQry1smUPzcklDfqCEj3qMdHFKfPA6Wu0mZBuhYQaqnGAOgbcZ1CM
	sOxez/k0fP7qyX9X+50lefD1FB0DRhLiE6lKyKXK7VRwuk4SUCpogYp40Swkfzz+61XR8e3hyf2mo
	f7vv2aIb1gd6FDerOGaz/UYP9Vf9vG+z0yJZMlItaEaGTN8x812dKWmDt3StDsLHp+mOuC/Yg4aod
	twjCp84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mbH-00063P-2g; Mon, 02 Sep 2019 13:42:31 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mY5-0001bZ-Jz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:39:15 +0000
Received: by mail-wm1-f65.google.com with SMTP id q19so5833538wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=i8e++xz5qwKu0AXEKpTq0jloPuTWkhcukfEQYljIeuQ=;
 b=oM9OTEMhGN/EEkcoqDxtDdNr3XuyPO1idyqBuTa/sTarFE5MiUAd67E9MsNq9wK68T
 uRvYMd7TcEWVRkMTB4KytPS0pwXAnmyLF1BGYaWtMLK5WykoM5CpL1NgZE50BnR1V00/
 d0MDaaUZNuktSlnEH62wl/ExVRySyzjoQG5P8jxuzuyuZxWHjU0bWRhnONmEL6oo6Nni
 tegMvHLcpVuTo8NO/Dn97M+T0mZQg5/IEEW57W4Wv732sSGWKCc7f3caxe9vAGpFoBuM
 nXtlOg6sM4kGrAaWvH1lY1Cb7e6GKxVoqGO1l2feV7Kq+sTWEAXCV18hRlFiuBmKQlt8
 5nPQ==
X-Gm-Message-State: APjAAAXd6+KcXa1dYSIQkPZUzMhumaTPerTWEnzdgmrrQRh75HwfqcDc
 Zjvm++a+GeKvsuUwvkm/QVMLGvbZoQ==
X-Google-Smtp-Source: APXvYqyy/yBgbJt3aiug7T/vVbjfsxmvYSbbhNfYrxpQphu6DF8mImW2gQmz1fvkwgPMM6JR6vii2Q==
X-Received: by 2002:a7b:cf09:: with SMTP id l9mr35159260wmg.20.1567431552216; 
 Mon, 02 Sep 2019 06:39:12 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id w5sm12113377wmm.43.2019.09.02.06.39.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:11 -0700 (PDT)
Message-ID: <5d6d1b7f.1c69fb81.3c9bb.222d@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:11 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 02/16] dt-bindings: arm: Convert Marvell MMP board/soc
 bindings to json-schema
References: <20190830220743.439670-1-lkundrak@v3.sk>
 <20190830220743.439670-3-lkundrak@v3.sk>
In-Reply-To: <20190830220743.439670-3-lkundrak@v3.sk>
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063913_662726_F9506395 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 "To : Olof Johansson" <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 31 Aug 2019 00:07:29 +0200, Lubomir Rintel wrote:
> Convert Marvell MMP SoC bindings to DT schema format using json-schema.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---
> Changes since v2:
> - Add mrvl,pxa910
> - s/MMP2 Brownstone Board/MMP2 based boards/
> 
> Changes since v1:
> - Added this patch
> 
>  .../devicetree/bindings/arm/mrvl/mrvl.txt     | 14 --------
>  .../devicetree/bindings/arm/mrvl/mrvl.yaml    | 32 +++++++++++++++++++
>  2 files changed, 32 insertions(+), 14 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
