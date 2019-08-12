Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13AB8AB77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iq4HZ05nhOaJlKSdUt6tGz4AuVLBh+CdyZO1L5+11yU=; b=rew/MJWJZYTVZE
	t7nWh4K19ENc34S28GJlFRTswNDA4Qikju+sBQcpNj1cKaMBMA2O73G7ZwcnlaI3KO8tLimhVDWG1
	erAgQcySQWYo6T9+8qsMJHl1UAfi6i+92ngGsEf4P4jiGujmoJeYpL79jTFsazkEPLE2kvQqTScNN
	Y5A4gUUcjdIT8J+8qBi9yg+Qf1uaJjCL3y4i7tHEbsqPQFxBacDKUNFJysn4AojRQ3d9uef5vVrDr
	CIE1xqey9uXyFUecxTxT3+zI8Ee6bXBCfn+Lcqxztmsq4xM5ARMLwzQSh0w4m2ZArNlGNrzOmskbf
	Hz5W5iOO4443wsmSI3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxK5b-0004qt-7m; Mon, 12 Aug 2019 23:50:59 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxK5C-0004nv-Si
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 23:50:36 +0000
Received: by mail-ot1-f68.google.com with SMTP id z17so47298405otk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 16:50:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wu+Yll/a4SFv+CqAeDhttcKl/XjxKpsIr9S2nfoZc4M=;
 b=tmPuoADmv1Inm5TN6JRYhn2eqcGCrc+gXOhYd+5rbBzwdu3hOAI8UMG/mLiqyhaSlh
 jKRunGXQ1WI4dlb/AsOmruhiAfqaPN1Z8hVlWJPt4w70ih4ZaMwHAB8hNz7L42MMs84U
 jZ3VALBi/a257xveQy2rWaBt691kI6jQp7AuhbLefWOG2msz41o9HaO4IYlVRc2sCfvQ
 gMvM3VONkzqOxKQaUQnfAitcuMOHFSPoJDNSbMyaPzT4f1kblCmA80/ZEKU9cuGrnEtH
 aDlsXsovRlw+IYDoshlLK2c7d50MKn3Zd1KOIAYe+DGwjagGCvC/xs8J2Mi+ItGm7VB2
 U12Q==
X-Gm-Message-State: APjAAAXn4+Z5Tfzpkq5SnWpae6+e0QERNnldA7ERyvASQ5R7MvA1eZv6
 BDm3aJSskalfrOKIS6VV4Q==
X-Google-Smtp-Source: APXvYqx5Pv9z7njFaTAOthJEXcWpHg1NmhbYE+TwIbn7UqsGcIDNzFfJG9k3aLDX0IZoXAaHdvDBEg==
X-Received: by 2002:a6b:6f06:: with SMTP id k6mr13023011ioc.232.1565653834113; 
 Mon, 12 Aug 2019 16:50:34 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id t133sm153140480iof.21.2019.08.12.16.50.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 16:50:33 -0700 (PDT)
Date: Mon, 12 Aug 2019 17:50:32 -0600
From: Rob Herring <robh@kernel.org>
To: Evgeny Kolesnikov <evgenyz@gmail.com>
Subject: Re: [PATCH 1/5] power: reset: Add UART-based MCU poweroff DT bindings
Message-ID: <20190812235032.GA8575@bogus>
References: <cover.1563822216.git.evgenyz@gmail.com>
 <cda16032dc5679a557230cbdb63702b105782b3b.1563822216.git.evgenyz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cda16032dc5679a557230cbdb63702b105782b3b.1563822216.git.evgenyz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_165035_053676_A589AFC2 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 09:53:01PM +0200, Evgeny Kolesnikov wrote:
> This adds device tree bindings of the poweroff driver
> for power managing micro controller units that are connected
> to a board via the UART interface.
> 
> Signed-off-by: Evgeny Kolesnikov <evgenyz@gmail.com>
> ---
>  .../bindings/power/reset/uart-poweroff.txt    | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/reset/uart-poweroff.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/reset/uart-poweroff.txt b/Documentation/devicetree/bindings/power/reset/uart-poweroff.txt
> new file mode 100644
> index 000000000000..86d036271b51
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/reset/uart-poweroff.txt
> @@ -0,0 +1,38 @@
> +* UART-based PM MCU power off driver
> +
> +Some devices have a microcontroller controlling the main power
> +supply. This microcontroller is connected to UART of the SoC.
> +Sending a sequence of characters tells the MCU to turn
> +the power off.

IMO, you should have a node representing the specific microcontroller. 
Generic binding attempts like this generally don't work well because you 
need a never ending addition of properties to deal with h/w (and f/w in 
this case) differences. The properties you already have are evidence of 
this.

Now, if you want a common driver, then that is a separate issue. You can 
have multiple, specific bindings map to a common driver (or not, it's up 
to the OS).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
