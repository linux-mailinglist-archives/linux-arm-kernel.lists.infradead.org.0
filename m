Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F258E11EECA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 00:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyPl6esSVZZ2jhIruM0kathFqyBliJM5aS4RjOWNldI=; b=iNtbrRjjHJKvUd
	3nqj5tYTYWtv8txykj4EZpDHR3gX/K1vwWeA8zT0EVdzO3Z1zQxIXB5qcZxLM+eWLNNGbDJPhKf4j
	MM1LVH6IlwNBeIsWyCHrCdnXhWWI0Zedpb62gENrmRA6h9rVLVmXmIL0w7fSxFxFyhSj0n1fgCTvc
	Grnn0VKNM1EzS1xWlt67t4Fwaqh33Z+bI3HqPNlo9ZgxUnboyE0GU6bhkUrqkcug0dD4TLl7rn92p
	evg4juxBuaZPw8Ezq0oehYFiP6Xjaz2nppAqpzAEGoRk+eBThkzdIK8or5+5A9YbE25qTOcqYe4R0
	+fkY3Z3yf9/j6UZLXbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifuhb-0003ju-3M; Fri, 13 Dec 2019 23:50:31 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifuhR-0003j6-ES
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 23:50:23 +0000
Received: by mail-ot1-f68.google.com with SMTP id 77so1092071oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 15:50:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l8y7QpzQFo6LopgFPQ5NquvGTv5LeZYf4UuALbXDpoQ=;
 b=MQg69/W20nL8S3o5PCsFUs+Yk7nsRFyt8h7uViWnH0X7Il5xzvaetrr2GIf78Zj53I
 NncMp3oQsAWB7GFjw0WK65wsLFyRyNFKPWwBxXy5iJ1oeCCq8PM57Vfu2R8C1elcC704
 IHKPTXZCJYUMi977OpxrjMN/B+tZ4kDhuRkOcJqJ+SIBrT9JvlrBQBGU7fCHuc42E2Yu
 0h+IdVFjvwP6M1R/k+30XIJbg2ybtBNW6JGNLUK5x3Y4mNeTfOxfB3H4v35UKB3qO46U
 qCcWJbQegnJTw9A1asFlADO/VC7iKgUDmbXrQsmG+lHW4amU2G+CSTnk8+ptlo/eG3nD
 q0yw==
X-Gm-Message-State: APjAAAVVsTdCf7FlQ+V1GbKDSSbdqtD3BXfMut78ysIbtXFZhpBURWPA
 yBDAotoLcusbmQZjESJfuQ==
X-Google-Smtp-Source: APXvYqxtodM9bQIKZwdbEKbdE53q5NTExxX8dI91cxs2SHtzlLFLgHoUMHQBXFERpwqeV0o/UPjJ0w==
X-Received: by 2002:a05:6830:1bd5:: with SMTP id
 v21mr18520364ota.154.1576281014805; 
 Fri, 13 Dec 2019 15:50:14 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f3sm3877604oto.57.2019.12.13.15.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:50:14 -0800 (PST)
Date: Fri, 13 Dec 2019 17:50:13 -0600
From: Rob Herring <robh@kernel.org>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: Add binding doc for iProc IDM device
Message-ID: <20191213235013.GA9997@bogus>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-2-ray.jui@broadcom.com>
 <62254bbb-168e-c0ad-a72d-bd659a2c23fa@gmail.com>
 <0f0e965b-2e57-8b6b-0c72-1a1008497793@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f0e965b-2e57-8b6b-0c72-1a1008497793@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_155021_487076_77ECFDF7 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 05:09:34PM -0800, Ray Jui wrote:
> 
> 
> On 12/5/19 4:09 PM, Florian Fainelli wrote:
> > On 12/2/19 3:31 PM, Ray Jui wrote:
> > > Add binding document for iProc based IDM devices.
> > > 
> > > Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> > 
> > Looks good to me, it's 2019, nearly 2020, maybe make this a YAML
> > compatible binding since it is a new one?
> > 
> 
> Sorry I am not aware of this YAML requirement until now.
> 
> Is this a new requirement that new DT binding document should be made with
> YAML format?

The format has been in place in the kernel for a year now and we've 
moved slowly towards it being required. If you're paying that little 
attention to upstream, then yes it's definitely required so someone else 
doesn't get stuck converting your binding later.

BTW, I think all but RPi chips still need their SoC/board bindings 
converted. One of the few not yet converted...

> Thanks,
> 
> Ray
> 
> 
> > > ---
> > >   .../bindings/soc/bcm/brcm,iproc-idm.txt       | 44 +++++++++++++++++++
> > >   1 file changed, 44 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
> > > 
> > > diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
> > > new file mode 100644
> > > index 000000000000..388c6b036d7e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
> > > @@ -0,0 +1,44 @@
> > > +Broadcom iProc Interconnect Device Management (IDM) device
> > > +
> > > +The Broadcom iProc IDM device allows control and monitoring of ASIC internal
> > > +bus transactions. Most importantly, it can be configured to detect bus
> > > +transaction timeout. In such case, critical information such as transaction
> > > +address that caused the error, bus master ID of the transaction that caused
> > > +the error, and etc., are made available from the IDM device.
> > > +
> > > +-------------------------------------------------------------------------------
> > > +
> > > +Required properties for IDM device node:
> > > +- compatible: must be "brcm,iproc-idm"
> > > +- reg: base address and length of the IDM register space
> > > +- interrupt: IDM interrupt number
> > > +- brcm,iproc-idm-bus: IDM bus string

What are possible values?

> > > +
> > > +Optional properties for IDM device node:
> > > +- brcm,iproc-idm-elog: phandle to the device node of the IDM logging device
> > > +
> > > +-------------------------------------------------------------------------------
> > > +
> > > +Required properties for IDM error logging device node:
> > > +- compatible: must be "brcm,iproc-idm-elog";
> > > +- reg: base address and length of reserved memory location where IDM error
> > > +  events can be saved
> > > +
> > > +-------------------------------------------------------------------------------
> > > +
> > > +Example:
> > > +
> > > +idm {
> > > +	idm-elog {
> > > +		compatible = "brcm,iproc-idm-elog";
> > > +		reg = <0x8f221000 0x1000>;
> > > +	};
> > > +
> > > +	idm-mhb-paxc-axi {

Needs a unit-address.

> > > +		compatible = "brcm,iproc-idm";
> > > +		reg = <0x60406900 0x200>;
> > > +		interrupt = <GIC_SPI 516 IRQ_TYPE_LEVEL_HIGH>;
> > > +		brcm,iproc-idm-bus = "idm-mhb-paxc-axi";

Can't you just use the node name? Though if this is something that can 
be a standard class of h/w (i.e. EDAC), then we'd want the node name to 
be generic.

> > > +		brcm,iproc-idm-elog = <&idm-elog>;
> > > +	};
> > > +};
> > > 
> > 
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
