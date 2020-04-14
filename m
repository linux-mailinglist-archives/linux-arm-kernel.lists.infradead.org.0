Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B913A1A8817
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aa31xfqjNtq2Z6aFr6iRIdH39ZLryj7iVN5bJa49hVo=; b=qd53JYh9MdYO5t
	jgEy10wUeTAQR9bUn89VNIZcWeGA53rftkhJ/XCEn1Km0mgLgHGNEoySiEpIKz1vHA6OdbpBm4sjJ
	z0rk7kpuYhHn9qAaBHGVpUYznx/EDdgZyOCH6er8RBpgV1Rv+TifdLhzHjvgqd8VlYB75h3vjgAKK
	VAm6QO5wh3ZIGj2gmmEXovFg3ODnrRI2yrqXihn3MCwfpYyJx+Me99N2Dgghy+JeqseT9vAhvk0n5
	eeyDNwdKKhhWgDP/haIgTbtPN5eeucodZQc0IPxFyqNrhmhoHjmZt0DwnkD9QJa/x87x7dRJmiSWc
	+mtnrUupNS4pX+oi7KxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPov-0007Ti-Vs; Tue, 14 Apr 2020 17:58:02 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPok-0007So-2j; Tue, 14 Apr 2020 17:57:51 +0000
Received: by mail-ot1-f67.google.com with SMTP id g14so525426otg.10;
 Tue, 14 Apr 2020 10:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=95VCjMOD5kZUDCbtdtoW55r/KZ/BquQ8J6EOvdKzoX8=;
 b=CNrQVB5JEc/9eNUlH0E0GGx0EcZNsx0P0UuAd/wQEl1gW4BdGXYiY/5J7s1wCc5zxu
 AP6sshV1NaYTKK9I21GUIquuYmPa1rEV6EmWeMPGgjbu1VrNIbLlRzUBoYbsq357NKMi
 36yMUPwQ8sw3XtPiiEbpQDwo/LMK/rDP0a/ImSAzV5raNSO1EXp5CFqwKKrR31eTYjDB
 mkXEDuA8sgBjMiOLwO4O7r2NnJKiq+LP1suVrZ7p0/w6dUdD+HvOwNYZwNpUV/83o4Jg
 +jvLJJIpQR38K+IdDCcjaNpFix67X642EnmTuoQRDNCyNuLVEs+Xl4Bw2KVIRSHBT2Ln
 AAUg==
X-Gm-Message-State: AGi0PuY8pTX0TX+wkaIuHu+wgxtmgSNhF3CiWVWzK1uTdsS9s7dKNCJk
 /+Z0mabrpDpihwh14FNGlA==
X-Google-Smtp-Source: APiQypKJ4nZqqd6f5jP2/fMwhxkt0Fg4V0MlsSFXXJmYhrshh6EmPivMonFEUEoKGk7x2cMHELuiKg==
X-Received: by 2002:a9d:d0f:: with SMTP id 15mr20284590oti.161.1586887069125; 
 Tue, 14 Apr 2020 10:57:49 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t20sm2431322ott.51.2020.04.14.10.57.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:57:48 -0700 (PDT)
Received: (nullmailer pid 30689 invoked by uid 1000);
 Tue, 14 Apr 2020 17:57:47 -0000
Date: Tue, 14 Apr 2020 12:57:47 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: media: rockchip-rga: add
 power-domains property
Message-ID: <20200414175747.GA30642@bogus>
References: <20200403130607.6138-1-jbx6244@gmail.com>
 <20200403130607.6138-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403130607.6138-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_105750_124232_16B6C1D2 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 15:06:07 +0200, Johan Jonker wrote:
> In the old txt situation we add/describe only properties that are used
> by the driver/hardware itself. With yaml it also filters things in a
> node that are used by other drivers like 'power-domains' for rk3399,
> so add it to 'rockchip-rga.yaml'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
