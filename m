Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F8FADE3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 19:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlnzMeRcL4f3/O2bktaZVx87k1zPRMCqcerO9ot8F1M=; b=idnJ/sq3IAhEKF
	O9+feTTPvFScl+y9BYNij18B7oVo9DszyQRj4upL63umnNUxtRwu/QQ6eq1bI6bfCobGBumekkj5O
	nT/eBDNksh0gvg/m5i0PpMCdIgNvv071B6FaDuvcBn0fDtaUbgqK3+svUY+nY10VVBdCumPQR4djJ
	OV0xH/pAFbqU7F/cAz/hRguRJOS382aYeD8kL+Jrdeded72pIKxTIkGMSxYUQkt2mqAOCeMytufDO
	RbH49wn4lH36evoATyqZQWShNu+s3IeAZA9NbElto9LfCMuwbE/QnRjZr0zlMIaeN9oiOng5f8VnN
	9NTlrSLDExKDI8dWySMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7NoX-0000vD-7n; Mon, 09 Sep 2019 17:50:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7NoM-0000uK-Fe
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 17:50:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id i1so14357383wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 10:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=DdPMRC7fgZpsKbVZ/B0zUuc2EzOH4bRfHzaKWExErGE=;
 b=Zrm/RwecGRKIQ+VTy+JsDQ+fpIMX6Z3bVGkjeNioi7u1ctxGFchxRKk0w2X3J8paCs
 nO+kpGwsngaIKWSBd+bLwD+msH1zmU5RfuH76T8G1k2JotXIfmE7t3pGKByUuMaJViOf
 nySZ8j4oh9BLIR7zo+e+YkssIldksT3h1/8MAOFfVqwz7sUlisuBuSxM76bcV1Oi9Jma
 adJP31ArUY/g32u+exgdl+SIWt/z38aT36wAx2uNt9ztXs0gJj9CHsL94b0pplSQsL8r
 SsgQWhfcTm14jeBAtJNeJfJD3iO/kgZphoRk7PgkfxvCosxnTyIX7EEulsPuNjZp0X3/
 F7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=DdPMRC7fgZpsKbVZ/B0zUuc2EzOH4bRfHzaKWExErGE=;
 b=BZyVYdT16jhw9soaCL42+X/ojH50sNyqQQGyY4Foes+F/M5JzGVS0QqqtdMARV1WQ0
 o/iDh7NjdTNh73JVU5/QGspmRZrRKpHVVCasXpIYzcUzOFqEIujM5TYH1GXG/L3ISY5U
 9ev/t4iA/E5ZEjNaOd+dk7kZIlKHUxmtv9Nd2Gz4ilfS3HkUjO30HxjRe+JcLn3CGG0W
 u/fW2tpVP8FEYRtUgWIlz6D8Hm7yG5n+8rCzay8lxuuym7hUyVKkCWnGYa2h4UMpBJXi
 K0HsfwRjmr42Mu39aLBVyAX6v2uHZ7eEfVrUd0mQ7yerfbFtw/PURbGMb97a5rKeYBWO
 svzg==
X-Gm-Message-State: APjAAAVYPCijcEoLx6dLGZNDzwRbkjuAa0IIxcg1OziW4weujU5RRuyY
 5eY7Pks0wJ5qv+rp5fishaGY+w==
X-Google-Smtp-Source: APXvYqz5gCV5Ze/WC6zuHxMY6FG6sSTIDCIY33H80sMA4yZE+z6o/LNwDUTnh/CS7ryfujgHwlTHag==
X-Received: by 2002:a5d:48c2:: with SMTP id p2mr7815743wrs.348.1568051444421; 
 Mon, 09 Sep 2019 10:50:44 -0700 (PDT)
Received: from [192.168.1.77] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 p8sm12079863wrq.22.2019.09.09.10.50.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 10:50:43 -0700 (PDT)
Subject: Re: [PATCH 6/6] arm64: dts: khadas-vim3: add commented support for
 PCIe
To: Marc Zyngier <maz@kernel.org>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-7-git-send-email-narmstrong@baylibre.com>
 <864l1ls9wy.wl-maz@kernel.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Message-ID: <2c25e8b5-191f-96c9-8989-23959a7b1c4e@baylibre.com>
Date: Mon, 9 Sep 2019 19:50:42 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:45.0)
 Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <864l1ls9wy.wl-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_105046_574653_6A9215AA 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, repk@triplefau.lt,
 linux-pci@vger.kernel.org, bhelgaas@google.com,
 linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Le 09/09/2019 =E0 18:37, Marc Zyngier a =E9crit :
> On Sun, 08 Sep 2019 14:42:58 +0100,
> Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
>> lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
>> an USB3.0 Type A connector and a M.2 Key M slot.
>> The PHY driving these differential lines is shared between
>> the USB3.0 controller and the PCIe Controller, thus only
>> a single controller can use it.
>>
>> The needed DT configuration when the MCU is configured to mux
>> the PCIe/USB3.0 differential lines to the M.2 Key M slot is
>> added commented and may uncommented to disable USB3.0 from the
>> USB Complex and enable the PCIe controller.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  .../amlogic/meson-g12b-a311d-khadas-vim3.dts  | 22 +++++++++++++++++++
>>  .../amlogic/meson-g12b-s922x-khadas-vim3.dts  | 22 +++++++++++++++++++
>>  .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  4 ++++
>>  .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 22 +++++++++++++++++++
>>  4 files changed, 70 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dt=
s b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
>> index 3a6a1e0c1e32..0577b1435cbb 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
>> @@ -14,3 +14,25 @@
>>  / {
>>  	compatible =3D "khadas,vim3", "amlogic,a311d", "amlogic,g12b";
>>  };
>> +
>> +/*
>> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
>> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
>> + * an USB3.0 Type A connector and a M.2 Key M slot.
>> + * The PHY driving these differential lines is shared between
>> + * the USB3.0 controller and the PCIe Controller, thus only
>> + * a single controller can use it.
>> + * If the MCU is configured to mux the PCIe/USB3.0 differential lines
>> + * to the M.2 Key M slot, uncomment the following block to disable
>> + * USB3.0 from the USB Complex and enable the PCIe controller.
>> + */
>> +/*
>> +&pcie {
>> +	status =3D "okay";
>> +};
>> +
>> +&usb {
>> +	phys =3D <&usb2_phy0>, <&usb2_phy1>;
>> +	phy-names =3D "usb2-phy0", "usb2-phy1";
>> +};
>> + */
> =

> Although you can't do much more than this here, I'd expect firmware on
> the machine to provide the DT that matches its configuration. Is it
> the way it actually works? Or is the user actually expected to edit
> this file?

It's the plan when initial VIM3 support will be merged in u-boot mainline,
and the MCU driver will be added aswell :
https://patchwork.ozlabs.org/cover/1156618/
A custom board support altering the DT will be added when this patchset
is merged upstream.

But since these are separate projects, leaving this as commented is ugly,
but necessary.

Thanks,
Neil

> =

> Thanks,
> =

> 	M.
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
