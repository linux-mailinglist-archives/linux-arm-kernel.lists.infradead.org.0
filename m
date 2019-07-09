Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0C362DB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 03:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuSttXgGNIzhlCLUoFht0N87eXgZJtmzAxShz3Gmx08=; b=jafbaMUKK8jBk8
	O+2hNIJcxVuSY0u0kL1XmR+OyDsvJzCGKKvDEMr537thj/b7Oo5z+JDVky/zsjjl7S0qHKECCAZ1T
	Jzl13raPtyB7KVeUNJrAhhjcebg4Y2LSlomPYTfxhkezYf8Jpt/7sNZPrpC1zYvfSpzH+SNGzPOhR
	kW/aWnthBUXxyqbyEuu/rsAq7Vy6SgHvtSvdsmBngHGG3NjaVkHjOs/y0ng3zuesLJD7nxKk+1Ffo
	4LAWy7JzLANjONQhk0L+avdtO6YvRgnWVNjU3ZtT/Nwn1/oYyxmipzFqbNKzb6k+A4YFRiAN36D/d
	4am0MqD3fezeui+4IG0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfJU-0003DD-8r; Tue, 09 Jul 2019 01:53:00 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfJJ-0003Cp-NS
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 01:52:50 +0000
Received: by mail-io1-f68.google.com with SMTP id f4so24215511ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 18:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=s4iT/C+ZTI6lS8Y15mNcXYBDPJVtxfB5rOYQ4KRci6s=;
 b=n0DprOTmD65lYqPsDEDrlKirkpV2b5wURGAz/FDKG1X2pxSR/wadj8RbDLgGhquRq4
 w/6hsAYp473Jyz0e1aQzjxAYdH6BaivScH/f2bwZW20LjpMW8pejgi4Je+oR9B7BKlQb
 HLUn/Vkv8qu/1lVBosi55yuyrKA4bPxJGLXBUl7JlcDaaJxJG57m+/K8JGAsX2hu+kz1
 IXAsfEPT61zj6LNYcY/NWykaI2Ae0bHI98VpEmNJwedq5dLc0qZzy9+nuHXNkwIzvZAt
 zyZPit3D5oqfzkc1k45hG4LRj7SsIWJ4Inh+8ZIz6IAw4pfnrmzUSjQqE1s589aAjtOi
 952g==
X-Gm-Message-State: APjAAAWea19Ux85F3t+/43ihg9sdjqiBBc9IIuUsExpKhiVa6c7LDtYJ
 R4C8iL8CCt7RlYHKmN2xHw==
X-Google-Smtp-Source: APXvYqxAB1vUvIqVP37afapbU1uZ0daFlx54UYQyhhrcCjs15oV7Bjsh/pZuPcpplBZBcFsuEEQPHw==
X-Received: by 2002:a02:cd83:: with SMTP id l3mr24635684jap.66.1562637168778; 
 Mon, 08 Jul 2019 18:52:48 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id w23sm34368748ioa.51.2019.07.08.18.52.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 18:52:48 -0700 (PDT)
Date: Mon, 8 Jul 2019 19:52:47 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v2 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
Message-ID: <20190709015247.GA25557@bogus>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-3-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606153825.8183-3-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_185249_765747_7F427066 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rui Miguel Silva <rmfrfs@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  6 Jun 2019 17:38:25 +0200, =3D?UTF-8?q?S=3DC3=3DA9bastien=3D20Szym=
anski?=3D          wrote:
> Document "fsl,imx6ul-csi" entry.
> =

> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
> =

> Changes for v2:
>  - New patch to document new "fsl,imx6ul-csi" entry.
> =

>  Documentation/devicetree/bindings/media/imx7-csi.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
