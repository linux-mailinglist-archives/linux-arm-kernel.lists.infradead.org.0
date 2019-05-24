Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8AF2A0C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 23:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvAoGmUZd39mseW84z0fQxXRKioCouOdcg23NWSh3Iw=; b=W4uJaDiE1okwB9
	/BW8b1xQz0NngJuBtuMijQVbjIMmmXrPOb9tyB3TzMeLAiPaNaktsPqiYPN8sjSgjw/VffrYVehXS
	Ko89NvUTkIswD+VQ3W1lagSVued/V51lwA69Viks2oiAVDv4mDlHAWpoS/OSjiviwT/4/28TUr469
	WVWgCVZzrTF8hxqgfGRfehChnfgv6UDTOG+pBtX+YRXjYkhN4J+PPbUJxTTyVQqYilyTDORZKYMHb
	Fczu26Bby1HUBA55PUWyA4Q6sUJ5ZRQtHu7GYzPsrpcYK++xv2CH2Qze4LmMqZl1AVS6c4MLvCLTb
	IcWZwnrU1Bi233w8G8vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIAj-0003zp-4y; Fri, 24 May 2019 21:56:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIAS-0003nz-SZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 21:56:03 +0000
Received: by mail-ot1-f66.google.com with SMTP id t24so9989785otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 14:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=rzmGBtS7uiLRgw/6pyzECaIphdLrdhzZOh5FaNXwiJI=;
 b=k7O/pvT2c1G/+3nrCl5pChSVBkPvBsoW8C/BGjHfzUpVO/7NnwM6sFuvDlC1G03Waa
 nfw5oOtHg1guZWXd7pEv01PqD8nppoQPOsUNNTfmSPqIfXutm8TF7MbfuTtQLPsVg8TO
 Zw1wGREnwD+l2W6gioUUPJpOem5VOjcAkf2k2/ItsOJRKVkeQLId2lveRW5SbQevJ3Yt
 bixL90VR662qnTLp6cXhD/nuwDiUSXeicgFUwOR49n4auTTFqksVO4YD3TCTQYZ9WHxM
 rudgov3Id2PDRPNBXqidCm32127XZeXMLXK3+HOdiWcN0h2OEnb19LVz/chtlli33BLs
 9u8g==
X-Gm-Message-State: APjAAAVdbDuGZ2kbRbwoz4NqyqPyLYbK0DW8hBIKzc7wNj2dghF1xdY8
 Ne8NjjJbXd9Qwb5utwhEzA==
X-Google-Smtp-Source: APXvYqyCJiUto5HfEn+a7kKZSGr9NjKSLt9LpOJbgGJtDGcUpjszm71EQRQThbLn9a3jeJS/KxFfsA==
X-Received: by 2002:a9d:70d2:: with SMTP id w18mr35402otj.289.1558734959743;
 Fri, 24 May 2019 14:55:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k139sm1480211oib.11.2019.05.24.14.55.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 14:55:59 -0700 (PDT)
Date: Fri, 24 May 2019 16:55:58 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
Message-ID: <20190524215558.GA14313@bogus>
References: <20190523151050.27302-1-peron.clem@gmail.com>
 <20190523151050.27302-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523151050.27302-2-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_145601_115494_D09D2AAD 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 May 2019 17:10:47 +0200, =3D?UTF-8?q?Cl=3DC3=3DA9ment=3D20P=3DC3=
=3DA9ron?=3D wrote:
> Allwinner H6 has a similar watchdog as the A64 which is already
> a compatible of the A31.
> =

> This commit add the H6 compatible.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
