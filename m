Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A2E117A92
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90Cpl1XSNaaAAkOA1Fed/2JrxnHsARPVbEP90msUgZ4=; b=Bq3NNJOSvkVrDL
	immq+LHtdT6GZ1GIgAICPVcJrft8jiJtLUWCKeKhUIeeMBR17wT5YxbTvWwE7x+e67EinwMS49Hhm
	1ws3R7lni8VasybWNI2ltlg1RAof5djxxGmE29fIkQ2NyBmQRIgtC3XRLv88+NGbPubpivV449Djp
	+ymNj+ULUbndhtwCx3ihrTN0VV+nfKEw2KX5+d+a4qPrMgmfL5Jrth/zv2uqs3FaqtU3oeceeWV+t
	/bXpgwZe7g4ENhgmECIV52t+eWz/KLT3HDyrTT8nuDTrFcdacOyLnx/TAzcLLoorVeNtoo2IAEMy/
	TN8gn3h1DvS0XnEwPbRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRxM-0007kN-7q; Mon, 09 Dec 2019 22:56:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRxC-0007jF-SA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:56:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so6412172plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=A4KHxg3gak/AwtAzed2CDRcu2q9WfrU2oLQqZp0iE2c=;
 b=JgkAL/tQtnHUIJMXDnJ5JRXCF1Z71qc3TDDuhsTpEFP3RllanM9RKF62rKGTwwyE/r
 3F+sOGcm/Qoo6PW/gV1WjGbEzl/FeQLN+9Cq8B6o/Q5lXLaIFwTagn+oFLmSHZSxT5wq
 b6JzhAPMN4dgoOvUd1T3L/akyP5q6rTfPhBp8ysDtUbavt46I8knRWQ1TyRgkUNuONAt
 qVaaz5V4bS8bcd0C+ZgUiZqe9VyiD+g9s7SdS3JyZKfqnWVaMR7XIgdMTaMdsMH6huO/
 MRbO40lHiN8iUZ5O6HRQubJqB+jrkEfqlDhDNoF58bhwN74s2mubGrtzDOFQSagWQg9K
 07zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=A4KHxg3gak/AwtAzed2CDRcu2q9WfrU2oLQqZp0iE2c=;
 b=VDUBkSr++VlyYfbQWhv8jbdM2Ib6BIi0f4fb6x8uzsWqPYiFixF8jlZ27C/8JDysea
 v/U+fzbLkMmR9mnZ3q1pw/rfLeq9rMH50sqLtJTjo4tGdQbU0iLnuh3UZJDmBh/+aUEh
 6ZaQEdoXI8sKZJ7CNli8CNcAXjF/rdwaoyUMrs/NtHzoSq6ZfXjvMJQcAi0R0WDtLgbC
 j/X5SKNv9RI0ol8qBmTa4dKB0Wyk9n0QOw4lXu36T5l3mIFYuZR/ILgzxvtaph7gPgEA
 heE2umSEshQBholkvRa9LqY9DlYKnCls5BxiVKniHUzy/RV+8bWJlF1huRE7LzP6Suef
 UfHg==
X-Gm-Message-State: APjAAAUJZAF6fkkOUJVdsRKCGkdZVyJCeMUDMmi4vYZJNygzIiASYHdY
 HIO49g0s9lK0hDdZLRjwRZUO5g==
X-Google-Smtp-Source: APXvYqwfy57KUmDE1VA2LS08T92dACffdsdnOJYy9Qvwq4eLq3TN5C71lFIUbtBnAecTSV5jsNQ1Bg==
X-Received: by 2002:a17:902:7884:: with SMTP id
 q4mr30505852pll.285.1575932193897; 
 Mon, 09 Dec 2019 14:56:33 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id g19sm504235pfh.134.2019.12.09.14.56.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:56:33 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] arm64: dts: a1: add saradc controller
In-Reply-To: <1575358332-44866-1-git-send-email-xingyu.chen@amlogic.com>
References: <1575358332-44866-1-git-send-email-xingyu.chen@amlogic.com>
Date: Mon, 09 Dec 2019 14:56:32 -0800
Message-ID: <7hpngxqfa7.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_145634_913888_A410DEF9 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-amlogic@lists.infradead.org,
 Jonathan Cameron <jic23@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Xingyu Chen <xingyu.chen@amlogic.com> writes:

> The saradc controller in Meson-A1 is the same as the Meson-G12 series SoCs,
> so we use the same compatible string.
>
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
>
> ---
> This patch is based on A1 clock patchset at [0].
>
> [0] https://lore.kernel.org/linux-amlogic/20191129144605.182774-1-jian.hu@amlogic.com
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index 7210ad0..cad1756 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -93,6 +93,21 @@
>  				clock-names = "xtal", "pclk", "baud";
>  				status = "disabled";
>  			};
> +
> +			saradc: adc@2c00 {
> +				compatible = "amlogic,meson-g12a-saradc",
> +					     "amlogic,meson-saradc";
> +				reg = <0x0 0x2c00 0x0 0x48>;

Why 0x48 here?  AXG uses 0x38 and you're not adding any more registers
to this driver.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
