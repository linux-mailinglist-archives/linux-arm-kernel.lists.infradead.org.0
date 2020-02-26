Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3B5170B7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:25:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FSjUk/pZJQgFoxLiVwUOmRAviCzlC4HuKxwQkuP2og=; b=VoD8iwUU3aRCXJ
	c56VwICGbb4T8WOe9pF1LtEESPBMEQzeT28kvadVrZo7703tK5AT0c1k28lmzfl1YZ71V+INy4qKh
	Pm2wn/70IU/sUN+a6FdmZgKUL/Z7jEoTZ9TC8+CbCy01u82plC+uCxg0S99e0y/BHW3ZerE/Hj10G
	yMPx5f28NCAGEMrkFnF9rPqLV0AGhLRmbhToDIboZ4OCE1+5CMT1rgPIo2HOI4MI7fCGug+/AfVvM
	oTRvu6/AHHtomHXpmkagmN0dhIuDtMkRVGBCnpnLyDETeQMDwcDf+vPOgnZ3fA8dye27CLNHW7HPC
	7SJ0sJQCo7JBMN5duZkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j756w-0003vS-0i; Wed, 26 Feb 2020 22:24:58 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j756m-0003v5-Kd; Wed, 26 Feb 2020 22:24:49 +0000
Received: by mail-ot1-f67.google.com with SMTP id 77so1032058oty.6;
 Wed, 26 Feb 2020 14:24:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7Tc2pp6tfwt+3v34tpbOx19kPSdtNqYuqm/8GY/cfw4=;
 b=CeggyLAfECmQJg1jDY46ka1MAarnfPVhYrSyaIpXvDTadRg/tM43/PmrPX8AVCREmM
 W2vpBKbrdVuSgoVmQ49+DqAkcjZEW3zZkg2h/rmcn+sUi1sm0LPtXzEdiLJew081ceCy
 NS59Y7vbnWFWMiHWWp3Gd+wjy0XJ5P3Bsx5psWzPGzj1jymrSlSuJtRNSbmIrS5oL0jT
 LcvDZGSHLGJuFyE9pNd7S+RgCayCEamrAueS20Ip8A3IEzY+gg08fJ0AF/lITLO5w0g8
 e+SHCZXWIV6doJhr1LwJ8R52eyZqDskVqH/ji10UpPYQPgyJIEtkuk/fUE8v5ZGCEo2a
 /v+A==
X-Gm-Message-State: APjAAAWeDFpY9UM9ExO6at/+KrKUUAO2fmEhEFnCr/y+WvZ4tlhVT1vr
 kxUuqNF/5u5TiBs6W2u+2/CAMRdhXA==
X-Google-Smtp-Source: APXvYqxl4VG5brncJNWe6fMfCvBfkuDhRp8hGrhJHHYhzyTZwH2sy+iDxqHEY0c1dykRMxt3Vt/Phw==
X-Received: by 2002:a05:6830:13da:: with SMTP id
 e26mr781681otq.97.1582755887742; 
 Wed, 26 Feb 2020 14:24:47 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b4sm1250798oie.55.2020.02.26.14.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:24:47 -0800 (PST)
Received: (nullmailer pid 11405 invoked by uid 1000);
 Wed, 26 Feb 2020 22:24:46 -0000
Date: Wed, 26 Feb 2020 16:24:46 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@protonmail.com>
Subject: Re: [PATCH v2] dt-bindings: rng: Convert BCM2835 to DT schema
Message-ID: <20200226222446.GA11350@bogus>
References: <20200222200037.3203931-1-nfraprado@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222200037.3203931-1-nfraprado@protonmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_142448_672059_FD82B39B 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 lkcamp@lists.libreplanetbr.org, bcm-kernel-feedback-list@broadcom.com,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 20:00:59 +0000, =3D?UTF-8?Q?N=3DC3=3DADcolas_F=3D2E_R=
=3D2E_A=3D2E_Prado?=3D wrote:
> Convert BCM2835/6368 Random number generator bindings to DT schema.
> =

> Signed-off-by: N=EDcolas F. R. A. Prado <nfraprado@protonmail.com>
> ---
> =

> Changes in v2:
> - Remove description for common properties
> - Drop label from example
> =

> This patch was tested with:
> make ARCH=3Darm dt_binding_check
> make ARCH=3Darm DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/rng/b=
rcm,bcm2835.yaml dtbs_check
> =

> Thanks,
> N=EDcolas
> =

>  .../devicetree/bindings/rng/brcm,bcm2835.txt  | 40 -------------
>  .../devicetree/bindings/rng/brcm,bcm2835.yaml | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 40 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm2835.txt
>  create mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm2835.ya=
ml
> =


Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
