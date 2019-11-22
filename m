Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8A3107AE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 23:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiQmdmIKfdJJFjmjcxmMZEr0Dvjd3Z+om82DHnK/ePI=; b=kU188zDe1lVEjf
	M3SbrN/4h9OskMIiNgJUrLzMG3RJzSTtKVPmGT0GEs3bCdcR1nuGo/lac0tuByl/aFdOMsXRTJS19
	IcCoH3ZXO0y2IZZbJ0IL3wpoS8ckbaCwyRFfMRMdGaB8v6MXxs6+sb8TDqTrUajziNAnNThlug6qb
	QCggr9AiyuGS0e8EYM5WAe4mBTQr/ZEFIo7rRMGm+EsRPjy4T/f5aaY59JFG9tUOEtt69kG4GtAKt
	YfMbdLm+N9ozgy4ah7+HXqzczLF6KUb8L6AFv1hytPMccLPh+DhxtYvNtLI/7/m4aWCA86zuEOEeL
	/hqDFrSG4rW7Db+s3EIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYHmn-0006Mo-HD; Fri, 22 Nov 2019 22:52:21 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYHmb-0006Lm-TF; Fri, 22 Nov 2019 22:52:11 +0000
Received: by mail-ot1-f66.google.com with SMTP id 94so7601872oty.8;
 Fri, 22 Nov 2019 14:52:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e2Kuj3HGhGYNdxls8aJwodarz1qpw5npM7OevFhBVqw=;
 b=o23j1L8V92BUt38aXiLdLwVlorS3wlBIUE9GJZ02YcFPsiZXi/ItC4bDYG/Wps1298
 d05pFml4XEhSzS9bef2SdBP8l0qW8NjGO6iPx7XVRyuk1u40XJuua/T9KBWkc2cgxZlG
 Q8EOrjRRNp7ShtrnLfVnZk6hxXFU6dAY318ERsryZxSanYrSmGpyTRwREctISjVvSDlv
 whDFFKi9UK638ACZf4wh5yF2agoCVfmTHHKxDc2GJXYaNt2OeD0xwT/or7EnaTaybvwX
 B3VvTmMIyF42rAyOWDup1xuYd++4Wd5DUtaib6dWc1H76knB555niY3hPtngmLSY3HKt
 XDuQ==
X-Gm-Message-State: APjAAAWAM9/w5O31xlxMQfXpmTfClVXndBBPKW8VmIJGkMREjQvPB7UD
 4yDyZy/n1NOLAxOBPe8IDg==
X-Google-Smtp-Source: APXvYqy41erDboq1N+XYxLBZ5aQeIaFuH8UOLZ30Ly5N0IQ6wjAkUtlFPxVF1kLjthKhQz/+regFng==
X-Received: by 2002:a9d:6b0e:: with SMTP id g14mr12869372otp.128.1574463128725; 
 Fri, 22 Nov 2019 14:52:08 -0800 (PST)
Received: from localhost ([2607:fb90:bde:716a:c9ec:246b:67b7:9768])
 by smtp.gmail.com with ESMTPSA id 202sm2533064oii.39.2019.11.22.14.52.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 14:52:07 -0800 (PST)
Date: Fri, 22 Nov 2019 16:52:05 -0600
From: Rob Herring <robh@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: Add Amlogic G12A USB2 PHY Bindings
Message-ID: <20191122225205.GA14311@bogus>
References: <1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com>
 <1574405757-76184-2-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574405757-76184-2-git-send-email-hanjie.lin@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_145209_943525_1C3D6589 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Hanjie Lin <hanjie.lin@amlogic.com>, Victor Wan <victor.wan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 14:55:52 +0800, Hanjie Lin wrote:
> Add the Amlogic A1 Family USB2 PHY Bindings
> 
> It supports Host mode only.
> 
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  .../bindings/phy/amlogic,meson-a1-usb2-phy.yaml    | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
