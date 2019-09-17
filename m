Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360FEB508C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNzblgUc0QLpRnHILg5NeURRrc2NSGQONevKbjqu8ls=; b=ZIgxfWDF3m20r4
	VncqjWsUCOcdTQIUETs/IR7B8gMoPhezFQB7DdqhMKVWpLomETOWRVkXNGVMBhWr/ZDzqMpQOr0uI
	8DhQ6aD+XTVD1zz1pKdoAyxtGfB1tealnexSD4YpUqwMfMz88bI8X0nBi7PiLzUcLt3bRC8cBL4Dj
	yawhn4tzli0IEtOo5n68l6Kl7VtHicKBeM8TkbvJ7V8kzqFToLR6hGz151JI67BS6oVdGREpyCKPC
	oR3VJi4QO18GvaHrZ3VtZLixP6SceM2jwUGaYYpPf4HDOebEAwDVscPG/ohSBW2YThY9Y4TCXbvC/
	QH+RgRVlnSWaw1bFMvHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEbl-0005ao-PC; Tue, 17 Sep 2019 14:37:33 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEbY-0005Zx-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:37:21 +0000
Received: by mail-oi1-f193.google.com with SMTP id x3so1579923oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 07:37:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BigMPexxOngg61i5wfyf2Qw8qA3RwUd/7pmyWTeWTRk=;
 b=U/oYCmetkSYMDgRKy7BxkZR1JsP2oo2aJxYH3JOkfZ41AydfT/ari3ecwL7grZf8Ae
 KlVLv9Q0II0Yl2piFYJ1QO2qFh+J9bHjio9KDK5E8bMloUTQYXGFvadMUIjDGAbeoHpx
 CMpI4v5VifzqVuaZezNoRknWV+FBdpXS3+kLIB0IEDSvWD5kYl4phwUJQ7/w/GQYn+DZ
 XnSOVkQ2Tkjjm7yx2b7Be7LwfmS9D9GvgndDqPaNSg0PJow1hWzpnbJLApsXzQpVrREo
 Dj8bgxbFxPa776uSdG+59+uJcH1f16/4L7pP8Q0M/kX+WD7v/tw7pp6ZDBeTDm4+qY0z
 mStQ==
X-Gm-Message-State: APjAAAUUsxgsJS/VjSmI86eS9PI29ORogrZ1wKWRWvh4QDrA6VaT4ea5
 sJQcgBwKBJ2153yTTpLSuA==
X-Google-Smtp-Source: APXvYqyrZdwgk1e0LtNYLYAkGvhS8of2AI4Dnqt2nTvScQNTn7frbrk6hp6W5qCg80z0n/wV5AcQ1A==
X-Received: by 2002:aca:4fc7:: with SMTP id d190mr3871430oib.25.1568731037314; 
 Tue, 17 Sep 2019 07:37:17 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a21sm673465oia.27.2019.09.17.07.37.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 07:37:16 -0700 (PDT)
Date: Tue, 17 Sep 2019 09:37:16 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH RESEND V5 1/5] dt-bindings: fsl: scu: add scu key binding
Message-ID: <20190917143716.GA23562@bogus>
References: <1568689939-8871-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568689939-8871-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_073720_799125_817A46FB 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, ping.bai@nxp.com,
 catalin.marinas@arm.com, peng.fan@nxp.com, stefan@agner.ch,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, will@kernel.org,
 festevam@gmail.com, yuehaibing@huawei.com, marcin.juszkiewicz@linaro.org,
 cw00.choi@samsung.com, jagan@amarulasolutions.com, linux-input@vger.kernel.org,
 ronald@innovation.ch, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 arnd@arndb.de, s.hauer@pengutronix.de, mripard@kernel.org,
 m.felsch@pengutronix.de, enric.balletbo@collabora.com, robh+dt@kernel.org,
 andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 dinguyen@kernel.org, kernel@pengutronix.de, olof@lixom.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019 11:12:15 +0800, Anson Huang wrote:
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> system controller, the system controller is in charge of system
> power, clock and scu key event etc. management, Linux kernel has
> to communicate with system controller via MU (message unit) IPC
> to get scu key event, add binding doc for i.MX system controller
> key driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No changes.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt          | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
