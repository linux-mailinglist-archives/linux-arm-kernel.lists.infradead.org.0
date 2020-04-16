Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E511AD172
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVBbR+s4h9XfCdd7KuuSHZFdU/4QtI2R50EaSa4Oxzw=; b=ZXjIiPddF4euE/
	W8x9/XuYTX9G71AwjfIiCgaFyRFYnnIHyBvLv7Ju1smPTApuBR+viVdzKMf28RtkA5hVrJpfyq7Rh
	hCeSZYWKbG02OO+JIjgCAdrrupL0sU8pHwSJo0HAmCHWi0IAPpktdDRCqsoXNHnUhMG/1A2i2iE7N
	QxBLCCSqhRIv+PjMXRO9MrfxkXE0Q4HJtc9JsvIXQut+Lz6jt1FVBxTXcQv/fsgWdUBETdAci3HNl
	HCgNVY/zQ+8OR6LjPdylE/X5VCXhK1N6N/qw6wCBKR/VtEj0vAAfOQaoEIGPxHBFWtJmNJpXhajpE
	gDVsnatLTE/B2R6I4P6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPBOX-0001UG-53; Thu, 16 Apr 2020 20:45:57 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBOO-0001Ta-6t; Thu, 16 Apr 2020 20:45:49 +0000
Received: by mail-ot1-f65.google.com with SMTP id j26so4300032ots.0;
 Thu, 16 Apr 2020 13:45:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uNp2FEE1PLVvPcRli4Kxfk/uC3bIO5nhdJmFaCVvZ8Y=;
 b=sEx7vkVcqpoChhIYGNAg0VsbjLxqbKMCU4+LtZworvPrVYlu5hHz4zM0wurAWEloef
 3N03sH0zXVMYcpf9N87VsnnJTmI5rtyfElnudCBL/AqiMW2Cmt2s43fx9oiAn/2xz+O2
 M+p8qrQcI3C0I7dDeWiHvs9J9beZ+DWFYPvem/hzkDG5P6upNnPKQjxhqWjx/2LuTOg3
 atBUGLXj08+jGS9PrNN/mIO96xsVPjmyrwod2TzqteDyeR1X8SrefKsaZF2f9YhTMvoU
 zrYuqCgd2Rj5o1XewqOjAwyD/mVHU5UFs2C0ABx/GpiS8jEodsimGelf+rTBbp5mHvTT
 CLVg==
X-Gm-Message-State: AGi0PubMeLQoLqE5x78Jwdj5EcjdkMWjp+EzpeHFsyKqelF4o3iKu92h
 G6VCGfda9TZDTEPLI2YeIA==
X-Google-Smtp-Source: APiQypK5AKz1ujNN52aZa37611roc3sbyihjxaYggNSCUvmDTZoTUNxSsPeEJfql3QtvsIAeOCVY9A==
X-Received: by 2002:a05:6830:1599:: with SMTP id
 i25mr2759otr.188.1587069947265; 
 Thu, 16 Apr 2020 13:45:47 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f45sm7402999otf.30.2020.04.16.13.45.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:45:46 -0700 (PDT)
Received: (nullmailer pid 19615 invoked by uid 1000);
 Thu, 16 Apr 2020 20:45:45 -0000
Date: Thu, 16 Apr 2020 15:45:45 -0500
From: Rob Herring <robh@kernel.org>
To: Anthony Huang <anthony.huang@mediatek.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: mediatek: Add document for mmdvfs
 driver
Message-ID: <20200416204545.GA19079@bogus>
References: <1586949506-22990-1-git-send-email-anthony.huang@mediatek.com>
 <1586949506-22990-2-git-send-email-anthony.huang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586949506-22990-2-git-send-email-anthony.huang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_134548_248628_8BBE1FD8 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Anthony Huang <anthony.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 19:18:25 +0800, Anthony Huang wrote:
> This document describes the properties what mtk mmdvfs
> device node support.
> 
> Signed-off-by: Anthony Huang <anthony.huang@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/mmdvfs.yaml   |  198 ++++++++++++++++++++
>  1 file changed, 198 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/mediatek/mmdvfs.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.example.dt.yaml: example-0: opp-table-mm: {'compatible': ['operating-points-v2'], 'phandle': [[1]], 'opp-0': {'opp-hz': [[315000000]], 'opp-microvolt': [[650000]]}, 'opp-1': {'opp-hz': [[450000000]], 'opp-microvolt': [[725000]]}, 'opp-2': {'opp-hz': [[606000000]], 'opp-microvolt': [[825000]]}} is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.example.dt.yaml: example-0: opp-table-mm: {'compatible': ['operating-points-v2'], 'phandle': [[1]], 'opp-0': {'opp-hz': [[315000000]], 'opp-microvolt': [[650000]]}, 'opp-1': {'opp-hz': [[450000000]], 'opp-microvolt': [[725000]]}, 'opp-2': {'opp-hz': [[606000000]], 'opp-microvolt': [[825000]]}} is not of type 'array'

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/mediatek/mmdvfs.example.dt.yaml: mmdvfs: 'clock' is a required property

See https://patchwork.ozlabs.org/patch/1271100

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
