Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7F01304AE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 22:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8/exZKNpEr9CKdrd09ri5Y3FNJri3pQz4PZhgD6uFc=; b=RmtfM5J/lGqOw4
	40qXN2hWdIoJIOoj3Qhtu4b1T7mLLiWiw1eXDEGWXatqInA1yvzsbo6xi2jsvCGJf9LZRoQczbhBZ
	pqiFxDHhOEeeY66F0WvY+bWd62AI6QkLfxszx9/J+l4Q+S99Fa/JNkU/CEg7ZimHjNZXk9GgsD+3s
	gIW7jdzELR2s5IZY0AT3xr9pOsq4stwB9Ok1POxyI5bjqbJpsDSg2Gg7UieEVx4LVZ2kXbMFrXdGr
	MXO63js2PmtBUypCmfTm9nTdkelBkONu+l85dkvU1rrwoo5X4PaSLl98Rl5ibBz9gmRLSGXaguD2/
	g9p9l+Gn1O4fjuRhhFUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inqzb-0004St-ME; Sat, 04 Jan 2020 21:29:55 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inqzR-0004Rp-Is
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 21:29:46 +0000
Received: by mail-io1-f66.google.com with SMTP id v3so44785432ioj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 13:29:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O4H4SgxYFF1sZ0FF/6Ems4wMDN7ra7/R/gc5/aNjkHc=;
 b=uhHf3TIoxKDOBCghw45yB4OEIWGvkhCg1qtSZ1b7aZRPM1lBMKjBvTHVIvrCh6npDW
 xAcKBz91tuesGdCySGLpq+qIo6w3z3ew/SBvm9LyzGqwLvZYFF8FNWP9YJkefvRQPt0R
 i1UFn4nWUTjf53jQ1jNsGjbIAovlcKRSK9f4B3Ksc81IiPsa0ntDw++UaZ0g9B+It27u
 2aKeX9PEalwz06RN/PAGBEuzFF4Y4o2l317ojbyz1DOHE/4+SgWedZpbNBRUR4wLbf32
 K607iyXZdERBGoVgFZhqmbE7N1b0XXcU6zB9yhHIMi/CNZC3Q9WwP0xdUS2W/TzekA1G
 hHNg==
X-Gm-Message-State: APjAAAVGVd6vuK1ERrsD5LqAva5EuTEGqaC9CybspsDCdMgqQB7DQYpN
 wZEwQsaYqYodYSNYsl20FqfHbAg=
X-Google-Smtp-Source: APXvYqzF+xXKWQbuNRJ6ZpdIKmMtcY96TDgQzGDbVZLbykszrXqdLLBvVjuGkoM3SRbFzgIcuS2gCQ==
X-Received: by 2002:a6b:e00b:: with SMTP id z11mr63498365iog.299.1578173384672; 
 Sat, 04 Jan 2020 13:29:44 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id v64sm22442131ila.36.2020.01.04.13.29.42
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 13:29:43 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219ec
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 14:29:42 -0700
Date: Sat, 4 Jan 2020 14:29:42 -0700
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 02/11] dt-bindings: display: rockchip-lvds: Document
 PX30 PHY
Message-ID: <20200104212942.GA18654@bogus>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <20191224143900.23567-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224143900.23567-3-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_132945_617647_533A4C50 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Dec 2019 15:38:51 +0100, Miquel Raynal wrote:
> PX30 SoCs use a single PHY shared by two display pipelines: MIPI DSI
> and LVDS. In the case of the LVDS IP, document the possibility to fill
> a PHY handle.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-lvds.txt     | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
