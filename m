Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF22176876
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:49:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5RhlquTU7H8ZUWKMmH5zx5VMuqtJL9ipmnBuzoIf9w=; b=WvX0U30S34G8v1
	cU7andYvg1J2mvrCvleXybQ0RTBWwQ+JSwyCi6ulLsoZ4Hqyvs18GlTZ18lx/NPDaxWb06P5uVdxQ
	l3VGFKO+0Ly499Mrv/bXqmYeiePAuF/CtWMsHTUXW1+eLlr8BRL7QBmcedb7mETPddtETwEbBvw5Q
	Sm/8OCcXHIM4il0rz4JKuePx1eXRe8vhCacUdhuuF8ShP2OSz3fVL46bpsphAhFkYZkSIj3+MbIZD
	k3t1QYhn+m0ivoGtrTZEdwT+x46uBippM8ih4fyLYc+rtNj9Iq7S/I2MVjoOELGTV4pTSTQ9ZhLkZ
	P2ar6GcvDkXyrn8VsqSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uo2-0007WZ-Qm; Mon, 02 Mar 2020 23:49:02 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8unr-0007Us-5h; Mon, 02 Mar 2020 23:48:52 +0000
Received: by mail-ot1-f66.google.com with SMTP id v22so1146842otq.11;
 Mon, 02 Mar 2020 15:48:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=byoAHElTnalS7sh70czz1zpbq5DcI2Go9YowGpXx29w=;
 b=GbRzqEOH8YIsCOc6kpqUJtHjRaqnNtgTpRRb0dwyy2p64nbep4B07gsuJ1pjCt+cJK
 WWyEyxgFmi3A2xKsbFZ5CVTHRySIahMp7wzDd3QULvk/HGZ2jEkuwVoRxSPjs8iuD8mA
 gF+/d7nv6DNEGsYpc5l+ODbEXWkAE+k7Mxz0kBGVjDIzYqHsnz75GlnhInb/IVixPRJy
 mrsQ/Zew3tNE4Uw0x+/YdVDzSti7exl5b6WovLp7W8GVuGLcozQZmAYj5vAkpvNZaPgt
 u4svhX2cOxjtVES+yZ4kiDOXEDB42Z2Ey05O85J/HMCeScul9uwhNxrPC96SxUqP2+pg
 71Cg==
X-Gm-Message-State: ANhLgQ3Vx47UNrCTAK/344e3ylHC9jMI1ZXbR/LzOrPK/1rioVZ/OHRy
 Ie7CVNErETLkF9nzyfUgpA==
X-Google-Smtp-Source: ADFU+vunmxxGjVzwfLQGBVehqtYrFNHSS1vUq/QZk7+dEkP+TRwtQ/33euUrPd47iWoLdqcHigvWww==
X-Received: by 2002:a9d:5d07:: with SMTP id b7mr1331515oti.209.1583192930303; 
 Mon, 02 Mar 2020 15:48:50 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w9sm641711oti.64.2020.03.02.15.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:48:49 -0800 (PST)
Received: (nullmailer pid 32323 invoked by uid 1000);
 Mon, 02 Mar 2020 23:48:49 -0000
Date: Mon, 2 Mar 2020 17:48:49 -0600
From: Rob Herring <robh@kernel.org>
To: Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH v6 2/3] dt-bindings: arm: amlogic: add support for the
 SmartLabs SML-5442TW
Message-ID: <20200302234849.GA32272@bogus>
References: <1583036241-88937-1-git-send-email-christianshewitt@gmail.com>
 <1583036241-88937-3-git-send-email-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583036241-88937-3-git-send-email-christianshewitt@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_154851_220164_AC29BF25 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 =?iso-8859-1?Q?Jer=F4me?= Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  1 Mar 2020 08:17:20 +0400, Christian Hewitt wrote:
> The SML-5442TW is an STB for O2 Czech IPTV/VOD and DVB-T/T2 based on the
> Amlogic P231 reference design using the S905D chipset. Specs:
> 
> 2GB DDR3 RAM
> 8GB eMMC storage
> 10/100 Base-T Ethernet
> 802.11 a/b/g/n/ac + BT 4.1 HS sdio wireless module (QCA9377)
> 2x single colour and 1x dual colour LEDs on the front panel
> 1x reset button on the front panel
> HDMI 2.0 (4k@60p) video
> Composite video + 2-channel audio output on 3.5mm jack
> S/PDIF audio output
> Single DVB-T/T2 tuner (AVL6762/MxL608)
> 2x USB 2.0 ports
> 1x micro SD card slot
> UART pins (internal)
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
