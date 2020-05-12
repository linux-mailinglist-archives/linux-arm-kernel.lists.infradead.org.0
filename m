Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D661CEA80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFuojZMYzP3t1kuVQC/Mh2gO30XtRp5IFudq7jcALOA=; b=GmG92Ul2GsvgTy
	VzJtlFEOJ3dUFcDQvLLvnwl53wn/7ynGKCu2qD/znSQeMOwXsAiPAZqrW7+oyhuA1yLo7t8mT5VJy
	9HGwXIb16ymbjuxhbstrG9ukUeUSuAWU0cpM6SCbTSUZwiUClNX1gdayL2LNXXqw289awEw/g8pYb
	NofAe+4JuQEyT5bknCFgZaGqkPmBfMctSlXFjrIbOidCmbwT7411P7krvJodq8YWG2djJHdufYhki
	7lUXToKVMon9STdTXZxWJK/bFP+kYJRpduigNYUZ/1oaDrfq4UiPo9+MW0Pw7/mplBIxWVpJyxx6w
	ZtbGR/Ju41lsuRsLoxwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKHS-00017R-B3; Tue, 12 May 2020 02:04:26 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKH5-000169-HW
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:04:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id z17so9291163oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 19:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NDu4mmV11tyVPsQh5Aoz3L4z3EhAcUk4qA1JhtuLKlg=;
 b=l5b0+/K14h+qvfivw6MglTdgaqSA0IRYi6UGEa9e491nxody0/Ubuw67t4IZq35z5v
 HjiaYWo8Boy6YBWOTlB5CWQTOclzDqj7ahP3bMhZ8VU0zSTxbwXYhoFK9VFfJ16gtEGL
 tMWidpKykPM2A6nqRFFmxRRBa65MGhbXI0FxiMuRBHbcTONmIhIN+AVUPHvuY0ox1gR1
 fVQZlTdyXNmafPfWkkvsP5So4D+KfZpnbGPGp3I81m9hdvT1Ca6m284F4XFiIRJUXiP1
 hzmk/v0n3dIQNQHKsVNLl/J64hVktWUaDIi9+4Apc8hpC81O4+00oArfweYfI7Mctu7a
 T7ag==
X-Gm-Message-State: AGi0Pua7WhMCF+/SIe5se1azknd4PGxnUiAVACsUcJ2PreBph0aWUiSU
 Y7XHJiOoEYTsremBr54bHw==
X-Google-Smtp-Source: APiQypJkVVYlpiJlep8gi7WUwcLRNXzQDKQDB/F8V0m7Gmj0RuB3DwwvNOM5CnokbIqtZlU73PSD5g==
X-Received: by 2002:a05:6830:2439:: with SMTP id
 k25mr14529338ots.76.1589249042366; 
 Mon, 11 May 2020 19:04:02 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s73sm5107068oih.14.2020.05.11.19.04.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 19:04:01 -0700 (PDT)
Received: (nullmailer pid 30407 invoked by uid 1000);
 Tue, 12 May 2020 02:04:01 -0000
Date: Mon, 11 May 2020 21:04:01 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 2/3] dt-bindings: phy: Convert UniPhier USB2-PHY
 controller to json-schema
Message-ID: <20200512020401.GA30368@bogus>
References: <1588055690-13200-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1588055690-13200-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588055690-13200-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_190403_738587_39CA6F1E 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 15:34:49 +0900, Kunihiko Hayashi wrote:
> Convert the UniPhier USB2-PHY conroller to DT schema format.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/phy/socionext,uniphier-usb2-phy.yaml  | 85 ++++++++++++++++++++++
>  .../devicetree/bindings/phy/uniphier-usb2-phy.txt  | 45 ------------
>  2 files changed, 85 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/uniphier-usb2-phy.txt
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
