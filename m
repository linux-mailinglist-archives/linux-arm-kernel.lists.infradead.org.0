Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473191724AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZeakVotUUmtj+B05PKlR8hMdPYYMJau45qC+rVq5Y0=; b=sCLeoBAsJYrBj7
	x0Q3hcs5qN2YQjh6NYxP8lh99ba8TaAaG45U588q9n9f4n2OJDcJh6K/kDAU9wL1uOys25xFfxALY
	iFjopPzW4XFVWxf8FHnaY7g9ABZ9PgYWIxWE4Roj7xylNpObHFEwroI8TS7HZIwtTIHGP7NJynU25
	VxsmNYef0zAshTxbXh9oYjLx+ywjNynnjsHtcXmImHWDy95tfkf62z2+mkcghckql1Y81FQimigBS
	r4UlrL+jPAn9CsgLWa++RlQ4AQEeC56vDvcoP380SJPwXFC9qbAGYXxQip/iq1yBiVYa42EsMQ1fS
	uwp2QxiB6WdNY0vlj/WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mew-0001KQ-Ri; Thu, 27 Feb 2020 17:09:14 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Mej-0001K5-AM
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:09:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id j20so3642606otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 09:09:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y+0/0aor8IhFX16F066JPY12exQAeoxh6RZ1OqotWEI=;
 b=EncGq4oZ95xNiHRhp0Xpu6KyWmk58CNhLRAzh0Qk80iorXc1RETF6YO3hBSLQGoxYU
 C/hcBSh8bMwQPIRODKE9yLk6Z6RbKkwWpm5CLDzWwCWPhLtdWP02jYTs7PBJucS6CVaE
 7d1W5HPfs8MDi1m9xx0wLaK0r1UjPC80STM8sSMKCp2TSfRdHAeai7UquACWe8TocfjI
 +nZoo3+/GpnTQTE2kmyHcn9V7BzCJ/CfrxEpilRUIGJcPBpE56FVxOR/swN433i0u5HH
 E2OMXzFDa+1Hw60mgWtOTQqhGCPr5XqQ5MIksQJ1RCBPcGEfKIFPorznZrrloX6qThAa
 vtrg==
X-Gm-Message-State: APjAAAXBUabG2ibLC1MpM1q6LAnSoeOKkRkwtOx3XcVvxvy71yi428WQ
 SMAEKE70ZJxZW6viLN3JVA==
X-Google-Smtp-Source: APXvYqxvFuKzzQKZDM+4rDPxUw0rZLtDRf3b/DVCqBQR5c3BydSET3hGDKIjKiov4KkROKtFPX8tjA==
X-Received: by 2002:a05:6830:1492:: with SMTP id
 s18mr618063otq.216.1582823340333; 
 Thu, 27 Feb 2020 09:09:00 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f1sm2119638otq.4.2020.02.27.09.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 09:08:59 -0800 (PST)
Received: (nullmailer pid 3995 invoked by uid 1000);
 Thu, 27 Feb 2020 17:08:58 -0000
Date: Thu, 27 Feb 2020 11:08:58 -0600
From: Rob Herring <robh@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g  driver
Message-ID: <20200227170858.GA2831@bogus>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_090901_361116_566C7BF8 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 09:52:36 +0000, Russell King wrote:
> Add a DT bindings document for the Marvell 10G driver, which will
> augment the generic ethernet PHY binding by having LED mode
> configuration.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  .../devicetree/bindings/net/marvell,10g.yaml  | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/marvell,10g.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Documentation/devicetree/bindings/net/marvell,10g.example.dts:18.13-23: Warning (reg_format): /example-0/ethernet-phy@0:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/net/marvell,10g.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/net/marvell,10g.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/net/marvell,10g.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

See https://patchwork.ozlabs.org/patch/1245687
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
