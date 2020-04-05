Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7D919E843
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 03:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yIL84tkvKMIzU9O0KkNqnF9xGMkdAZVS3QyxF5C0txk=; b=VewHfi69pTKoOLkBuiquGq8Di
	oYjRNNmXNU+oxtMtwKTdVSV5ch3p8dCLaTMilnLNxziBilZwc/Asuxq9ePIixaIzPQHTIir0b8Ouu
	SQPXZNvHuFz7yHeUMMoD5NmzgLyHv4WkiSlWEb/Z0Inz4/6Bdoiqp1FrRfgEeXkP1d30Ggn+pr86h
	lu+VfLqyPgzOm91NmIZ7Wa/54yzKKXYRN9Pa1dgoxSKSuZFUYFPjTkUuEQhE6qfExSNrJQ/zTrpCE
	GTtnqpUkfgJozWKYQlcFLrcyZ5cRW9J3V5K374NzbI90+agRur/I87/ZYPzTTKRK0rJx/++OArZEd
	d3Y86VcPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKu5j-0006Iu-ID; Sun, 05 Apr 2020 01:28:51 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKu5c-0006IL-Ae
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 01:28:45 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id B56BA77E;
 Sat,  4 Apr 2020 21:28:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 04 Apr 2020 21:28:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=n
 2xIAo0j6M7nb0dEky/Y1uh63ap0cnK6/HZ2kEdFDLc=; b=bjyhRyLW6TkbdYrIT
 vUuAujP2aC+R4Ld/oiSrmwXb7zKyUU+CzVq7C9X0MnhHjNjwDermHYis9yxtLTaH
 QqqNrpXHw4HakKxmMZTsxpKmAgDK/VnyEzzHTI0Jz0rWXba0+WSOJL4s7S7Cd9yo
 lwjpR5AzMtaRfNuDSzmuXp6XAINPc66pllL7rc7tMuSpYXEpOPvb+4y96J+Cqz0t
 U6bbalrnOQYrBQXrr0OnQZ+28zOo9bIf1BlkMl49+8ijYCfvjkd9HwcPxZj4cCNo
 srvx85BpXozrHD+ySA3TQzrQGdOTv9hEsF3UPW4rw4RUELdeyPnIBmI4Pnan57j3
 jJq1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=n2xIAo0j6M7nb0dEky/Y1uh63ap0cnK6/HZ2kEdFD
 Lc=; b=ZsrE0sTaJdipkfWayfTn/Odu3KKEs9rJzdcqhPV9ZZI1VGLt/AF8r8CRK
 bS1Nndrx2Ytql/AiMetktDQx+vEw9kH+E9xbZI/Of0LHWbAIfB3KtQduOGT25eQO
 qrU6ADdLhngl9NLIFjAz+UPcIFITjIB3PkWweuJO/mEB3cpNNkWaII8QqaMbuvPp
 iHnbW0THBzWa8LDRFW8zSW9xag2LlY6Rm5C2FAFqjyzMuNE3VV47Zqf8ZeoeJ0x9
 bltlcT8G6MmTB7gP2W4UnCEVwC4Dsd0lLgS/VL4dQ87AzhJYcFFADRmMKtqxQO4d
 /Ob4XmXxwBlgdJ8EvJlp2UawreuDw==
X-ME-Sender: <xms:QDSJXjEb877FyG7AHZc1lKPIIqbFZRYz1je44IgtEdcur3NfMJxQHw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdelgdegjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpeetlhhishht
 rghirhcuhfhrrghntghishcuoegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhmvg
 eqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghdpkhgvrhhnvghlrdhorhhg
 necukfhppeejfedrleefrdekgedrvddtkeenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhm
 vg
X-ME-Proxy: <xmx:QDSJXkThRhWHG37yvqbflKUZBbfteEWEAdDrfvj6BRPy6MlMshCkfA>
 <xmx:QDSJXtpB_qhggbuHYvsnJo69gSrWO9Ctjpc2jlk9GQLO5QXg_aC-0A>
 <xmx:QDSJXqr2P5Ziiou5nISNn3sil8deBdqZEa_X_AFrDgCSnAiNGHkCig>
 <xmx:SjSJXlPdDvXlZV2ZYnnevXNXVMk282B0iJzelzATqdVRpOLBl53rcrrlZb4>
Received: from [172.16.1.131] (c-73-93-84-208.hsd1.ca.comcast.net
 [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id CA5033280066;
 Sat,  4 Apr 2020 21:28:30 -0400 (EDT)
Subject: Re: [PATCH 1/3] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20200404204850.405050-1-alistair@alistair23.me>
 <20200404224205.1643238-1-martin.blumenstingl@googlemail.com>
From: Alistair Francis <alistair@alistair23.me>
Message-ID: <46b0f1dc-15df-55d5-1a9c-cb70a7d453ad@alistair23.me>
Date: Sat, 4 Apr 2020 18:28:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200404224205.1643238-1-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_182844_407437_5FF4E2F3 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/04/2020 3:42 pm, Martin Blumenstingl wrote:
> Hi Alistair,
>
> +Cc Max Chou, he may be interested in this also
>
> [...]
>> @@ -0,0 +1,56 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/net/realtek,rtl8723bs-bt.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: RTL8723BS/RTL8723CS Bluetooth Device Tree Bindings
> I suggest you also add RTL8822C here (as well as to the compatible enum
> and the description below). commit 848fc6164158d6 ("Bluetooth: hci_h5:
> btrtl: Add support for RTL8822C") adde support for that chip but didn't
> add the dt-binding documentation.


Done!


>
> [...]
>> +  device-wake-gpios:
>> +    description:
>> +      GPIO specifier, used to wakeup the BT module (active high)
>> +
>> +  enable-gpios:
>> +    description:
>> +      GPIO specifier, used to enable the BT module (active high)
>> +
>> +  host-wake-gpios:
>> +    desciption:
>> +      GPIO specifier, used to wakeup the host processor (active high)
> regarding all GPIOs here: it entirely depends on the board whether these
> are active HIGH or LOW. even though the actual Bluetooth part may
> require a specific polarity there can be (for example) a transistor on
> the board which could be used to invert the polarity (from the SoC's
> view).


I have removed the "(active..." part from the GPIOs.


>
> also "make dt_binding_check" reports:
>    properties:host-wake-gpios: 'maxItems' is a required property
> I assume that it'll be the same for the other properties


Added.


>
>> +firmware-postfix: firmware postfix to be used for firmware config
> there's no other dt-binding that uses "firmware-postfix" yet. However,
> there are a few that use "firmware-name". My opinion hasn't changed
> since Vasily has posted this series initially: I would not add that
> property for now because there seems to be a "standard" config blob
> (which works for "all" boards), see Hans' analysis result of the ACPI
> config blobs for RTL8723BS: [0].


I have removed the 'firmware-postfix" part from this series.


> Getting that "standard" config blob into linux-firmware would be
> awesome (I assume licensing is not an issue here, Hans can probably give
> more details here). I'm not sure about the licenses of "board specific"
> config blobs and whether these can be added to linux-firmware.
>
> also indentation seems wrong here
>
>> +reset-gpios: GPIO specifier, used to reset the BT module (active high)
> indentation seems wrong here too


Fixed.


>
> also please note that there is currently no support for this property
> inside the hci_h5 driver and you don't seem to add support for it within
> this series either. so please double check that the reset GPIO is really
> wired up on your sopine board.


Removed.


>
>> +required:
>> +  - compatible
>> +
>> +examples:
>> +  - |
>> +    &uart1 {
>> +        pinctrl-names = "default";
>> +        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
>> +        status = "okay";
> AFAIK the "status" property should be omitted from examples


Removed.


> Z
> also please add a "uart-has-rtscts" propery, see
> Documentation/devicetree/bindings/serial/serial.yaml
> Also please update patch #3.


Added.


Thanks for the review.


Alistair


>
>
> Martin
>
>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/rtl_bt/rtl8723bs_config-OBDA8723.bin?id=e6b9001e91110c654573b8f8e2db6155d10d3b57

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
