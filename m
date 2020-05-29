Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CE11E72DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsKR4URlPeXR0uSx4F2bXcKI8ZM+indzOtZoWY+hd3c=; b=hcqClUa0nOR3Ym
	7fIPIwEvK/OZfOC6RxEaIamZa6lHq6ZiEihi0w0JcK8TzqfSUmw6Er2OqkA3tUz2J/mopoRr3ocel
	EkWP+F7h8aa5I8wNWzg9OujWKipwvGdVusEo1BQ0oeaRUH8OM7ieJpEn5Uq8ueoFrr5qvzCJEfm2T
	1t7FYpRroAC3F9BjW4qje6wTGekibV3IH3KQ3qgEmvmRmp/t0CEsUteFFzmiq2bT3wptpK+icqzlI
	plfgQTAbjlWnntJpECJf6SmPWTX/ZCkRIv7AMzTF5rzXfu9HAejbGitct1FsY0Kn7os/kKfocxgiC
	98lV+smTAXWB/TWrtKQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV95-0004eB-Ec; Fri, 29 May 2020 02:53:19 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV8v-0004dk-Rc
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:53:10 +0000
Received: by mail-io1-f66.google.com with SMTP id p20so755763iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:53:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=53aepKY1zAZQmqd41i19Tw6DwDH0Gy4Ao8Fm9eGoQlI=;
 b=tiwJkai6QssmOoyd5v2N0A7So+cgtJtoH4i+ltcqBtZz9s4Z5/IuhJ0P7O++cMiLyi
 XIbwSF9FhVC+YmaYLiB1SylK7ZTz23CyFpXDQiD2Djmr87epXEsES4mpWXoyXEfxCTJu
 i7UsLmzDudHLkWxvQ3x381qlqNPrOQIew0uwjQHB7wvA6DL6jjFocYmhdCbgxFiugF1P
 QbZVnLCOSni8kpMLoy+q6C9OmldYwcB8aVE/f0pI7XJW0ZsZORCX4l7wQB4gr1QQS1Yo
 6UQVgCvgJDZ5QfedeKTRcrb5UGwBCAVlY+pcmC0hh6XbNlfGuth1abJN/JjH5Y5PooCl
 BO/A==
X-Gm-Message-State: AOAM530e12nwEG/gFXOko/QgWDyI8bfXicGC53U6mDJQSQTdFMDzjI4t
 bRw8NoWBLkZOk3X825Ti7g==
X-Google-Smtp-Source: ABdhPJz+oX8+Iq09jc/u0MUOvfOxgJw04iEARivRxjOL/fXGKu6Gz38lnbyZ9D8N6KB/loOrzOJlaQ==
X-Received: by 2002:a05:6602:2dcd:: with SMTP id
 l13mr4978701iow.203.1590720789224; 
 Thu, 28 May 2020 19:53:09 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id k17sm2349772ios.1.2020.05.28.19.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:53:08 -0700 (PDT)
Received: (nullmailer pid 1178255 invoked by uid 1000);
 Fri, 29 May 2020 02:53:07 -0000
Date: Thu, 28 May 2020 20:53:07 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 7/9] dt-bindings: clock: Convert i.MX25 clock to
 json-schema
Message-ID: <20200529025307.GA1177858@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-8-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-8-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_195309_891638_952828A0 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, shc_work@mail.ru, sboyd@kernel.org,
 shawnguo@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:57 +0800, Anson Huang wrote:
> Convert the i.MX25 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx25-clock.txt      | 160 ------------------
>  .../devicetree/bindings/clock/imx25-clock.yaml     | 184 +++++++++++++++++++++
>  2 files changed, 184 insertions(+), 160 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx25-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx25-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
