Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E254E1EA734
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKSVSL0PU1Zr+ulo70yy/7I4BPGMFGuacfYEHCmP88Q=; b=ts6GEctmRtjBLA
	20Ym3PHI/qhtyuy/CMg5o68vx29a1kBg1kfyEDbRXjfd28QMXVnoZnw2/hvLLqPCs1LSOlvzPbB7k
	fSf/DSlhS6jwEloysTjG2MegriMrYUR652Fxe4gw0oX8fAgQn6dHqBvZuzDlRX7jeJx/3IpCXUFYK
	5LU8xZjMvtFCZpyk8eKEH7VvnAaUQpe4jIeE/lzO+Ux//RLTbdSvTOEA7TsNaYYLO6sN+ZbdQgGay
	jjJ78wDt6TBVvGP/nu+gK7qlZrTH1LHUOxPiT3K872N42pTFv7LcdZXEejdhE6VAjORmhdjJhzbYn
	0LY6/DgFOHOQpXIGjTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmbF-0003y3-NU; Mon, 01 Jun 2020 15:43:41 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfmb9-0003xh-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 15:43:36 +0000
Received: by mail-il1-f196.google.com with SMTP id p5so8705016ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 08:43:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2Cv2OpMq6lgoXWKHII03pxl97bK7u9ytVqckOaVbDuk=;
 b=JpHGNdE/lR7Ih92BCyqPgk0f6c5tM3kji6qGzmbHQk8Dhfy3WzWFlaca7p0prG2Wqv
 T2TgQmpYsVk/hfTOopYETyKQ8ZSSYmUJLtTqYPXv15xC1bHMKG/kXUrWsHow9Bywcb06
 LgbgmJz64DSvQ4osRtL0w1VsOed08r4Vucs0gvii5cPTKFr77rWRURsM12R76bXVO5qG
 MR/OFh/1fxdPktfcEaxWvNnodV+I/TvLfkn+LDi8lQEdsi4CVn6+ySehziZrm8WHDKqY
 QRjVHlsHE8zP3fs5iC3jLWN+invJI2cS2d96Ke7ThxE+Smhe5eXXq4iZLwK5b5d2k+YO
 NuYw==
X-Gm-Message-State: AOAM531Z5+UM64HW6i6bBguZolLQDPDn+VATNrVn/Kkli7JBem7Nnvn9
 pABtnc2WGHSrq/oOBMTCKQ==
X-Google-Smtp-Source: ABdhPJy5xOF1cP/A25OBdRb23Fv9bPIVH9PkC8RQAXi+0x6Lk0dnBX72tppfHijJCcDFFxHT3jWqKw==
X-Received: by 2002:a92:b00e:: with SMTP id x14mr16153308ilh.219.1591026214135; 
 Mon, 01 Jun 2020 08:43:34 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id o28sm9470510ili.12.2020.06.01.08.43.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 08:43:33 -0700 (PDT)
Received: (nullmailer pid 963387 invoked by uid 1000);
 Mon, 01 Jun 2020 15:43:30 -0000
Date: Mon, 1 Jun 2020 09:43:30 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: power: Convert imx gpc to json-schema
Message-ID: <20200601154330.GA963331@bogus>
References: <1590998803-29191-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590998803-29191-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_084335_408139_CBB68103 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, p.zabel@pengutronix.de,
 sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, krzk@kernel.org, andrew.smirnov@gmail.com,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 01 Jun 2020 16:06:42 +0800, Anson Huang wrote:
> Convert the i.MX GPC binding to DT schema format using json-schema
> 
> >From latest reference manual, there is actually ONLY 1 interrupt for
> GPC, so the additional GPC interrupt is removed.
> 
> Consumer's example is also removed since it is NOT that useful.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/power/fsl,imx-gpc.txt      |  91 ---------------
>  .../devicetree/bindings/power/fsl,imx-gpc.yaml     | 124 +++++++++++++++++++++
>  2 files changed, 124 insertions(+), 91 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
>  create mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
