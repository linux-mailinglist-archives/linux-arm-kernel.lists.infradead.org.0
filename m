Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D23213C764
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ma89E59O2no5qM5chdVRnM33vnzvvBHkp5FI7asB8Rg=; b=X6nC/ICQeJ7tEP
	SB31BP5TlbQcr3tfuwp/u8Ty8JW9pAer1AY97nhTtRE8JahousnAom41COySxzmqZIaimqqCzfLkL
	uFgIFIq9d+y97/lJTBM/OfMHoxFueGxuj6LOEC1GhxrWY+gMO3lc1Ami7AmDqlouCcvszwNlXioTN
	CGV4RSlMGmAQiBeLekXSQurueD2zsEjh0GdsIF5Yf+qoOuc1NCyKPG9u8TLKi16+bMJBqZM0YNPgJ
	uT1DSAMM4R+XShmylELaZJzYCncvC2Lf9yAt04W1Ukhr872EKK3+pu49Yf6OKwOyPqvLv+Q2pRt0T
	qZyYnuvfcfFb8gCs5MFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkWn-0007cD-Lq; Wed, 15 Jan 2020 15:24:17 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkWb-0007ay-70
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:24:09 +0000
Received: by mail-ot1-f66.google.com with SMTP id 59so16396116otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:24:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P/3+h18PWi0rPObNUTxyncVSLqQVYDEB0c+gxo42pyg=;
 b=UdjrpxszZIa5ZTlIRow72QWf1wN+HfD3p3M33AhLa+YH9hpG0vziNQFQ+t1+vldDpr
 +9csC7gPjKBkQOryGj4R88IrAnJjyTr22wKIOkhhVG2Ths5AkDKWX/BeUigJrLdpF/8T
 RrR2iywCvNAdEbz4fmCxy15KFsUacmFJQVh8AemOZ9iqipzyKFMIvZ6DcjTg3d7nTwIr
 Sq7jw/DKHwZDALg9HatEKHmueBuI9GbARlLvf9aguVXeSvGMYCqi3FZWaKyX6NQ9I7Wi
 zJrM2ex4Z4TVNEdH2qwT7OOcbUXyLt5+eSLHiyPnPKoNmJUCspS5RSHKqN7NNEcaNIZ6
 zxJQ==
X-Gm-Message-State: APjAAAV/SVzr76tdzwMzZj0703Y1RJgwdGb9wfM4RsryhD2I87yIS97L
 n7KVzTei8ah6oYodRBoMgBfYrHQ=
X-Google-Smtp-Source: APXvYqy11TuaecW/pva6Ze2MGdFkYoNQrb2CeHhmpuJOwo7l50NOXlI2rFNlCmaWAxsDqBm2wz66/w==
X-Received: by 2002:a9d:2264:: with SMTP id o91mr3135200ota.328.1579101843818; 
 Wed, 15 Jan 2020 07:24:03 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s83sm5735647oif.33.2020.01.15.07.24.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 07:24:02 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22040c
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:24:01 -0600
Date: Wed, 15 Jan 2020 09:24:01 -0600
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 4/5] dt-bindings: arm: sunxi: add binding for PineTab
 tablet
Message-ID: <20200115152401.GA15812@bogus>
References: <20200110155225.1051749-1-icenowy@aosc.io>
 <20200110155225.1051749-5-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110155225.1051749-5-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_072405_254018_7E0F99EF 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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

On Fri, 10 Jan 2020 23:52:24 +0800, Icenowy Zheng wrote:
> Add the device tree binding for Pine64's PineTab tablet, which uses
> Allwinner A64 SoC.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
