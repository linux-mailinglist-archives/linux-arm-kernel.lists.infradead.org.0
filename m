Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7544319E7F8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 00:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPug9a9Jco0g1LxuzrIQZeCxSf7iYUCWWEqH0SE8Kwg=; b=klS2e9AEFhc+AZ
	tZh39BVCaHWiiydN1eMm+jzQUeQAm36aavJfGZ4sx5xEk8KgRpG28X6vLLjDINDzVsxynXyfqo4Lv
	BGb7ulhqSO4IFTa5Iu/h3N3KJLaq1ElL8rkjKS6KEqmVUrQuaviT3YO0lZO9yMhgN23KzUoLG5Oey
	Ap+CgiZZULGeD1WBf5nGpmJOLDgaVkuyS1AFU1Y7PbR/nzf+5TSMgsF0J8SGtPbv77Yk/jepJ8aZI
	WJGU42Xj4LMU+MiqePOtG5V2R6T2HrxGvF9gOxZFsUeyw8TW34rVuKeFCn+LfPBsb4WV2JK2he8cp
	/QLUY53g12aE0u0mRGEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKrV4-0006mL-V5; Sat, 04 Apr 2020 22:42:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKrUz-0006lv-Ew
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 22:42:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id c195so4930275wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 15:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UhZ4xDcWDqeg6FTQjZVKOgJ1UEGx1WqVkP8SU3VMeTk=;
 b=t4aoTqR2yvaFlTV3dJbH23tuO1qhmpy1XwymZJSpxkM7FlB1aV8bN6uwt8AdoONejk
 f1NOHqjGZSXZnZtmVn22o7aTaQQCaHgyenWNQvokLuR8sznPoL4GqmAPfRhhKHBOlEAZ
 Dx0wYOpIsfdcwxI0ArYIrBfqSyfc8VXKbIB5xjXumRfpj8FCElWFkOyUfP3FpwWKXls8
 jGDO/dkkzCwezm54PSSqsRXLiigWpqf9t9y8kIhylMLoriiBjJIrbMvvWb7TKB4xR0Ll
 wgdP40EqiIVizvqFxJvUqK5kCcp9fBn9TY5vzfehBbvYDDks4qUI6yx+vHaCVv6aCgkD
 X6qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UhZ4xDcWDqeg6FTQjZVKOgJ1UEGx1WqVkP8SU3VMeTk=;
 b=TZEJH0KSB46nDi3j4X3fV7NPuIaK6hCy+ZCLvDmx1GR+3hjYW41LZhg25N80dvqtJN
 C81iNab3nc5nbbh/lLShP8BdFR4wpsI/dZa1Frxf5gsD8/7p3yIYCv41wTz5/+0o59xg
 usGFN1WVe9lRERF0hvCwpnDbD2B2u8vMzpwZ2xNj+z741U/zL2xNWzbz7GXLDoyySk22
 Ek8kszxE+FuwPxC9+ZrOUJ8Ya4F/cYO9n3PRR7U9km5Cvqw8zl+fMDoPHv/hwRCROF1V
 dfEcmAtvYGCogBRwdgTgRd3dDACPX7uR1vEICt3Jzd38qKkLusnXZo11bUYL2UNEmm8R
 0Y9Q==
X-Gm-Message-State: AGi0PuZib5PZmOWobylxNGMcYcpIclo8S8Jk6X9L6K1QhEtEAhWit8V4
 jXUb2qZX0lp9UxC7UZk+N/dtXZJLOZtuZQ==
X-Google-Smtp-Source: APiQypKEDtbRolvE7dQt1YrVi4hf1cTVJ2Vut49YGM6p3qVUhjT530GbHtMUSUZgt6tX6H9c8P8W2w==
X-Received: by 2002:a1c:4987:: with SMTP id
 w129mr16337706wma.168.1586040161380; 
 Sat, 04 Apr 2020 15:42:41 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a67sm296947wmc.30.2020.04.04.15.42.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 15:42:40 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: alistair@alistair23.me
Subject: RE: [PATCH 1/3] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
Date: Sun,  5 Apr 2020 00:42:05 +0200
Message-Id: <20200404224205.1643238-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200404204850.405050-1-alistair@alistair23.me>
References: <20200404204850.405050-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_154245_524165_C7403F45 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, max.chou@realtek.com, johan.hedberg@gmail.com,
 hdegoede@redhat.com, netdev@vger.kernel.org, marcel@holtmann.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 linux-bluetooth@vger.kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alistair,

+Cc Max Chou, he may be interested in this also

[...]
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/realtek,rtl8723bs-bt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RTL8723BS/RTL8723CS Bluetooth Device Tree Bindings
I suggest you also add RTL8822C here (as well as to the compatible enum
and the description below). commit 848fc6164158d6 ("Bluetooth: hci_h5:
btrtl: Add support for RTL8822C") adde support for that chip but didn't
add the dt-binding documentation.

[...]
> +  device-wake-gpios:
> +    description:
> +      GPIO specifier, used to wakeup the BT module (active high)
> +
> +  enable-gpios:
> +    description:
> +      GPIO specifier, used to enable the BT module (active high)
> +
> +  host-wake-gpios:
> +    desciption:
> +      GPIO specifier, used to wakeup the host processor (active high)
regarding all GPIOs here: it entirely depends on the board whether these
are active HIGH or LOW. even though the actual Bluetooth part may
require a specific polarity there can be (for example) a transistor on
the board which could be used to invert the polarity (from the SoC's
view).

also "make dt_binding_check" reports:
  properties:host-wake-gpios: 'maxItems' is a required property
I assume that it'll be the same for the other properties

> +firmware-postfix: firmware postfix to be used for firmware config
there's no other dt-binding that uses "firmware-postfix" yet. However,
there are a few that use "firmware-name". My opinion hasn't changed
since Vasily has posted this series initially: I would not add that
property for now because there seems to be a "standard" config blob
(which works for "all" boards), see Hans' analysis result of the ACPI
config blobs for RTL8723BS: [0].
Getting that "standard" config blob into linux-firmware would be
awesome (I assume licensing is not an issue here, Hans can probably give
more details here). I'm not sure about the licenses of "board specific"
config blobs and whether these can be added to linux-firmware.

also indentation seems wrong here

> +reset-gpios: GPIO specifier, used to reset the BT module (active high)
indentation seems wrong here too

also please note that there is currently no support for this property
inside the hci_h5 driver and you don't seem to add support for it within
this series either. so please double check that the reset GPIO is really
wired up on your sopine board.

> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    &uart1 {
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
> +        status = "okay";
AFAIK the "status" property should be omitted from examples

also please add a "uart-has-rtscts" propery, see
Documentation/devicetree/bindings/serial/serial.yaml
Also please update patch #3.


Martin


[0] https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/rtl_bt/rtl8723bs_config-OBDA8723.bin?id=e6b9001e91110c654573b8f8e2db6155d10d3b57

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
