Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2823191271
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=om+6FRQFot69hkCnrXEeDxAxswgJep5n1J/EyLwIJWg=; b=dlCzvnWxSxvEnn
	A49AWPdTnpv64Rm90xEk/q3rbvvad1ayHlS/XTJS9WUbFPrrK6Lc1adEbqHvh/0sK0AWxA7eY1s3I
	bhICG6Johg6fOhMI3m2QXdZrsiorD6Z1NgDNZIk2u6BgFufMAmQRe7CXoyyyLXg8GvtoupiM1GyHQ
	l/VjC8kGeIZrWxGL9dbEvIgtJ9/Qo5YaaVgk/u4666DYn154QzyqVOqqVihQdp+ThTF9kBp0zDkQw
	lDNRi7iNrzyR9YyDdwCfEyhh8JwgJYg5X8C1ZvT6THiVmIYWbOPQ/HE97lumEM1nLqEkCFNpKgDgM
	UQIruTUcoS4l/3FnfVhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkDB-0008Lw-9s; Tue, 24 Mar 2020 14:07:21 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkD0-0008Kh-P8; Tue, 24 Mar 2020 14:07:12 +0000
Received: by mail-ed1-x543.google.com with SMTP id u59so20769695edc.12;
 Tue, 24 Mar 2020 07:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dcUgHF1GDuuSunaZUU4Ruocj0GZ4ddqSxRhaLtXqkcM=;
 b=dvJVWQ0O8hlSN/WBTtGXC50vG9ZJsG5B93vJTJkLUCehGXLNA7WiOPqhxSiXPhvxSQ
 tOj7bM0T5W9KTOferZhZUOyGqo0WT7kVcvYhb76IspBlhdKXyvZmq+EUoZfZwWazY1UW
 HbYAq1mKiuaFo5UjFpQvGh5IQ9HKyn0ZBjewWugORhupS/tsE3xXNBR5yGU6r03Ve3qg
 h82gUAI0taleDBc/RB3m/Q6cwpslgv65JWBeiWge9O2p7DlFJJ4W2u4LfLz3QJWoSdyH
 acqk0DLuJ/Dx8CbymfYh3loG/49JveFdfInVQkuMKAur2NH3+HUGXG+nlEtRaI8mCUJ6
 YOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dcUgHF1GDuuSunaZUU4Ruocj0GZ4ddqSxRhaLtXqkcM=;
 b=asPoBwG9pH+alKUnTa43TODmlN9hibPiFmjqywxKBf2v5tHu7l7mO6K6A3H+3tRCyu
 FIJmXaT7ecyhHsbaebLzb63Xh0s2cGgQj6uMKB2tB/JtFjIWLYz1Ahn866Py3wiGN8Po
 +xO38SYTkdLhsyo0gkJhZHjWb/MQfRm/zz/2hgjbd2cimylQ2WElDbxksZ3DaS+zR+5l
 KOUZURCoWiEL6QLUGsSJGr3uJvkxA6uKyJeUUbIMoYtP+ZehGYrC8Dhn4h02WggJOTtN
 HEUmBAvxHa6jsuCfcmQd9HSczjHWoPl9963mVMYLskSEGNZ1yV4qC6e1kQbdKMdXA4uf
 uvMg==
X-Gm-Message-State: ANhLgQ3X5VcXmc2PiO/zR6V5maQaSz3hP5rrnVvr4ze7tDuXejQ/iEEK
 aQsjTlw+LZY/6Yh2AVUEFI7BBiO4j2tLsUZfjxk=
X-Google-Smtp-Source: ADFU+vuGEjDeb/L8U1c1UJ2A93v1OboeO9Zew62wGydVRx2aXkWZiMP1AE1wliFtVf6Ap3fpngvz6Yw78DvnnxMnQcw=
X-Received: by 2002:a05:6402:17aa:: with SMTP id
 j10mr20114633edy.146.1585058828747; 
 Tue, 24 Mar 2020 07:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-2-narmstrong@baylibre.com>
In-Reply-To: <20200324102030.31000-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Mar 2020 15:06:57 +0100
Message-ID: <CAFBinCCaMopoza5CFCC7=mStH8Ocni4GjGr+etn=dMKOgr_5fg@mail.gmail.com>
Subject: Re: [PATCH 01/13] dt-bindings: usb: amlogic, meson-g12a-usb-ctrl: add
 the Amlogic GXL and GXM Families USB Glue Bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_070710_818317_2DF4928B 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, devicetree@vger.kernel.org, khilman@baylibre.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, Mar 24, 2020 at 11:20 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> --- a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> @@ -25,9 +25,13 @@ description: |
>    The Amlogic A1 embeds a DWC3 USB IP Core configured for USB2 in
>    host-only mode.
>
> +  The Amlogic GXL & GXM SoCs doesn't embed an USB3 PHY.
> +
>  properties:
>    compatible:
>      enum:
> +      - amlogic,meson-gxl-usb-ctrl
> +      - amlogic,meson-gxm-usb-ctrl
>        - amlogic,meson-g12a-usb-ctrl
>        - amlogic,meson-a1-usb-ctrl
the phy-names property is described below which you don't update
please add usb2-phy2 to the list of allowed phy-names so the dt
binding validation for the .dtsi patche (#9) won't complain

With that fixed:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
