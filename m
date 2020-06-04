Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECA51EEE22
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 01:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fppJOrmKBWnJv62LDLKj4I6OMPBWHHb7k2+GUooIVI=; b=ME/qbWuTUMntep
	IMkAbdWTodz5XDXwt3kXXBU/ZXIQgs5vx3qAFLUw8A59IfgRFsQVhDvQnM2jFP1vM/Qt8tPNJMEyR
	pn4PaIzbLL5DIdU7wjyT/XGqyogTydhVUR/Bdk56ceK/ZFD4EJZVf3KUsy17/hmKsC5Digp9+9v0G
	HU19nTuwvGgnuEsX8IIAK4mp/NBjSz7LZOGM4KnMtwJPKXbGVKSlNlkpwBMMCBdJgzw20patlp33X
	mFWA8F+M9My8GxC6p3dI1cUDIuruwd0+PbLuH1lfqlgMJvTI8eMMjmmtMtTAMfucte236sDMIY4ZW
	9DdiCR0qOCcuuT/9M7lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgyzS-0007by-RN; Thu, 04 Jun 2020 23:09:38 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgyzJ-0007bT-7F
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 23:09:30 +0000
Received: by mail-il1-f194.google.com with SMTP id p5so7767071ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 16:09:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=yYPBulhrt5+j3gZ6UOPsWCTsIiSD9443w1u0FFugCwI=;
 b=NV00Pl93h9imDkImmMUJmvKSsZ/JCzHtT3aYXG1sBofycvNrqXqeMyjOozXibt+V7Z
 k7DVEcBKMu6mWrn01RZYLMJ+O/Zoi2qMs1lm/7QQ49MlMy3qBBxboHLyYAhpNlL1strp
 fEsA8xViiTpx/OGmfS2ryuNstcsVSnVcbCxLzQQmB3OCwyiYr8T/Gg5bWLLGyKTOLy84
 j24qW5VBuFEcGCtBewFrILOtA17kGKFM7iAwIamAd2hgWlkogB89f5kZNZkB7+F66hpL
 D+lfnFvubiAZv8QaLSs/6VwF8T21WYiLJz2QX6PilgjLcmCmoXLBQz2ny7Ur/qUlTzim
 H0gw==
X-Gm-Message-State: AOAM53102EZtzkUkmnb+UGF915PGmh1xKfPGNnRQh/tWGdCfhIugYPlH
 z4l79KLoG3siV4/uS7gmWQ==
X-Google-Smtp-Source: ABdhPJz0xvfJ6BAoe8r3FFbzotTCpm3rEqCy3dakyBL+n5Px5TUd4cVn4xkeEp1XOa2Kt3yYWNYdPw==
X-Received: by 2002:a92:d984:: with SMTP id r4mr6136951iln.302.1591312168185; 
 Thu, 04 Jun 2020 16:09:28 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id v20sm2168407ilc.1.2020.06.04.16.09.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 16:09:27 -0700 (PDT)
Received: (nullmailer pid 19307 invoked by uid 1000);
 Thu, 04 Jun 2020 23:09:26 -0000
Date: Thu, 4 Jun 2020 17:09:26 -0600
From: Rob Herring <robh@kernel.org>
To: Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v3 4/4] dt-bindings: drm: bridge: adi, adv7511.txt:
 convert to yaml
Message-ID: <20200604230926.GA19232@bogus>
References: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
 <20200601063308.13045-5-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601063308.13045-5-ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_160929_259965_9C157ED4 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: marex@denx.de, devicetree@vger.kernel.org, michal.simek@xilinx.com,
 xuwei5@hisilicon.com, robh+dt@kernel.org, laurent.pinchart@ideasonboard.com,
 mcoquelin.stm32@gmail.com, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 01 Jun 2020 08:33:08 +0200, Ricardo Ca=F1uelo wrote:
> Convert the ADV7511/11w/13/33/35 DT bindings to json-schema. The
> original binding has been split into two files: adi,adv7511.yaml for
> ADV7511/11W/13 and adi,adv7533.yaml for ADV7533/35.
> =

> Signed-off-by: Ricardo Ca=F1uelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/display/bridge/adi,adv7511.txt   | 143 -----------
>  .../bindings/display/bridge/adi,adv7511.yaml  | 231 ++++++++++++++++++
>  .../bindings/display/bridge/adi,adv7533.yaml  | 175 +++++++++++++
>  3 files changed, 406 insertions(+), 143 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/bridge/adi,=
adv7511.txt
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,=
adv7511.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,=
adv7533.yaml
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
