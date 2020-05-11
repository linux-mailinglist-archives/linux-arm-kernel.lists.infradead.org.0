Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149971CE352
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UepyGlM9S9uRThd479bV9xQdK80wCqWgb3C17N2xlg=; b=KCvuboPQtTXPoo
	tUFaQWNY3SCdJKRPJkJe19X6ypG5hh8RD6FumcFxmqpjZMwDQqK6OnvZUShKaebJ7YPLJVT+8FH+o
	6eg7yqGq7Ms+0XfSLX60adilkSKgM4xKaRMKx3zrwqs9x+O0I1dYFVs+hVd0MQmD2ZiLJRQs5lKGl
	Qcez9urrvPxvlTk7nc+P66jH5iiWEB03yuXenxQHALqr9mKR20vx0s0DdK02fUJFsoY/W09N2rDFs
	Pif3aSoWK1bf65MtlVDQ5DgcuC6acEOu4yLOZYTgCzEeR6g2hyquBdi20PcMbGY9XgOpKSrfr38H0
	rgWwV9pO69x+VwiHrWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDaL-00085g-4h; Mon, 11 May 2020 18:55:29 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDa1-0007FM-6U
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:55:12 +0000
Received: by mail-oi1-f193.google.com with SMTP id c124so15818088oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:55:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=15fqUTBbGkCYYgO6aQ2//ab8dhylYn7tEDS1rTwHFVM=;
 b=Vo3r8r8+i4Zzum6irIXt6iwHq47XPiJiX1Kjle3GrcdJEuR4fZ0fQcPowbYOzMxxMA
 EfNcA+IYHO3GUmOEIMNC8tfwOhA9GTQMNXl1KKiUdiA4p/Tqu3HImx9Fulcuo5k7MY9O
 UMVcoiaU2Zah38aGZcqnVvrXrMQT2aonD2dnrN/EOv5g2NaivNWYYH3Mly5gg9ROQoNE
 iq34xHm5GOmKyo8S11Wq3vHIXAbd2ZDpheOn0ZjBfkCW5Rm18FPLt+ezd+rN/hSMPhmP
 mb0M0MXnv6oBrlzghWCkee6nErC/7D/b88KOkLRqyx1rQdWXBuQkKrB9UHoqBOyOprw/
 xtcw==
X-Gm-Message-State: AGi0PuZ4Et5IACU6YrEZycZgZHvq8y2HIzpsnVu9TDbkFT90q/Q9O8wh
 eTZ6I95G4Dqw3zDJqTfJiw==
X-Google-Smtp-Source: APiQypJUK52Qvz/hH1CBnkScZtXZIATgQ5sOjkBcv7OmmrpsWSUvPZiWoAXmBcreoTsVSEWK7XfpbA==
X-Received: by 2002:aca:3b41:: with SMTP id i62mr2758590oia.101.1589223308498; 
 Mon, 11 May 2020 11:55:08 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f16sm4749433oib.25.2020.05.11.11.55.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:55:07 -0700 (PDT)
Received: (nullmailer pid 31916 invoked by uid 1000);
 Mon, 11 May 2020 18:55:07 -0000
Date: Mon, 11 May 2020 13:55:07 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: gpio: Convert i.MX to json-schema
Message-ID: <20200511185507.GA31675@bogus>
References: <1587477823-21036-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587477823-21036-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_115509_294300_54842A7D 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, bgolaszewski@baylibre.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 22:03:43 +0800, Anson Huang wrote:
> Convert the i.MX GPIO binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- improve compatible;
> 	- drop clocks description.
> ---
>  .../devicetree/bindings/gpio/fsl-imx-gpio.txt      | 35 -----------
>  .../devicetree/bindings/gpio/fsl-imx-gpio.yaml     | 68 ++++++++++++++++++++++
>  2 files changed, 68 insertions(+), 35 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt
>  create mode 100644 Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
