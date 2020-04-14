Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81851A8809
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1GkndAkWVkY31K/jCO5KL2UqOF4UWUVMUUnXQAL54Q=; b=tsvO51tsUxF0Pe
	ACLvDg5ddslOk2rjm/LiHFALTuDhidim0KZz4tHO+s1N72sL7p+QVCOhHH0Rlu0vocek0KwNNASEF
	CtTEQ3klgpREcvGo0BqTbsRamsSGs+PMykiJ35RdCW0rO/EFiArHDDnYULgrnP2XQRM6Facusdb3z
	B9hHX0HGO6JWXcWBid5NRXbxhxu7TvOmc5L+qXTLEmQYSCGOcQIRTLyGr0ABShxozL5lHsXTmnepd
	dYxVsBw5lKeIYDoOrUXXth1bHy24qiSubQIWYKzylslP5H8KHY/sclwye9bfqHsPTIOHspdXrKEWt
	5qEcLSGtuMy4FKlpV1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPmF-0005sT-Cv; Tue, 14 Apr 2020 17:55:15 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPm6-00050c-0m; Tue, 14 Apr 2020 17:55:07 +0000
Received: by mail-oi1-f195.google.com with SMTP id k133so10472239oih.12;
 Tue, 14 Apr 2020 10:55:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WmmKKJer8lU0q9QBWs73faNQSjKIqIKtUb0QGBdgiWs=;
 b=U3y+i/6sN0w4bFXuUyVZcCKbtn84g5Gg4FwPPJFYxpcX+uOHL1Ep8i8Yc6xurMXygq
 ktu7Hjv/bjryKFGTSua/9aRGrANSkCYXlSoKDOVCH7ldW8e6g7Wto1kUnFHPrEKF6UDD
 j0ZMtEwaDXmc6k6kGCBCeYq4EF1B8mPCXeIcuJJQJmYJ+QXaZX65WDPsLXG+0FuloPrm
 W3sNnYjzMXq3GAU/ClmnBOYUDTR8FEgDEH0RdSXGXAfEc6bAE0Xc/GDNiMyOlRMqCrRQ
 a8PUIz6RDGvaev7XJe9o1a3QAmY14Eu2NqOWZNGizoOQ4reeapImugDm/7zRrF7UKxWN
 iOUA==
X-Gm-Message-State: AGi0PuaeYvjznE9BFfZW+nx3izo55cnMZ+y8aHPx7+TfV7O4eBsbzlza
 eOSi1UEq2YYoaii8Dxtdxg==
X-Google-Smtp-Source: APiQypILy4aKwl7uq1CLY3J+ZRi+9a7o6R2wYnArtCL7+wAsFVa2mirF2SfcieW1NpBonuGelJVfYQ==
X-Received: by 2002:aca:b8c5:: with SMTP id i188mr15425303oif.2.1586886905055; 
 Tue, 14 Apr 2020 10:55:05 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g8sm3528238ots.38.2020.04.14.10.55.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:55:04 -0700 (PDT)
Received: (nullmailer pid 25880 invoked by uid 1000);
 Tue, 14 Apr 2020 17:55:03 -0000
Date: Tue, 14 Apr 2020 12:55:03 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1] dt-bindings: media: convert rockchip vpu bindings to
 yaml
Message-ID: <20200414175503.GA25028@bogus>
References: <20200403124316.5445-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403124316.5445-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_105506_073750_F0F28F8E 
X-CRM114-Status: GOOD (  10.12  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 14:43:16 +0200, Johan Jonker wrote:
> Current dts files for Rockchip with 'vpu' nodes
> are manually verified. In order to automate this process
> rockchip-vpu.txt has to be converted to yaml.
> 
> Changed:
>   Add missing reg property
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/media/rockchip-vpu.txt     | 43 -------------
>  .../devicetree/bindings/media/rockchip-vpu.yaml    | 75 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  3 files changed, 76 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
