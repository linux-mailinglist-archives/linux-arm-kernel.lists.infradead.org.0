Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057BD1CF7E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofFwKEcFCEa8pDXjFCH1tSIQHR/ONBdcov1s0nyM/Vs=; b=rdVABpXCuu+v2Z
	ATwp6ApA3N+J19CrAknrzh8wY3RPHFBCI5bempHFKsEPPhDFRsCbha3FsOke8S20ZaiQkN2RzxWEN
	xFCLC4COlLr0WAt8o6QVX1CDbrLCpFToSAWF/3iT9Szv6fbrO1Wt2jKxo8WwCTZfC5QtfNrZ5kBFP
	Rubkrn90KEBz1MDGO+iwB6uQrk1yZEWP2URnwU/j48naswPpQswHVHxbV9j/zRyNRitF9FOK4gxlq
	H7rGy8P8XQ6237+X11PqNRN7MWg4TE0VBdKAS9LSdXH0YuZP4SW6rvC9ny0u50R5gewGqZZR4LLNp
	tobuIkNlcWvY/UZMKZEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWGl-0001az-1c; Tue, 12 May 2020 14:52:31 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWGY-0001Zu-Dt
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:52:21 +0000
Received: by mail-ot1-f66.google.com with SMTP id 72so10728642otu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:52:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UBsjlnQ0ZdWz2mP4d91uXqSW8it9Smi8pG4uRvDSloc=;
 b=Xmp/QkZTNHikN9xoaqs0Pc34zVBhU0n345k/DNC1ybC2aAGwnSVaqWWJ+4gTvmyDUU
 pbb9iT5cxaLwRm7UnS9ZSBa4WVuOG5eTNIwl/YxYzqjGDTF/pLk4/LyXNjrW9GYuFZI1
 1/67l76iP5UZLWSq0E220mvCPZmV2rvkVO/DPKvuj6pHvt5PCj/su5vkhU5gc1inczTc
 JSpJzK7Tb7t66CkMEMuehhOLHzqkyQpJhDy8ZqRkzRVk/WEmBTWa0wni1dsi6TjFDjmE
 0XkYeZY2yL3kzrMvdhem/zqJyynROZ0lTFsZFCavz4iEJdpqi2t1/UV5txTMX+ezCfPa
 3MVg==
X-Gm-Message-State: AGi0PuZo8UHjLib56u3+a5BGBssrNV1m2+nQdit3MNywXbo5JW7dVing
 tV/8hWLTBjjubQ/ADjmhlQ==
X-Google-Smtp-Source: APiQypLTRmbKCY35KSmUwgbrpxbLHM9/yYBgpyb75KwJF2Nli05EW5xWU4borvo9cGPm5XEicRrxkw==
X-Received: by 2002:a9d:2215:: with SMTP id o21mr6818101ota.203.1589295137121; 
 Tue, 12 May 2020 07:52:17 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b6sm3525019otq.18.2020.05.12.07.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 07:52:16 -0700 (PDT)
Received: (nullmailer pid 23508 invoked by uid 1000);
 Tue, 12 May 2020 14:52:15 -0000
Date: Tue, 12 May 2020 09:52:15 -0500
From: Rob Herring <robh@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 02/15] dt-bindings: timer: add ti, dmtimer compatible for
 for system timers
Message-ID: <20200512145215.GA23423@bogus>
References: <20200429215402.18125-1-tony@atomide.com>
 <20200429215402.18125-3-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429215402.18125-3-tony@atomide.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_075218_464504_1F196D88 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Stephen Boyd <sboyd@kernel.org>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 14:53:49 -0700, Tony Lindgren wrote:
> The TI dual-mode timer can be used for both clocksource and clockevent
> system timers. We need a way to specify which dual-mode timers are
> reserved for system timers as there are multiple instances available
> that may require a board specific configuration.
> 
> Let's add a generic compatible "ti,dmtimer" that TIMER_OF_DECLARE can
> use as suggested by Daniel Lezcano <daniel.lezcano@linaro.org>.
> 
> Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  Documentation/devicetree/bindings/timer/ti,timer.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
