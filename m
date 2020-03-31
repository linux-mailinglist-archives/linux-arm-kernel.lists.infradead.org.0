Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11D319A135
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 23:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkZMKVLCqDTTzOA7QaB89NUbCM6JZuFB8mzrjHKUTWQ=; b=ha0Fl5EiE7BuA/
	4HiHkzvIPh4ICPS6q24WVzwR5g+eEMSvhd9Snf0oHlVMkoWxoeBXwRNJtyqueY2KLlpQ334H5uIYa
	nv4ByrhIhma4s4qcxHNbaaLPfNG4MEz2oJ36tGJLsyLU8oztl/sQITgdClk0gTW1fMD/ggfYFCtkT
	F2fBmutGFAupxjy5qtvPahQsxCE9VT+uZ04CDgP3T4G16T0vn3M95o/wmWa1nhKUcBaPypxS2ZiXI
	UMkA4I19Iyoa8drY5xszKc+mevkGbyyD2fZaM9eA6HZ5TSZ+ZMZxUeRQPfXAxyQ/uDYetKb2sf8j0
	0j8Cg2DskLTguMxgp5ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOkn-0002Nl-0Q; Tue, 31 Mar 2020 21:49:01 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOkc-0002NC-30; Tue, 31 Mar 2020 21:48:51 +0000
Received: by mail-il1-f195.google.com with SMTP id f16so21003754ilj.9;
 Tue, 31 Mar 2020 14:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B+duCudawvbCTKmXyXJ3eOuf7ahuLnq9qxk7sNQ38hY=;
 b=hH5JBPGYz0lwai2/XrS5/BD3YckwVJMEEAHAbncNxJvogK5kyYkVsZFhE4yV9SLwIc
 wS/omzyXIMrfVl5n0hcyjeYdwrxUQEOoPvAfqXfSKiU9UsVsNJNweLsCe0MaInpkS0Bz
 DEaqDEfV2igm2mwz37YlrZ1kq2WRDesjeC/qC6RtrmJUNFZ+yHrYzmyGP8yKSRJ7NFmV
 gwJaANvua8X1iJoSEc+5E+nZ80p2iFvN6KGRic/ZjTXzbWr0s6ai3XORvJ2DqD5/mQYC
 +vkbq0VR4OfA/4oOuDBayIIlWifp3VJw93H//0dI5n+Q/qZGesOktBtUzFcG9j2/SJ3x
 XL9A==
X-Gm-Message-State: ANhLgQ0+1CM+tLBaX6VeiCNMylqNuhazUo6w0KINbgYuqREFOVDI7Ghu
 9x/Cz9y33AFc2P4BRvRNbtX5hf/LEQ==
X-Google-Smtp-Source: ADFU+vtHHB1tl92aufQ0mANPRYsjwcdU/Os8skfqkgrsqVhrY2o1LqgNd3APlflmiWiOCVZRfjC7aw==
X-Received: by 2002:a92:8548:: with SMTP id f69mr18533450ilh.20.1585691329472; 
 Tue, 31 Mar 2020 14:48:49 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id d19sm30169iob.30.2020.03.31.14.48.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 14:48:48 -0700 (PDT)
Received: (nullmailer pid 31436 invoked by uid 1000);
 Tue, 31 Mar 2020 21:48:47 -0000
Date: Tue, 31 Mar 2020 15:48:47 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: convert phy-rockchip-inno-usb2
 bindings to yaml
Message-ID: <20200331214847.GA31349@bogus>
References: <20200325121335.12249-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325121335.12249-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_144850_127387_F7B08E28 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
 kishon@ti.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 13:13:35 +0100, Johan Jonker wrote:
> Current dts files for Rockchip with 'usb2-phy' subnodes
> are manually verified. In order to automate this process
> phy-rockchip-inno-usb2.txt has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changes v3:
>   Replace oneOf by enum
>   Remove allOf phy-provider.yaml
>   Add "#phy-cells"
>   Add additionalProperties: false
> 
> Changes v2:
>   Keep "rockchip,rk3366-usb2phy" support.
>   Add "#phy-cells" to example.
>   Add allOf phy-provider.yaml
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt        |  81 -----------
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 155 +++++++++++++++++++++
>  2 files changed, 155 insertions(+), 81 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
