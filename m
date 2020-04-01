Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A40219B62E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 21:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pQDbKKBd0JSBNn2zmaAM4jEmV/jZ36wt1USIQKskOs=; b=QlnAz6QxomWGMa
	+gY28FI2PgrDZsZrGKFPMFmv7cjK1K++KV5Fi0lrsIlR0b+qc0FZ0H2ZTUnwEZGEADADj18VJQ0a5
	DmGiibCmV8gqzohxYjRTx0/FcBjFV5MBqW2lbWIJVyulMhlo3HgcG2tmkrcgoz6MJz6rHSOGa1Y08
	A9zsUE88TFxQ/ESWRblt0S3pPfvEiZu6VXFoUvup25B3Ei6NAFBQhkgLrPqUBKudbh05RyC77OBu8
	hVKqci8VuN9NqqFFs5ni40WOPzhyd9jQ5o1uyYdBWsLJjpzN9VFkOg+m16iihhRvU3+LN1Cks3Fmv
	xsTOg4/JOwuwnjcgjLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJifc-0001xu-3Y; Wed, 01 Apr 2020 19:05:00 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJifW-0001xC-71
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 19:04:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id b1so662007ljp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 12:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/DxqfuTxuKlaH8Gn/MYKo4lOdwXZcw5v1ups67QyOqE=;
 b=YQJ3Gf2bufH1xWuvLDsGp1wDWIMDVWgOmOSEapDwKOQ2ajyjZb85owf6rtc4/3PMdK
 pdWwZ+Wfchw8fgnIhqRcqBiSgnFU1jUPaZBeOAPWUIUO0LHqDFa1fAegRx74lit66Tu+
 T5a76uJtxArs+8ucTSGY412VKUjgxC1rxYBWDTKk/lrPXQsn6suQauhON8RSw2+Yuqm+
 /zEFuf9d59SzRi6TjrNO8qbWnhsaW8dgMbLvGuXgZEaNyOB3RaL+cjd9j54oz/MLKKH0
 /tprCxaTL/FV5PH/Ii4T5+MS1kSTM3Uz0RFg9uwUJ35gNozNXoAypN073hjuxC4A2gv3
 vSvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/DxqfuTxuKlaH8Gn/MYKo4lOdwXZcw5v1ups67QyOqE=;
 b=X+4nfpRLJb83/BdXylJcutp68p1wiredkBqAKCqIcCKg8PQUOWTXLkIY4tQ7yra1DC
 HeCkc3r+5RMIHmuAo76YFpmFryiBocpsDATBEPKdq13v9HctyGgUGF7/p/9Pc7OSV5Ma
 GL3AJdbhV/kykapJA1dovaaCzTL5doqS6m7cW0neCgT3AYVr1GKDd3ysmJJ85ApIHnVj
 StLZtvGyglab0KC5NSGcvkxu4QS23LY3IiWQggrz/CEE34SrXCiu3Z41cpPSJW1o1xnp
 cQqLQE0N8nYVWO5aEbdr1w6LhRhhvPweI0PcDU3mJFtyJYqBiVVQmNvEEMQxjiJ9PXMS
 8O7Q==
X-Gm-Message-State: AGi0PuaLMno5qeVNvrwWR2Fuzjv+fG2vKCGcRb8MfzvMMEDxnLGLEzMt
 dAntDoF7uW/YzCL4qthAoKlkPP9HXWqZb/M1tuWMOh39
X-Google-Smtp-Source: APiQypJaC+dBtoqJLvNc6uc/ifBPIF/2Yb0O/FFaaksX9WonGEIYgQOnVz4aOKPZbpZobomOTPl3nLr98rIpkartQYc=
X-Received: by 2002:a05:651c:30b:: with SMTP id
 a11mr13626475ljp.164.1585767891570; 
 Wed, 01 Apr 2020 12:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200331183725.25255-1-festevam@gmail.com>
 <AM0PR04MB448118DFFFBA1C1119D257F588C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB448118DFFFBA1C1119D257F588C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 1 Apr 2020 16:04:40 -0300
Message-ID: <CAOMZO5AAcwjLCYtGX4LRPqbbZQmr=OsZXyc7b0Kf0D9WQfLNWA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8m: Fix AIPS reg properties
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_120454_276389_DB895598 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Wed, Apr 1, 2020 at 3:51 AM Peng Fan <peng.fan@nxp.com> wrote:

> >               aips1: bus@30000000 {
> >                       compatible = "fsl,aips-bus", "simple-bus";
> > -                     reg = <0x301f0000 0x10000>;
> > +                     reg = <0x30000000 0x400000>;
>
> Should the node name changed to bus@0x301f0000, but not
> change reg?

I don't think so. I have just adjusted the reg property to the AIPS
range as per the i.MX8M Reference Manuals.

> The 0x301f0000 is the correct aips configuration space.

I don't see any of this AIPS configuration space mentioned in the
Reference Manual.

Also, we use the same approach on the other i.MX SoC dtsi files. Why
i.MX8M dtsi needs to be different in this aspect?

Regards,

Fabio Estevam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
