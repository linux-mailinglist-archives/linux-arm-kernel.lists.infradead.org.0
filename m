Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901669F00A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFxu+UwTZWZGX2kgo2BiY31fDUXc3mKOQ+gZ+7NMmUQ=; b=j/+FQjr1BYXWio
	mwCOn5mMuCRKaCE1/Lw8AYPmSMWrRHb2yJ3U6jm03slR1X4WZKaY4cHFkRxtMdYngo1EARflcAp43
	5ofML7ugCsS7ZhyBDo1B1LqHCpFBePIAJ2VZvYgbzFb9KVdhsiHUPRirndH2Cj4qA1bT87iUQzxJJ
	6zxwCFJKJgKbb2EXWqPSgh+NmmVUt3PucXMdE0o87MFS8IPN0hV4RYemoYeALyehqWA85AAJCseoP
	CGZoBhLNsD/3aVKwVkk0eCZRTKIHq6xNSC32sB6RO2A9qTP+P14vQL93Lbkx0K5KM5KfDAmQv73Va
	aQP4HsJilFsismG+kjIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eDR-0008Co-73; Tue, 27 Aug 2019 16:21:05 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eDH-0008C1-JR
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:20:56 +0000
Received: by mail-oi1-f193.google.com with SMTP id y8so15402531oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 09:20:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/+2YwB8+Xi4YT6vhao9F9CgIDSvyioAXjISKvURBpVM=;
 b=qOq8GbuEP5k3DgHrm664W6IOvnf6Gj70DkNuD6q4Mp+B7qKadb1n1vXsLYeR72UlE/
 7hol+qSOQ8RJbjTulPuG1RyAE+fubhU6HUz6yn2KWvUaReX3aK42MRrdGqjWmep89FlN
 nyDznrWO/x87vRv/czbJ4tF14WAfKJgtGE7RRI21i5UXneSXopqwAKEOR3tCHU+TTsog
 J1ywXpIJpG6tTOBbWbdDWqlX6zDmp83qV0TzJh1j3OQfxxR+xSuhwSC2E57iQ7u3Zbqn
 Y7lztPVoJryQ1abQ65ncaCWdPka81Ai+PDnSX4YqBZTDfT50Ksf4Ut6ufxEIUW0NuYW8
 8gEw==
X-Gm-Message-State: APjAAAWHDZ25UbL5Sxt8JRZFfQ/U9AimmVlt1EPYN3Wxye2lpTDUl4Lm
 gK5Rbe1cbWUfXggS5UOzSQ==
X-Google-Smtp-Source: APXvYqwVWvlJHLSHxm3WNh8/kzbvwC8YMUkeCo9ZURCfgjbx93rsP4tPShUQbsFtmuJHppSVq6yE2g==
X-Received: by 2002:aca:d650:: with SMTP id n77mr17486575oig.129.1566922854444; 
 Tue, 27 Aug 2019 09:20:54 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 20sm5759937otd.71.2019.08.27.09.20.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:20:53 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:20:53 -0500
From: Rob Herring <robh@kernel.org>
To: Brian Masney <masneyb@onstation.org>
Subject: Re: [PATCH 01/11] dt-bindings: drm/bridge: analogix-anx78xx: add new
 variants
Message-ID: <20190827162053.GA12094@bogus>
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-2-masneyb@onstation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815004854.19860-2-masneyb@onstation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_092055_643665_1CF1F480 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 narmstrong@baylibre.com, airlied@linux.ie, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, jonas@kwiboo.se, agross@kernel.org,
 dri-devel@lists.freedesktop.org, bjorn.andersson@linaro.org,
 a.hajda@samsung.com, robdclark@gmail.com, robh+dt@kernel.org,
 Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch,
 linux-arm-msm@vger.kernel.org, enric.balletbo@collabora.com,
 freedreno@lists.freedesktop.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 20:48:44 -0400, Brian Masney wrote:
> Add support for the analogix,anx7808, analogix,anx7812, and
> analogix,anx7818 variants.
> 
> Signed-off-by: Brian Masney <masneyb@onstation.org>
> ---
>  .../devicetree/bindings/display/bridge/anx7814.txt          | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
