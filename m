Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA24516EDCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:19:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYi/HZRWQDPN/YsO6GmIIlytFxe1cJPnh4yHGoiehNc=; b=WpDKUbXYddh7IK
	1jfmbwIto8s5RsbzWnBpTLxn4OUDIr++1j/3bhfou+u+Z/J7zRWAOSotEO4d4794d2YDKHVHyQaBg
	WE2sPSkWerK+JdGaeV2+iZV5H2yT1F3Jhk6h0t453XBGrUWZoBzr847Z3/38N3XGZwRR2uZ0kKeP4
	qiYGzdBDRLSy9ia0z4AgQ0V3lSOzdgFxZIt292rQlKjNwzDpfhfcmxFWTkTdRiJZYW62fNWZlED+w
	f9g9KYDAgMyWlzSF6fcqE8HdW0VO+uRcFlgk3I+MsAhCOkgERs5gugZ0lJCwc8thle1bwUD8DollB
	8uhebnp1R+fh707ddVkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6enI-0004qz-Mn; Tue, 25 Feb 2020 18:18:56 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6en5-0004pk-UY; Tue, 25 Feb 2020 18:18:45 +0000
Received: by mail-ot1-f68.google.com with SMTP id z9so423260oth.5;
 Tue, 25 Feb 2020 10:18:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yH2p3xs+aaL+WXkwsTjWjJdrjOI9O37tLapilDd5TUo=;
 b=Ksg0ZFUwuJcTjkr5Dlo9SZxYgPEr8ZhGCwtvfGwDLNvNkew67hSNAvQbjoa5TAILyW
 qoSud+knWftlBit4w6BE9gx5WKdeWWSRE+ruWlxsHSAeNOONiYyLrbamREZvtOHEgoQY
 fnOQFJnzQBrk/1U+J1J04XRMY+B2eszEK6EaeM2nEyq2Hqz2Cm4yEKKpyaRu3BMuB56w
 +hbAmyjayyydaFwUzANCtVPKiCz11Yx6dM6/KndkJuhoGrlLFqpxkSh/jXK18ulK4xcW
 cCnEiL4xzKMZ2BBh38I4ZC3mAqEOhv87aHYrlM2cUArvIi+rhmKgI/ez9xzpc8qUlKWz
 g1kQ==
X-Gm-Message-State: APjAAAWolMJ65kRNkQhxuS4D9/AS18n0bXH9eEufKFGsCPqrPX/AhMeF
 3HrQwDHXUSXK5r8bmqEBOg==
X-Google-Smtp-Source: APXvYqyyeZ8ALcxDWMjiiWv1sZR+xuh4rkYVrqsLZj32FBSL2tBxLkUdVZM+IuRr/MNxXyTTRWlG2A==
X-Received: by 2002:a9d:774e:: with SMTP id t14mr44734522otl.358.1582654723053; 
 Tue, 25 Feb 2020 10:18:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x22sm5922850otk.23.2020.02.25.10.18.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:18:42 -0800 (PST)
Received: (nullmailer pid 6637 invoked by uid 1000);
 Tue, 25 Feb 2020 18:18:41 -0000
Date: Tue, 25 Feb 2020 12:18:41 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 32/89] dt-bindings: display: vc4: hdmi: Add missing
 clock-names property
Message-ID: <20200225181841.GA6516@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <d549097789913d64104d6a5924af5b5981beef9b.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d549097789913d64104d6a5924af5b5981beef9b.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101843_981953_30506508 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Maxime Ripard <maxime@cerno.tech>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 10:06:34 +0100, Maxime Ripard wrote:
> While the device tree and the driver expected a clock-names property, it
> wasn't explicitly documented in the previous binding. The documented order
> was wrong too, so make sure clock-names is there and in the proper order.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
