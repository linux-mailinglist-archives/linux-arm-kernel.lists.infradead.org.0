Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1106392B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 18:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xDSSxhbyA6Nxb9Q8kvIKJDeQMT46+fj9tQhY3Bl5Zzs=; b=RW4LOgHUEVpvBofcKtV29I+rtK
	fLKKSwR00X5hTT8SPorAD1HmzShEWQnjMsZeA6bchUCMO2tjYaoYcUwBY9817F2GTczRrGCfLABJm
	/NlJP4IXq8Q+njUqXsPT4lpDJBPLXD/IPGsOx36CDOquTLACBW+SIyFVIKqs33jCsm27VLhbnzIEG
	FzDIYsyXMpuXsHEerw27JsEYDxRMotAPYKd16SzVB3eII0FDSPX48qiZIODDGXvFy0A05hQRBaa+1
	wMWLFIpXSLPgNLBJyvR6FP8NjoAC/igxSoAnJNVudixXSPPkP5C6xuWc0BgTrLQgBHwVcP8cW6NeW
	KPMaRt7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksnj-0003zD-JI; Tue, 09 Jul 2019 16:17:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hksnB-0003iU-Jv
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 16:16:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so10350645pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 09:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+4V6pf5exFhyJYMgAtLay4UVo3H3rvR9SlpwNT68E70=;
 b=latPdWXAcf1AMijWLbaZYHoXz7H6essf53tAyKt8xO0br3UxRVyCzxNBtRGmDY2Geq
 vUKcjLuEzO15A5HoSy9z65mGkt3de2CuTvxk5H2f6eoQe1q5ojeghKiuYeb5BqjVUAg5
 2cOTNDmK9G6GbLlp5zPbvE1epvg5Avse2YL948NRdRo28x+O8djDu7cuI8txIGkHtLsT
 BarVLu4La5LlphqxsE7wrL3TEgGCO0cSxr86VFB+bPq3rAEN434vmKtXOYM4cY1KOKg8
 YYbB5TM0cnHc/zcIibBIUYTIWu/tcRQjHLdjXQLaQ3xuyOVHedNMVnNquNO2hm/DGBy2
 wakA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+4V6pf5exFhyJYMgAtLay4UVo3H3rvR9SlpwNT68E70=;
 b=NUM4SyE6QGKd/Bd0y7rGz8KqwRw95LOIO7ISlEQRVkDbQcXJWQlvV5jdcC2B9NfdoT
 rZXhczNG94z/+sQZXd4tWVinOOWym1PHSNqYG6JeS+OCphzRwxZSWDqR8/Z7IuGuUNXv
 Q3wexUGW9ljkqm4nbfc6WnajZaaux0khKHF2TeTS7HHDxeog6qHCRR2PK9l+oOmgTwjZ
 T+HSI46zZADI42uF+C6NKVuNY+qDlPyaux3qTWAcW6mJjDaiUMbWUgIDwrkOYVxJRrMO
 UXvfGKpfb+hUIFkIgO/j0Q9ywE0l+hQ2UdSfXLMa+inMTyiNyaIF/8jggSlwK0TtiU4R
 0xug==
X-Gm-Message-State: APjAAAULQP0DvbRyQAExzDZjTjOH8BzPIwI2TeUGkf3FnEmxjPThs84T
 aUEfuZ2Ee0UJAf1QFKq8saI=
X-Google-Smtp-Source: APXvYqyOOcWNGHCvM/PWWcpYNxR5BJCWc1Mr/h0wH9+t5YYla3kqBZbZQBrwjLOs1Xqbb3lncndkpQ==
X-Received: by 2002:a17:902:20c8:: with SMTP id
 v8mr33433506plg.284.1562688992236; 
 Tue, 09 Jul 2019 09:16:32 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k36sm1386783pgl.42.2019.07.09.09.16.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 09:16:31 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, Arnd Bergmann <arnd@arndb.de>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] ARM: bcm47094: add missing #cells for mdio-bus-mux
Date: Tue,  9 Jul 2019 09:16:30 -0700
Message-Id: <20190709161630.7963-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703132255.852025-1-arnd@arndb.de>
References: <20190703132255.852025-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_091633_801041_62CD9D28 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alexandre TORGUE <alexandre.torgue@st.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  3 Jul 2019 15:22:45 +0200, Arnd Bergmann <arnd@arndb.de> wrote:
> The mdio-bus-mux has no #address-cells/#size-cells property,
> which causes a few dtc warnings:
> 
> arch/arm/boot/dts/bcm47094-linksys-panamera.dts:129.4-18: Warning (reg_format): /mdio-bus-mux/mdio@200:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #address-cells value
> arch/arm/boot/dts/bcm47094-linksys-panamera.dts:128.22-132.5: Warning (avoid_default_addr_size): /mdio-bus-mux/mdio@200: Relying on default #size-cells value
> 
> Add the normal cell numbers.
> 
> Fixes: 2bebdfcdcd0f ("ARM: dts: BCM5301X: Add support for Linksys EA9500")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
