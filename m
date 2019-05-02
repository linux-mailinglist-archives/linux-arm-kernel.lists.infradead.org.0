Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E18412431
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 23:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bt4uUCGAl7OsTiB7tcOV4OjFGp8W0WGLYl4z/K9j71c=; b=YmTNJyIFV5OtFW
	B5jL/kLlkSNOeTwZw8RmV8XJW7xYC+uPzpwONW6tOd+3dybkV2mvskekpKrSkGvBGrmA3D3ezJNAx
	XMRpTDWrf/LQw6SqGeeP0z4sIcDuR6BjAraTXCtzzYhFHSZYCKTx6x2ltEv4d/XWYVVxi6G2o/vin
	Y7a7Bb5KfIKWWV6SiRBjCw4gRbVYWf8g4kleA6rWF6OUI2qAMf0YtYURB6EvIod97fN4HEtuiSmOw
	8qeEycSmVzcl9f9nwcRnjZmEiS9MU+hZenuGGMqicsv0vAloguylqa5gWLnWLhAZKBsV4lpqCTTcO
	jfaX9H6CywB1f4f29zcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJNH-0005jW-UU; Thu, 02 May 2019 21:36:15 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJNA-0005ih-0x; Thu, 02 May 2019 21:36:10 +0000
Received: by mail-ot1-f68.google.com with SMTP id o39so3516323ota.6;
 Thu, 02 May 2019 14:36:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QOVychIUmtDG8Tll/ecV8whoYD0pZhfgpjrLj+GI7lA=;
 b=FwxEoKn5Q5WysyO9sc949PRaAOy0FUMk570W81dbr8tXxR0DcIGQheWeKXAM1A+rko
 8hMy0yveVapxeWloQijM4dEM706Fxb9G5huNipmzIMOtyQH3ZEnHaEco0BuTniZ0T3VY
 2zFM7irdp1tvGTiG3alBzskSYjmUq1DKzY2eDtlhsRstvvZWYzIUEuwJ3Gdql95gmd2L
 PUdSrIM1ZZ8liioe5YHcuN53YVCG1ffwiLAGtHZTM8GJCZkJ6SIDFXQSjASMJ/ckp64e
 /v1kY8FP7jIpq1+FtkhnUOCgZG+ezWjfBn+7gJzt7lbx2HcYB/beJbjr3JiqM7p/NJBG
 BLvQ==
X-Gm-Message-State: APjAAAXgpwJXKumP7Jv7EYPNqCznHcPiwG3GjRMH0VuaD9IJUZ7cA9a5
 Dq6kZfMkCveWl5juE0Jqd4KEHVw=
X-Google-Smtp-Source: APXvYqzIKpF2SpUiGqboXp/KmEVvROVVZj0uRCj2SNazB/0BEXuociHSUGYQnO9Q7HpLJFsgEabH2g==
X-Received: by 2002:a9d:7d06:: with SMTP id v6mr4009955otn.187.1556832966725; 
 Thu, 02 May 2019 14:36:06 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n185sm213641oif.8.2019.05.02.14.36.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 May 2019 14:36:06 -0700 (PDT)
Date: Thu, 2 May 2019 16:36:05 -0500
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
Message-ID: <20190502213605.GA20606@bogus>
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501121448.3812-1-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_143608_764949_EC8546E6 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  1 May 2019 17:44:47 +0530, Jagan Teki wrote:
> HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> resolution. It has built in Goodix, GT9271 captive touchscreen
> with backlight adjustable via PWM.
> 
> Add support for it.
> 
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../display/panel/friendlyarm,hd702e.txt      | 29 +++++++++++++++++++
>  drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++
>  2 files changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/friendlyarm,hd702e.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
