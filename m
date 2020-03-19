Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFECA18B312
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:12:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spmnmdzCQTnYKRGT7jjIh0B5NJdOHmd10nIbtXJuoZ8=; b=qKs7S50it45Lci
	JfRDRpuyI5CR8ZguQNkQdkZFZ+acW1dmPzW3RVmD5uakto3BRDBDdJZHZSg2HlEHqcgwOs7/GBBKv
	MexpZQ8qK7MbuzTSDyCTN241hcpgU3+jvHp5vdCJSiMYT88EIlMrclZ9M5xMhh+O8YyehvL/WBNWy
	6BwwxAenUywkvBBHS0iluTBIS4CsnA2Rzfp8f2xybBwTiyOEPo3cITqyjrNlg9KsIjMgDOjJxVY95
	EvP+bR3f3IZ+NVwZOXcsMKSXvJIKaBVVtAdMSpocCHx9TSqxoNEYa4d5cJNffQqer2Dyp7mNCdnlx
	mgT6uipeexMAn5sB/SAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEu2K-0007Ez-F1; Thu, 19 Mar 2020 12:12:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEu26-0007DK-HM; Thu, 19 Mar 2020 12:12:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id c187so2004115wme.1;
 Thu, 19 Mar 2020 05:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=daN7ej1V/WbdDXvs8Fgxqp9xAyCMYiSLqVG5aeGru8U=;
 b=dvmBHnBUXGiqvvQ1+2E51PjzCzn/o0oGD7PLE7ea8u0pLrC31AtHH/04xGfdBYmXEZ
 bFrsZ23yrpPVd9GhXnKVFJMFe+Z/nOVknS97xlq4HF9IUENfspVLHt0yk36Hc0D8TWWl
 RfxTZSc95T4TII146KC0tdDa9Z5XTpyBaB2T8OcPTbRVpK6JJ/zOFGvVZrDVQ695g6kn
 3CfQN9LJgEBIz3n/lbi1DaJfyWpqQFbrv9+xOJgp9XypgVB6GWkV9798vtpzBuw3ndX+
 5kBfdzL42NLgQLemfpeza4Wr4lQ+OUj3UMPNqYlEuGeMWtPad0BQZEtvtPU1VRR9eqDT
 5Baw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=daN7ej1V/WbdDXvs8Fgxqp9xAyCMYiSLqVG5aeGru8U=;
 b=Em4vRop2pvc9irzY76jIUNrSv1ogjr2Ksxiamesj0H42Cc5c9S9r19ybKhMo1Neii7
 rsZTR5BsVoJFyXhnvCeJIY4iAkq/XaUzfJGI0/eckp/DQJOSGujNp4s94Wzah+50fCby
 lnN5kfMY2KyJ1VhGTZmJAFebjenvzVJkTfSedOgNvjSevzI69FBaQAUZk9pRqmPKw/D9
 cBVJCekxaANFoQQB3mM34Ysut+CLLi77baOBt5a+ch/pkIMORJpsq9ew4uysQHPNpa/d
 aYfj7fPuJUNd8kYNDw481wjBcQKwSLQDLzOm15UNDUKt1mFV0da3KVW9EWGPe5XECCIg
 nXLg==
X-Gm-Message-State: ANhLgQ0p11Mb2jQZ8uyq3zpxPpp3IJs/fKkpFg+aqzskeBgjZJdbcWIc
 BPAo/Xh3kxmfb6iMyNkAY8cgKmp6
X-Google-Smtp-Source: ADFU+vsWdNexPTrldLcXBS702PY8o8wIPXwP8saxqT60mkVJ/ps29oW5lL6dM5+K82yyY3AUWrKxag==
X-Received: by 2002:a1c:9d0b:: with SMTP id g11mr3450811wme.77.1584619936056; 
 Thu, 19 Mar 2020 05:12:16 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c85sm2910002wmd.48.2020.03.19.05.12.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 05:12:15 -0700 (PDT)
To: jbx6244@gmail.com
References: <20200318192901.5023-1-jbx6244@gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: phy: convert phy-rockchip-inno-usb2
 bindings to yaml
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <86f9bff8-4e3e-8a26-b89b-ce80cb865103@gmail.com>
Date: Thu, 19 Mar 2020 13:12:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200318192901.5023-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_051218_603155_A6244637 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 kishon@ti.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

A test with the command below gives this error:

  DTC     Documentation/devicetree/bindings/phy/
phy-rockchip-inno-usb2.example.dt.yaml
  CHECK   Documentation/devicetree/bindings/phy/
phy-rockchip-inno-usb2.example.dt.yaml
Documentation/devicetree/bindings/phy/
phy-rockchip-inno-usb2.example.dt.yaml: usb2-phy@e450:
'#phy-cells' is a required property

'phy-provider.yaml' uses regex pattern:

"^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"

in combination with nodename 'usb2-phy' gives a full match.
'#phy-cells' is only for subnodes I think.

Question:
Should we:
1: rename all 'usb2-phy' nodes in dtsi, then please advise what name
should be used.

Or:
2:  add '#phy-cells' to 'usb2-phy' nodes? Please advice.

make -k ARCH=arm dt_binding_check

> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>

> +    u2phy0: usb2-phy@e450 {

Regex gives a full match.

> +      compatible = "rockchip,rk3399-usb2phy";
> +      reg = <0xe450 0x10>;
> +      clocks = <&cru SCLK_USB2PHY0_REF>;
> +      clock-names = "phyclk";
> +      clock-output-names = "clk_usbphy0_480m";
> +      #clock-cells = <0>;
> +
> +      u2phy0_host: host-port {
> +        #phy-cells = <0>;
> +        interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
> +        interrupt-names = "linestate";
> +      };
> +
> +      u2phy0_otg: otg-port {
> +        #phy-cells = <0>;
> +        interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
> +        interrupt-names = "otg-bvalid", "otg-id", "linestate";
> +      };
> +    };




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
