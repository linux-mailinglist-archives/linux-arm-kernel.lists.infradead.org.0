Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA64EE9D1B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:05:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgBD1C0N3zB4KrisGJmpS7eaGLTMxdKhQ0d9yjXqxKQ=; b=fFVNm3iVvhYGrc
	nd6teDEZG230+fIQqN4BN5Yzl8BOscsTNPwjfUL/JvgTbFUF3Y26p7mFNrl34lv0DyRWN5RCU47yU
	HDRx5HG3d1xZAPpEp4CQosNHgX8HpeKOSj32BdibYY9q3wsLDfoY0rllKiNOF8p5LWdBbnprYeLgp
	hDKd2GR6w5wWXltZvHzecpstNOIqck5DV9pMsh31+rH1EJj+GpIcOzQOKjd2tH/6WoQizQzccavRY
	pwyjxe1UGRpCfDWIdESVs5Qpn+3jRvki47iQdU0qjbHyzux6HUv+VsDGRyXnSDa7zhnRUjN5rrLL+
	IcdiUwHkF78zyYYEd7TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPob7-0003xO-Bi; Wed, 30 Oct 2019 14:05:17 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoas-0003Rc-Fo
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:05:03 +0000
Received: by mail-oi1-f195.google.com with SMTP id k2so2021812oij.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 07:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VjUbeXseZNfZ1pV6P1oZr6TvD5+K3+0WHvnHgaOVfyc=;
 b=JC+Tw9s4CJ27DX4TFpeBJzekSI3PqCRjWrATBFRqg5OqudUVyliqu1Uu9lHRF9o2ap
 vu4J4gzrFZ+U3HKQczoar27pZupcPFH9Rx6JElsgxqFIYtZNFZ4m16nCRSvCn98idSRA
 p1jB0ncpzjfv2InoInK3XUdJeTxrmorxXSte4CYMcXgc7znhOme3G0JIYc4L3S4Io4sV
 dRujgpdi1Jten/IcG8D9+C0JNtE1FXNFcd1LapIeI8yfJ1UX2P2RpzbW2psjNDZuVYgm
 wZcBFuQQ5AmPzzztM76hnMQ2wKm8MXpBJPMsVKZK5D03ODJvGDfss8rXbMOoFmvZhBhs
 o1UQ==
X-Gm-Message-State: APjAAAVl7BHpE9ZJfkg10SqX2bVB3OABpLH1pj3AfZYTb0dby5U0P+Us
 mm4brDy6G2q8vsA0Gz71Vw==
X-Google-Smtp-Source: APXvYqxh7UaJbqXooxPymSVpV2Dkk9RFHomlOl61v/922QK11EtyGIdV7wMcJTOi1B5ho34SClF9Fw==
X-Received: by 2002:aca:5d8a:: with SMTP id r132mr8536367oib.119.1572444301779; 
 Wed, 30 Oct 2019 07:05:01 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t12sm55049otl.71.2019.10.30.07.04.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 07:04:56 -0700 (PDT)
Date: Wed, 30 Oct 2019 09:04:55 -0500
From: Rob Herring <robh@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: input: tochscreen: ad7879: generic
 node names in example
Message-ID: <20191030140455.GA4544@bogus>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-3-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026090403.3057-3-marcel@ziswiler.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_070502_532627_DBC10EF8 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>, linux-imx@nxp.com,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 11:04:01AM +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

There's a typo in the subject.

> 
> Update example in ad7879 devicetree documentation to use generic touch
> controller node names.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v2: New patch.
> 
>  .../devicetree/bindings/input/touchscreen/ad7879.txt          | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
