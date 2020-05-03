Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55221C2DC4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOJ46ph9OlQIr8OlgU2rvkw15CAirOMeeoB8iUwm00k=; b=GjcA7vjJa4YEH2
	va+nxhzts/ebuJ7W6EAGPoLCftdac2x4RxpxlQzIOfIbvl/NCKvGoSXOTs1o76MykuujUH7T1GSMM
	W6FHn2USG3ophldNU7nuXvI0UpxlfKY9XVwjl+kFO9/9PnYkyOoO/1SHV62swJsNE2w7u6fWQ9Ftt
	nT9RfSNS5ew2Pl7G8wkAPBVW6noM/eBGan4mruSGWbIb/KsX9Ag+jr50IXIvJRaV42nWeVZHXSJwZ
	CcaC1HS9o6JTZQlFnS9Qjuhx5ZTtVTeMqfG8Xg922Zmw4/mWfi1GcUVDYADEQuZEqR/57KgNdn6c6
	fM3NrhvDG2b2zUWbJQ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVH05-0008TP-VN; Sun, 03 May 2020 15:57:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGy9-0006kg-Tx
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:56:03 +0000
Received: by mail-ot1-f68.google.com with SMTP id m13so6758763otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 08:55:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nnLZYZwMU9atoe0Mo9BQCXr6qSWkjNa8GKSdfV9HOXA=;
 b=ByLCxAP6Jo7ie/rkLeg2KQs4lNIe03P2lZ8jOG2QtkY+WR+030286X3ZrM+oj6hwqz
 nS/BSFvdDwpI9WmNQblZcs3cSPKZ3GbjOr2M7orN+l0bqQxuDGP0kDzTohJHVd7C4+Na
 Buk0DVlGfk1d+7j/iNztbzfkNEkEBD5In7loAT7aLF/oBYfL0oEBSRiq24I+7d+s4Gdp
 hPZSCb/ka5AvyPyFD0z4dUMbrERcZxGqJaNly8hqMAMGvR25F1G8bUBzYoj5rlj1ixR/
 n2p5rwSf3MSaLvJgcgy3R/ROwkvnve+rLK2YsBOcUIeu2/07bhj3RDCWa+0psX87mwC4
 tlRQ==
X-Gm-Message-State: AGi0PuZogz6G9Qgy7BTqmhkvAp9XfKJvtm/vzMbGYnnfijmSGMOG1POo
 k3lNEjpVBkaX2iPQrE5doQ==
X-Google-Smtp-Source: APiQypLsYrXG1Iq51+4SYgbvtQ3WEYsI6WitaRslxP0Mw5idOuiEJPlplpaXc8z0qAv5muN1T2BZAw==
X-Received: by 2002:a9d:4102:: with SMTP id o2mr10936464ote.98.1588521352740; 
 Sun, 03 May 2020 08:55:52 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j14sm2534258otk.27.2020.05.03.08.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:55:52 -0700 (PDT)
Received: (nullmailer pid 21349 invoked by uid 1000);
 Sun, 03 May 2020 15:55:51 -0000
Date: Sun, 3 May 2020 10:55:51 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 5/8] dt-bindings: arm: Convert Calxeda L2 cache
 controller to json-schema
Message-ID: <20200503155551.GA21293@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-6-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-6-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085553_988139_C8DA1E58 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 22:10:51 +0100, Andre Przywara wrote:
> Convert the L2-ECC controller binding to DT schema format using
> json-schema.
> This is indented to be just used for error reporting.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/arm/calxeda/l2ecc.txt | 15 -------
>  .../bindings/arm/calxeda/l2ecc.yaml           | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
