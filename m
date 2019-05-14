Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01B71CF55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGKHvM0dYwduVU3uCnGwahOpBbtgW8VLi8Vf3b4Tcxg=; b=AO+GzKE67h0umN
	gHwRuUQTTYu3FC+tWocbP6xmzZg0tzuRA73pmL4T58y8HLBr7NVI3q0A0Lq3JhQP7fXBLoNQTg711
	zMQbV7aFcf7xgARFvnI760j/xYhz+OSLSm9wTdXOHCU+ewp4UxFVKGJ9kp5J/62GkWiVzIWjeMHvq
	nSjDPlfdhL6nX2J4w5KFpSVMLTjnMKTMQqEgnFaIFD0bnIUaOy5IgKEkg5BWWC/e53meFB5wlzwVu
	FiRu9pG+P4c1+Xjm/tCCc5uVa3dnqdx4rkYfmEcwDJU/Grs88UbpI7FTeX6Po3bLEPd5eDoZfIBCB
	aRShwsguP2IretEGljYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcSK-0002Lc-AU; Tue, 14 May 2019 18:47:16 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcSC-0002Kk-PH; Tue, 14 May 2019 18:47:10 +0000
Received: by mail-oi1-x241.google.com with SMTP id v10so12959176oib.1;
 Tue, 14 May 2019 11:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b3wKV2yvyhNXBHezd2g3VNLzJd77vsTJn5OuHUZElkE=;
 b=FSuDnTxaDbNRibS/cl1V/LWshcY/nC5P8Wwb7sEKTQIA9N2sXN/aZ6qS/B9N6ZZYli
 iSBFSvSmeeYzin0eC/VMw0QMTnlgL6WK1P6ZSSX7g7RIkiQlQ+zVRYyuU+L6c1KQtOUm
 H1eZ1Jhgv6syoz7DG5/dU3a6wKSu4JpdNY90IRtdlh8byKBHrEgvzB8s0C2DAGu7u3g7
 ecabg5KjKS48Qa6iSf+sF7zgW7KHddpTQClz7GvcquLTMtxqN2S6BOGnxIxUWSmrdZru
 E/VAnuEYZ3NTqFnB3QqeLNELRDkAwZjEk4qOK/laDM+wxE5Day3oWcT4Y4fqgcKRX2gl
 3A4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b3wKV2yvyhNXBHezd2g3VNLzJd77vsTJn5OuHUZElkE=;
 b=aD9KVgsoOzkLxTEwNuAsEr1c+5jd8+luPa8Fxjrvwj6bc/jWRp40pV8MzzwVbFiGn5
 AAk4v5WWnZg1yyTm4HaSJubk0CaDyDzdDLcT1CZKpkC+UaIxxzacIumlVyFNzMVnzk2E
 x/HL8H+EPooWDyM2Z8JiAwcAjUQwx/B5BbyLpT+qTb6sFI7R/P7RQ+8O8u7MgImc9rGT
 rbhdpa+djwPy+gOzhDoKBKxJPsVLAxmptAo4ZeJL15u1/aP/Y0Fx0nVYdYfuQPH6O+iS
 iyE3RSAwsWoxl3B7D13bkyXVsd0Gt5H5PGP/Cb4Vox2qlh+TRbj4wWYHuCT/iT2Vvdt5
 9w6A==
X-Gm-Message-State: APjAAAUqBRUkcGOw1odKkdkVTsAx12QkNG7wiVXcGNArRaw+CdDe6x6V
 wPXeT/nkq4Ufih20QfLJ6p1gWn2NOj+Y4xCLoAlgHPJjkY0=
X-Google-Smtp-Source: APXvYqyAsqSOHm/4PjG8rmz2z+47hObMZtkODxPLmkZxrCSNCrhSrYuN8g3dNQ1msbyt5tew1NttZ3FWwieMhIJnR2U=
X-Received: by 2002:aca:ab04:: with SMTP id u4mr3815658oie.15.1557859627031;
 Tue, 14 May 2019 11:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190514135612.30822-1-mjourdan@baylibre.com>
 <20190514135612.30822-2-mjourdan@baylibre.com>
In-Reply-To: <20190514135612.30822-2-mjourdan@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 14 May 2019 20:46:56 +0200
Message-ID: <CAFBinCBm=zJb9Ap3XL03X4LUAPcPQ2u=gJsBhBdHSUXYD5BMpw@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: media: add Amlogic Video Decoder
 Bindings
To: Maxime Jourdan <mjourdan@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_114708_843266_F082739D 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hans.verkuil@cisco.com>, Jerome Brunet <jbrunet@baylibre.com>,
 linux-amlogic@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, May 14, 2019 at 3:56 PM Maxime Jourdan <mjourdan@baylibre.com> wrote:
>
> Add documentation for the meson vdec dts node.
thank you for working on this!

> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +Required properties:
> +- compatible: value should be different for each SoC family as :
> +       - GXBB (S905) : "amlogic,gxbb-vdec"
> +       - GXL (S905X, S905D) : "amlogic,gxl-vdec"
> +       - GXM (S912) : "amlogic,gxm-vdec"
> +- reg: base address and size of he following memory-mapped regions :
> +       - dos
> +       - esparser
> +- reg-names: should contain the names of the previous memory regions
> +- interrupts: should contain the following IRQs:
> +       - vdec
> +       - esparser
> +- interrupt-names: should contain the names of the previous interrupts
Maxime already mentioned in the RFC version that there may be more
interrupts in the future. I'm fine with adding the missing ones on
demand

> +- amlogic,ao-sysctrl: should point to the AOBUS sysctrl node
my goal is to remove this property at some point and replace it with
references to the power-domains.
however, we don't have a power-domain driver for this yet (it's
somewhere on my TODO-list - it involves splitting the current
meson-gx-pwrc-vpu into two separate drivers, so we need to do it
carefully so we don't break HDMI support)


Regards
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
