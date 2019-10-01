Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345D0C438B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:In-Reply-To:References:
	Subject:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8hW1MWsch+tHGUq+EFtflrC6pDXjFX/fcYK22LbMXE=; b=Mp33s9wPqKyvK/
	epaEyqTNoCOKFvYnqV7e2xeg+/9BULBYQURtjD+r+4cQEZGOlG/zo9MZg1bajOj82/sG2mSSEFfKL
	THymZpJHcArXPKIJfeDY6IFS+zGJR4Jlz3SJGxd5YAP9hdd02YM1DjPtil1XmLQpzmVbTXHRRIHS8
	GxRlzMnvUXkd4NIZ1UVmyFzj7lZZZAuJ3IB67OW0bRIGswi2fovbgufeIOwNk2Rnpg+UrQNfMPPyR
	mgOG1VHQE0pUMsFjidnqmaxdYd2WJYVqVWVA1lRoxXdMHlJbLS2mT/rjQS3IIM3cf9qdpw45OUykM
	Tkr2rR/xjmgALbY1XP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQL0-0000Jw-Hs; Tue, 01 Oct 2019 22:09:42 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQKZ-000062-5b
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 22:09:16 +0000
Received: by mail-io1-f68.google.com with SMTP id v2so52066785iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 15:09:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:mime-version:content-transfer-encoding:cc:cc:to;
 bh=Ky4fHihXafpq+qOLFnfFO/66rwk/F0aBUPYVmRImj3A=;
 b=tbtbqYob02+gpW0aJ3sJHKXD63ZHnMTXjzqdMag8hEkugxv3EZDjrVBZHrgwGNPa6Y
 G1Yyrr1G3lHl1cgvVNW666uvNreKidPP+jp/kskOROcypmEA1lN1eUiAwsLLn/GIAPfG
 IieW4Sq2O4D7lRf2Gdo9M4ADrxxR9kBBPvZb3Ple+wZHcUUV7dwRhjwyW/3KDJVzJ6P8
 B27522P6RHWJbS/+HaZFVVQDznxdYj1pBKWe8Bwl9Gify80C9r1x7AugAWFId05DldRD
 KlF7YwRlFbECOsTkkhsxRUL7Ldeotovq2d65cSH+8WUhhynMSTu020apHUCZV77ESl2G
 cdJA==
X-Gm-Message-State: APjAAAUoMM5IThEPDl/pdiSXudPkj90bbOLTSx3mbDs/jpC7FOFHOPtQ
 EkYdb2HhzmLmV6+GhqUTIQ==
X-Google-Smtp-Source: APXvYqxQzQlgiAQjfNgaIugbBD/oRHtDHXGc+JucILf/QEc0XPb7pw3JJmadr6TrkuKo5g/nMjRK6w==
X-Received: by 2002:a92:c691:: with SMTP id o17mr298733ilg.185.1569967754307; 
 Tue, 01 Oct 2019 15:09:14 -0700 (PDT)
Received: from localhost ([2607:fb90:1780:6fbf:9c38:e932:436b:4079])
 by smtp.gmail.com with ESMTPSA id l186sm8615029ioa.54.2019.10.01.15.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:09:13 -0700 (PDT)
Message-ID: <5d93ce89.1c69fb81.9b763.e2b7@mx.google.com>
Date: Tue, 01 Oct 2019 17:09:11 -0500
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v1 1/2] dt-bindings: add vendor prefix for logic
 technologies limited
References: <20190920075411.15735-1-marcel@ziswiler.com>
In-Reply-To: <20190920075411.15735-1-marcel@ziswiler.com>
MIME-Version: 1.0
To: Marcel Ziswiler <marcel@ziswiler.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_150915_204785_C953B794 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
 Heiko Stuebner <heiko@sntech.de>, ,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, info@logictechno.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 09:54:10 +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Add vendor prefix for Logic Technologies Limited [1] which is a Chinese
> display manufacturer e.g. distributed by German Endrich Bauelemente
> Vertriebs GmbH [2].
> 
> [1] https://logictechno.com/contact-us/
> [2] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
