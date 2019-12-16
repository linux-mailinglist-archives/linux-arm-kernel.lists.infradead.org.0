Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A9A120EA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKUIwu5zXq37uWoUSHqahLg1Xp58yWh50BHyz2bUurQ=; b=BxUmfG4LD5Xts+
	gvjCxBasHfeOtS3gXOwmGYK7C6+URlNhHAOzlo5or9A4y4IbwPm05jx0WGT967hMCho0L/2qKCAHf
	ztXQCBhHIROujdbINTU/UTGGd3MQscr42uBvudATjTA3eewIfScySpRonCjY76lUrCkvfXICiSfP1
	OAR0/k09zncNcjJmss+LPssC/PBpT5zcJ6WhQpt7FHRZ5xc26d+73s+zhetdvsEdvKd8aTq+hw/ke
	QgFcR1NfO8VYczIP3mOcLMUD7nc/LoTOMQ7FRmtmp6d2EcHQGsO8wrIkIIcQkRXSxOZdLTHsddTOO
	lFIPrS09/uG4muZdtqOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igskY-0004KR-GX; Mon, 16 Dec 2019 15:57:34 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsgz-00044O-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:53:54 +0000
Received: by mail-oi1-f196.google.com with SMTP id v10so3637939oiv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 07:53:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/9D5bT/6tP3rVi8f9x2mTx0nceNBLJn6Pnm6PW8Q2Io=;
 b=QJDW8I2rGcIPqPhuW6bIacQJWn+UT0VFrnDkFuzS6kgDxcH5Di2WtYZXSdAQF2HLfB
 q1i242TCZV1MHFgNaeP0cpaaBoMzxvPtP5jskJd2apyCrj9dnlplvLvttsCALNeqzHZe
 PXZV2mtIlw3buCg2hEyWWUBqwJuUcbwVkrnO3XzkMwT8/z0ASxeu9Ta1sQSo57gV1GH5
 MGRwfloVKQ10Yzemr7p6xRKVBIDfbRpu2uWNV4PERb21TesZzL/md2riYLA2bO84qEec
 PIW1l+StjaW7jMn/0L13qr4cOg/8EveqQm1BjEWhPBH6TwUVPxbsJxlEAtyxdEpKv5fA
 s3Jg==
X-Gm-Message-State: APjAAAWP3sqTOO3JRjozuaLe9nTI6PzyXGYGPXs7vQmSsAa8mSVlVclY
 jCQC4yDxcZ6tdbDHLfY3BpwH4+E=
X-Google-Smtp-Source: APXvYqyjwLNiOdATGwneeb/VvNya7K52309SCLgJd3wlYpmyowMytvhPIlCjsXsVJ32JPzuOA6Vxbw==
X-Received: by 2002:aca:5f87:: with SMTP id t129mr10180489oib.36.1576511631553; 
 Mon, 16 Dec 2019 07:53:51 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e65sm6962874otb.62.2019.12.16.07.53.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 07:53:51 -0800 (PST)
Date: Mon, 16 Dec 2019 09:53:50 -0600
From: Rob Herring <robh@kernel.org>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: [v5 3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr1-alt-addr' property
Message-ID: <20191216155350.GA10941@bogus>
References: <20191203122818.21941-1-biwen.li@nxp.com>
 <20191203122818.21941-3-biwen.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203122818.21941-3-biwen.li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_075353_445243_73AD17F1 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Biwen Li <biwen.li@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 ran.wang_1@nxp.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Dec 2019 20:28:18 +0800, Biwen Li wrote:
> The 'fsl,ippdexpcr1-alt-addr' property is used to handle an errata A-008646
> on LS1021A
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
> Change in v5:
> 	- none
> 
> Change in v4:
> 	- rename property name
> 	  fsl,ippdexpcr-alt-addr -> fsl,ippdexpcr1-alt-addr
> 
> Change in v3:
>   	- rename property name
> 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> 
> Change in v2:
>   	- update desc of the property
> 	  'fsl,rcpm-scfg'
> 
>  .../devicetree/bindings/soc/fsl/rcpm.txt      | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
