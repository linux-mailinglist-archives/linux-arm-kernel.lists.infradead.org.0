Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911C61E329F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMJtbh+ZB+oCpQUnpIp53ZNenbVBqYR+/421MFJ+gn8=; b=mul6sHNnKdRj4r
	Oy01gq/m6IhsIJTC548pZYYC8Oal0qzm+OYbXZx6e0yr33o96MH4xFE34JvHwAwf/5Ay+d8TjKFht
	tMiCd+nHyeljbW3VekGkM8ffySPVfB9xLbVTHQAdCh0VKW7GhlvJCGKnQ/pc8UC8Odw7jZ5VYew6q
	xWzdZiaSc9cF+2GjotQtCxEcoQbmFIH3z6P5q/KShHhq8RSMhayNeetmCJ2suhaH6botb4X1qbSTe
	mjAEpuBgmPE/ZOO8yODKH2WUtauQdEgBnQnSGC7G2YmBDPYisynhMdmuOFSI8kVYceNEBY6AWU7NT
	qVRd5dsC4S4wXzZhkcFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdi6h-0007So-Hk; Tue, 26 May 2020 22:31:35 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdi6G-0007L0-JQ
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:31:09 +0000
Received: by mail-il1-f195.google.com with SMTP id 18so22184611iln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:31:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jno/kep3oj5YBZPFODsYD/SXlYW3A5CDDo6z2CWVUzQ=;
 b=TA++V1Zidh1eMQhI6fPn81/B6W7t4E7LvkpOjU3PduKIidV3y3HwTI0dvR4jmdruK5
 gJyRhXcK0+mDJuTu+R6j/semuTpjeysbWs5OJpdc1fMXYN6IRhZFhWHJB3UuITZgLqdI
 /IEBfWlS0VknYUedkQ9QCuYpA4J1IXScJGhTZlUyjAj5qmOcU/ZVPzH/6bnchDBdQ5/C
 eys2iJogUkiw6m/XNj+pTji3bQREtOkE0Kg1e+oLYU72F7dr/cUoos3Gn6QPv2OqiKgu
 c6UGkM2Cb+QHPqO9b+bsPiuEwqRM94l5ZhUcdCi1lstTAv8p/QE2vzQMSZUBlWVKdkCG
 mddg==
X-Gm-Message-State: AOAM533jCrnZVTqaLyZzrPx0tA2u4rSTeuuBjtVg1Wg2NUMPSqol9i4Y
 NxUtyV2LacdJ0EHx5Uxa32Nqae0=
X-Google-Smtp-Source: ABdhPJzDTOGPYvP95JmznCqzCC8Rq/MnIJTDBgJBFtlwvWZI6SwWtDqToRLT+YSL15TAz3aexFJW0Q==
X-Received: by 2002:a92:de10:: with SMTP id x16mr384552ilm.6.1590532267362;
 Tue, 26 May 2020 15:31:07 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j90sm655477ilg.70.2020.05.26.15.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:31:06 -0700 (PDT)
Received: (nullmailer pid 503474 invoked by uid 1000);
 Tue, 26 May 2020 22:31:05 -0000
Date: Tue, 26 May 2020 16:31:05 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 3/5] dt-bindings: clock: Convert i.MX6SL clock to
 json-schema
Message-ID: <20200526223105.GA503419@bogus>
References: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
 <1589328684-1397-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589328684-1397-4-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_153108_651541_AB757AC3 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 shawnguo@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 08:11:22 +0800, Anson Huang wrote:
> Convert the i.MX6SL clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
> Changes since V4:
> 	- add descriptions for interrupts and each item of it.
> ---
>  .../devicetree/bindings/clock/imx6sl-clock.txt     | 10 -----
>  .../devicetree/bindings/clock/imx6sl-clock.yaml    | 48 ++++++++++++++++++++++
>  2 files changed, 48 insertions(+), 10 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6sl-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6sl-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
