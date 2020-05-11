Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FE61CE37A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zBLKFBK/WnzUdw6PVzto0fLZ0Cpsq9Yiadk/lSO5TI=; b=EV50Qry8/zVyNw
	VxK96h0XDCe/fc07LJAihMSDxD9troY8VnxKjpZ4pTORs2jXzmudgWHJd4sMpYgYpfFCFmjuw4uuQ
	685FdKa00O7Dd5OwtBu3kVEgUcnka5X4ExJVBnjRTO4la0qKzwgc7v1GaOKHzhCf5RZXe4WmQ1qPS
	MsiD8Fa0RUyds70eafdYEp0SjC5Kg3uq+Ill953AULe/qTJa+lDM1BzNDpDUIxEVA4tnDWHX5KDLM
	0ft5DHNfSJku0TbEnCx/VDYCXFxQ2IQA8+2RkgvaVrvZv31q0OJwf4sQUPbveU4aYt/G5jN3jvQAN
	dSzEwO6iZxrhlbxWQaTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDfX-0005ig-Sk; Mon, 11 May 2020 19:00:51 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDeo-0003bi-Kp
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 19:00:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id t199so16091545oif.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 12:00:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3OQElmdEf6ANxO9yWCHx08jhkcCE6GTH6WxnqucsYS4=;
 b=ln5K2atc68KAwYeHEKK8n68kMj41jMzKz0lIYif4Yb/S3ZXPGe43HALDH+agX3eE6G
 9RTyZeQuaYGcUZRI/Nr5WckcD4zuGu5n+JJmyvCT7IIsff2Z0Zl/NHl5ATbGpNdV5VIk
 bGejrqwpqZooPCRZCe6G/tA9yw/fR3hBnM5j4xUyCblmGMmNYGaWIJ2jjASOKBus8Ppm
 JqZ66wa8E4NXweOMhdJEdc3CqdHh4Kd7SNR/OsAFvbtbaD62gXYjIKrOU0O5DaJzpQoX
 4pk00zY2G6GCiL0G74xU7Q2vqG+pb8rFDzwJOxA8c23ZmWqsZckclKEcN/9EKUm0mlsa
 AJ4w==
X-Gm-Message-State: AGi0PuagzChQGTVkFcOzadm4wsJQVdRPb0cvZrEZbu+eqnX8k0JZcnco
 nKc/Ki1d5GxZmkHk74oGAt91nm4=
X-Google-Smtp-Source: APiQypIlbJwELJ7ratpU0IUXyqMjaII4UKvwSaScvVnUdGMDRLxrcwTHhlisxm9GrChX2KpbzKWLxQ==
X-Received: by 2002:aca:c613:: with SMTP id w19mr19787064oif.114.1589223605738; 
 Mon, 11 May 2020 12:00:05 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l89sm2332076otc.32.2020.05.11.12.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 12:00:05 -0700 (PDT)
Received: (nullmailer pid 7490 invoked by uid 1000);
 Mon, 11 May 2020 19:00:04 -0000
Date: Mon, 11 May 2020 14:00:04 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 2/2] dt-bindings: watchdog: Convert i.MX7ULP to
 json-schema
Message-ID: <20200511190004.GA7369@bogus>
References: <1587478886-21512-1-git-send-email-Anson.Huang@nxp.com>
 <1587478886-21512-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587478886-21512-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_120006_704558_AF29AF85 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, wim@linux-watchdog.org, shawnguo@kernel.org,
 linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 22:21:26 +0800, Anson Huang wrote:
> Convert the i.MX7ULP watchdog binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- drop clocks description;
> 	- drop unused label;
> 	- improve timeout-sec.
> ---
>  .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22 --------
>  .../bindings/watchdog/fsl-imx7ulp-wdt.yaml         | 60 ++++++++++++++++++++++
>  2 files changed, 60 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
