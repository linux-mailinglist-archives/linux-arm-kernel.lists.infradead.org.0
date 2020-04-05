Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A1B19E85D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 03:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beXkpl46jgnBzqc9/J+pttmtVCnRZRNDv9C3cPv8W6w=; b=FN/7UAVw1Wpj35
	BdZmjdXzV7DnQWQdFWFu6+x3dO3D4juJ0D6nkmImOBzxV9P6bi8IYMcrmYk9cBC2tiHJX6fyKcRY4
	TJ6Z/UBpNsVlRh3bGEfzAWGBOwhiGuzDMkevTqEw749AOMU76JbFwF1WGnapoan0b7FFoPnpCH9HM
	mI2E6RX93VV85kfp201UJI8b6yMM/6BCeOyEiVckcNaqJHiAMTDVH5UystZH+6puSfjUU/s6F/9mL
	lK2WlFW97OduicxkeaHjmPYFnjWK4rfb0AQ/9cq0+NSPvF2lzZe6j60yXMiEidKsjjJtqft55tko5
	TjedmhU+rmwHfdW6fCaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKuNa-0002n2-Bi; Sun, 05 Apr 2020 01:47:18 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKuNT-0002mQ-QC
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 01:47:13 +0000
Received: by mail-io1-f65.google.com with SMTP id i3so11891643ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 18:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xyeh33k5wDcGZSxdkpLIkuCmJmilM6XMzgA6pBlKGBI=;
 b=TrzH9Fd3us7jHdwhWmC35Bc44kKj/hv93+d9wVmTQDxXB3MYHDxktjOPTRz/cO63WW
 wyrVM6tePiMcDqaJN4h6pEtizv3/HPn3loZp3ZIwpFMEL+YZOcMtqwH39ZeV34jWAU4u
 CwLbJ33tCqZF7PLT2p9J/v+LVVE295rJe5HvqiOUFv8/JqquZeaR2jj6qEr15DA9z3ix
 /R1cAtsB6m2Va9zWkI5y/rIS68+3LeR+dfGiIGhFDVfceGS04wTlCwb/KOkWkzYVC9Uk
 1+Lv4OcGNClhxl+vgjPjiJ5qEEhA37edylPXx3juMBlZ8CHys63O7axR4bGQvMO4GBlX
 G3tg==
X-Gm-Message-State: AGi0PuaWs09QUeccjCOkQ+4KGsjy0zqFKjgouv1SFJXoiCwB/oqqe7Vj
 h2ERTw3cLV2dslHrl314jg==
X-Google-Smtp-Source: APiQypI6OmYDV9zjOQGePspkdsj+RGnavHnK0g4RmrH4TOnA+zHnxAqvzSM6z9mLmqqbqCfhHNPFtA==
X-Received: by 2002:a02:70d8:: with SMTP id f207mr668879jac.83.1586051230249; 
 Sat, 04 Apr 2020 18:47:10 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l70sm4473080ili.81.2020.04.04.18.47.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 18:47:09 -0700 (PDT)
Received: (nullmailer pid 12218 invoked by uid 1000);
 Sun, 05 Apr 2020 01:47:06 -0000
Date: Sat, 4 Apr 2020 19:47:06 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: fsl-scu: Add imx8dxl pinctrl support
Message-ID: <20200405014706.GA12185@bogus>
References: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_184711_848656_FB1B3B08 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: peng.fan@nxp.com, geert+renesas@glider.be, catalin.marinas@arm.com,
 linus.walleij@linaro.org, stefan@agner.ch, bjorn.andersson@linaro.org,
 festevam@gmail.com, will@kernel.org, krzk@kernel.org,
 marcin.juszkiewicz@linaro.org, Linux-imx@nxp.com, linux@roeck-us.net,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, dinguyen@kernel.org, kernel@pengutronix.de, olof@lixom.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 27 Mar 2020 18:55:57 +0800, Anson Huang wrote:
> Update binding doc to support i.MX8DXL pinctrl.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
