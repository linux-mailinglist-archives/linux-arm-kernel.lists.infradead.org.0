Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39C01446CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAT5lUCwVBjvVvfLlW9/O4IZhhunwaDBeHehXFhD/nM=; b=EZE6l7WGdOZIkM
	AkjAq5XVRm+MKlA/9OxdRIOZbkGfk/nWkJzmMJ332jSfPXD723abtkZ3DVGfZfxtzT521gJ2seaEm
	R4VZlPqeUGmKXMOHRPbKTrWvOvqQyuJIckg1qzdnbKr72KdKynVQAGy9bZYdE7a9r9nx9BJT90UCi
	vdw7CR8JNvO/kdIBhHXaxaDZsHRLKCkKKNJIKDYIQM5yp2vnq6QDFQtoUpptjR32Zj433ubKHhAS3
	INUQj2XAkkmGBD+qJCPJKmQCTrUxL0rNnzi57Pnup0SKAGzvha9MHmsjeTo9bNqk4zgPRpGAtXZdV
	pYe/Yk7cVIyBdZFLiOvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1aa-0005v6-31; Tue, 21 Jan 2020 22:01:36 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1a8-0005cx-7E
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:01:14 +0000
Received: by mail-oi1-f196.google.com with SMTP id k4so4178744oik.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:01:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0Ir79vLg3FoHaHwlmcCw656rkZCmfJ7cHN0A8fbeWIs=;
 b=taUyiY5BncBIeA6yVwjkKN3XZkDjTkb4ekC48BN6u81X2AFknTuGQU4/z88360nY9I
 5TZB+jECm3RftPPO7eNHbjYg3FBSGVozqymYJHCsT0qBT4lFtvTJF71eBJOco7qMm0LM
 MXrG1Y9TtC5nqQkiZ19uoeO2owonsgZHbwXWC/jsi60YBeNGuYexIdqvEVT8M9a4xJ5/
 ClctyhJWOFoNLg/9g8nqAQbo8oq+w+gIA3PeNGXpRAgS2UJlz5nCbz+NFEUk06yGB0Oh
 oYi2aAgo65LtGwCLaf8O/PEFNaZanQ9RRT8dKJ3X4fmcFAee9aFbKP8LXh0ZhairK8Z1
 2s/g==
X-Gm-Message-State: APjAAAW9GCq6xeIaOBiXEn+mp2VbAscoEu1sZyNj1MvaVpbVHqXUcSof
 bVb5IH1Zq/Gz8mvnd40jJw==
X-Google-Smtp-Source: APXvYqw+acre/6tfGHQEKYTUqEH5WDUyB6vxhmpXiYsDnWp+R0PRuG7hQ7iZAnQdG7hRP9jTrhc9WQ==
X-Received: by 2002:aca:4fc2:: with SMTP id d185mr4696608oib.33.1579644067350; 
 Tue, 21 Jan 2020 14:01:07 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n17sm13942596otq.46.2020.01.21.14.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:01:06 -0800 (PST)
Received: (nullmailer pid 14562 invoked by uid 1000);
 Tue, 21 Jan 2020 22:01:05 -0000
Date: Tue, 21 Jan 2020 16:01:05 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/3] dt-bindings: clock: Convert i.MX8MM to json-schema
Message-ID: <20200121220105.GA14466@bogus>
References: <1578965167-31588-1-git-send-email-Anson.Huang@nxp.com>
 <1578965167-31588-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578965167-31588-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_140108_287274_87B3E50F 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 festevam@gmail.com, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 09:26:06 +0800, Anson Huang wrote:
> Convert the i.MX8MM clock binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  .../devicetree/bindings/clock/imx8mm-clock.txt     | 29 ---------
>  .../devicetree/bindings/clock/imx8mm-clock.yaml    | 68 ++++++++++++++++++++++
>  2 files changed, 68 insertions(+), 29 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx8mm-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mm-clock.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
