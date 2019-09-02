Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717B9A57F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N9gZ77YNQApgZV+L0S4xVTPz8nXqeCVKISO6MpQWh5k=; b=ZFD/hmpzJUCKJ4mcfX6Y6yl1iO
	gp7EyJsWmUp72iDxEDP/9vRlHlL9lci5eV0ttm1369yNPI61S3mHlNuGqbNksraZkH62IH3KpIbPh
	+D3A3DSYlW+iIyptnUPbHwlK77jtfO0sr0QOI7iYio5PSCJTLP1blFzTMVPooM6VLY5Bk462OXm8B
	qhQgwO4CL/vSlo9R+Lti9mmuXBMUQZxhDL8o/LSgr/FMsVx20MEi7CJWkW573cFPT9C87l3K6KM9g
	i5IeYuz42X8WnN6eHLxPdIDqpVjl63j6w/0VHhP4N5dFY1554tn4d8kRl+ft1u4etF1iJtAgGibwK
	k2Nux4Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4maG-0004yv-DY; Mon, 02 Sep 2019 13:41:28 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXy-0001TE-3e; Mon, 02 Sep 2019 13:39:07 +0000
Received: by mail-wm1-f67.google.com with SMTP id d16so14654662wme.2;
 Mon, 02 Sep 2019 06:39:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=/K8OvsXsZCheANwrAkNuWunYQ2pvjJqxEyQmrxyZlt4=;
 b=C1B4bxqjVNiyRQW5LUuaLXlnY1nVBh0CTeFFmA6a/dn/h+hTNcTIo5q7WoV6/Itti6
 Sbjth/z6JQvicdMK479Quo9p1hPo2rEQLLUlVv35cyQBifDIQ23wgndcpVH+R9qNuK6s
 UQbbu2kHSYJAMaovHnd0De15MypjiBz5wtcjWU0s1QJFbgqjrnnubaaV6G86PZQYeaaI
 zMQzfvCa6naFaxdnoHpLnV3bJcIWoUF79ljJMNMEZBh9cFYnnTsyTE6bFyvGOfClN5h1
 silsL9SRMKHi8p+gqWWdEoS1xw5APHG+B+iGYOhuAq91cQtMT6kTh7GLhF5SOyfHhjGq
 EG1g==
X-Gm-Message-State: APjAAAWXTCTW9hyvYhqTjOM2mvU7uzfrcC61+1pGwpn1dyYvKvFtrk71
 RNdYUOkaXNg4ZVfugwsWsg==
X-Google-Smtp-Source: APXvYqz6TMzEjyfG3kmbt9uaJnP2sm8Z90Zk6luGpmxi7KqHhzc3KAOfqiKS5//djPQF/U6HLrxfXQ==
X-Received: by 2002:a1c:be04:: with SMTP id o4mr3998916wmf.60.1567431544818;
 Mon, 02 Sep 2019 06:39:04 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id h12sm11281211wrp.51.2019.09.02.06.39.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:04 -0700 (PDT)
Message-ID: <5d6d1b78.1c69fb81.11037.fc17@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:03 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v7 1/6] dt-bindings: usb: musb: Add support for MediaTek
 musb controller
References: <20190830082026.30401-1-min.guo@mediatek.com>
 <20190830082026.30401-2-min.guo@mediatek.com>
In-Reply-To: <20190830082026.30401-2-min.guo@mediatek.com>
To: <min.guo@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063906_235690_2B93E3FC 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: , Mark Rutland <mark.rutland@arm.com>, hdegoede@redhat.com,
 devicetree@vger.kernel.org, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, chunfeng.yun@mediatek.com,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 16:20:21 +0800, <min.guo@mediatek.com> wrote:
> From: Min Guo <min.guo@mediatek.com>
> 
> This adds support for MediaTek musb controller in
> host, peripheral and otg mode.
> 
> Signed-off-by: Min Guo <min.guo@mediatek.com>
> ---
> changes in v7:
> 1. Modify compatible as
> - compatible : should be one of:
>                "mediatek,mt2701-musb"
>                ...
>                followed by "mediatek,mtk-musb"
> 2. Change usb connector child node compatible as "gpio-usb-b-connector" 
> 
> changes in v6:
> 1. Modify usb connector child node
> 
> changes in v5:
> suggested by Rob:
> 1. Modify compatible as 
> - compatible : should be one of:
>                "mediatek,mt-2701"
>                ...
>                followed by "mediatek,mtk-musb"
> 2. Add usb connector child node
> 
> changes in v4:
> suggested by Sergei:
> 1. String alignment
> 
> changes in v3:
> 1. no changes
> 
> changes in v2:
> suggested by Bin:
> 1. Modify DRC to DRD
> suggested by Rob:
> 2. Drop the "<soc-model>-musb" in compatible
> 3. Remove phy-names
> 4. Add space after comma in clock-names
> ---
>  .../devicetree/bindings/usb/mediatek,musb.txt      | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
