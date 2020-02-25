Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36A116EDD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:19:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stilRil5QnBS0+8TaPJJoNLaman+Ffxt+SYooGYlPL8=; b=pULMxXVgq5Ijut
	9E4YiHo7fo8KEgiyEODg/1IZaiBk/I8Owu+JKTCT/EoaVDnxQbFvdzu7k5A65TwvCu3F2RH34L1Pa
	zT4iLOPcKpTV47DfCbxYfNrwETqD8d0+t4dAx82Slc7iBPslkdG8EojdGj0abLKRddglipz4XpUHJ
	dNkEnSjEy6qQAlGmnQPnEyydORV7S/LYZxBv7QO028k4n7xNNqAonHeHnCBogACKkMK84LrpYcKJv
	Xdcr8N+VUjSXlcvO3PQY/RXgBd2hyP9oj+YJkhn/9Hyhxp7hIRbL/hm7kiywOnPn4ZASD6T2ZxgMR
	DXmOPX+tflgFMbET4pZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6enW-000540-DT; Tue, 25 Feb 2020 18:19:10 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6enH-0004yC-K1; Tue, 25 Feb 2020 18:18:56 +0000
Received: by mail-ot1-f68.google.com with SMTP id r27so403942otc.8;
 Tue, 25 Feb 2020 10:18:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RPJpzQ7qVLMRwYfQxH0mQ4XcwC515bx4Mj+WIiFTEM8=;
 b=N18HU4aa+dKlyyEY6UEtBnSPbwlp0W48BEKYQyUPKA51yAfx76v1fSv5PNfPLjzzIZ
 LegLG7TWbgTv1EXHE3KJKOfnmM9gguj342T902E10larMhjPymeLANIXkl0TFZdVOMMq
 Rlv5GwfEiPdEk5g+fqfaofhCw8+T6FHGcr3bN26A6N5Q4fyGQxbWRfg40SCFxFCOMq9l
 xfkd8cmYFlpuvpYkQ83K0mOW8DaSQEjvj+cj1aTy409o+FAMfYczu6AbPOlCg1in2PI+
 vb9Kn2L1hkQ9Vg1dHPMSvJMPG/4Ow1oRahBC05wob5Pobl4fo+1XdI21OUimbi211JxU
 biiw==
X-Gm-Message-State: APjAAAX+54lUnZ78k4pzovYwV3OSLzVYNAasHMGrn82dT44BQTU5wMs+
 r8QcakU0vJJGpbqYo72I6g==
X-Google-Smtp-Source: APXvYqwEScy4jWFHUW9DGv/Sg6SXMs0ZEWy29yqmpSnpIXZifq4TCxqdxvNoIQACN+DtxZDdqznkKA==
X-Received: by 2002:a9d:784b:: with SMTP id c11mr43420213otm.246.1582654734973; 
 Tue, 25 Feb 2020 10:18:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 9sm5897437otx.75.2020.02.25.10.18.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:18:54 -0800 (PST)
Received: (nullmailer pid 7004 invoked by uid 1000);
 Tue, 25 Feb 2020 18:18:53 -0000
Date: Tue, 25 Feb 2020 12:18:53 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 33/89] dt-bindings: display: vc4: Document BCM2711 VC5
Message-ID: <20200225181853.GA6954@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <d8df122abf3875d9924a20996673bea49174dbb1.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8df122abf3875d9924a20996673bea49174dbb1.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101855_688836_D7F838F7 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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

On Mon, 24 Feb 2020 10:06:35 +0100, Maxime Ripard wrote:
> The BCM2711 comes with a new VideoCore. Add a compatible for it.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
