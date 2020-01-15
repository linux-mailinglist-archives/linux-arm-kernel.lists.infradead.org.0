Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A82A13C760
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeAk7TRt7ADmNFES9KZ7FKW67oIINVZBm+yxJKSxwuw=; b=aaOmRJ+D51sxhh
	Y0k8N0n5Ym98u58/vHl9Ww6szff5LrcMFXqujzIH3bVwjgcX0KPMY6jFZnA4UGDPQ3Y+XvkRhLhNo
	cQaexvI0AfOaIGW4eCv5ues7iGIgXQHlbpyt9nv1bV7GjzE0657kPeFwCQ8naOyT04+ySacTfuhE2
	3oiAPWLqpJla8uQbC4IN9CF7XHfBbAKHsBkjyQKVIzckjTV+E28Qs4EC4LBnKc6qgSxlC50Hha9ZQ
	SZ31tJ026/XaCYhXhR5GrdQEP6cz3RdUhdCNCStvv66Sd85Gr2xFgtIUGUUhKTc+nWIc8whSGk+qg
	cxMk6UXnjB/2P/ow/E4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkVH-0006kI-H8; Wed, 15 Jan 2020 15:22:43 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkV5-0006j2-3u
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:22:35 +0000
Received: by mail-ot1-f68.google.com with SMTP id r9so16393221otp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:22:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A7MJTIvyK8kzMyer64PozPs2FgL7mrURdQQ2XoMswP4=;
 b=olqhyIXQUtSh1p2vFa7NpQh1w59tcYdYSAtXI129geBPr0nK3pACPtYxmfsAGwPet6
 Q7rgQBKNxO6UfyIkTGb2feozSSIL/tT2ekNFe/i2YFa8PkR8drPh9nuOUeuyeeQCzxH2
 mHvibZubUmVifgPOtS5jDvH6YDrUjcAB9P1jb5MN841/zRR/zuLiFlD3Z6dPzRrvurwc
 cBOqAAk7ESSSs3Xf/AlbsPKnqxpsEZflCie3EFvEcp13auSmx70EaclzdoF1DiObuUTd
 Ydt47tHJ/MxBA0YpMsK8Dm4Zb+6x5/vRJ5mp0hxG1QdeQrDgKV7LD+EWMDJCnPPp0Cay
 P98A==
X-Gm-Message-State: APjAAAX8TvJ5LuAU5RTfpORaPUduo+HVc378HSU1CD5HS8QIEok+auO2
 tusg4EdEgVthWy+3I9BC9wv2C7c=
X-Google-Smtp-Source: APXvYqxLeppLZfw7nXpVjhdqqWnuaMlSPrQ1tCGQOqBAgbgNE/c/cR7eLS6E7+6CG87mAgJQRizkxQ==
X-Received: by 2002:a05:6830:15ca:: with SMTP id
 j10mr3182944otr.190.1579101749313; 
 Wed, 15 Jan 2020 07:22:29 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r25sm6642560otk.2.2020.01.15.07.22.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 07:22:28 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220379
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:22:27 -0600
Date: Wed, 15 Jan 2020 09:22:27 -0600
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefix: add Shenzhen Feixin
 Photoelectics Co., Ltd
Message-ID: <20200115152227.GA13106@bogus>
References: <20200110155225.1051749-1-icenowy@aosc.io>
 <20200110155225.1051749-2-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110155225.1051749-2-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_072231_160283_C353E289 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 23:52:21 +0800, Icenowy Zheng wrote:
> Shenzhen Feixin Photoelectics Co., Ltd is a company to provide LCD
> modules.
> 
> Add its vendor prefix.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
