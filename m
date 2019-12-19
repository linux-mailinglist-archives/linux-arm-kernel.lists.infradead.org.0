Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FF4127185
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ibg8/5swEN7saFvjqcF1oSFkzpstrQogF4W4Yjozdy0=; b=pGdWPkfBu9U8dn
	jhUOrT63MZ+W/44106rqcs1h5bzMNI/z4sc+VxTNUuVKuqoKD36/QjCw1ntV95qoIfGdi3GtfYpbf
	PmtgsY+MKfHEYO30iwkfD71IuWRsPqJ2s+nS+FactYvnztFkSpEB7/B3+q/xPna7bqOlfFsdd5lF5
	CTAPEI0HBhcgBAPE7gNdSZOXPxZjeN40y7fd1+1Gs5LHSHGI/+EQkOcL5l+2DIDkTbNJo7NHesMUF
	nm1kbl74EVpRsVZDrG1ADOmtPn7uWvXfdIGE51DnKdltoFe80oXhE4nEsh3QvzQq7txFgQJirCLDm
	SuXIalj2ZwioeYZIvfqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5Gi-0004xX-4u; Thu, 19 Dec 2019 23:31:44 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5GX-0004wn-EF; Thu, 19 Dec 2019 23:31:35 +0000
Received: by mail-ot1-f44.google.com with SMTP id 59so9295273otp.12;
 Thu, 19 Dec 2019 15:31:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cHN0yTmRtblTpyKmg4iRlUo8Qwlh54zEqesHcqtc4tw=;
 b=Awm6U31MoSXzoUS+Rac0SxEkV3KBOEciKBwjT91HLngnnhz07akQzJWJI6pj4vJvbd
 Nv9jdJ7pWea7mrTSwMzNYZhmRVRO8DUnU6n9AmnEO7qwAE1/rjX73vkr4vZCeXfgP23e
 4r1SAKcr1kQpo5kGF+9sJVXAtxQjwaWDAAZshiTqzi0nN90YFGKvxjtiuL2GwBJPaAjL
 yGE+earbXMlXrCOYh+pTqaTBY/emt+2wHQAM9QomAOUMqXkDABcZW34NlmStGyy0nDdi
 SkjlBBM+RjYeLlytXn0AxLu3T1dHzos55sYvX9nHxskg1NPa6ukam5H3d6R8XR/1LuX6
 dUwg==
X-Gm-Message-State: APjAAAXIOHzI1HcKi4b11jOmXm9GkO3h0lM44fmYki+N/CXkMybnuFtq
 Ljza1yfiDIRsW5hROhw9OA==
X-Google-Smtp-Source: APXvYqyjZvh03uk/NUEQwvqjY4ru5OS3ZB9R5H2+OfsQFZsDDFfjxfktkVMWSrQ5ILJVZfDTUO1a6Q==
X-Received: by 2002:a9d:1e4:: with SMTP id e91mr5962233ote.324.1576798292085; 
 Thu, 19 Dec 2019 15:31:32 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id n7sm2524611oij.14.2019.12.19.15.31.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:31:31 -0800 (PST)
Date: Thu, 19 Dec 2019 17:31:29 -0600
From: Rob Herring <robh@kernel.org>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Message-ID: <20191219233129.GA5484@bogus>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
 <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_153133_478117_48C45D60 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.44 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 08:49:23AM +0000, Lad, Prabhakar wrote:
> Hi Rob,
> 
> Thank you for the review.
> 
> On Fri, Dec 13, 2019 at 8:37 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > this patch adds support to parse PCI outbound-ranges, the
> > > outbound-regions are similar to pci ranges except it doesn't
> > > have pci address, below is the format for bar-ranges:
> > >
> > > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> > >                    upper32_size lower32_size>;
> >
> > You can't just make up a new ranges property. Especially one that
> > doesn't follow how 'ranges' works. We already have 'dma-ranges' to
> > translate device to memory addresses.
> >
> > Explain the problem or feature you need, not the solution you came up
> > with. Why do you need this and other endpoint bindings haven't?
> >
> rcar SoC's supports multiple outbound region for mapping the PCI address
> locally to the system. This lead to discussion where there exist controllers
> which support regions for high/low priority transfer and similarly regions
> for large/small memory allocations, as a result a new ranges property was
> added, where we can specify the flags which would indicate how the outbound
> region can be used during requests.

What are the flags?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
