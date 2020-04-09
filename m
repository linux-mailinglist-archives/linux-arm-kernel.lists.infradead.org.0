Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD3C1A3D0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HCxEULDAQ+Sug0HGkJENyXoXxjcI7zhzwUFr8rok30=; b=G4kcYjJ2zLuT94
	BmNCpZOnIXlIIH6pBVhf1FnsZznoytUZgcPDR7vPckgQtZ2ow1hjiH6ga+VSu+8X2Zr4K0lzieq5C
	kNsrOXypEcVYE3L8GtRAYjV1cj/OkBAxb7QBRDBY7JHqy7RHuC68mSiSGzax46SshqZ2Aq1egzvRM
	fHGFlLHc1QTbl9Nrg53CvHDPV4i3rszUdhjN1shCQVcBfW9HcUGefqXhSb0OiQgLWZ25xM5a+xIm8
	qc01g9gKp6m3HLWCgwpWiPHUS530NVYMQZqa24qv+cC6AnGJeTC3Oub7WLYrEmQGfAKXJP4hGewqY
	LA7hPugOQbZVhHdXTq9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgsY-0000nH-4V; Thu, 09 Apr 2020 23:46:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgsN-0000mq-8A
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:46:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id 22so277766pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X1Y8bnD3QMGmRcwUVI82L0iDUV1q8Fy3GQNmvFYnS2I=;
 b=EBxEUf08dMeA2iEQohC5/R3ZVAHRMWWtefrFAHbK3WBKDA3GsxHCGkxIMncKubJ14s
 ZqP447beS2tDu8NLH1Z44HuydTaUOJwx4UvmH8w9UE66LnWULAeThpHVGv7KL/t1IQ0z
 nXGlMIXpzqjB9hMb2IcXye17mn11vmGodw94zXUXdpypQtgltIkMQUBpX3lpyQLcQhKs
 kQI2/Tz08GLv0yr0aet1S8RRQlqzSM7yN+zQ+e+KhdgepQmmcXKW4fxnkQaG1Dt82L0h
 xYs6faP7szYqAUT2Vq+a4PoC+D7liwiWUMPO1Y6tmyF0KcAKHRiKCImaEY+I5eSH5Prx
 zO6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X1Y8bnD3QMGmRcwUVI82L0iDUV1q8Fy3GQNmvFYnS2I=;
 b=JucxPz3jXPsvtueWn6dcH52Mhqj961LCPRNhx0Myj42zkGA1dnEScyGf0h8I8oETVR
 PaXOCNeJeZSQIsbaHgRsaqo4fAXWMJWyXf8EEO5j6/fvRguMTowaePqEykzKOpFOPq9p
 CkHsn/bTsjUMs49YcwnXvDxeqHEUgGDK1Wy8JNq1uyzRtZHomMcq9w+fhrWWQgiSerMF
 5NXiZlXIms51eWpjzrRf478NbFIVdvjwtQnTXZ8NqJM6fycwsZqoyOq4+uWxgFgXu1eY
 Sa28phMtcgtIyEDhGaAZVLkemqFr43y4UFpgmRTv72o6XlkGoxKMNZhOQuZspxICegeP
 C9EA==
X-Gm-Message-State: AGi0PuaCpeC6OCg2lsfEfPJk1SlS77BE+YTS0xtJl3oA/4RaOIRXJtE1
 ogOSa1/C+XpedypwXCLT0B8=
X-Google-Smtp-Source: APiQypJ1xTM0Kzl/R2WKceZ2kuvIzhM7XWOQrpUymOEdXWNA+ZOn9J7ew7DVykXrVkUi5rHMe4xDrg==
X-Received: by 2002:a62:648f:: with SMTP id y137mr2268339pfb.199.1586475986437; 
 Thu, 09 Apr 2020 16:46:26 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id w27sm191851pfq.211.2020.04.09.16.46.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 16:46:25 -0700 (PDT)
Date: Thu, 9 Apr 2020 16:46:23 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200409234623.GU75430@dtor-ws>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
 <20200409222115.GT75430@dtor-ws> <20200409223907.GW3628@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409223907.GW3628@piout.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_164627_292928_88EB619B 
X-CRM114-Status: GOOD (  28.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 12:39:07AM +0200, Alexandre Belloni wrote:
> Hi Dmitry,
> 
> On 09/04/2020 15:21:15-0700, Dmitry Torokhov wrote:
> > On Mon, Apr 06, 2020 at 05:58:05PM +0200, Kamel Bouhara wrote:
> > > Add dt binding for the counter variant of the rotary encoder driver.
> > > 
> > > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > ---
> > >  .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
> > >  1 file changed, 67 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > new file mode 100644
> > > index 000000000000..a59f7c1faf0c
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > @@ -0,0 +1,67 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rotary Encoder Counter
> > > +
> > > +maintainers:
> > > +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > +
> > > +description:
> > > +  Registers a Rotary encoder connected through a counter device.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: rotary-encoder-counter
> > 
> > I wonder if a separate driver is really needed. The original driver be
> > taught to use counter device when available?
> > 
> 
> By the original driver, do you mean drivers/input/misc/rotary_encoder.c
> that is using gpios ?

Yes.

> 
> > > +
> > > +  counter:
> > > +    description: Phandle for the counter device providing rotary position.
> > > +
> > > +  linux-axis:
> > > +    description: The input subsystem axis to map to this rotary encoder.
> > > +    type: boolean
> > > +
> > > +  qdec-mode:
> > > +    description: |
> > > +      Quadrature decoder function to set in the counter device.
> > > +      3: x1-PHA
> > > +      4: x1-PHB
> > > +      5: x2-PHA
> > > +      6: x2-PHB
> > > +      7: x4-PHA and PHB
> > 
> > Is it really property of the rotary encoder itself or property of the
> > counter device?
> > 
> 
> The mode the quadrature decoder has to be put in depends on both the
> rotary encoder and the qdec.

OK.

> 
> > > +
> > > +  steps:
> > > +    description: Number of steps in a full turnaround of the encoder.
> > > +      Only relevant for absolute axis. Defaults to 24 which is a typical
> > > +      value for such devices.
> > > +
> > > +  relative-axis:
> > > +    description: Register a relative axis rather than an absolute one.
> > > +    type: boolean
> > > +
> > > +  rollover:
> > > +    description: Automatic rollover when the rotary value becomes greater
> > > +      than the specified steps or smaller than 0. For absolute axis only.
> > > +    type: boolean
> > > +
> > > +  poll-interval:
> > > +    description: Poll interval at which the position is read from the counter
> > > +      device (default 500ms).
> > 
> > Is there a way found counters to signal an interrupt?
> > 
> 
> For some counters, there are interrupts available, this is not trivial
> with the counter that is the target of this work but this is on the TODO
> list. Of course, this will also require adding a bit more to the
> in-kernel counter API to allow registering a callback that would be
> called when an interrupt happens.

Should it be a callback, or can counter create an irqchip so that users
do not need to know how exactly it is wired up?

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
