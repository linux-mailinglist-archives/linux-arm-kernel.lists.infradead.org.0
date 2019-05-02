Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5D8122C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 21:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3iodBLju2w/GERasgMysafQqASKBnq1b11jGaL0lUS0=; b=i79q29KnI2k+Z6
	h6CFnE8VPBjV7JqtbHhsEp8FhzlM1K36ylmrDSNHaa7x++BJXYdWaG1by/+9SDgoO4FR9jksRa6K7
	lGdR5UQDi+ZtgNmMLK62pLIBWPCLAFdJe82AkLbheLH17PyNVStGOrHu9cee92gcCAgqVue8sXjr6
	r5Un2FWGbMBAR9h6VaDeLSp4Ytb0zxpz5SaMJINF7eIrcIU6lqXxiHpccIauOhfmKFjswV7j+mq88
	dEhdp/Rt4tdN0xEBc1CaYvDDn8O02rSIi2Sr1kApHp2xZz5O6JJ7pZZW4Sl3xC3xUdwG0+n9M2lvx
	uqxMP4PfE5pu909Ukeew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHhk-00085e-HH; Thu, 02 May 2019 19:49:16 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHhc-00084n-8I; Thu, 02 May 2019 19:49:11 +0000
Received: by mail-ot1-f66.google.com with SMTP id s11so3265292otp.0;
 Thu, 02 May 2019 12:49:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FGfxNsDw3M/Z12wiu2wAdnzAwwHu4M4I58DLCLbAH48=;
 b=T3ST1KSeU3PwEx6kUPE3alNs/ChfJWCqUS7ik7ljP9kSY5f+Qcp77djEmiytpuXKp2
 Dwqj8pHrqYt9ejsdtAca45JyyBXjIeNOgDlNjMKF190rd3FtzvkXNG6Im4+7YrF1ncYz
 p/eXB7Y+tQNgC9MKmaoeOE4iPWLscfuNLZWxaIZoPi4GSmbkPllx/pXU7ln3+Lod1Bn/
 gYoNJTKg9bkVSKHuJpiXFpXVcf9FjYq9KwpKSTtvGssE+vyUp9Whq/J09HF5aDbMyoSZ
 0EBH5AqfN59TeCe5w3nUlyblLkJ8MrazD1F3IXUBnRVOWKLW9zSxa9Go6/PoA/GBP466
 Ozzg==
X-Gm-Message-State: APjAAAXOswDlWp8bgF6oZVNZyiKu6giNOxEtCyl/LzxFisYX7UzIeZYB
 0ZU3rJ96WJHRvR+uRJG1RQ==
X-Google-Smtp-Source: APXvYqzYJ9AupEd9Umw0x6xgTlB7dtQUdfi0f3hYSCZGFwwsr29XCXUyJ7qIx36e0LDiOwYhqSkwBQ==
X-Received: by 2002:a9d:73d9:: with SMTP id m25mr3984524otk.356.1556826546929; 
 Thu, 02 May 2019 12:49:06 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 189sm89076oid.35.2019.05.02.12.49.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 12:49:05 -0700 (PDT)
Date: Thu, 2 May 2019 14:49:05 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH] dt-binding: usb: add usb-role-switch property
Message-ID: <20190502194905.GA22144@bogus>
References: <5756e05930f5e6a3940ad9d019399c8e63d24f18.1556454324.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5756e05930f5e6a3940ad9d019399c8e63d24f18.1556454324.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_124908_299167_72643764 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 08:27:46PM +0800, Chunfeng Yun wrote:
> Add a property usb-role-switch to tell Dual-Role controller driver
> that use USB Role Switch framework to handle the role switch between
> host mode and device mode, it's useful when the driver has already
> supported other ways, such as extcon framework etc.
> 
> Cc: Biju Das <biju.das@bp.renesas.com>
> Cc: Yu Chen <chenyu56@huawei.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v1:
> the property is discussed in:
> [v2,2/7] dt-bindings: usb: renesas_usb3: add usb-role-switch property
> https://patchwork.kernel.org/patch/10852497/
> 
> Mediatek and Hisilicon also try to use it:
> [v4,3/6] dt-bindings: usb: mtu3: add properties about USB Role Switch
> https://patchwork.kernel.org/patch/10918385/
> [v4,6/6] usb: mtu3: register a USB Role Switch for dual role mode
> https://patchwork.kernel.org/patch/10918367/
> 
> [v6,10/13] usb: dwc3: Registering a role switch in the DRD code
> https://patchwork.kernel.org/patch/10909981/
> ---
>  Documentation/devicetree/bindings/usb/generic.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
> index 0a74ab8dfdc2..c73950b72513 100644
> --- a/Documentation/devicetree/bindings/usb/generic.txt
> +++ b/Documentation/devicetree/bindings/usb/generic.txt
> @@ -30,6 +30,9 @@ Optional properties:
>  			optional for OTG device.
>   - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
>  			optional for OTG device.
> + - usb-role-switch: tells Dual-Role USB controller driver that we want to use
> +			USB Role Switch framework to handle the role switch
> +			between host mode and device mode.

Please describe this in terms of h/w functionality, not drivers and 
Linux things.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
