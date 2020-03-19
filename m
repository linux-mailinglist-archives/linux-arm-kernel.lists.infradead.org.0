Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7510D18BDC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 18:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf+Z24nNbTcIYdfpaGcdr1yzTsbsKjPEm6ty16ADho0=; b=khwsIEfmIHRMaj
	1ncuu1/L8HqoBs2fcEPCDwO37QfuVGN8SkPmSUIeIm1SObeXJW3teXoFoqm+nY0DGRQQE2vx0VrOp
	+96ss0KzzFIn7qZGTeuYDUku+OR9l9TzHCFmSSJXqUQ8x2hLW/JB1xB78+WlbASuS0skan3lXZe9k
	2c8Bic2txGOPcAp8dEaf/ndQAYcK+G/ck61LA9+2CzHdP65KRWh6/WVH/m/TgBXb18P/rXaigUYAk
	3mW9ZG91qZkh0kP3xRQAGK/neUU8Ik9io3bGSe+U8VXG7mHResZ7L2enpsrLfMsXSQpLPgz59YjYV
	GpHqKEyAW7KXfid3JX4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyjN-00054C-GO; Thu, 19 Mar 2020 17:13:17 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyjE-00053V-3O; Thu, 19 Mar 2020 17:13:09 +0000
Received: by mail-io1-f68.google.com with SMTP id h8so3091486iob.2;
 Thu, 19 Mar 2020 10:13:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vaMeRGcAwte1RmEGSngS2OcQrt9TNWs2C+uDaacmCzY=;
 b=lkc5NYcx7MMZ2dHWw6fVcPb7PTldAwQOdj96wUidyCKJ8WAScEoWiRKxJv7Piu7+aR
 VTEq7yOvA1E44dzk0O1RPwuie8CcqpIj2VDD+5wbH7BpV25zsPyOgAIKzgtna2VN0uSZ
 KlnMSJMI8tQenx3S/iDxqtWTgCofWx0QM68lm+cLwfGhwNg1+yH38HaZDpAUlpNvky5d
 1/iHPt99SYRrfmBlJfkye194bumnPr75pMQ2/gB0X4mNLNoWI0GDypLrxnvZYO77XeOP
 aRDvsWWSZHQHvgExlVDWZ8N2zQycvXA+3+yFK5taHoC6U6Bcj4aG371r8FU9xHYp1Wbu
 LiTQ==
X-Gm-Message-State: ANhLgQ1Vkq/o0B6tzVuDbje8vPmsQaVmihPCMeaYvdAHiGcqYiQGUDro
 rJTQpxvUFvLu6ZX0zyzWOQ==
X-Google-Smtp-Source: ADFU+vsNzhhlAgAANEzR2hL4ECz0qv+I1PFFy4PjVP6P9NnX2JFAcIQgt4cGP2efDTKjZcnzATPDWw==
X-Received: by 2002:a6b:5a0c:: with SMTP id o12mr3606837iob.137.1584637987422; 
 Thu, 19 Mar 2020 10:13:07 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id j23sm923575ioa.10.2020.03.19.10.13.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 10:13:06 -0700 (PDT)
Received: (nullmailer pid 19540 invoked by uid 1000);
 Thu, 19 Mar 2020 17:13:05 -0000
Date: Thu, 19 Mar 2020 11:13:05 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: phy: convert phy-rockchip-inno-usb2
 bindings to yaml
Message-ID: <20200319171305.GA19150@bogus>
References: <20200318192901.5023-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318192901.5023-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_101308_142966_A992CE62 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 kishon@ti.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Mar 2020 20:29:00 +0100, Johan Jonker wrote:
> Current dts files for Rockchip with 'usb2-phy' subnodes
> are manually verified. In order to automate this process
> phy-rockchip-inno-usb2.txt has to be converted to yaml.
> 
> Changed:
>   Removed unused "rockchip,rk3366-usb2phy" support.
>   Replaced example with something that has SoC support
>   in the kernel.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt        |  81 -----------
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 149 +++++++++++++++++++++
>  2 files changed, 149 insertions(+), 81 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.example.dt.yaml: usb2-phy@e450: '#phy-cells' is a required property

See https://patchwork.ozlabs.org/patch/1257721
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
