Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EF310DC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aaSWnbRDlYmgngrCHB9m7xkJqD3Gh9ntJ/9wubJShg=; b=Yux9OEYxG0/ZXv
	KRL5YcEvFZqHDISpJH7TaVWt77HfNMImNmh4bnI+2ZcbwUym4ZOlTNuPFx5p1HAUWxVMZsTO2wQT8
	PV7oDJGf4FFR20ffEV0XW6eih51CMyb/GwTPiDn3c5FyVjHH4VrMsWN8caeIkKQO1nXWG8uSYJHYy
	4Utu+o7XoNMOSEnPDc4c3tnFXWhSWU8H6gxEQXRMiBGohcVHBv+R8Y4Kv3oMHMLMuWiyseJSO012P
	zPkcVM2PPFcOilhsTOKasG+6E1dRI93iAaHLsPex+FgmjGy1c1iyzYdl57cl7d7XpGJ/X1lPXbPke
	H2VyWFR0RW14PO08VHpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvXe-0004Gw-8e; Wed, 01 May 2019 20:09:22 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvW0-00042W-98
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:07:49 +0000
Received: by mail-ot1-f68.google.com with SMTP id d24so50940otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:07:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NUkhtg7+aAgAyNuqnNTM6hyqkyEfScztnaS0eIaqMl8=;
 b=Iq/p5wquS9IsleHHsKDN5Zz4MhLTvx+vMHwrALm1VxPqnBf1Uf65UomHbI6VvLtxMH
 UwZudTCiHZuifRRi491hGSf5qdv3Qjkre40+K07P5r2Xeec0hp9MzdMmHpEstDOH9Tc+
 GmNaOU8ifk4CyG1W26UcQgrxTODN8Ep1+SsFO6IdT38eqXZOjK+JA9mRD6r8Tl5Ti26s
 QRTg6oQdHpQPdK6vIMZq5ibNfxSCHmz8xkeuNAi0jwij6XbGpI91Cike3K62B/BuI6mE
 YBbO+6VzJ3Dbl0eBCn2B0+N5vObAaPLVfmoUgElO+a+Qs9OQf6IQW2UQkybcnf4l23KX
 BLmw==
X-Gm-Message-State: APjAAAWa+jsP7veWp0QJzr4CHrZAXZ/zz+9TZBeOI5TpI9z/1/JFRxEf
 mo0zwV1+KBP6Fr4m2A5ZUw==
X-Google-Smtp-Source: APXvYqwpI0PmHtqAfOIdYfsq6gfME3D3Ho7yZc3qgpejZuF1tY3yA/iZe13vbv8FxOQSIIRylDQavw==
X-Received: by 2002:a05:6830:2059:: with SMTP id
 f25mr2244063otp.81.1556741259493; 
 Wed, 01 May 2019 13:07:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s202sm5566028oih.42.2019.05.01.13.07.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:07:38 -0700 (PDT)
Date: Wed, 1 May 2019 15:07:38 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v2 10/15] dt-bindings: dma: imx-sdma: add i.mx6ul/6sx
 compatible name
Message-ID: <20190501200738.GA7100@bogus>
References: <1556265512-9130-1-git-send-email-yibin.gong@nxp.com>
 <1556265512-9130-11-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556265512-9130-11-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130743_416631_B3649D3B 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Apr 2019 08:06:03 +0000, Robin Gong wrote:
> Add i.mx6ul and i.mx6sx compatible name.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
