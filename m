Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA271BE9DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5wa/unEI7Cqd3kFFm5keX66jXZcmulvoMtGaiOesWc=; b=XQGCuYJ1oodCTr
	Y4gy6GSqB6liPXaMUpskCPhIw1svwJept+53xLRXTyX8LaLl2xzJnxv6MkVlRWAl7Rl+9Cy/9o6GQ
	66HYoy2pKsXh+lj2KI7BoZliqfGajneDktseq5949g/tgasbHF3aYqrDLIO8Ex1PsbJXsIzcVTZnb
	bUIwW2TOOMaaBr5CBJMRhpCQh567mGBztGDkEpCPIefqPi5UpOg8g10mu/LRhplPETfecPfed6FOJ
	oM4y8DX2xniOJ7/2dyDrJM7+g4id2rzgsH6inizj6GK52A4aS4poZb8gI2X46qkeC1sY2/U5bwtxU
	j3/jZqs+2/wbugJ0uBRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuG6-00076i-Jz; Wed, 29 Apr 2020 21:28:46 +0000
Received: from mail-oo1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuFr-00076F-Bn
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:28:32 +0000
Received: by mail-oo1-f67.google.com with SMTP id e18so776199oot.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:28:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HTRWOj0KdaKd2TGYE7Fq7HlZd+8gEmeN4MPCIvIIZtM=;
 b=aQi1pf1WzEIQDehYTpKZGS8rJSREIGkJ3kJyBrKjBlmn5NbwyBWEDIOtyJppWW5FGb
 YwQGWx2AJ5Wwyi4b4NnNQBzCxbh+Aq36BHU+H73h2Yuz6qwhlKz04OF0tIatRazQsfZL
 HvgwG8UkNwagPF8CHsts0sfGPVLagesXA2xWEar5wSPm55t15ULFF/hTYFlG3mL8u2aC
 sfmovrRdNpAB6u3NH2U+fVog82NVn7OD6mi7EhvSvLiSxEupyxZ4SJUr/Rkovqhz9FAG
 sG3GYS8fxFKCgqHXtdqsF//SWWcxWKSqGCX5drS6DaRN7xCoB1QMt0Hea20cKPC6YBGF
 s+bQ==
X-Gm-Message-State: AGi0PuYZUZeG149OmJpFdAT/fku3E3UTPNVmkaaYFyMRJgkOt8Pz6ENN
 aYpEjqgnVXRkX4KmYqDDlg==
X-Google-Smtp-Source: APiQypJyegtm8yIG1VEh3Jf2qqLfj1DhUVFSbT8aPGwmC9oX3vWOIOoFvfsiT7wmfOLODUTkdJ9lwQ==
X-Received: by 2002:a4a:7346:: with SMTP id e6mr36162oof.89.1588195710445;
 Wed, 29 Apr 2020 14:28:30 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b6sm678593otp.31.2020.04.29.14.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 14:28:29 -0700 (PDT)
Received: (nullmailer pid 28791 invoked by uid 1000);
 Wed, 29 Apr 2020 21:28:29 -0000
Date: Wed, 29 Apr 2020 16:28:29 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Message-ID: <20200429212829.GB23326@bogus>
References: <1587084091-5941-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587084091-5941-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_142831_401744_0EFBA0A4 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, shawnguo@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 08:41:27AM +0800, Anson Huang wrote:
> Convert the i.MX6Q clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- Force 'interrupts' minItem/maxItem to 2.
> ---
>  .../devicetree/bindings/clock/imx6q-clock.txt      | 41 -------------
>  .../devicetree/bindings/clock/imx6q-clock.yaml     | 67 ++++++++++++++++++++++
>  2 files changed, 67 insertions(+), 41 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.yaml


> diff --git a/Documentation/devicetree/bindings/clock/imx6q-clock.yaml b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> new file mode 100644
> index 0000000..0daf789
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx6q-clock.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0

If NXP is the only author on these, please dual license:

(GPL-2.0-only OR BSD-2-Clause)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
