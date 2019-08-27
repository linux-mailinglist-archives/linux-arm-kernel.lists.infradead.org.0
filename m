Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6DD9F258
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 20:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehcXnDcHuHfSkD7zZtsIOxEp4e4XalMeYTgXy3s7HB0=; b=tABjQpMBfTLqEI
	BPXRPNbFZBN9P9NEkkYApqrSBWY8neIT0J6RPPEluOsn5uEcfXUCYFPNT2R5qYeFcR/+LuT6b4gLi
	FApLqUVxwb/7sDbDe+QpaO/jIRVQlMNX+8peUpd7+yK50mDVz6OU5IFe71tPHpXfzx5/1d2mTIiM7
	1ZzfAmULdthLuaQ4ORFo8bS4E0dfrH0oxbDQEMvQKdRzE+/7f/NchYWoFChZinpHbQz1xB9iUtRPe
	ztRUB0Um4tylOdwJKuWEeEUhVD3mzX5Kc2Wqj3bk7z56foTvw4uKyIGMZa+vg2CKD66Ebxsvh+CFu
	RgXiATob3Sf4aOs93axw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gGC-0002SU-W0; Tue, 27 Aug 2019 18:32:05 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gG5-0002S3-Ja; Tue, 27 Aug 2019 18:31:59 +0000
Received: by mail-ot1-f66.google.com with SMTP id e12so98180otp.10;
 Tue, 27 Aug 2019 11:31:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nh5JlXKDScp/6jdVD0lYiet/VZlxy5TKafXl/GE7L28=;
 b=GP1sLGqwJChFc8EfDmvAgQKEuPf/iAzEmlE3UEGn21LbM83Epx+j94aHYeDiZj5I34
 7Zxt34vMDW6ms0TF/JpaV2GYggrVz7HHxWbioBNrfP4I6pY2SPx2id2pIScnOMBJY/my
 ZKQPA9YuIwM8kvW3EgdA637lyb4NUqiSyAXXaKNTIudmkKuQw8Lv9ofCFlvb+0m2nzhc
 rQfHWMrUcRGJdnHWkU5+7tWpLekr5N2R4twKlC+vZyUO3rKHeJ3qeElgkvknEDTb/xKN
 yxAnap9K7SNFs4bYIFrZvg0RzULjgTxK1ertzKZcRbnzaCb7Zkq0aAOJJZM9Nf2tUJ08
 R3Ow==
X-Gm-Message-State: APjAAAX0OmcOIP7oodcEvgSnz+afXaN2x9RveyG/uT4j3dIwC/IFMMXV
 vlkEm88z9diK9kYa0rtJ8A==
X-Google-Smtp-Source: APXvYqwyILKBeRNQk+rBVcbEFALTsvo/l+G1oYafWQ6QxRePRSd/ebw3//wOjN0+4335ghUuXLcLYA==
X-Received: by 2002:a9d:6b1a:: with SMTP id g26mr17166549otp.195.1566930716465; 
 Tue, 27 Aug 2019 11:31:56 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v24sm32104otj.78.2019.08.27.11.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 11:31:55 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:31:54 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH next v10 03/11] dt-bindings: usb: add binding for USB
 GPIO based connection detection driver
Message-ID: <20190827183154.GA10374@bogus>
References: <1566547041-20804-1-git-send-email-chunfeng.yun@mediatek.com>
 <1566547041-20804-4-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566547041-20804-4-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_113157_646367_EC4860DF 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 03:57:13PM +0800, Chunfeng Yun wrote:
> It's used to support dual role switch via GPIO when use Type-B
> receptacle, typically the USB ID pin is connected to an input
> GPIO, and also used to enable/disable device when the USB Vbus
> pin is connected to an input GPIO.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v9~v10 no changes
> 
> v8 changes:
>  1. rename the title
>  2. change the compatible as "linux,usb-conn-gpio" instead of
>     "linux,typeb-conn-gpio"

I don't think that is an improvement. How about 'gpio-usb-b-connector' 
to be consistent.

> 
> v7 changes:
>  1. add description for device only mode
> 
> v6 changes:
>  1. remove status and port nodes in example
>  2. make vbus-supply as optional property
> 
> v5 changes:
>  1. treat type-B connector as child device of USB controller's, but not
>     as a separate virtual device, suggested by Rob
>  2. put connector's port node under connector node, suggested by Rob
> 
> v4 no changes
> 
> v3 changes:
>  1. treat type-B connector as a virtual device, but not child device of
>     USB controller's
> 
> v2 changes:
>   1. new patch to make binding clear suggested by Hans
> ---
>  .../devicetree/bindings/usb/usb-conn-gpio.txt | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> 
> diff --git a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> new file mode 100644
> index 000000000000..d4d107fedc22
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> @@ -0,0 +1,31 @@
> +USB GPIO Based Connection Detection
> +
> +This is typically used to switch dual role mode from the USB ID pin connected
> +to an input GPIO, and also used to enable/disable device mode from the USB
> +Vbus pin connected to an input GPIO.
> +
> +Required properties:
> +- compatible : should include "linux,usb-conn-gpio" and "usb-b-connector".
> +- id-gpios, vbus-gpios : input gpios, either one of them must be present,
> +	and both can be present as well.
> +	see connector/usb-connector.txt
> +
> +Optional properties:
> +- vbus-supply : can be present if needed when supports dual role mode.
> +	see connector/usb-connector.txt
> +
> +- Sub-nodes:
> +	- port : can be present.
> +		see graph.txt
> +
> +Example:
> +
> +&mtu3 {
> +	connector {
> +		compatible = "linux,usb-conn-gpio", "usb-b-connector";
> +		label = "micro-USB";

'label' is for a human identifying a particular connector when there are 
multiple (of the same type). So not a great example here.

> +		type = "micro";
> +		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
> +		vbus-supply = <&usb_p0_vbus>;
> +	};
> +};
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
