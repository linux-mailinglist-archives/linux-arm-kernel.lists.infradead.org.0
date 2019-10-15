Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F83D8039
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luTtUNIDNpD5ZH1oD5QCDk1o9TBdoNttElE1jrIEr50=; b=hX3oimKX8jfzaW
	msyomzfePp5J2vaXTn73/V98rADGTRJzJzelCfmCM9gc0lwiav+elatU1JBl8jwc4rGiPSiN6sOSw
	9BUYEE+m98W9fH0OS5XDR4RISUmgnEjFbvnH0IwriVik/NO8doEN/m04hxUB2WjNjX5sBVA3MLVrT
	odmq0sDrttQJdP6mfLGZLHBNgmY0hGGNZadrxXeMRKW5kKolKo0UiHIfgzpqHXz5z4IBpGMF2IFZw
	fcdchH5ZMv/GQ3eDrf67ayeAuAX70m9QSrC5q6gqHqT0FQzPi8jWBr1SYff9N6YRTymlDgN+NaXsH
	4xzGHjoTl7sg9ZI9xUGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSSi-0005xM-T7; Tue, 15 Oct 2019 19:26:28 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSSK-0005kq-JM; Tue, 15 Oct 2019 19:26:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id y39so17971051ota.7;
 Tue, 15 Oct 2019 12:26:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bMN7HsXxW10Z/AXt6bsUTKC+n3cllPgUCAnFiYh55f4=;
 b=mMvonymWHPvVOIg9nzD8cqa+Y4ZTB9cxNZmMBTV6x4uxK7l/h3QCSSV8YIJBKn06tR
 RDUkMSvBy06VNxMvWB6CGt5w5fp43kvBj2Y1W1JNft4nAqU/yZVNLxeon9P8QKIrFo5h
 URYTzLU1cqMv3NkGfJJKkrJXsZPQz1xEI5ZKmvAmAQY/KV1dYquVbpl1DunyVXo+NsHd
 jcnUEJHZ1nQJY1OQw7Fxz6/g21ATLAPmItU8r8xVYA6u1zqdlARDrLCMn+nrZHrodZmZ
 pzRpvAQ0+86TtPzxAnNoWEmB5fxsSY0RY5DoCbrx6UWkQfjCLwE3W8qIYjY/gTuL9n3P
 Fh1w==
X-Gm-Message-State: APjAAAUHV0PpYf39XByDSthyaV9KGo0GUIte8rPQJUP9pBbuU9LzyrJz
 9mEvgOl1Vo1IvvGDee2j6A==
X-Google-Smtp-Source: APXvYqwlp5+8r2qKOXYzE3/Ug0686nB0PMhOBNsopPiUJRsFnUZMpsYTSVwqINAlrTQju3xmJY1Q9g==
X-Received: by 2002:a9d:66c5:: with SMTP id t5mr30074981otm.225.1571167563870; 
 Tue, 15 Oct 2019 12:26:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i2sm7329212otf.19.2019.10.15.12.26.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:26:02 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:26:02 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?C=E9dric?= Le Goater <clg@kaod.org>
Subject: Re: [PATCH 11/16] dt-bindings: mtd: aspeed-smc: Add new comptatible
 for  AST2600
Message-ID: <20191015192602.GA2299@bogus>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-12-clg@kaod.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004115919.20788-12-clg@kaod.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_122604_636150_F927E256 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Vignesh Raghavendra <vigneshr@ti.com>, linux-aspeed@lists.ozlabs.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Joel Stanley <joel@jms.id.au>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?iso-8859-1?Q?C=E9dric?= Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  4 Oct 2019 13:59:14 +0200, =3D?UTF-8?q?C=3DC3=3DA9dric=3D20Le=3D20=
Goater?=3D wrote:
> The SMC controllers on the AST2600 SoC are very similar to the the
> AST2500. The SoC has one Firmware Memory Controller and two SPI flash
> memory controllers.
> =

> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: C=E9dric Le Goater <clg@kaod.org>
> ---
>  Documentation/devicetree/bindings/mtd/aspeed-smc.txt | 2 ++
>  1 file changed, 2 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
