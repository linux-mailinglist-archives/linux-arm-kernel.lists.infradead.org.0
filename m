Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D8629942
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aRSYSJrDlkaQvJm0bPr60hopSy6ebl/J/3n0thY5dQ=; b=RVqlzO+dxUqPsY
	uwk/rGl0RvN7NIGTZMYLJeDnufggwJmkloyfEXv2uNitzWPZ8WYnLUjB5aUtYqUiJJsTB7VfDB4Qt
	KLsodK7Q1cJ1SiwuBdwNEaxsvxQzYtdOv8cpeUXG8KtP39ZGlAZ/pTI8AxwiRVNu5wlsQaBTfyZYg
	zgCU9CfphmfwWg25kDkK/N2eEaY6I1shumVmGXkyM0jInwnm2wd3CkyEH7Fdy1r0DAMW25nny4LSh
	IkqTTb3kpuSoCba8pyaeciIQxb9b8W+20U+oEQcy9wMFjXZXJGd5fhECR2RWn0kqV1Wp2k8d4/9Em
	dMCf0jtWbHgwaHnJQcCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAab-0001ad-DQ; Fri, 24 May 2019 13:50:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAaU-0001ZS-1H
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:50:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id p15so4219340pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 06:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=mfjGRiMHKLKe40QcPzGgiXQKqFosuxoiydIUgFnM900=;
 b=hEqELOMjryeiq/Lz0j9sXaizVrFc6bSfFOPrXONo19/tKBN7s3fxW+KghW5RryeTIF
 H4mhqxlbjBImKESJHTVUZWQ8tcdwfqfHaaOBK/Z6lxTMKaTRztgUhKJ0F1A5k6RtXUfW
 gjk/ADbWI3Z6HeOupBvKaf0MxJhbqVirqA6CQiQGxn+pXTFPsYCljQoEW3t0VGO1oCGX
 QIJ9h149YB3yPIZgVgQqLEvH4JNMPFy+hEPqh46tGhlBb/uCVbMqFXh9Dy4JQmoZnBTa
 dJI29pKUP74aWLR015xqFhcHMR1lyKfox9scN8JcJ2PAqM928cFBcvQDxTd2pibUH7Gn
 Rcxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=mfjGRiMHKLKe40QcPzGgiXQKqFosuxoiydIUgFnM900=;
 b=bOXCp7U30K4uc6TtRsduqR4pgVICJuotSoz6O1O/OeJuop3mkmqv3TnvQNmKRvn1pt
 r87vsbVH022N1HwUcKkYHnwmU8n4nUZk1ZCnfF2HYmOE13UKvt077JKuylwGYtDVyr1h
 M1WI8rQPHhFY+RjKwkTdRUCytBx+gJNsCUTjE8DR7L729UGbUDopyyDj7truapY4GFCd
 pgJe79SUe5/4eHICdFHqeLunevT4SCHsDaC3FqerAAMVXTUBP1GWvBLGOtldKM/21Gqg
 MSwK8T7A8lDtsUS1/i1ajGNYXMJUKVR4IRIGcITS/uEs2yVw96egdy1CKRbnO1mscUX9
 s1Bw==
X-Gm-Message-State: APjAAAV8H03+8Hday/NTt4G55LjAhEPZw7pNxI4UYPI+70jkV11lYqmh
 jHNOdik/1RZkeVvkfJUHm1/SXQ==
X-Google-Smtp-Source: APXvYqx50QVTouTpwq7kMvsDqLVK19AQ+I3Ki7CVWSIIkSQ5uiFK6uhw/4n9Kco9j2EHKt32XLCrWQ==
X-Received: by 2002:a17:902:3183:: with SMTP id
 x3mr3353568plb.321.1558705820424; 
 Fri, 24 May 2019 06:50:20 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
 by smtp.googlemail.com with ESMTPSA id a9sm2551220pgw.72.2019.05.24.06.50.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 06:50:19 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: "kernelci.org bot" <bot@kernelci.org>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com, mgalka@collabora.com,
 Neil Armstrong <narmstrong@baylibre.com>, broonie@kernel.org,
 matthew.hart@linaro.org, enric.balletbo@collabora.com,
 Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: mainline/master boot bisection: v5.2-rc1-172-g4dde821e4296 on
 meson-g12a-x96-max
In-Reply-To: <5ce78689.1c69fb81.58097.eacf@mx.google.com>
References: <5ce78689.1c69fb81.58097.eacf@mx.google.com>
Date: Fri, 24 May 2019 06:50:18 -0700
Message-ID: <7hmujc0xnp.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_065022_080935_10982A39 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"kernelci.org bot" <bot@kernelci.org> writes:

> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>
> mainline/master boot bisection: v5.2-rc1-172-g4dde821e4296 on meson-g12a-x96-max
>
> Summary:
>   Start:      4dde821e4296 Merge tag 'xfs-5.2-fixes-1' of git://git.kernel.org/pub/scm/fs/xfs/xfs-linux
>   Details:    https://kernelci.org/boot/id/5ce72c6259b514ed817a3640
>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-172-g4dde821e4296/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-172-g4dde821e4296/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
>   Result:     11a7bea17c9e arm64: dts: meson: g12a: add pinctrl support controllers

False alarm.

This one is failing in one lab but passing in another:
https://kernelci.org/boot/all/job/mainline/branch/master/kernel/v5.2-rc1-172-g4dde821e4296/

I'll look into what's the difference between labs.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
