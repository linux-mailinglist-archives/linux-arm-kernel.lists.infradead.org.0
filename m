Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA1D1104EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 20:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6R1+2oL/kRXQvh4FxIUJ5f12QrK/uxvTDenDqT5ktM=; b=MK2GyKInPiAA5p
	g0lgHmAHAhzL0qkG/mTeXhS7I+D7TptsbDtMkXnY9Amn0iwJZ+eUzVbObi1xwuWJDD2IG3fdP7t6F
	/54zyFDnv//Nu+lW8xR/2O+jWitL/UqhBwyssOkIZkORa++aGn+6QD7tbIVGwYBL0xo70xnwPn6hQ
	V2IaCaHM4N3rqIXI6se4btumntgDx00elXgGeX4VDfKp2NZyuR8m7jd/nLoaxGLyX4f2P62TCVojX
	eeVfVJFKKcUmG4fbkrnhpcqyAnfURZxrJMUlr3je7o+TfYQFzqmnMZhG7VKWMpZmo5HeXRC8WNsHI
	QHVcAequSp3dS25X3/+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDhX-0005Ox-2e; Tue, 03 Dec 2019 19:19:11 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDhK-0005Oc-Id
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 19:18:59 +0000
Received: by mail-ot1-f68.google.com with SMTP id d17so4016934otc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 11:18:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FLXMRyKICPlNOZ05fFO5shGyYBI5uM+0oVnpeDhbnQM=;
 b=tV6u4MjHmrDuavZVXHU1L0cj0KGeGLDikNbzmB0RQnq1yvjhOj5AYAmnX2o0IYqS22
 fpMjIzk2xfQsfNc0rkydqJCubIfCe5xGSjjaaRRM6Ko/1SKTwnbKXN2c/YMBzaup0JdG
 /ZxL9/UxKyEvyI4CCcPqsT7RljJa/ihEgtLBLeyUD+UCwBe/a+e0KcfK/eTThJf9Xr/8
 0N4BSgU5sGGkU4oqBxG8+Mpj7w4M4vYKDSbgQDeWCAAz6GpKC4lMkIFrv4RuayqJocN7
 UrUqfYXuxz3+DyyzY+ju7mlOa9/6KMkuLqrOJuTU46HxSxrXzbPVmD/S+vBt7WMGMi6U
 LTnQ==
X-Gm-Message-State: APjAAAXIa9uGVWrSIVXOKjaW8RBKLu6XG/qjw23QSzs2MkEFGzkrtu8O
 rxPnaT6iEdNnY8gVnBbd1flN9ig=
X-Google-Smtp-Source: APXvYqzfMXYRpS6RB54EALQSkRj1NegXLtdiWeUYH7IkLsa+ocFmXr6dZDyL/GCEN559Imx4AOyWZA==
X-Received: by 2002:a9d:74d8:: with SMTP id a24mr4704586otl.100.1575400737646; 
 Tue, 03 Dec 2019 11:18:57 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z17sm1445722oib.3.2019.12.03.11.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 11:18:57 -0800 (PST)
Date: Tue, 3 Dec 2019 13:18:56 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v12 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible
 (w/ A31 fallback)
Message-ID: <20191203191856.GA17427@bogus>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203134816.5319-3-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_111858_629953_34B48628 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 07:18:11PM +0530, Jagan Teki wrote:
> The MIPI DSI PHY controller on Allwinner A64 is similar
> on the one on A31.
> 
> Add A64 compatible and append A31 compatible as fallback.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v12:
> - none
> 
>  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
