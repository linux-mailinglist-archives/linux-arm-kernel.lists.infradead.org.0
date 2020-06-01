Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B721EA735
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6B0OTigYMwfYgVd+a52HRYeH5lcjsZ3m6Vtd9Y8loQ=; b=LiG3MNnteW0qJI
	ugryiu235aD4ZLBb0WoLHB0ZH37HvaNPPhZGgs8MNkKH2t+kktYsK3+dgDOn7TFwqCVehgb77ix9A
	mSYIifMFkTkiSACDoChkRQFWQNOLGp82031kqk0gseHY0Hxgm/cWKwkbGrRWOu+p8ZQetyc2+BY/u
	eu2BxxgRd9BQ0rY6igegYB0e+Bz7Zobc/KeGW3DNRz9vhfJFr+446yp3gSmYXJkYT2T+zRBix7foa
	1Fb0gOPis31NvZ21I1Kuf3bZAp/SLdNdoojOHoKtqXKxSNTJ+7Jp0xXLH9pBbVpN042pUXPnTKt/W
	BBK1/KeJrehzg8FSvgUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmbh-0004EW-Nx; Mon, 01 Jun 2020 15:44:09 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfmba-0004Dw-Fe
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 15:44:03 +0000
Received: by mail-io1-f66.google.com with SMTP id m81so7399266ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 08:44:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tPG61Iob6GWwH5KaiKNOOzQS6HPkHBEF1ZIAaOyNuMc=;
 b=Paz5k0Xul9V2RJMklAK/n/c3w7DsP3uTVICZt1Ow3dwT3X9QXIhAvouNI6N6UjekvL
 N4wv1+OVFokoQCnt4AngPtAY6+mnfwkOpesmZyzHiQ9ixfB4QXWj7xFqQNUMwVm+gbn2
 hr2DrfkO7wy9aTMjoMAa72DiBZFjAYwbnxkmKMcvOCcKwtgtXe9qXoEx62/IvQqwFIhx
 dWWRV5pulyO2Mqpu6LkKJKO0DPi5lLIrF5uF6lJqFuSmq9KOFpYlu/SUzlXoCCfjUNN/
 0KCEDRhkgs7Kc4WO+pHn9oGXD+sSpiu80sCk9z3nGRbjZICQPMrpTU7zRWFxIlpLdKc2
 OmNA==
X-Gm-Message-State: AOAM5312ggliX51LasM0eMm6pv+2LdrrO2r6L9oqAwu+FNjkBTabsnT+
 VspcLcPsxTIU/zuHN8DcWA==
X-Google-Smtp-Source: ABdhPJx/MOdbvba8QtwcxyGL+i4Oe2Hv4WWqEamLRvnLmSR6Lhmk4XJ0vyajak++iZFRI8G+5suarA==
X-Received: by 2002:a02:c8d2:: with SMTP id q18mr21899465jao.127.1591026241572; 
 Mon, 01 Jun 2020 08:44:01 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id 18sm7776643ion.17.2020.06.01.08.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 08:44:01 -0700 (PDT)
Received: (nullmailer pid 964289 invoked by uid 1000);
 Mon, 01 Jun 2020 15:43:59 -0000
Date: Mon, 1 Jun 2020 09:43:59 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/2] dt-bindings: power: Convert imx gpcv2 to json-schema
Message-ID: <20200601154359.GA963841@bogus>
References: <1590998803-29191-1-git-send-email-Anson.Huang@nxp.com>
 <1590998803-29191-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590998803-29191-2-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_084402_521894_E0CBB319 
X-CRM114-Status: GOOD (  11.01  )
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
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, kernel@pengutronix.de,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, krzk@kernel.org, sboyd@kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, p.zabel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 01 Jun 2020 16:06:43 +0800, Anson Huang wrote:
> Convert the i.MX GPCv2 binding to DT schema format using json-schema
> 
> Example is updated based on latest DT file and consumer's example is
> removed since it is NOT that useful.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/power/fsl,imx-gpcv2.txt    |  77 ---------------
>  .../devicetree/bindings/power/fsl,imx-gpcv2.yaml   | 108 +++++++++++++++++++++
>  2 files changed, 108 insertions(+), 77 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
>  create mode 100644 Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
