Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C49A123CEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LGGX+qUFBZg8akKz7FK6LOTo8NQGkUUITdhjUNdiTQ=; b=Rg8VPxVVABgYnw
	l7lQiJepzaeD9kAwE0tkHIX9nj6jLzMWf4VbvIluJ+Xu3TWqDHE5ptJh4Pp1TdrfPC2QifUQ1jGU6
	rcsgjM+eLwJxKcmE1BeeUudL6jpc2PmUcxyLaDL8fXDahyM/dMzBt+xbUvrf4AXe6j54ymFBXBU3e
	fXvMUHfLD5yRRkp6PT3PRPTn4jwe9yeq018JxltWSALGfDUR7belsZOIOGL4n4okKbJqCZgo3QmSy
	HCY+gyK8SrCNib/sggTxzFvLU+rZJKxZ2KCFUUFNCy7vleceTe6meY+jAxMrZkAUq1FVYb19SO/Zr
	tOdS/f7VNx943DkaHZgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOoC-0003l8-Jz; Wed, 18 Dec 2019 02:11:28 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOo2-0003kh-Qo
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 02:11:20 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so370837otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 18:11:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZcqLEa5n7h3ikutpdSd3t6thjVHG/YAZxYICg213uf4=;
 b=EY00aJWhFpGhmWG4UvH0lbfS/7pHMA0UJpTrcQnfxf97D2sRij7xMeCofFVscJK1f1
 iSLVa8LhOqerkf1DzZQ5nErvLEZwCrk893inQKR6bBzsr8C2IfJlyl2yvMRzLteJoNkS
 ZM9uwmyIEntItiqNPDgRhfPO5lleHyw2jZiq/E9rHl00Y0ew38F0qHeYW5B+kMQ2JYmi
 3THUJ6lc1YDjV8es8xm6OnUoqAettVmn91ywDgl1DCgHGu3EnLH6/FCRHt8GyVUbgLaz
 IeWQY2SaUMomq4UkpS9o30QRtnx4obZd38W+CK7FmiqtFlMIxd7gIwiUfYCI58ZuqmwL
 RWVw==
X-Gm-Message-State: APjAAAX2ZGdJxwWyOn2GIVDFu2b0BlBOQf2m1PDB0TiiP7aM42TwTI9b
 HkQ93qjRCSSXTGy5+s5zFLCDYPk=
X-Google-Smtp-Source: APXvYqwNcQwVqUwr8FXCji1vP3issJ1yUDzKoqK0jsEeQj5heCaceaFAzEMZxWYmnxxHXcOyZolM/w==
X-Received: by 2002:a9d:eea:: with SMTP id 97mr367606otj.177.1576635077244;
 Tue, 17 Dec 2019 18:11:17 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a65sm245302otb.68.2019.12.17.18.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 18:11:16 -0800 (PST)
Date: Tue, 17 Dec 2019 20:11:16 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: media: Convert Allwinner A31 CSI to a schema
Message-ID: <20191218021115.GA23294@bogus>
References: <20191213074355.26840-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213074355.26840-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_181118_869682_73F3D506 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, mchehab@kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 08:43:55 +0100, Maxime Ripard wrote:
> The newer Allwinner SoCs have a camera controller that is supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../media/allwinner,sun6i-a31-csi.yaml        | 115 ++++++++++++++++++
>  .../devicetree/bindings/media/sun6i-csi.txt   |  61 ----------
>  2 files changed, 115 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/media/sun6i-csi.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
