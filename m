Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8FD1E707D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 01:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtMVfIe59F1NMcFJiIzbc45KCvSxZFLtwyTYQIHYTQg=; b=A+IUf5XunmEYWB
	kKYfOmoeQdIcKtzrfnNbAvORz5w3+VxKy2sIYKfKHVG3v/4EF5PDRHJYZUtZy251Bd9rAhTRpMs54
	qWwRlZkofqjzBq5L2UZkFu92iqvhbS0oMhlwMeEhOfwn6d2Heb+pAohpftRz+XAnRmsxfq275r+LN
	GEpYDjNlVVF/X5gzPJ122shkpaqx55MDmBgsBSH5iLuEgab8m97YWwtMK5/c/d5zFYegED01BBc1k
	ieYx6LbzxZF3FRGrsa6pd0gFdqVVGNLTjo+U4ABL/0ezYm6daHpmpJLbAzZPSRHldqTLhxObZutDa
	Wpz4pXEdUJ19JQqwzTig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeS8L-00023L-86; Thu, 28 May 2020 23:40:21 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeS88-0000xC-1X; Thu, 28 May 2020 23:40:09 +0000
Received: by mail-io1-f65.google.com with SMTP id c8so416994iob.6;
 Thu, 28 May 2020 16:40:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=i4Y4lPDTpEphgjWEfCEtO/CC6ipcnlKyUlBGCBDZA24=;
 b=C7exfhhFpkTi9olRDDK1xCu40ALwnlq7guEhu5G3X9R9iBqEEagWSKP917Bmwc067U
 ZOnGu5zwPQX6iBXV1xsy7crnvJ6h9CNq4rxMiqKl7cprqdqDaYVyyS5Nh8PtwgUkXej1
 q6kXuLBS78B94+1RjRnCBhv+ZAxvsfvdvMRdCjy4n6HCGV1vGwy0whu7vNCFBNG13T9g
 KIDMvUfi73dq0hw/LaCDWo52oD0W/WS5G5zgQO69kovmPlxx6VjxVKvzCZoAI67KLPPM
 RtRMiwCsfl1N9a1WZNqMnRYOKlBdsFtRUmy2fX8QDcACItIg2qzNsXI8RgoyJ0bIXHWm
 Ya7A==
X-Gm-Message-State: AOAM533tuBF5LySCU2QrNTw02L4qZapYyS5mXKH4FIXnEP/EdzpVX60t
 zsEsT+8vuRxpNvdFpULDLw==
X-Google-Smtp-Source: ABdhPJy8BW9eTIOl/ecKA/VdytHdPNFmsc9AalD1NorbWXq7ZqfpCfTOjU89LHuDt9aD//1FAEZypQ==
X-Received: by 2002:a6b:d311:: with SMTP id s17mr4429829iob.18.1590709206102; 
 Thu, 28 May 2020 16:40:06 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id i2sm3111578ion.35.2020.05.28.16.40.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 16:40:05 -0700 (PDT)
Received: (nullmailer pid 891407 invoked by uid 1000);
 Thu, 28 May 2020 23:40:04 -0000
Date: Thu, 28 May 2020 17:40:04 -0600
From: Rob Herring <robh@kernel.org>
To: matthias.bgg@kernel.org
Subject: Re: [PATCH] dt-bindings: dma: uart: mtk: fix example
Message-ID: <20200528234004.GA891377@bogus>
References: <20200523201530.18225-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523201530.18225-1-matthias.bgg@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_164008_105079_238C6C4F 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 23 May 2020 22:15:30 +0200, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The binding example is missing the fallback compatible.
> This is needed as the driver only matches against mt6577.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
