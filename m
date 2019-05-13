Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65F81BBF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tvOZLi5BuKWobW14AGgRIVnKAyx4/Zti53SMSKuLY0=; b=CyDEoyyKMP2kFF
	DZtyjP9XRa55gF6VcrVz8do9weGBLXxPArmCnl17eqpIGhUxUr0H27IN//NSxiwUjJMe+JBCXobrK
	+67VpQcTfDHK6eirxfd1PcPHtqn+yMeT6QDci3nlkEfSdmqqzErcMIbZ+xQkYig9WqKvSTZlBwXz8
	XoZx+vT700nwa6VLqYwMDKbnpOQvlWDO6Y1kXUUF2G5IK6QF6wVHXyZLpB+GMXEX5ANgmAma28IJi
	swVenKN44xfwiUXO4MFLeD6ASu8M35RZIL1L55IcsAgaa8q7NdF8PxP2zMGfuT0jLNOaG5tcx8Ozf
	qtIUSDxBBFFtqtQYfe1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEkz-0005nO-Gp; Mon, 13 May 2019 17:28:57 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEks-0005ms-5o; Mon, 13 May 2019 17:28:51 +0000
Received: by mail-ot1-f66.google.com with SMTP id j49so4877833otc.13;
 Mon, 13 May 2019 10:28:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6feJZa0aw0GZsImOuxnHSsC5EDhjfyRhfdFCIT3tJFo=;
 b=uPtIB3T7zqKkCjNGUn73BcvF3s3pI+bxcri65I1i6utGH4I68Q9kxulxYURop+/Jyw
 8mrZUKj3CUo3uuTYrUtZiRSQytgXE9Fw25hpY+z206F1IwPd+XLYzzFy2JeSIu3NPYrv
 pw8bKImWJlgtxpjukIlGVj9uwE9xh17rbObMGoNHLKG7vk/WVPSZKU9ZWSzvAR4/FQSS
 3fQRNSvazRygPdFCLpHv1DO9enHkQRo2mqmOeo9qt38xgFfPsTwS63bLQfbT/Lpq+/XJ
 hr6jWjguN9viuN4BGY75WbLHp28yKWuxOC3+hqpc22xlnjM+Aw4Nr3LQQAdqPnNsVk5I
 UWpw==
X-Gm-Message-State: APjAAAW8D6H34EzoGlychYS86L13Z8Eu8Bsf+MJ980QAktjDcxBlfbyA
 8Fp/6klyflT5fjDhHgUd+A==
X-Google-Smtp-Source: APXvYqxW/0x7M65XCFbh2CtdKwvaAnoHUcFJ/jpvEKj+sZqkwTWbn2hNdCW+F0o0Ism5B8ky398RwQ==
X-Received: by 2002:a9d:6288:: with SMTP id x8mr254754otk.79.1557768529379;
 Mon, 13 May 2019 10:28:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h194sm1094992oib.58.2019.05.13.10.28.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:28:48 -0700 (PDT)
Date: Mon, 13 May 2019 12:28:47 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [v3 PATCH] dt-binding: usb: add usb-role-switch property
Message-ID: <20190513172847.GA15347@bogus>
References: <c3596e996c9ab39c6b9bc14b93309244c4a55014.1557306151.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3596e996c9ab39c6b9bc14b93309244c4a55014.1557306151.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_102850_216100_153DE486 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Biju Das <biju.das@bp.renesas.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 May 2019 17:17:44 +0800, Chunfeng Yun wrote:
> Add a property usb-role-switch to tell the driver that use
> USB Role Switch framework to handle the role switch,
> it's useful when the driver has already supported other ways,
> such as extcon framework etc.
> 
> Cc: Biju Das <biju.das@bp.renesas.com>
> Cc: Yu Chen <chenyu56@huawei.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v3:
>     add property type, modify description suggested by Heikki
> 
> v2:
>     describe it in terms of h/w functionality suggested by Rob
> 
> v1:
>     the property is discussed in:
>     [v2,2/7] dt-bindings: usb: renesas_usb3: add usb-role-switch property
>     https://patchwork.kernel.org/patch/10852497/
> 
>     Mediatek and Hisilicon also try to use it:
>     [v4,3/6] dt-bindings: usb: mtu3: add properties about USB Role Switch
>     https://patchwork.kernel.org/patch/10918385/
>     [v4,6/6] usb: mtu3: register a USB Role Switch for dual role mode
>     https://patchwork.kernel.org/patch/10918367/
> 
>     [v6,10/13] usb: dwc3: Registering a role switch in the DRD code
>     https://patchwork.kernel.org/patch/10909981/
> ---
>  Documentation/devicetree/bindings/usb/generic.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
