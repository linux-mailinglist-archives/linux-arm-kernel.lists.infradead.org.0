Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F6A6380B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bY/oACg9+xGUJKxWjU1PcNiG2PCzEds/G8SIP+pozSM=; b=ShzafSV0tCk6xw
	/OtF2roCzCelqAR6B6vwopYNNmKmyKJ+t+wHtLASQeeyOIeHEThn1Yl73nmByMCwncskutqOv18UH
	RvzGbsbz0ubjO/H3hRVsA785+W8g4qO5jQe5CyxZGKFtDejJGbr0yb8Zcb4pllxam0tYuYyVbGfLD
	yJw+Ar+YGik6wHypI8gQZ19JH3v/ejjgh2cDZdBnEDb4vU9a5ac2cPs3Lma4FFur0PMJoLxHm5TAT
	8JWVLNkneSK2i7g6nmtEtFBkxIr8R8n2Xh/tzZDJ4jQFV9D1AdL4MKcDUTQ03UrykX6aWihhX58w9
	EXzp78RDBk8cS80uyKmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrGe-00014V-Gd; Tue, 09 Jul 2019 14:38:52 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrGS-000140-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:38:42 +0000
Received: by mail-io1-f65.google.com with SMTP id m24so34172765ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 07:38:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+prWP/l+NiaYOcrIk/R8mV2BTVhCl2S22LwiNWpEL0Q=;
 b=szKSVyr+3m/61szMWz7ysHbalOFmZW3dfbcr7SoJ34H9Ldiy1rUtqTo5YzuDXxhza0
 rp+bi9jSExfC5EdU9sbzh6RhOxl5s6tmm+LUMb0Z8MdqIIGMvGquj+NwcJz6MvBTWrWl
 cbKHujICcBtT3wXn/8Edha6vreczbi4CkTX7PiYxJ5mXUTVMzrAsEsMip2om1UgNLwd8
 TGJv+yW0JT7mGwJ42dldmf6hxDTHU4vecYWoz6B2QiFGW6SOWG803LmzwZ4EL2VP7Cs/
 rfDzScV8ZkfUdtaATl6NT7/Lu1v4hxLCfy8pFkuyjJtiPFe6IqmJIvD1OHZ++GNZo7pA
 ZgIg==
X-Gm-Message-State: APjAAAXe9BLL3rsSFlSt6eKBT8uTVA6T2Q9EP/q3Cc5+8YoP+PZPq8h7
 2oE7va2Y3lGtK+64CvRIKQ==
X-Google-Smtp-Source: APXvYqySHhAtm9GlvHKsUPEMTbTk1st1sP64SKKq5dl6tEvxnFV5wYea+XzPa0VvC7nIO5Guff5xRg==
X-Received: by 2002:a6b:6d07:: with SMTP id a7mr556026iod.254.1562683120146;
 Tue, 09 Jul 2019 07:38:40 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id j1sm17618610iop.14.2019.07.09.07.38.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 07:38:39 -0700 (PDT)
Date: Tue, 9 Jul 2019 08:38:38 -0600
From: Rob Herring <robh@kernel.org>
To: Erwan Le Ray <erwan.leray@st.com>
Subject: Re: [PATCH v3 02/10] dt-bindings: serial: add optional pinctrl states
Message-ID: <20190709143838.GA5665@bogus>
References: <1560433800-12255-1-git-send-email-erwan.leray@st.com>
 <1560433800-12255-3-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560433800-12255-3-git-send-email-erwan.leray@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_073841_028751_0B119983 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Bich Hemon <bich.hemon@st.com>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 03:49:52PM +0200, Erwan Le Ray wrote:
> From: Bich Hemon <bich.hemon@st.com>
> 
> Add options for pinctrl states:
> - "sleep" for low power
> - "idle" for low power and wakeup capabilities enabled
> - "no_console_suspend" for enabling console messages in low power
> 
> Signed-off-by: Bich Hemon <bich.hemon@st.com>
> Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
> 
> diff --git a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt b/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
> index 5ec80c1..64a5ea9 100644
> --- a/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
> +++ b/Documentation/devicetree/bindings/serial/st,stm32-usart.txt
> @@ -13,7 +13,14 @@ Required properties:
>  - clocks: The input clock of the USART instance
>  
>  Optional properties:
> -- pinctrl: The reference on the pins configuration
> +- pinctrl-names: Set to "default". An additional "sleep" state can be defined
> +  to set pins in sleep state when in low power. In case the device is used as
> +  a wakeup source, "idle" state is defined in order to keep RX pin active.
> +  For a console device, an optional state "no_console_suspend" can be defined
> +  to enable console messages during suspend. Typically, "no_console_suspend" and
> +  "default" states can refer to the same pin configuration.

no_console_suspend is a linux thing and doesn't belong in DT.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
