Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653511651C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 22:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSvdFdjEEk0Xiegrcz+aUDyvCRt3FuxQ+03Df9zNMqE=; b=gxeOjEGR/8pERU
	tBkUwBJGuOR6N2uEt3cEx1UDyQUjzlsSvWQhkyM7k1XUcYqDQeaU1KcLxLGHG1YDTlCk8drC2PMBs
	Y/OYNmvUCWx4sislFx2qYzQ4ZLvcsC6QIEx+6za8cSg/kgNWrFomm1BmtPAeOkHr00cYHD738Gofs
	qJDS0AX3YkI/HePdKe+ib54f5ZRO/ZUigbfAL4Pf5WfqBsLptK3PpgWnbELkHZmQRw3h+lXgLG2sM
	qb35VHsNLjzl4o64fJ90/JoFT/xLitFNP6J+xvuxkD25UtLJ5Mz47mw/eZIx2ToMXHhnaDIK9e7gX
	QxX5B3JFjVtMzNJOfTbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4X3L-0005oW-51; Wed, 19 Feb 2020 21:38:43 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4X3A-0005nC-Rk; Wed, 19 Feb 2020 21:38:34 +0000
Received: by mail-oi1-f196.google.com with SMTP id p125so25345205oif.10;
 Wed, 19 Feb 2020 13:38:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E/e/t/Igu2jhBduZSv2AW4CMedwV0BIQbWhMahuclRw=;
 b=FfYg7txQmvwbeSMVJ346gM1t+zeJLA89CjvdcZMBbyGurWYYrsMaL2NAjwfG062cRS
 nz76qGBEd7UowxmIRAiCgxB62FTHbSnZGQeoPKaCl+2xi8jOUx8Expm+Hem+hI1VZoCi
 gGmiSmLpXCEgo3CMgTCX/ra5CMAC9YqypD3ZLWm76ilBNgAsIYW3yUQdrK4kf0MuNsES
 J0XWDRZ7ktoUBgwoBfx26lN3Zb7uhAyC9PZam0pCKHZrZ5FKQE8g8zv5+7ST1ArgVBxF
 56U9gr0GT16pm0DtU1tlBDK15/iKDmfhv/k+qcfDqVHyrNO5SpETBNExJP5wcenqtGRL
 KTKQ==
X-Gm-Message-State: APjAAAWW7Msh2H8LzaN8hfWHynZLM5sU3dvoVdxJ/ajBPFVWrEvuZGVt
 nR19ubSUVRWBLVzWx05p9g==
X-Google-Smtp-Source: APXvYqzXRQu0rzVdzwAvjm3VOQxfppCool33P+2clSM/5tqQ9a4Gt59ZBgfIOhaxSQcWmeEQr5REYA==
X-Received: by 2002:a54:4791:: with SMTP id o17mr5704299oic.70.1582148312171; 
 Wed, 19 Feb 2020 13:38:32 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w72sm378347oie.49.2020.02.19.13.38.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 13:38:31 -0800 (PST)
Received: (nullmailer pid 15386 invoked by uid 1000);
 Wed, 19 Feb 2020 21:38:30 -0000
Date: Wed, 19 Feb 2020 15:38:30 -0600
From: Rob Herring <robh@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: Make RK3328 codec GPIO explicit
Message-ID: <20200219213830.GA15330@bogus>
References: <cover.1581376744.git.robin.murphy@arm.com>
 <5f7a399dea8a9dedef57f6f99f0f6ab1c1fdc56a.1581376744.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f7a399dea8a9dedef57f6f99f0f6ab1c1fdc56a.1581376744.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_133832_898367_58B48152 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 21:31:58 +0000, Robin Murphy wrote:
> Existing RK3328 codec drivers have overloaded the GRF phandle to assume
> implicit control of the limited-function GPIO_MUTE pin, which is usually
> used to enable an external audio line driver IC. Since this pin has a
> proper binding of its own (see gpio/rockchip,rk3328-grf-gpio.txt), make
> a GPIO explicit in the codec binding too. This will help avoid ambiguity
> on boards that use that pin for some other purpose.
> 
> (and while touching the example, enforce the "don't include status" rule)
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: no change
> 
>  .../devicetree/bindings/sound/rockchip,rk3328-codec.txt    | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
