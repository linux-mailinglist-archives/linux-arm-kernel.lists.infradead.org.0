Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8F91F788D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmwCaq3+1fYdHDZv8L7p/SOIWo3qwN05qshz+N8n9TA=; b=C7tnAvjH1lVzzN
	55Ao9uF6xcHbxbDDwfg3oVOXkCaEHR3V/x6fZc6JEit1JBRQmqA2KSTfJSRXPhHUYI1g8i1N9jBvG
	aFdypwZFYhFiuAt5jpb4eesLo4ZwbWiwSeCNHohYpWZfyNrdLyY0TPS3REPu9HLOHAZE6GAXNallC
	0NEHTTSEuZaMjAMIq4b8YbSRzr2ltz0hF7v6bk0DsdIVy3h7OxvyAIz1UMjmrSfKOO379hRZ/DdMM
	r2Ukv4M0FzH3d7yxiRyoZqsmW/8c+jPW3AvDRc2zQ4O1ECID0Ex9A72fFnQ+oIz5o6LM7eoSlabA/
	xjOb2M7r/jT/SVDlc4Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjRl-0002Zo-69; Fri, 12 Jun 2020 13:10:13 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjQu-0002Fg-KC
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:09:22 +0000
Received: by mail-ed1-f66.google.com with SMTP id t21so6365577edr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:09:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W6pdgl2PLO28Quo1DrifG6f4mzYJJhuViqwZMRjapYc=;
 b=UbLgvL7IikiHiM7W4nLQOn3a6cDdTghaCM97vUZqWZcd2oX85madt7CkU6/MU2MwcA
 Ivd1jTpaveSrKuevOg6L2nhDFR7hYmA7m6KfySpmPu9DG1RUs3rD2PSkRwDoyeFlZvyY
 sD82awAW+7BbsWk9C17LN+UFOfkzVgK1+NF4PpMhAH4pck+wFQw/O5IJi+wLAglKevXL
 7p/XSAsfTW02k67mI9PCnC72dJnfT1VkOEHFcBzKXWPZjsmkkgkc47xmP5FaO5nyOpLn
 Pjx1QaJ6J3EabmnZM20NquvqL0OqrCtTpSGKg0WseIomG1EiI81b94yXy1lm5Hd8voio
 ZxXA==
X-Gm-Message-State: AOAM532R7dTYvWuJK5RlnFUN0m7ln1Rl+4RB+njIyEBFOouZRX/xnSgy
 YVbj6GC/Tko9aElHHhdTuCE=
X-Google-Smtp-Source: ABdhPJw2FHzo7NNJNvXCM5/NTxYsQrs4+yzO9DeAX0Qa3/zidsZXMTnnAP95p3AzhjAz2Ichf6M24g==
X-Received: by 2002:a50:f145:: with SMTP id z5mr12174687edl.78.1591967358525; 
 Fri, 12 Jun 2020 06:09:18 -0700 (PDT)
Received: from pi3 ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id p13sm3114724edx.69.2020.06.12.06.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:09:17 -0700 (PDT)
Date: Fri, 12 Jun 2020 15:09:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612130915.GA26279@pi3>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
 <20200612103149.2onoflu5qgwaooli@pengutronix.de>
 <20200612103949.GB26056@pi3> <20200612115116.GA18557@ninjato>
 <859e8211-2c56-8dd5-d6fb-33e4358e4128@pengutronix.de>
 <20200612130003.GB18557@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612130003.GB18557@ninjato>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060920_722725_F2306B4F 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Marc Kleine-Budde <mkl@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 03:00:03PM +0200, Wolfram Sang wrote:
> On Fri, Jun 12, 2020 at 02:18:06PM +0200, Marc Kleine-Budde wrote:
> > On 6/12/20 1:51 PM, Wolfram Sang wrote:
> > > 
> > >> This basically kills the concept of devm for interrupts. Some other
> > > 
> > > It only works when you can ensure you have all interrupts disabled (and
> > > none pending) in remove() or the error paths of probe() etc.
> > 
> > But when requesting the interrupt as shared the interrupt handler can get called
> > any time, even if you have disabled the IRQ source in your IP core....The shared
> > IRQ debug code tests this.
> 
> Yes, so you'd need something like
> 
> 	if (clks_are_off)
> 		return IRQ_NONE;

Maybe then:
	if (pm_runtime_enabled())?

The device structure should be valid at this point so the call should
work.


> 
> or skip devm_ for interrupts and handle it manually. (IIRC the input
> subsystem really frowns upon devm + irqs for such reasons)
> 
> D'accord?

I guess dream of managing every resource automatically is an utopia :)

Best regards,
Krzysztof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
