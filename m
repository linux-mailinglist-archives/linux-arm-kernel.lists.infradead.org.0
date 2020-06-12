Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC371F75F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IOvhAYo/w7ZCFTDxbsT4nz7z5tOhusaOpNceK43Sy8=; b=ZUKREI5Ox1Zv4q
	C9HM0c+5MWEK9i9Mi15aNuYPXUL9Tt5/P80hvChCsY9vGMYjl068MQ8zUvw66OlmHHtsPnWPTlEZR
	QMMpzsYGWI5BzCtuNdMR2ZsclvvnYWl8kwAtXK2eaXZeZLygJfEg6VNZOcmx9whCnUf+vg+shuaSC
	aFQgXtUmQC8phT0hJ4rReYkMy608UFPjnIIZneFd+BiRyYbsdK75bqNPcwjP+/j4yPY6ohF2OXryN
	eyNUThsuAyfzlj0dx6f3lC9KgqHOR1u41QD+GiiTqgbHwRNm/2qPCCJkifm4rhUBAE45xhwQD7/Ak
	Ml6BL1b/rb6wlDDbvPJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjg0W-0006rV-Eu; Fri, 12 Jun 2020 09:29:52 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjg0P-0006r8-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 09:29:46 +0000
Received: by mail-ed1-f68.google.com with SMTP id d15so5933052edm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 02:29:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ULB+5Eic/UpB9LwZ16CsVWwd9UTnUABnWsy4r1SRht8=;
 b=lHG901fb0PCQE7IMySk7QGc0n28q8iRRIArsWOhI+4QjIdGmoD+nboqTeYWBgKNaAB
 cb5J+yiCYuWYF0K14+xHfj7tD9VJI2igAcmmHrp9bFwkjFu8aTSpHBk0ryQrW99t81fJ
 R/KVcqNAuvWzJgmlnijtoKaBnoLiQbDBD6EJKp6mc5yJ5c0+BiMzVlghlqg4ux0harDP
 91SQhbKA3IEPbKJFaSxnE2I+4d1ZBP7KPv4bzgXJj4wl85VOljetU3jq9/Y+JHsaI+Uw
 Z4dmJItXYZTzHvp1kK0aoaA70svVuY2Jpgj9/XuiDgaJRgwIXtE/xLYn32SWVBISmINw
 b6QQ==
X-Gm-Message-State: AOAM533TWLlppAdosxVbpqmrTb0GFGNGVem8fxbImKFBYk4OOgCVij9e
 gdwxvqNQuz2zv2R0XpiHqaU=
X-Google-Smtp-Source: ABdhPJwMP+GFoBzoOi50JTnAJ2Za87KnSv0JbQ7xeD1nBi+czQydI34qF9r34jzHKwJE5BzeOwXU6w==
X-Received: by 2002:a50:b065:: with SMTP id i92mr11435029edd.112.1591954183850; 
 Fri, 12 Jun 2020 02:29:43 -0700 (PDT)
Received: from pi3 ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id l16sm3335817ejx.19.2020.06.12.02.29.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 02:29:43 -0700 (PDT)
Date: Fri, 12 Jun 2020 11:29:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612092941.GA25990@pi3>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612090517.GA3030@ninjato>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_022945_703130_D02FEBFB 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: Fugang Duan <B38611@freescale.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Gao Pan <b54642@freescale.com>, Oleksij Rempel <linux@rempel-privat.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stable@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 11:05:17AM +0200, Wolfram Sang wrote:
> On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> > If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> 
> That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
> SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had this
> without fake injection, I assume?

No, I observed it only after enabling DEBUG_SHIRQ (to a kernel with
some debugging options already).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
