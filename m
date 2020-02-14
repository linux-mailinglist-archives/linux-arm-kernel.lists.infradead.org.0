Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5053B15D60D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:50:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38K2GDpcVWxx5rrc0TSofJ60S8SErzPnd8qVIg06drg=; b=e7i5JlENdL0NM6
	01savIdOExLr5evnh4mw2v6bgZk8YcPlgwmR+WQf2pkUN0AmGQCxN1lVjvH/2GwyDyxh+1O9I5eg8
	OOUlJH9XTibS1KpRldLWxfRYfp6gz8P9zv3zTNg7nctDU3rh02LTf7Cop4kUYLokP9m/o7QCT1Mcv
	Nj7ifItCRSF+iTv2vnb6adFmgHuhLjHTfxPTdZ+hXczmxG3LSmp1pYOa57bqyxDyBBMsxxnX0z7uP
	8OnB5ljn0fPP7S/v4xFo1AVyfGjo8vXKrZsW0myjUAX8giUOCsNbtKA9GRVOyJ9A9H533jvdsupVD
	L1tbYlPCbR37TErjjKyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YYP-0004o7-Vz; Fri, 14 Feb 2020 10:50:38 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YYF-0004nc-EX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:50:28 +0000
Received: by mail-lj1-x241.google.com with SMTP id e18so10156774ljn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WIA3W+3A4bSWg6/IXoCcQhYlPTEIwMnLSptSvMwiM4Y=;
 b=spKYlIRdf+1AzjlULsr1Z7JsO/k4DXYBqXtiI9UhHW5I+O5U2cbOqdiXr86g2K0FBA
 IFImVz8Pdr3K7+sZCx4rsqvUG4DsXUPf/lUySjxQCnPmaQYNnBvtZWRRGpNYNlE0XXPq
 RDVjPpqykFUvf6ifUff5qiqD0z1i4NkWGEZJAMvwgKuRowW7Qdr5GqxmagGhGrOhWQvP
 2De4n4B6OFX2i66uchc5Qph/AhFcOMu1bldmnQrlFuTtyWcmgZ0yGUhikyAmCvhLTMQd
 VlXhFojj0gwuFnBagb+1E11Bme0qW5eFBBWU4u5gEY/dbY0egq/PD/vqwsORgogtR4rf
 nwUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WIA3W+3A4bSWg6/IXoCcQhYlPTEIwMnLSptSvMwiM4Y=;
 b=pa3TaMoxwU1Q/oOjxak+FgryQRp/JwhlDSF9zOzmuvZGGCwW2Rp+/RyYzM1PWMFz4e
 TSUwWwMv8Be2arOYe50jNJb9WC4DkmJzW0R+6l498ruPqnIKVNRgpnQI7Qwi+LVtBdZc
 lBShzv6nPbf29Yvh4leaWznjMHIROG1pNr9Ok9XEvC/WdSs3Q2D0/BoM7eOwdjCaer35
 ayqzcbKwJ3elt/HkYcP9LgcFtgJ4/F84PJxS6VLlzWBd7FtHMRCP/6W89aZ9oU4p8xYR
 QO3/T7KTbdXDErzMDkvqnPDvBdXI9Ggo5ifHMoZE4nAlEIL0tMmWpZ4N8nyHCUHNql9N
 TJ7A==
X-Gm-Message-State: APjAAAWm88LsH0/7x79lV+Ue6cZhrwZ/c1M55tIYDu6JKE5mcsAmVaS2
 iNQcv3zDMTae7aH2jyQbNg7Dozmc9i1fqd8Qk+M+wg==
X-Google-Smtp-Source: APXvYqyUZX06D7qDW1NxJWCMFUDXVgahKBLV8X2RzIk+Kuc0X/81i7YmxoaF+EMxTrfncBCFTDLL6rSLbe74lmM8mf0=
X-Received: by 2002:a2e:b6ce:: with SMTP id m14mr1604098ljo.99.1581677425697; 
 Fri, 14 Feb 2020 02:50:25 -0800 (PST)
MIME-Version: 1.0
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
 <1581166975-22949-4-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1581166975-22949-4-git-send-email-stefan.wahren@i2se.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:50:14 +0100
Message-ID: <CACRpkdb1NBEj5iebtim6_z7866B_bQAZS4J4fsOupusehHUO0Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] pinctrl: bcm2835: Add support for all GPIOs on BCM2711
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_025027_486183_37E63D33 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 8, 2020 at 2:03 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:

> The BCM2711 supports 58 GPIOs. So extend pinctrl and GPIOs accordingly.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Patch applied with Nicolas' review tag!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
