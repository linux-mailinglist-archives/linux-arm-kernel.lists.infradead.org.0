Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10628172412
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hr9mf/wNEWw80WK6IOzqkJQsbjUxxlBT4fR19qEm9eg=; b=M6E8P3HeeXaygl
	ynMtOmrlMkCp41ZkjncXJxySJBrEnJQSvzoxhJfrFMiGBqdXV6XP7KyrTWctGPJDY6jGUZIqxUduf
	W2JTkwTH4KS2wVuNSVGQhfSlwYXDAi9vYpdjUIArdS4xU6zE8Yq55j6TmHoZ1lzV7W1WfPMMSkzeO
	BHoZCAoloeHhBlojT5aFVanBUqM1DfKL+8oGU9JVTiJ4lEkBJ6f+pMxlOMao+4E5GyYS2uFkIJbWW
	4H2ULxN//PXlJ14nPiJnfgXi3tg4x+Fuxki1Set0c6j295lN6poVkaQHDCFquMG4Lg1RV8+eQnmi3
	HlvxZ2qTcvoQSsSNzdcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MRT-0003xC-5P; Thu, 27 Feb 2020 16:55:19 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MRH-0003Uw-Un
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:55:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id j20so3592029otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 08:55:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/jM1fH5xptzMBpP8MrWjvM0f+YCk8pWFrR+DV7+cjhQ=;
 b=eA5jX+8vJ5lV//cRQDrIfdEwS2+h7CvOl47nG3Kwwo8ys3mRtQyqvbFpV+Z6WGaVFA
 CxlU8e0buIaG4IO4c/NLAuhYiuealu4ttvvtT1PIoB4SXdbM/9z3hB3Nhaq8WMxb/IQM
 ogzL6OLsTrqQn+5N7/pS8HMu7+U1kxy6yXO0wBVNWX5f5jaP/Oo7tlI3hrc0UVV7dJrk
 UVxF1if1oilkpBb8V4dyi7jZx0epopW3rZQd9HOlO4km+ZY8f62gGYsx1Q9XQXGZTGBs
 QOx74gIJyOBQv3wRkWwGTC4mVrQTqpZXCnfQw2k8Eyrj0TspBOnFjlhNTkbMBV0WSGhm
 8i7A==
X-Gm-Message-State: APjAAAUr1aK6/Qi3ojvhUAy/UeaDbli8QlOzUWtuHeWslEgLIEt+Rq2G
 c7eOHevAU3Ee2z7fCo1Wiw==
X-Google-Smtp-Source: APXvYqxUUYsXBRlfK0ElzZkJeLYyKOPBFssLLcfLZAR3mlJo/cftCdxWtn252vKiBhlDns37QVqKcg==
X-Received: by 2002:a05:6830:20c2:: with SMTP id
 z2mr527059otq.228.1582822506104; 
 Thu, 27 Feb 2020 08:55:06 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k17sm2154899oic.45.2020.02.27.08.55.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 08:55:05 -0800 (PST)
Received: (nullmailer pid 19462 invoked by uid 1000);
 Thu, 27 Feb 2020 16:55:04 -0000
Date: Thu, 27 Feb 2020 10:55:04 -0600
From: Rob Herring <robh@kernel.org>
To: rentao.bupt@gmail.com
Subject: Re: [PATCH v4 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200227165504.GA26955@bogus>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-8-rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226230346.672-8-rentao.bupt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_085508_023987_E55742ED 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, taoren@fb.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Tao Ren <rentao.bupt@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 15:03:46 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add device tree binding documentation for aspeed usb-vhub driver.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> ---
>  No change in v2/v3/v4:
>    - the patch is added to the patch series since v4.
> 
>  .../bindings/usb/aspeed,usb-vhub.yaml         | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.example.dt.yaml: usb-vhub@1e6a0000: 'aspeed,vhub-downstream-ports' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.example.dt.yaml: usb-vhub@1e6a0000: 'aspeed,vhub-generic-endpoints' is a required property

See https://patchwork.ozlabs.org/patch/1245388
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
