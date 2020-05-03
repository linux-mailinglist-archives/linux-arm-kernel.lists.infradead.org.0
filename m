Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2E71C2DC0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYuz8nOaouqwRprIx13Z5AXQV3zKVHM7b5I1tZv6WIs=; b=EML7QLMTLA/7JA
	qJTqsBnjHOKasTw2IFZFsMz2v7yyh7ezLsjfnQLi0p6ZQJoGfyj3ZIW0DrN4cujyvPAajSrUbZYK+
	KLGtmjYDUJunprnlEbKGsvilreR55IIxasLRO2d/bxENc4ZoXDYd+2eQl4gKs29yuaZYECoyWjUgv
	e5mcLo/R8bqdo9Nsl3ESDsLywAARfrv7bRFivlRIA0f+NFG0ta7SDTutPLFsHm8+a1FyCvM7vygVI
	vn4u3Pyl+o1AVfJT+bdiPcV39PFlE99F9dTZyX7OHMrzFSP9IAoKmHhIhxeiRLFKhMPi1dga5K45H
	oRzGgNUFOf3Lo4RprEgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGz1-0007Pp-Oh; Sun, 03 May 2020 15:56:47 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGxO-0003yA-8V
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:55:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id e20so6724716otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:55:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1SJl+Zf+PXhgsQbG0N6jArE/8YWiS3AQ+7VS1y+nDYs=;
 b=U+UuhEKSasKnMf1DyDliqYOvkAi5Sjem3H+TcZHEM1qzbwtyA0tMsaehyJAMncCgoW
 /YK+PnIoMoU6B2ceZ32l3fQgTpsaaMhCOuhRQoW67f9wSKwZC2S9b71bnuDWr1qrBl/K
 9xevoJxWj0Rs2BVVDyLolyMCJWlD/YOyGD7kt6BhpkvB6OprwOX/KOSV2pQborFWhRSq
 dIOJ8Z0SYqC9GgBoIYGOZaLbvnm/Tlm8GO2cZwdzTfrYcLszubv+fCrkrpMTqNpeLhsC
 IeRD/GGzvmHJDRxnUksdwujp6AIkSvA3rFacjplZmk1yCWphJSK6re2RdCCroUQkVZp3
 Yg9A==
X-Gm-Message-State: AGi0Pua6XPyyVZcmdNCWQGFU2Y/3sQAddwYz8LiSEKvp0AYNp4/I/nK3
 ZbsVyUnMgqHoiuHFstdFF9GxvVY=
X-Google-Smtp-Source: APiQypLt0OsGOy7bdAk4eX8ZfJHsyORJIwBTySAb9tpBQpijaTQl/DOvjAzwB99sHAw0bd0niLZoUA==
X-Received: by 2002:a9d:400d:: with SMTP id m13mr11156744ote.347.1588521303624; 
 Sun, 03 May 2020 08:55:03 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q19sm2489210otf.6.2020.05.03.08.55.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:55:02 -0700 (PDT)
Received: (nullmailer pid 19190 invoked by uid 1000);
 Sun, 03 May 2020 15:55:01 -0000
Date: Sun, 3 May 2020 10:55:01 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 1/8] dt-bindings: clock: Convert Calxeda clock
 bindings to json-schema
Message-ID: <20200503155501.GA19073@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-2-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-2-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085506_511049_2A312672 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:47 +0100, Andre Przywara wrote:
> Convert the Calxeda clock bindings to DT schema format using json-schema.
> 
> This just covers the actual PLL and divider clock nodes. In the actual
> DTs they are somewhat unconnected (no ranges or bus compatible) children
> of the sregs node, but for the actual clock bindings this is not
> relevant.
> 
> One oddity is that the addresses are relative to the parent node,
> without that being pronounced using a ranges property.
> But this is too late to fix now.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  .../devicetree/bindings/clock/calxeda.txt     | 17 ----
>  .../devicetree/bindings/clock/calxeda.yaml    | 82 +++++++++++++++++++
>  2 files changed, 82 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/calxeda.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/calxeda.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
