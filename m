Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1021A8820
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dV7+7tlmanuyt8zMHvz6ta8YkOau0QQodoXOE4MmRMw=; b=u3DZoMe4WhcMFU
	Gfu+D0LUf8hq6A1qY4cCRcrKkSeWTI7dKs8luRE0KFWKBskFq2fu0MuxmayqvniTip1hiYGmsPOom
	Oi9/cqjYXZohQiTyJSlE4w6VeNULL12tmMnth41TxR3db7BErJo4p7yU/ZLWXbuSVJKwDWZMhAnwa
	0m3+W6UFyzJWUrUx6WOdHSNTe6sUFKNv6aBaIxOWWtLg4GLKS7Q9K22eGsqkbYHvYRnOa5J6BUI+T
	vz+SQ4qispHyQ3yEDL01Z2OKROGXsLJHCUSrsIWP/p2JJke1FXqgmDqfdLK1b1Zko3V2blwAjG8f8
	dkeFGzIX8ZQK25JO7wmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPqH-0007u3-Qr; Tue, 14 Apr 2020 17:59:25 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPq6-0007tY-1k; Tue, 14 Apr 2020 17:59:15 +0000
Received: by mail-oi1-f195.google.com with SMTP id x10so1790502oie.1;
 Tue, 14 Apr 2020 10:59:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MbLt7+mg6Oetm1gbvDN0HE/9QqLc7vIPQSx4pz/IWko=;
 b=cTj9K2a42/ndl6nBwo5sNlJilyc6bSDTGtqyF3GXLWatUU/M7FKI0P+igk5PEAdOCx
 y0oP9ISHLVVMHLZ+jBaQnQA0XM0EV0hEL3pH9fnc014Etb0nx9NzNZRP/+dvqcsOpmJJ
 zsAstvfkKGa08NsFgFNg6nt3fyuhRs54eXX0gwSWkPHFW27FfsiNVmvbLwV1OwhUtNFf
 16a5HcXgdQiG0fkp3Sn13aWSDOjmMQGNj6QMYOmJ4r/6akTNfm2nbrTDkdrfVPRVOwxp
 JstSRv2oSv88b95BIQHg6/p6OS2dWQGyQd2D8qzRhAogwmeZSbcbPW2G5uUxKePLS4WA
 UGjA==
X-Gm-Message-State: AGi0PuYFakfmC4YO32/DuMd2GfUh+MneD4TDuDGPqSqC3NucgaFhAF2C
 xGcaU6nbPM/h66BJUEM9z+14KTA=
X-Google-Smtp-Source: APiQypJlaXG4zu9PmD/DgToYH3heydOg9ica+o6s8kLB78gY3Gm05N1iYUwxCQz5c3+ZNDu+sl4n8A==
X-Received: by 2002:aca:f491:: with SMTP id
 s139mr16592669oih.128.1586887153366; 
 Tue, 14 Apr 2020 10:59:13 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k64sm5691828oia.57.2020.04.14.10.59.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:59:12 -0700 (PDT)
Received: (nullmailer pid 4704 invoked by uid 1000);
 Tue, 14 Apr 2020 17:59:11 -0000
Date: Tue, 14 Apr 2020 12:59:11 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: convert rockchip rk3066 hdmi
 bindings to yaml
Message-ID: <20200414175911.GA4583@bogus>
References: <20200403133630.7377-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403133630.7377-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_105914_088130_325D4ADD 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, airlied@linux.ie,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 15:36:30 +0200, Johan Jonker wrote:
> Current dts files with 'hdmi' nodes for rk3066 are manually verified.
> In order to automate this process rockchip,rk3066-hdmi.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changes v2:
>   Fix irq.h already included in arm-gic.h
> ---
>  .../display/rockchip/rockchip,rk3066-hdmi.txt      |  72 -----------
>  .../display/rockchip/rockchip,rk3066-hdmi.yaml     | 140 +++++++++++++++++++++
>  2 files changed, 140 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
