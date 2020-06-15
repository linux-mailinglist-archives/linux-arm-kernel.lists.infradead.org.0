Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAA41F9ED7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ib/p/4DS++YJJE/WmXHrY1LN5wDEG6tiNaS5zVsBAWo=; b=FJQj1oyKJ/Wbwl
	G+UHF76UpQENc7NdiA/FW8JthKH/FFu02vNTCNm+zPyAZtWlJyZuYLTYDKEjdCSR02ESD7LiGMY/H
	PTHeCHTLa8KeqDxHYRz5q3FArIMS+k/UiqVRqPZ2mNtOnUkIC5S+qnSFCR+0Ap5uWKvtVMszxtI20
	zL1IRpVF8G8IPo8qnP06Aj92aikX9gFn8HzrI/4XZmwxX4ig/iEl3v7ppc5EjoLlKPfLG5wemplLt
	h7cW2Sq59aokNixFG+mN0ZmjW8tk+hMlUIIDd+Z6+xiOxKb1ojvEMlrNE8mjZClVrnu+g6zzRcLyT
	vnqO4Cyc2jHMxXhDebrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktFI-0002RP-G5; Mon, 15 Jun 2020 17:50:08 +0000
Received: from mail-io1-f44.google.com ([209.85.166.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktEy-0002Qx-It
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 17:49:49 +0000
Received: by mail-io1-f44.google.com with SMTP id i25so18909779iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 10:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E69M+/HHxmjJy3WjxOHBrpSNM901zCVG7eSXC9OYuK0=;
 b=bhnOTY+PN8IveS0d7lwcrSPi3M1Gb2+rBVdAZgRHxPR9EolUso76RkFU/iKz/BIWoc
 mH/w7Nn14pp2wNQQtAcz8udk3cnmr9U798rxNDHZiSEwd3T4TzgNjoGalnw2wpf/kfSU
 OfCyfpMUU+63GPoGqhGoZTik9NOVasiyymz+nEmyt8POFejcGcdriOHIhE075tFpwd10
 hEupm6Q9+hDDZp0iRdoNUkHWKFJHiQs3I+ozkZ4k77safnq14Tudu1DbucI1DZd8Rzjl
 WKX+jQLfYds82QJavb6CECvMAAQJb6CalPl+V0VbglpVbRDRsYSIMPtyw5iO3g5/yrtu
 fIdg==
X-Gm-Message-State: AOAM532MPxDAGTUpqVWttj8EB5fO3/dJNZYAFhGZ58c6Vjhs8NBIqiN9
 Tgyq4QAEBPzxULLg8BvVQQ==
X-Google-Smtp-Source: ABdhPJxSbp+Dx4S42WakM7ahqNnP4zH6CRsjYOaTpPLDM89io2xDIJzBRgBMzaq+AEa//YCCSaYWMg==
X-Received: by 2002:a6b:8b12:: with SMTP id n18mr28410717iod.160.1592243387326; 
 Mon, 15 Jun 2020 10:49:47 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id h13sm2334102ile.18.2020.06.15.10.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:49:46 -0700 (PDT)
Received: (nullmailer pid 2030488 invoked by uid 1000);
 Mon, 15 Jun 2020 17:49:45 -0000
Date: Mon, 15 Jun 2020 11:49:45 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv2 1/6] dt-bindings: power: supply: gpio-charger: convert
 to yaml
Message-ID: <20200615174945.GA2030383@bogus>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605224403.181015-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_104948_617929_94201FC5 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.44 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.44 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 06 Jun 2020 00:43:58 +0200, Sebastian Reichel wrote:
> Convert the gpio-charger bindings from text format to
> new YAML based representation.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/power/supply/gpio-charger.txt    | 31 ----------
>  .../bindings/power/supply/gpio-charger.yaml   | 58 +++++++++++++++++++
>  2 files changed, 58 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/supply/gpio-charger.txt
>  create mode 100644 Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
