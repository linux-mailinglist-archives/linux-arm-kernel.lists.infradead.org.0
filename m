Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F36E1FD305
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 19:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kCCUiDcp5yFIUq8ADOGYn3kH0XfH9hskHzr0ASIdZw=; b=jEjRpsM4LY/r/I
	LC1DYsCY9iBNLzUGa3oHsXGa7xkWNG89ne3U2mj4C3VgIYbRpIJvd4uaVMxd03umvEtCBH4/LDox2
	QauU7b9y5348TkW5OfE20Gf9kK4pYWkxpkq7mDFcOP9dzMzhA5JdYUtFyyX7EqUZRbxlG7KqS9MQy
	6zkohEdp60X2zj+e1sFet0xcjF4HQ+RT+4520UnnEcctswPBqhW3DdswOstf2YUxj6TM29gEL6ZHi
	2egC7NOfHo2Wvjufw7aEtnupQi4BW7CFGKUP32Hgqx2w/f7nuyuWivk4oMYYFIuR6Q2LJM7s/q3Xv
	/xdqrvh176EHiY85CRKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbQS-0008L1-UG; Wed, 17 Jun 2020 17:00:36 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbQJ-0008K7-Su
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 17:00:29 +0000
Received: by mail-io1-f68.google.com with SMTP id o5so3579745iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 10:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fki83yGjWsSUmt5apeBY0MavNHGcAOsj5zPBT6SYQlg=;
 b=L/7CaVyeuIhQ8y7fVfYz5Wk9uR02GXUpRUWo1wdg4WET91NL1W+e3Lsqwui7/kgXXM
 NmibpviwXWwcSG3x4Xpdx0GXeMuSjdDmJGV1TYeQurbyhcCcFaBaGyVZ+rmb/bhH27x/
 POSQC7XWZok3WAawPPgQLklB/JXkSF5Bv8UVRl5kKbnRtZee4fGoFAXjHSCBDkU9uBGG
 Q83u6whtIJuX4tSPZvbNXpxSw2Cv4CEGDraUnW/WNY88SPsmvVDugWDnBCNqHAnpn/3a
 geMvOkneI0oANPa65H4WCIe1/MVYgMx1b2ala+u/IvENUuZGKtZ/+57AQX7IcwoAQkOk
 TLbg==
X-Gm-Message-State: AOAM530U7JHGugQ8K8DoG/7NAzbSVT4Q4xOHhg/o0DxWbtCMuH/vs8iu
 BGyw8kL5WFRjT7sgBnNODTRRsSJdMQ==
X-Google-Smtp-Source: ABdhPJx+p0Qee6x37cKl8Eb4FOZ43dbLofGKP87bW/hSWuvOLKjm3DEF+vk9a5mWaReVwREnPvpVIQ==
X-Received: by 2002:a6b:440d:: with SMTP id r13mr310698ioa.95.1592413226572;
 Wed, 17 Jun 2020 10:00:26 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id n4sm246839ioc.8.2020.06.17.10.00.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 10:00:25 -0700 (PDT)
Received: (nullmailer pid 2303368 invoked by uid 1000);
 Wed, 17 Jun 2020 17:00:24 -0000
Date: Wed, 17 Jun 2020 11:00:24 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3] dt-bindings: mmc: Convert imx esdhc to json-schema
Message-ID: <20200617170024.GA2301944@bogus>
References: <1592278549-32283-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592278549-32283-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_100027_932489_D32F34CD 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 11:35:49 +0800, Anson Huang wrote:
> Convert the i.MX ESDHC binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- fix typo of "dealy" to "delay";
> 	- remove unused "Several ranges could be specified." in voltage-ranges which contradicts
> 	  the min/max items.
> ---
>  .../devicetree/bindings/mmc/fsl-imx-esdhc.txt      |  67 -----------
>  .../devicetree/bindings/mmc/fsl-imx-esdhc.yaml     | 124 +++++++++++++++++++++
>  2 files changed, 124 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.example.dt.yaml: mmc@5b010000: compatible: Additional items are not allowed ('fsl,imx7d-usdhc' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.example.dt.yaml: mmc@5b010000: compatible: ['fsl,imx8qxp-usdhc', 'fsl,imx7d-usdhc'] is too long
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/imx35-clock.example.dt.yaml: esdhc@53fb4000: $nodename:0: 'esdhc@53fb4000' does not match '^mmc(@.*)?$'


See https://patchwork.ozlabs.org/patch/1309972

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
