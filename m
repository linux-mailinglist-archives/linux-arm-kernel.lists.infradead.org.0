Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95E7C8FB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwwzaY6BmAYRAT8hakNBhXXz0oCVllIOEqNZMoKwtqk=; b=g4AqVH1lW6rWym
	pDtmHkav2rhjQu+0dbvS23Dmb7PF1YQjgECwzVUjwORdgo3trYu+CErMIeqfFJJlpdz+tIKf7R+EP
	XuyQV0275mAKb/tsHzP5cnwFb+fQ8deyYGhmYDwil1IdEXKvV+47lA1UKezPC5ttTXqpNsDfU+yv4
	FygPYgV9RJZzi+wWHtlYYegfPfhSzlPkHzxWq7hEWsMe2YdoCtNJde+UBGWu+wJiMOKIGJY/nKzSw
	irxY6xMXMAsrSRn+HcLqKWViT/+Rafu8jsY21SDt2Ypm4QHWgC9hwV7t/YcSuueit1423sepwQBnx
	Dtq7ETPrq32W5WVE0FNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiIp-00018X-Ou; Wed, 02 Oct 2019 17:20:39 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiIg-000182-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 17:20:32 +0000
Received: by mail-wr1-f66.google.com with SMTP id y19so20592806wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 10:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HHIl7GcN4vEcWiPV/kc+k0bb9GY+GyE08iX8fWZ3jfQ=;
 b=a741hBKQvAHKK6+MryLiWLM9MYQ8uUaCle1q9dw7FW/2N4Eg2AxF1MxvLab0vLIOom
 W2AX9wW5VmBl2Uuep+g59Ti1abT49rugNBYqEGktg4/pxfn/PJHUK2ahwWj7rSLAVtkp
 NGhVyfc5d5wNeIxSHhc+oq8CFdBgQanTvp+v0IODU9RcQcubZJnAWIl5GBLUrveuGvBy
 bAK8qmGNzRhYKWOjr/x0nEfb3Gpq66IYKiCGkNTt/m1tbnvDA2lpcTjStfp7DCUaaUzm
 zQtMO1m27hD5TdjijJ4QJZivZEiFtADZAR7S+zmTCR6CXeWchllpaoaEfsfX9StdikPh
 34ww==
X-Gm-Message-State: APjAAAXGbvtHQlcz47agJwtiIcd+ZUu44hr7AJFMBEOQuQV56eAfuQTF
 FmkJgC9QkXsQ6nnX1fsvpxI=
X-Google-Smtp-Source: APXvYqxxarjurJVDg8sOa7I3VttsCWxG/9IRBIDA7rFqTl1ZhKVpbx9bSmVkUQyRWZSN7AUt19cTEg==
X-Received: by 2002:adf:f008:: with SMTP id j8mr3583865wro.75.1570036829185;
 Wed, 02 Oct 2019 10:20:29 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id c18sm13223wrv.10.2019.10.02.10.20.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 10:20:28 -0700 (PDT)
Date: Wed, 2 Oct 2019 19:20:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 10/10] ARM: exynos_defconfig: Enable Arndale audio
 driver
Message-ID: <20191002172025.GB21463@kozik-lap>
References: <20190920130218.32690-2-s.nawrocki@samsung.com>
 <CGME20190920130711eucas1p29497b40981e4e0a24769ced4e06be208@eucas1p2.samsung.com>
 <20190920130702.529-1-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920130702.529-1-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_102030_862797_A9ACF0C7 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 03:07:02PM +0200, Sylwester Nawrocki wrote:
> Enable audio driver for Exynos5250 based Arndale boards to improve
> testing coverage.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  arch/arm/configs/exynos_defconfig | 1 +

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
