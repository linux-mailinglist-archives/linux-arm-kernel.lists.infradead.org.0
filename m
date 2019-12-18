Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC0D123C9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 02:43:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3U4soVkSZNXUDUSm0zzfEUYFUoCBW6s+vywSfE98J0I=; b=at8mmN9avSWaS1
	0xqL4aI1Fvaetnkket6lJ7RvNF8Zvi/vufY1YNz2GXWa5RKC3E+CrGVUs4DSEkq31nPk77MAysEfF
	0in51P8W4gYdJfY1lEs4eyXAoW4GWSgSzu+N8WSxMyNFmFCQo3OH4BNZSe/9t5ylM33hpH16RY/EX
	zBtnS6AEJ9txVeM4w4lib5zVHHvQb4gAGwIoMXPqPyZYYOwJAgyqxLa1eugS8Rsw/Gt8aM1hIK1UP
	IV52AnFw8LYNqt5THSSN67VChFdU/BsAXyoQD3kLXbYr+MhrXd0mC42Upseg+X8ov8WAZhb7YDPdE
	RO5+zuoMaTJcfOz1NM2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihON7-0002Hz-Ph; Wed, 18 Dec 2019 01:43:29 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOMu-0002Gx-FD
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 01:43:17 +0000
Received: by mail-ot1-f67.google.com with SMTP id k14so335710otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 17:43:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IiMjiBzF+xfyg/WDxwTRpq7JENtxssrwaIHMkTGyjrg=;
 b=HCCwMH6/gIEoGpIKIvkIOw90BYeMm5AAkaTnwTuq7udclvLZaN69DAYCCghboXoeSy
 tkSeKzG4PMENgrMVpMVsxD5JgkKddyahkWWt0GE/eXu+AUaqZ67gdPzuwosDRQTGse3z
 R9csG1ox/YEfbwP9jx0/KVbCY7KfjD4t4zMFa1VdOqQtf4l8vv4FzmOtNZ0MlgCG3rgu
 OGDbobDh7eRWKeKmUqr5ThQiFdbG2dR6V1cWTgWo3ikgpcY3u5+SfYj75X+WLvW3MDey
 UmFrS/IlUfw5nWGFaQWi3hri3DE8ISsxp4tBRJF0BHNAldpdjGJtiWHBiRyasJbyBxK4
 c20Q==
X-Gm-Message-State: APjAAAXHQA0lEPf0mpxnLcRl8pnVruqY64HkXHu3fOep7LuVHAgYtM6j
 jR8+EAnF0ramhEVFcrROrw==
X-Google-Smtp-Source: APXvYqyUm/dw/EOEQtaVZYWzca7aTB35MmfeSqVe9uV0Tmt56Tyu6ZqgRK4per/0gE9FvANXdXryxQ==
X-Received: by 2002:a05:6830:1e7c:: with SMTP id
 m28mr265289otr.131.1576633395707; 
 Tue, 17 Dec 2019 17:43:15 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u11sm256690oie.53.2019.12.17.17.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 17:43:15 -0800 (PST)
Date: Tue, 17 Dec 2019 19:43:14 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 4/4] dt-bindings: sram: Convert Allwinner A10 system
 controller to a schema
Message-ID: <20191218014314.GA604@bogus>
References: <20191209093441.50694-1-maxime@cerno.tech>
 <20191209093441.50694-4-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209093441.50694-4-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_174316_505678_92CE33DB 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 krzk@kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  9 Dec 2019 10:34:41 +0100, Maxime Ripard wrote:
> The older Allwinner SoCs have a system controller that is supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun4i-a10-system-control.yaml   | 140 ++++++++++++++++++
>  .../devicetree/bindings/sram/sunxi-sram.txt   | 113 --------------
>  2 files changed, 140 insertions(+), 113 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sram/sunxi-sram.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
