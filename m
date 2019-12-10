Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A4118FF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NV2D9wvIP+ipcSKvkNgoQelbZNtdb6UyGPnPHJq3qUs=; b=CMkIkVTCQLMxjN
	cEXQLx6DRMLXQ+jW0or9CJWkYO5btO09SVjjGo3NHYXdxpRVCg6Ir/7eRtjNVJQZaYlp9KagaP93V
	tiwObpBfSaT0qb7vchs6MDLWJz2y9qQ6gdYmDdzJ/Y6Bn3/eWVk+TQfCYW8tM/vfYKpXIjUP+TT2k
	+iDQb18GNOtUEns+y3/oBoCMVQ11oVWMicbjw9yWjm5LPhLViAd++zC9swfglxcBjpFiEH0nK4B53
	iJwGZ/UmrCKo6ioeHfmMRBRy0sUk232Ix0MYR1k9/O1UdIRuW7BhgGUSmFWqsBu5zqgm4bUjcpJbs
	iyzwcWIj+291bQNsm3wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iekTg-0004nF-AQ; Tue, 10 Dec 2019 18:43:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iekTU-0004li-AR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:43:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id n13so278240pff.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 10:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=cXgeofGslOi+RjL/J6mEqJJEbNd8kJE15RHzG972FUQ=;
 b=SfH4rbV9YZ1hWUHfo6cMIDDXDMylmGSkT93R4GTh+Vcu9RUxPGbiNBkAG3NbdHpxLv
 G1SKn9dJ2jYhaRCFo3u55A1kll1ZmyWpn4zM876CL3bjaHxBuPO16j48vc4Eamz3b/k1
 K2RPNZft07rIOQeGIXjppjTzrLmt28J4ZXLxwcsdCt1AxZ4CGFaTm/Y/wbPnPG71pkIw
 GRKkwd5rks5xS9URrQMyPKsIEowX25fbB4RuXFxGhqmoGv39UtNs0dWn79kCP+ec1XLo
 hNxzRCHUIR3xk7YRLPXCX9yEIBs86nu0PTIHkJ84zHzuJ4p4qhBV+Ga6CCnNwEp974ba
 klHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=cXgeofGslOi+RjL/J6mEqJJEbNd8kJE15RHzG972FUQ=;
 b=CGBiZKh0smeSMUBpYZxJUC+VXBngfEdqI36Op7IMgzvQCUVaFfXc382gu8YOkCS2kq
 8LCVletIGdXWRBrCuK/y8kdwRrCTIZQTadSPF7NR+C0YdBPl5OuQWMyCJOLzmMlQpi2r
 cpjCOcH0CiMMw4gDzkpGVm+PjNZc6O6e8KuLe3kYNk2c7i83KVVOCfIV3Bn7pvIXTga9
 QcRA6/okbwES0Ed0BfWuzx+aoKCFVGGswHa0anxWv+PZo0LtoUVTDGVlEMbdiIpsIt8n
 vRlPaf7zOhXpK7z3AhUSa3Sf6mWJRg6dcvBbKeuS3qe7rvppZFx8FWQrXNCPKiuCK5XU
 DodQ==
X-Gm-Message-State: APjAAAUBwO5LeOAwEz1imRJ2VDWBE2ofWdLWTx2sG/aAeyQGzMKp62wn
 b3bVCeut9YUdUfE5p03/r43/Wg==
X-Google-Smtp-Source: APXvYqxAch1OM+Hj+dyhmaGulL00rkkcafPXofsHFHUk6+pyjE/E1S2dK7Z5HJ8gaKs6VYJkuFVJkA==
X-Received: by 2002:aa7:8d4d:: with SMTP id s13mr14405829pfe.18.1576003387448; 
 Tue, 10 Dec 2019 10:43:07 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id k15sm4313480pfg.37.2019.12.10.10.43.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 10:43:06 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Jian Hu <jian.hu@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson-a1: add I2C nodes
In-Reply-To: <1j8snkh4cz.fsf@starbuckisacylon.baylibre.com>
References: <20191202111253.94872-1-jian.hu@amlogic.com>
 <1j8snkh4cz.fsf@starbuckisacylon.baylibre.com>
Date: Tue, 10 Dec 2019 10:43:06 -0800
Message-ID: <7hwob4owcl.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_104308_360947_D3781EF2 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> On Mon 02 Dec 2019 at 12:12, Jian Hu <jian.hu@amlogic.com> wrote:
>
>> There are four I2C controllers in A1 series,
>> Share the same comptible with AXG.The I2C nodes
>> depend on pinmux and clock controller.
>>
>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>> ---
>>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 149 ++++++++++++++++++++++
>>  1 file changed, 149 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> index eab2ecd36aa8..d0a73d953f5e 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> @@ -16,6 +16,13 @@
>>  	#address-cells = <2>;
>>  	#size-cells = <2>;
>>  
>> +	aliases {
>> +		i2c0 = &i2c0;
>> +		i2c1 = &i2c1;
>> +		i2c2 = &i2c2;
>> +		i2c3 = &i2c3;
>> +	};
>> +
>
> I wonder if assigning i2c bus alias in the SoC dtsi is such a good idea.
>
> Such aliases are usually assigned as needed by each board design:
> meson-a1-ad401.dts in your case.

Agreed.  I don't think SoC-wide aliases are a great idea.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
