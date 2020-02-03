Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825D51505DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 13:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fyv4D0KFe58aAbu67GbizfyWaPXnTVz1l57TDnRufKc=; b=joCmoFPV9+6tRJ
	ty1fazB4GDo3YENzOYRGqZ7MWI+crdVchQ14NF5IPdB+ozjY3U27hnkNI2Btsm9hUT4HFBV+zieHt
	PSp4UxdkRZnJI9AAyjeS2fnE7kcmiUaJJVKub2OfPMlG27IHOBwtb4dmF7EExz8RXDU+NdsGcesky
	rnsRksZPrxWBKNGl6HARcIvbWXLzswA34AyWbfBF3uAxkxE7a3ZalwGzGhimr5YZNQXN/3M8wUiXt
	ayRQrVUgmCiBG7NLH9S0wb0QUyUGLh7wwCT267e4p9R4ozd/TGv7y9M3ctxOkcaXct8BVSgE+23m2
	j+qciAgu98i3AeTkGCwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyaUf-0008KC-NA; Mon, 03 Feb 2020 12:06:21 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyaUZ-0008JY-49
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 12:06:16 +0000
Received: by mail-wm1-f66.google.com with SMTP id t23so15604099wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 04:06:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qk2Jt3O1erIU7dk9h6hySa8WTi0Ubkco0XQalim8jms=;
 b=YeW7QchXEFbNdL3gqe9CkzUJyJmMSvEPhqlCPnUqseJQsoKB0dgjn3H6gaVRobYulo
 Zz+7YekkE+mONEX1j9yLhJos+LUvD1AR9CUSezNxfB38UFceGc+BQsvgVv25J3UQwd5m
 qTbvOuROxem4JUqWeceD4d84Y/OAW4oUTkq8ytOE75OpFk6T+ZthhVT3OjnrlTAC8Tlk
 lSM00A0b0jHF6in6veKLLg/Z5IkdPBX7YyrthKcAEN5e2SrjDpr79Jg2jO2QNx+XQ+zf
 aBQU/nm/IzazgIm1mxryWC7EWCXheQkyuSGHvQglMpfI0c/AYee8EKunl7B9MrGts7eb
 Auhg==
X-Gm-Message-State: APjAAAWQLHHxYnUpfS7XomEw2jGe6hB8RBZ3182GAyJJ1iGIyw35iHRZ
 TQriajdnVLeLJMcgRIdJwmFVRAL61w==
X-Google-Smtp-Source: APXvYqx7nsm5FWekL3BKJELtK3DXarxIJmSasrulMuL/e1k/RgaRA6fRJdz1qpC/FrkmEVy7vvzz8A==
X-Received: by 2002:a1c:9c52:: with SMTP id f79mr28804908wme.30.1580731573508; 
 Mon, 03 Feb 2020 04:06:13 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id b11sm9698643wrx.89.2020.02.03.04.06.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 04:06:12 -0800 (PST)
Received: (nullmailer pid 28482 invoked by uid 1000);
 Mon, 03 Feb 2020 12:06:10 -0000
Date: Mon, 3 Feb 2020 12:06:10 +0000
From: Rob Herring <robh@kernel.org>
To: Faiz Abbas <faiz_abbas@ti.com>
Subject: Re: [PATCH 1/3] dt-bindings: net: can: m_can: Add Documentation for
 stb-gpios
Message-ID: <20200203120610.GA9303@bogus>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <20200122080310.24653-2-faiz_abbas@ti.com>
 <c3b0eeb8-bd78-aa96-4783-62dc93f03bfe@ti.com>
 <8fc7c343-267d-c91c-0381-60990cfc35e8@ti.com>
 <f834087b-da1c-88a0-93fe-bc72c8ac71ff@ti.com>
 <57baeedc-9f51-7b92-f190-c0bbd8525a16@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57baeedc-9f51-7b92-f190-c0bbd8525a16@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_040615_166027_F89948D1 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, nm@ti.com,
 netdev@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, sriram.dash@samsung.com,
 linux-can@vger.kernel.org, t-kristo@ti.com, mkl@pengutronix.de,
 Dan Murphy <dmurphy@ti.com>, catalin.marinas@arm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, wg@grandegger.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 01:09:41PM +0530, Faiz Abbas wrote:
> Hi,
> =

> On 22/01/20 8:04 pm, Dan Murphy wrote:
> > Sekhar
> > =

> > On 1/22/20 8:24 AM, Sekhar Nori wrote:
> >> On 22/01/20 7:05 PM, Dan Murphy wrote:
> >>> Faiz
> >>>
> >>> On 1/22/20 2:03 AM, Faiz Abbas wrote:
> >>>> The CAN transceiver on some boards has an STB pin which is
> >>>> used to control its standby mode. Add an optional property
> >>>> stb-gpios to toggle the same.
> >>>>
> >>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> >>>> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
> >>>> ---
> >>>> =A0=A0 Documentation/devicetree/bindings/net/can/m_can.txt | 2 ++
> >>>> =A0=A0 1 file changed, 2 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt
> >>>> b/Documentation/devicetree/bindings/net/can/m_can.txt
> >>>> index ed614383af9c..cc8ba3f7a2aa 100644
> >>>> --- a/Documentation/devicetree/bindings/net/can/m_can.txt
> >>>> +++ b/Documentation/devicetree/bindings/net/can/m_can.txt
> >>>> @@ -48,6 +48,8 @@ Optional Subnode:
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 that can be used fo=
r CAN/CAN-FD modes. See
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
> >>>> Documentation/devicetree/bindings/net/can/can-transceiver.txt
> >>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 for details.
> >>>> +stb-gpios=A0=A0=A0=A0=A0=A0=A0 : gpio node to toggle the STB (stand=
by) signal on
> >>>> the transceiver
> >>>> +
> >>> The m_can.txt is for the m_can framework.=A0 If this is specific to t=
he
> >>> platform then it really does not belong here.
> >>>
> >>> If the platform has specific nodes then maybe we need a
> >>> m_can_platform.txt binding for specific platform nodes.=A0 But I leave
> >>> that decision to Rob.
> >> Since this is transceiver enable, should this not be in
> >> Documentation/devicetree/bindings/net/can/can-transceiver.txt?
> > =

> =

> The transceiver node is just a node without an associated device. I had
> tried to convert it to a phy implementation but that idea got shot down
> here:
> =

> https://lore.kernel.org/patchwork/patch/1006238/

Nodes and drivers are not a 1-1 thing. Is the transceiver a separate h/w =

device? If so, then it should be a separate node and properties of that =

device go in its node. Also, nothing is stopping you from using the PHY =

binding without using the kernel's PHY framework.

As to whether it should be a separate phy driver, I think probably the =

wrong decision was made. We always seem to start out with no PHY on =

these things and the complexity just grows until we need one. =


Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
