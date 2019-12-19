Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26652126F08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fA3Q27S6j1AtZb/ehU0iqXCR6eJutG4N/39DrhF6IYk=; b=gh+EHzr6mV+264
	XB1e9pxrZgWnv4yu0y149UED8ysDE8SjTykRJbQ3Rh7EyRJk7LvBWP3rBwWlOQqIZaUqCg5tHAPaP
	+wk03Wj8x5lsLRYDLZbivYEMnArEdmn1kF0y7hWVGlarfPQ0uKDvvRcYNSCZrWtXvolbVJDlSns4S
	047rhE9BPLPhyM3Y6m9NOaJRYIT3/uJMuN1XJNuXY0d4uFg7tjfA5MxfBzlrBBFw+e1QCwdXVqfcU
	63ADTTCGoiHT3162PrVcWyRBVxTMgRU1I7Nu5A83nl4pGeCTfL/xCIxi5IVqZIMM6E990Jip60+l9
	FZ3YJ+YB1y/b4CyQoM2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2ax-0000qU-RJ; Thu, 19 Dec 2019 20:40:27 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2am-0000pK-EU
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:40:17 +0000
Received: by mail-ot1-f67.google.com with SMTP id k16so4196596otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 12:40:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/DHU6AsWSbmURzWL4fQKKs9PFhhU0IfAdRT8ADEmXqA=;
 b=KdNYYhbOA5076479ydZZ1FncbF8+5qZKgLF34yuWirXQZqV0rx5Uty333KVDoT3F00
 ZKYIaTskn3q2zHjZ8nyK1+/mKFEv90jsKOekWh/jwMvIYqPQzx4Efopzot+u/c1XIkpb
 6oQmO/p+2cdQN8887GLy3A2VczY3419kgRj3FZSmdnN1eOjI8k3KqnCBCdG4DGH2wBHY
 bLuQGlr+VyoXnCtCq2bxwDyeA1/qd5KrqDl9XVOx2gJbJqdXhySBBCKCXYwvzQyIPg3c
 tei5jCvOhglTgyoFenINZZmytsaRoPgyAwWYMerjcDzWLdHvzoEeLjraSzInmUoMwXe9
 RObQ==
X-Gm-Message-State: APjAAAVvnfac72D5J4FmS++rykXFaeJsPvLbiDIDcoCrk/tANRC9Gr+2
 u81CTG85ozAfnEMLatnl0w==
X-Google-Smtp-Source: APXvYqwiBRMoaTCW0PSw0PLMzLzmf1pWoLO2s/QtQLkK7HPuMsS2ihUOut9p7Nlfau6onR9z1CCp1w==
X-Received: by 2002:a05:6830:1db3:: with SMTP id
 z19mr11363008oti.152.1576788014659; 
 Thu, 19 Dec 2019 12:40:14 -0800 (PST)
Received: from localhost (ip-184-205-110-29.ftwttx.spcsdns.net.
 [184.205.110.29])
 by smtp.gmail.com with ESMTPSA id c12sm2377123oic.27.2019.12.19.12.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 12:40:13 -0800 (PST)
Date: Thu, 19 Dec 2019 14:40:12 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: reset: Document BCM7216 RESCAL reset
 controller
Message-ID: <20191219204012.GA4350@bogus>
References: <20191210195903.24127-1-f.fainelli@gmail.com>
 <20191210195903.24127-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210195903.24127-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_124016_487440_ED1719CB 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 11:59:02AM -0800, Florian Fainelli wrote:
> From: Jim Quinlan <jim2101024@gmail.com>
> 
> BCM7216 has a special purpose RESCAL reset controller for its SATA and
> PCIe0/1 instances. This is a simple reset controller with #reset-cells
> set to 0.
> 
> Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../reset/brcm,bcm7216-pcie-sata-rescal.txt   | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.txt

Can you make this DT schema format.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
