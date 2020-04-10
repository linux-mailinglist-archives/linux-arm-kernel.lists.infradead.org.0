Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688AB1A494F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxI10UceyONP95qXlCz50iTQXROTOa16Ya3KL+edmRg=; b=CgarAJ7npuj/Ja
	fB5GLUR1YQuLTHAuAv2kXAFMLa5gU1lR2fhizxmJemUSvMxfdBjHPDsk6xYlJC0yPsSuK/2A1RjxI
	qYqfx3unR58nnRKFWL+rcklFEaxXWTilJUsLdmLSk6ukL0IFmXvYrl7S7EBAktZhgH+8DXumsvKkd
	G/z34AD4TUnzEpRequfpNijawUtEOZU5/l7zzZoepbcaeEaAtUkbY1tWaVNj5cTAUIlRdGlK7vRdY
	ial1giLjn7rP+A4gp4p6EuZawtBr1ugRwfCZNTwINKD8UCopEBQNhw63Xib0mZsEZi/ItIF/R40mT
	wTx2F/E/PDIIuT2CD/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxcI-0006U3-Qf; Fri, 10 Apr 2020 17:38:58 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxc8-0006TN-Pu
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 17:38:51 +0000
Received: by mail-ot1-f67.google.com with SMTP id 103so2542170otv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 10:38:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9kJ/4bqOothyJINtYliXhvkgGKhScBfb24HzHK/susg=;
 b=SiaMkAsXrxGKQO+3a96lcYmQ+y7InEOP3pqOLdAyo8QQ29KzQe2fbjVsv1Q7xMJTrn
 sUN1qMywipL0eqsMZrR9+f1hgGpdFRq38xIWdL9o4bV6eisp7l4Xl8mvZphMAOcAS2TD
 poRbIPwYT7kkLo7EYGJG9JZAanqhEaBt6i5fJMHrXu8ptNEOyz5CLd/J8FAB2hNIdM7U
 2xkb6oUmpOeFAlrb44X4A73oTtqur8eRuDhMCUKVK5+hRZvG2alyIXTirVyMyUfEObpn
 j4AoGTNfFqOqqSxKxxqJCUHxwwrUIbevUqYocEm9Eu5f4F3xMpGfnE/Kjo06PDhbPN1G
 mEzw==
X-Gm-Message-State: AGi0PuZ10wc1PieaBzWM8krT8Zj43oOfLM7A40jJ5QJ2CHANLdPUPVzM
 Dl2pGZy89j72WW+trC5fJA==
X-Google-Smtp-Source: APiQypJLRA24dC6fj0jyElHsMsWyYYupxpMAYWtCyrVRSdcApa1ygjgH11eqZ351d+hxbqJBJsp/QQ==
X-Received: by 2002:a05:6830:3150:: with SMTP id
 c16mr4700252ots.251.1586540326712; 
 Fri, 10 Apr 2020 10:38:46 -0700 (PDT)
Received: from rob-hp-laptop (ip-99-203-29-27.pools.spcsdns.net.
 [99.203.29.27])
 by smtp.gmail.com with ESMTPSA id 26sm1679809oot.25.2020.04.10.10.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:38:46 -0700 (PDT)
Received: (nullmailer pid 20532 invoked by uid 1000);
 Fri, 10 Apr 2020 17:20:14 -0000
Date: Fri, 10 Apr 2020 12:20:14 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v4 3/5] ARM: dts: add Protonic WD2 board
Message-ID: <20200410172014.GA20454@bogus>
References: <20200330120640.9810-1-o.rempel@pengutronix.de>
 <20200330120640.9810-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330120640.9810-4-o.rempel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_103848_841009_65B2F1FC 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 14:06:38 +0200, Oleksij Rempel wrote:
> Add support for the Protonic WD2 board, which is an internal development
> platform for low-cost agricultural Virtual Terminals based on COTS tablets
> and web applications.
> It inherits from the PRTI6Q base class.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/imx6q-prtwd2.dts            | 188 ++++++++++++++++++
>  3 files changed, 190 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6q-prtwd2.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
