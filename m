Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F7998470
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5N+26QudcGUQ4MyEla1b3Vk03+xiIhy8cMJ0Z7cy04=; b=bo8XtPtfNVjtbR
	tqMgIH3Xm2i0uRLFcgaYO23MEnudPl+a48flHV/3vFVw7wFSgqyuqpKEIYwyxuNBzW4EhaewVHBCR
	q0XnbqKADo/QxAN7SBZbRj2SoQoGou1UEFcZmzNGFDOHDqsw9ZBgqSIZjjq8dikW8Q0GGO0zqOV/X
	KrPNf7x7lUj+sSOxRE1CxSvG+y78xq31itRBCfy7lUE6eWLGuyB9SWnhk6a1GEGPDzAl6mi6PsA4U
	BDs3Do8EQHcrQi/Flxyum0RI1pDVc0BI8uVPtRFa5K2b+qMm4XZn3Tn4k2V0fy2OBAkyJvHngWcsI
	J6lq290JM2OWyFQJRqOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0WL5-0008Ee-GW; Wed, 21 Aug 2019 19:32:11 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WKx-0008E5-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 19:32:04 +0000
Received: by mail-ot1-f65.google.com with SMTP id w4so3141165ote.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 12:32:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s4Vc8y3V03J7skcBEskidCxtsue4N9iQiQdyhSa0WOE=;
 b=UqH+seEqHaCnQ6Uht4Hx1gXuqfmcakflmHktnt9yrILd7ketiUz0r5UEmv0HoA89RO
 cZAAmN08Xea+tboauFgnvQB0J1/tEckdBvp7iCDDgpQluV0OFSWL51vQazJk0dKK7Acy
 RQsn1FcBgEYkfAMj84xUZFyd450HyTedvITTg1HWzD6hibMdlxOfpgKrbqYyumyVmevp
 NLUbhgcBBrso3Bvum8uLV+sJ8CtWqKZ7fZoFL0gtsvjeQ5rUjl1ejwaz9uU39MMTb95b
 dpgaFOP982nBibNOjGl0FCsnl3ibegA2qfBTRwH4pGA1gndPnXZqXqeDd0rgztKoTdk7
 Mxew==
X-Gm-Message-State: APjAAAXj/j8bNub1e4EjNaUBUZP7rc3j3sHomqOaeyJhFKAeuHhVdFhj
 ggNVvKpNyHasoRrvXuhi3A==
X-Google-Smtp-Source: APXvYqzQ7Kb2tiL08aa4/qQnyhzaDBpAPjUvUrvBtqsA6ToQt+7diBij4UB/Ls4sjC9ZnqtiJveO1g==
X-Received: by 2002:a9d:a06:: with SMTP id 6mr29280133otg.127.1566415922509;
 Wed, 21 Aug 2019 12:32:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 65sm7763058otw.2.2019.08.21.12.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 12:32:02 -0700 (PDT)
Date: Wed, 21 Aug 2019 14:32:01 -0500
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 03/20] dt-bindings: ap80x: replace AP806 with AP80x
Message-ID: <20190821193201.GA32068@bogus>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
 <20190806145500.24109-4-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806145500.24109-4-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_123203_519980_FE69B8E9 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Ben Peled <bpeled@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  6 Aug 2019 16:54:43 +0200, Miquel Raynal wrote:
> From: Ben Peled <bpeled@marvell.com>
> 
> Rename the text file and update "AP806" into "AP806/AP807" where
> relevant.
> 
> Signed-off-by: Ben Peled <bpeled@marvell.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  ...-controller.txt => ap80x-system-controller.txt} | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>  rename Documentation/devicetree/bindings/arm/marvell/{ap806-system-controller.txt => ap80x-system-controller.txt} (91%)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
