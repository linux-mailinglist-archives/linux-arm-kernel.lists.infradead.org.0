Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE86176F79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P08Gns0cwkz8xmjv6R0WrfzIkz5ECrgjjuk3MrG66Cg=; b=RIE0MQwL30oxED
	88QzR43BS80TjpbSOaz9AwGh2fAmCX0Q8EP3KPDlhkUulxMbSxqzbifECVJvSMGPK31wj/FHs2XWF
	vU3T8layxcsy9Bb/eqPtI/xXI42CBmq0f62/HlCbCj/Zd6zujOV89uPLNzQ1wmQeTgGvv4KFkCQRX
	DSeCde6k5dwG0P8Qi4Rdk3T74ZH8A3xUL9hdqZKqsxz1Z/lP+wlhicmBe1OW1jO7/4Lprfs9wVAWl
	RXN9wk9Jo/Agj5iSszvoyHhe3bzSDa8ZC7sHEPyW9XKi0d0PlX5V0Rx/+LnL2GD7RrtWD0HwV1/O/
	9w6EmQc1sOohOC97DXBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j915E-0006lx-Td; Tue, 03 Mar 2020 06:31:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9157-0006lT-Ay
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:31:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id i13so950534pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 22:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ndx+j6LnVMqCAXHMVDFZLXsjTKEuusKvWbflCc649JY=;
 b=UbMUxmCCJ1iqtAUi6lktmncZnowFCN1CA8b4uv3RRka2O4keDihSXfn8yE9a2iXPoL
 9z7MgPOfyHIRosPIN1a1t2ACLwEftyMbcu3gmo9dew1aYCQFhNfkGldLuMWqX7FNANqi
 b3IkikKS9IgVFw5xhru6Tv/r/MSX3e890v5jp060Rpf0liav7ePur3okq8pvAjXZez3f
 RbpgV6gQE3ti6GZ9F7AQSEaz5PlWceHqzCoQ28ZFbN31V7noE07UcLBpPgX479J2mwQe
 pvsYq98tdanDbB4+zLyYdr0tGxAT/h0gaiN12AZbDOO0eCW7wu6gYGx8ehDn/5CpVpCJ
 a+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ndx+j6LnVMqCAXHMVDFZLXsjTKEuusKvWbflCc649JY=;
 b=QcrHtWqEwwQn3Pci2Ja1u345MlikJPW8l021ZQKkEv1qTKXbi76K1Z22O8sj+DaVSX
 fuv1rL08U5+NW2Fu/pSDdWWApxLrBIfMITHQv03OofTN3Db4FJwjJR435ZiJFajNe5id
 ylWWW/AB0IFaz9zu8xLnIcmrucaLKfY5TXYzLoDbbGSYkRQSzMV6iJ76H5n+QpK91NPl
 ozQ6lR1hLlGwqETo1EuohZ326TMnQ0HOzQnF0Uo97xadMDOy9wljDdSjhy9X/v/d1IK7
 A1N/x+rxqkvEsRmVnTusWy8UTGlVQhQPOT+1qmARTp1UdzkgmIx2awFpvNdtg81tKMVC
 y9Zw==
X-Gm-Message-State: ANhLgQ0/aiEOESUGgVCx422NkPxaPmyuhFP+TZTVD8pEhCuieHrNBXgl
 rryIUacNh1keRxbzfg9tXKE=
X-Google-Smtp-Source: ADFU+vuGZQszw51zqWe1fJX1aHCdONMS54hLYZPiwaStPENZVZ7FsvgKtDNPs8Yql9brDHHw68ftjQ==
X-Received: by 2002:aa7:9726:: with SMTP id k6mr146994pfg.196.1583217064295;
 Mon, 02 Mar 2020 22:31:04 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 (c-24-4-25-55.hsd1.ca.comcast.net.
 [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 69sm4375913pfz.97.2020.03.02.22.31.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 22:31:03 -0800 (PST)
Date: Mon, 2 Mar 2020 22:30:57 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v6 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200303063056.GA6751@taoren-ubuntu-R90MNF91>
References: <20200228020757.10513-1-rentao.bupt@gmail.com>
 <20200228020757.10513-8-rentao.bupt@gmail.com>
 <20200302234744.GA21778@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302234744.GA21778@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_223105_405078_3A7F5F95 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thanks for the careful review and I've addressed all your feedback in
v7 (based on my understanding). Please kindly let me know if you have
further suggestions.


Cheers,

Tao

On Mon, Mar 02, 2020 at 05:47:44PM -0600, Rob Herring wrote:
> On Thu, Feb 27, 2020 at 06:07:57PM -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > Add device tree binding documentation for the Aspeed USB 2.0 Virtual HUb
> > Controller.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  Changes in v6:
> >    - added 2 required properties into example and passed "make
> >      dt_binding_check".
> >  Changes in v5:
> >    - updated maintainer to Ben.
> >    - refined patch description per Joel's suggestion.
> >  No change in v2/v3/v4:
> >    - the patch is added to the patch series since v4.
> > 
> >  .../bindings/usb/aspeed,usb-vhub.yaml         | 73 +++++++++++++++++++
> >  1 file changed, 73 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > new file mode 100644
> > index 000000000000..b9f33310e9a2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > @@ -0,0 +1,73 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later
> 
> Dual license new bindings please.
> 
> (GPL-2.0-only OR BSD-2-Clause)
> 
> > +# Copyright (c) 2020 Facebook Inc.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/usb/aspeed,usb-vhub.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED USB 2.0 Virtual Hub Controller
> > +
> > +maintainers:
> > +  - Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > +
> > +description: |+
> > +  The ASPEED USB 2.0 Virtual Hub Controller implements 1 set of USB Hub
> > +  register and several sets of Device and Endpoint registers to support
> > +  the Virtual Hub's downstream USB devices.
> > +
> > +  Supported number of devices and endpoints vary depending on hardware
> > +  revisions. AST2400 and AST2500 Virtual Hub supports 5 downstream devices
> > +  and 15 generic endpoints, while AST2600 Virtual Hub supports 7 downstream
> > +  devices and 21 generic endpoints.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - aspeed,ast2400-usb-vhub
> > +      - aspeed,ast2500-usb-vhub
> > +      - aspeed,ast2600-usb-vhub
> > +
> > +  reg:
> > +    maxItems: 1
> > +    description: Common configuration registers
> 
> If 'Common' means something specific to this block, then keep. 
> Otherwise, you can drop ti.
> 
> > +
> > +  clocks:
> > +    maxItems: 1
> > +    description: The Virtual Hub Controller clock gate
> 
> Drop this.
> 
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  aspeed,vhub-downstream-ports:
> > +    description: Number of downstream ports supported by the Virtual Hub
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> 
> Constraints?
> 
> 'maximum: 5' ?
> 
> default?
> 
> > +
> > +  aspeed,vhub-generic-endpoints:
> > +    description: Number of generic endpoints supported by the Virtual Hub
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> 
> Constraints?
> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - interrupts
> > +  - aspeed,vhub-downstream-ports
> > +  - aspeed,vhub-generic-endpoints
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/aspeed-clock.h>
> > +    vhub: usb-vhub@1e6a0000 {
> > +            compatible = "aspeed,ast2500-usb-vhub";
> > +            reg = <0x1e6a0000 0x300>;
> > +            interrupts = <5>;
> > +            clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> > +            aspeed,vhub-downstream-ports = <5>;
> > +            aspeed,vhub-generic-endpoints = <15>;
> > +            pinctrl-names = "default";
> > +            pinctrl-0 = <&pinctrl_usb2ad_default>;
> > +    };
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
