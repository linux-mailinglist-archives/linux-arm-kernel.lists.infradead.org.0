Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC34F08FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJwSO2pvqQHaSVQx1xAhthpm7c+IaWjlnfGivq8Uj6c=; b=gMOu8luF8VwXVy
	fjQjp/4FpVAzXdWcEXfilz6hhmlvi3IkWrFKDbZCIRWO/zaijjV223fSPHqBimSRMg57TPD39s6Eo
	UxyGNkogOymH8jRmr3ywtVavg1zs2C7REvU6uOVNuNHhq5sYZ48HYUphVRZoL4A/mji8jGaQ8dmyz
	3VtsPCiOZ6rWOx80RfEleyzKYje7vI2/IrSnVOt4fmzbjDZ725elz78SA0jTQyrVgR7GMCTjyiPbL
	YsbHN+GYZ26G41rf1Cy53oZfIo5FV8QIH5+mB8xWrpMcgNSBdHSjCVywoLYhB1WfT/oWwpwqctoFz
	/5ADTbis8JKczMl1ufFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6vy-0007i9-77; Tue, 05 Nov 2019 22:04:18 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6vr-0007hi-71
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:04:12 +0000
Received: by mail-ot1-f68.google.com with SMTP id e17so10520867otk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:04:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CZ2D2tQY2XYxt9UiuyFFNh/aMpMyVl8ybiw5lOJ9UsM=;
 b=gORFC9qeX83p3hy2/8XCdr2SczLMq27isVfNnw7EZmZwxF7MTJha8v86AGSZ3icpr0
 JYj/KAc9yKnYxE3mDd++sDbc/DMG+QyVd+I2uhYzTFBvG9tYiHaFf7g0Q7HvWKpYWduD
 7f7z3gY9hmD6qn6JvbvNK/5wuYNeApwbODMWJC+uMQAvBOeP5tlS9Vf/kuILJeUFDR7n
 I1QXzP8lIkUqL+fHBvFe9Ot6QnaAYLzPdlDeDr/DtxKi1nXaO6hbBtxGg6sw0MVf90qd
 IIud5peQmjfcko0vNB5bqehs1Z9CjFCZqyeOEc7sbXnZlnwj4WCBhYM5GsPldCxgEnhj
 lzHQ==
X-Gm-Message-State: APjAAAWueUhXfAi04FgMq6BEjAze6IgMmpmFtlu592gJbac3lwHQ6kDw
 l+xFISBGgDsu/GPFxTat+0ks4Fo=
X-Google-Smtp-Source: APXvYqxl9rK6tAOrYlktMp70iCJFHEU0MCT4jSTOGFY9S41OUYWigXQsydbUcc92xUHHvcx/LC/+vQ==
X-Received: by 2002:a9d:634d:: with SMTP id y13mr24705915otk.202.1572991449843; 
 Tue, 05 Nov 2019 14:04:09 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e93sm6812630otb.60.2019.11.05.14.04.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 14:04:09 -0800 (PST)
Date: Tue, 5 Nov 2019 16:04:08 -0600
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: leds: Document commonly used LED
 triggers
Message-ID: <20191105220408.GA555@bogus>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030090124.24900-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_140411_256203_9C7DFB38 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dan Murphy <dmurphy@ti.com>, devicetree@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 02:31:21PM +0530, Manivannan Sadhasivam wrote:
> This commit documents the LED triggers used commonly in the SoCs. Not
> all triggers are documented as some of them are very application specific.
> Most of the triggers documented here are currently used in devicetrees
> of many SoCs.

I guess it's worth documenting these, but you plan to use 'function' 
instead, right?

> 
> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Dan Murphy <dmurphy@ti.com>
> Cc: linux-leds@vger.kernel.org
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/leds/common.txt         | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>

> 
> diff --git a/Documentation/devicetree/bindings/leds/common.txt b/Documentation/devicetree/bindings/leds/common.txt
> index 9fa6f9795d50..2a6806161590 100644
> --- a/Documentation/devicetree/bindings/leds/common.txt
> +++ b/Documentation/devicetree/bindings/leds/common.txt
> @@ -55,6 +55,23 @@ Optional properties for child nodes:
>       "timer" - LED flashes at a fixed, configurable rate
>       "pattern" - LED alters the brightness for the specified duration with one
>                   software timer (requires "led-pattern" property)
> +     "mmc[N]" - LED indicates [N]th MMC storage activity
> +     "flash" - LED indicates camera flash state
> +     "torch" - LED indicates camera torch state
> +     "audio-mute" - LED indicates audio mute state
> +     "audio-micmute" - LED indicates mic mute state
> +     "bluetooth-power" - LED indicates bluetooth power state
> +     "usb-gadget" - LED indicates USB gadget activity
> +     "usb-host" - LED indicates USB host activity
> +     "mtd" - LED indicates MTD memory activity
> +     "nand-disk" - LED indicates NAND memory activity (deprecated),
> +                  in new implementations use "mtd"
> +     "disk-read" - LED indicates disk read activity
> +     "disk-write" - LED indicates disk write activity
> +     "none" - No trigger assigned to the LED. This is the default mode
> +              if trigger is absent
> +     "cpu" - LED indicates activity of all CPUs
> +     "cpu[N]" - LED indicates activity of [N]th CPU
>  
>  - led-pattern : Array of integers with default pattern for certain triggers.
>                  Each trigger may parse this property differently:
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
