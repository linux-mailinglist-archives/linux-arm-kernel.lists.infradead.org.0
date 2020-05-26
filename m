Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046FC1E3365
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIEz7dkHF4gkiRWUUpTEqJDi0E5WuwkAFygKvj4gikg=; b=Uot7BnE7gDAsIz
	psSna5nrQfNMvVgHmJee8gwqr4d1WhIR6ozBYDvG6FzeirOe/9JvBBIu4kLtAgLvMsPF09IOfNZtU
	zmnvG/Qj5DFcdhbW1N+aCdcWdcMqrkCrm4oXtdtVdZNWcPwFDMUgEqz3PVWlcHkvwYIzg2nhFTxDK
	iaZ7IOKKl4jX2lOZdmmgV/Aqw0Tz/7vTVGTYVVAvhZCNXkP2YYjdmhzYsqyVhcS9+D0+WZVGJ+KEr
	KOy3cW1bsGeuFvYchUk4P3xPaFzFFZbun3fXL5p9AYBoXtOy3wPEoat4zzMxr47VnXhACrIsizADA
	vkHRJEPI+l7mMs78Cplw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdif6-00075z-Lt; Tue, 26 May 2020 23:07:08 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiev-000758-DT
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 23:06:59 +0000
Received: by mail-io1-f68.google.com with SMTP id d7so23973883ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 16:06:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qM7yTTkdzgug0yRlfKz1J9d+bTctskYEmlS+YtPQUx0=;
 b=rlcTGzL/RlBf8jLYciZQmHzsMRpoTMSa3vODqVN/ATneCW+2iwqQz02P9cwBllEKnf
 h8fgEliMehhVXn3OxipybG7iuDiCL1RbZNWM9oFSLwI3wYqK7VcE7qZzeBR5SLlYDHDf
 c9j+U2xbkqf/8HAE5brAUGxQkZyihA4xJ2AGaC4zbO/3k/DvDh3Uz4Bdahj/qoe7640t
 AzalSIXTUtBGGqrmoF4np48yYUxWZ0LUIe+WTcMEshifdP5pVYyvqX3rginbW+Z4RTSY
 bh0o8UtuWoJxSKr2BLxutnJ4Qz00YWBGI99N/6lCJjP0pXs2GeQUbwzf1JWsp7fl2YdV
 oQRA==
X-Gm-Message-State: AOAM531IhrBKlNlVlDn0q3hKqVbO+lSwvMMIVOqBE5vWupc9JxTcDipP
 yGefYTnfbfX1Fm9GnYcqpQ==
X-Google-Smtp-Source: ABdhPJyliFM4XLARzE8rOlqfLPrXTbRE98ugFuGjKDNnMdP2uaXdGeeFWhb3mLqV1iWF0F+VV0o1kg==
X-Received: by 2002:a02:3406:: with SMTP id x6mr32885jae.24.1590534416486;
 Tue, 26 May 2020 16:06:56 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id l21sm737449ili.8.2020.05.26.16.06.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 16:06:56 -0700 (PDT)
Received: (nullmailer pid 560264 invoked by uid 1000);
 Tue, 26 May 2020 23:06:55 -0000
Date: Tue, 26 May 2020 17:06:55 -0600
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v3 12/13] dt-bindings: clock: Add Marvell MMP Audio Clock
 Controller binding
Message-ID: <20200526230655.GA559890@bogus>
References: <20200519224151.2074597-1-lkundrak@v3.sk>
 <20200519224151.2074597-13-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519224151.2074597-13-lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_160658_608039_762DC8BF 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 00:41:50 +0200, Lubomir Rintel wrote:
> This describes the bindings for a controller that generates master and bit
> clocks for the I2S interface.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---
> Changes since v1:
> - Fix commit message wording
> - Define MMP2_CLK_AUDIO_NR_CLKS
> - Make clock ids start at 0, not 1
> - Fix dt-bindings/clock/marvell,mmp2-audio.h file name
> - Rename node from "clocks" to "clock-controller"
> 
>  .../clock/marvell,mmp2-audio-clock.yaml       | 74 +++++++++++++++++++
>  .../dt-bindings/clock/marvell,mmp2-audio.h    | 10 +++
>  2 files changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/marvell,mmp2-audio-clock.yaml
>  create mode 100644 include/dt-bindings/clock/marvell,mmp2-audio.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
