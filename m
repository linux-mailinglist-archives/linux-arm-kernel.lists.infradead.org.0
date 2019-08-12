Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A668A957
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lup7lqF554I56a4+PK/2ECAqKPH6xkhtgjmhNw+SqY=; b=gqaYQy/CXPTdWY
	7mjPEdukUYmkViBxtb/YJR/h6IbwJFP18JXp6MnKzJm39uLhODwRFMo00r7sC1kA+tag60tDRiMWO
	aoEv8TaffMUSdgYDPR4xvjaz3oPTPq775xJ9d9N6oJwbtPqAZOsZH/XzRS5zWWzH/I0aCiyucILwR
	BbBgbmBUKjO6IdAxzpsXZDR1snPxwOP3IM3j3skJciCYGmKM2CePER9lL1fn6zBDXElJsKDEJriaJ
	mfZRaoubqmC2HUKxjPIIR3mQek27X3Iz3cAAyW0LyqcfS76Yf+IGCNPELaqJgZnusgvniHcTYjq4h
	7WNJTzT75m2G5luq/zGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHuH-0004fs-2x; Mon, 12 Aug 2019 21:31:09 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHsz-0002Wk-Hk
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:29:51 +0000
Received: by mail-ot1-f66.google.com with SMTP id f17so29211871otq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 14:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZebiGBSMiPh9UgA6bIJDz8bdvGeaM9PFdpy9O8ClYOo=;
 b=k/MOnvQrHIGwfYfzEYPnKSTCaw/7ehXuRY0KIoQWOCAW+BCpE5HCby3jilfCC6RYGA
 YrMn0WFfAD2hkjihH3/iFeuXzgiVWWjT8BxRQbT2bTbX1p5LSiYAtkjA7l/osL1txqP6
 3jQd33uP8RU5bFFQr1264kwi2zj0daob88pW2Ub/ZbCr24TseJ4FQlyaxRdLPxLbhw9c
 RsHWQIDnx0RCT9NO7JwmfUg8GDJP+8ofapPSqzDrxLI1ZLGh1C7x2uAh/QloKj9XLwF/
 JxiKy8y7oJTXaNzxCwM68ql8B95rg8WZRzeUps7TywBVpwqYrytgz2anitTW0XoRl28m
 vq3Q==
X-Gm-Message-State: APjAAAUNRy/4N5dzwMw2U7R7s4SrsdsoAbkdsbqDbRJLKiAXlRhFtw5C
 J1UIqzKUq2qKNqJa/fCx8g==
X-Google-Smtp-Source: APXvYqz3cyuzSsRaxbp/Su8D2j/E+kG3mJz3jsPKSACywEtNz8URb6dSTTdudqoP32hNxWFd50aV1w==
X-Received: by 2002:a5d:80c3:: with SMTP id h3mr38210641ior.167.1565645387994; 
 Mon, 12 Aug 2019 14:29:47 -0700 (PDT)
Received: from localhost ([74.118.88.158])
 by smtp.gmail.com with ESMTPSA id c13sm19775854iok.84.2019.08.12.14.29.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 14:29:47 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:29:46 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Message-ID: <20190812212946.GA6120@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <20190731122126.3049-14-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731122126.3049-14-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142949_709069_1F2DF2F7 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019 14:21:20 +0200, Miquel Raynal wrote:
> Marvell CP110 COMPHY block is fed by 3 clocks. Describe each of them in the
> bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/phy-mvebu-comphy.txt       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
