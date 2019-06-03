Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B931E3312D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:35:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RphhBninlXm0poP4g4X0DLKBfRt1Bll4uCXFC8UK/3M=; b=OhRShsx2Lc3ezU
	d/r368OXnn+IHcxBh8VQM6mzYjHv4erVLm/LVzZ6lREebv+4rew905LAyX5Xrpc/8FUKClEX5AnNa
	ctiPJJn0mHd0yfcn3Os+MAG2SybrIVg0KCJGst4L3okVO4oGQPvCVezpmubGN/zr4t5STNQR5JF/H
	YRxYASYED6zVHOZuulcIZWDg/ZFfNbmmfXHPSviv7N1QLt/+QM9SWm+z5JP+sMvSLEaFUBlpx4CV4
	Wd0vmMW9+j5kOE59iX61vd/fZpXdh4DrE8blHBnDr96U4wqfIL08h/joCG7XdQ694wbEZ/3fPmm7V
	VLou8ONEl/xiF2hOiN2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXn71-0000d3-E2; Mon, 03 Jun 2019 13:34:55 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXn6u-0000c6-Vr
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 13:34:50 +0000
Received: by mail-ua1-x943.google.com with SMTP id v18so468973uad.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 06:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iTOR4s19inw6YQwhxy0CXAQucgvVed2kOMDp3ETSJq0=;
 b=Q+TCX9NGStBhrVViNBATbIVxpQv07Yf7esHbsRxw3NSascNQjVpfBlu2e0bCTx0nGM
 5tHxgVnccsILnUVnlCwpx+c1VUPfbPCLxaOICv7rBmWkVVJLWDMEYiNQyVPsrcgN9V5m
 JcT2mYYjie7daqe76DS8wtZA6sD1NEx9ExP/H/VrFeD5NdB6kSiF/F2K8Vl35BuOjrNs
 O2fPxlZU36VMsrYbd3aK3IxSeErRwGSv+x15ANfj17VPlmQ9ymL4w3aG+flUSBIbxqjo
 AvsP/WSWMdZUZ58OorFH6PFRpTW77VxU4OZXSTeF1GrXowttjGcx3aIZB9K0+PHBxHw8
 U8iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iTOR4s19inw6YQwhxy0CXAQucgvVed2kOMDp3ETSJq0=;
 b=ojIj36TlUfyyupbFPceBunLRXKsMhIBi4twgfPLtQ4o92mCnFNybcluB6TBrtFt0GQ
 d2lgFWeXjOTligEcrxLU9JcPiymWqIHvv9aDnsYqgP8Lrh2X/6fmEoGvRvr8c4kLk3IP
 5PZmbVUjTJcm2X8Te6b1HZgx9qTxAr1YoosRFcwqw9hth77sl9stkDps0w0YGKz/NBeQ
 drEC9XCWsN/VbpqdFLWUg0F/GEG/Ca4nR+qR0eY3QbWNY4Qa8+0TQFyL5qf56tsmcAuP
 Tv2mgUyc4nRQa470RQcnIc2KAI50Zgmr/Ah4W3fLSU4DuJL+E8xdkrCRKmvaaHYq36Yc
 7p6w==
X-Gm-Message-State: APjAAAWxU0qdwDHR/zSBjOSnbEMiIz0Dnx5O4dU2U7zogb68dr9I/7bE
 /w/a3AEZoovz3bsy7H6/EOVm+22LZ4JH/mmlW615lA==
X-Google-Smtp-Source: APXvYqxp3yy8DxN4JfsvUu4iGuu38aEcdR6YIg+B2abb33POOSHXMVT6lknZdscjBCk3bsp7Vw5g5SKYGlgbDyo2QVo=
X-Received: by 2002:ab0:5608:: with SMTP id y8mr12658948uaa.129.1559568886891; 
 Mon, 03 Jun 2019 06:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <ee4ad0e7e131e4d639dbf6bd25ad93726648ce1c.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <ee4ad0e7e131e4d639dbf6bd25ad93726648ce1c.1558346019.git.baolin.wang@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 3 Jun 2019 15:34:10 +0200
Message-ID: <CAPDyKFrWiG3KJad+L3NOQ-dC2XnBM-8mQGVEsVB_Qg0ACTfVag@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: mmc: sprd: Add another optional clock
 documentation
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_063449_028334_A0027EE2 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 May 2019 at 12:12, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> For some Spreadtrum platforms like SC9860 platform, we should enable another
> gate clock '2x_enable' to make the SD host controller work well. Thus add
> documentation for this optional clock.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> ---
>  .../devicetree/bindings/mmc/sdhci-sprd.txt         |    1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> index 45c9978..a285c77 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
> @@ -14,6 +14,7 @@ Required properties:
>  - clock-names: Should contain the following:
>         "sdio" - SDIO source clock (required)
>         "enable" - gate clock which used for enabling/disabling the device (required)
> +       "2x_enable" - gate clock controlling the device for some special platforms (optional)

This is a bit vague, could you please elaborate (and fold in that
information to the doc) on what kind of clock this is?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
