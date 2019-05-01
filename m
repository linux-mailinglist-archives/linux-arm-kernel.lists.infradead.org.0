Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F8B11069
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 01:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hjqo1ZPrdfGo3IsaMesf52yHiDyqSbDUy1HMwPtE3Lc=; b=AuuYg2cKzaXDvH
	y60Xz+S2OOfOyaEZQoOOxNahaxqRpRV3quubOB5ZP9JI1XKvjgTJj9HXDnQhSmoadVEJqsv6U6ko2
	ZUZOtoRds8aU4zQMPTHJuMciA62CWHnBDZERQHvOSH5P2xw3e/xpZ2ZaYQRB+dFDVjSB+LXXOUbh5
	fPY8Chn6B23I45/xcsPWoI30UAY92utPWvxidB5PtgvyGl7zvgvzv/CVfFhT0x3qmnOL8em+A4fl5
	BuFETzuiO7i4ws3bAfipQxL9gLR4HAjVRVkwLWW4YUrVWG69wX73c3JrqknBrBI0yb6VhgKNXHl4B
	1eNSBjeIsAzj/l2P8wjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLz21-0004Da-Ui; Wed, 01 May 2019 23:52:57 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLz1v-0004D8-5t
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 23:52:52 +0000
Received: by mail-ot1-f66.google.com with SMTP id b18so503533otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 16:52:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R0OfUtgbOzpycYr8iuHMBHzhuimOFdIQvOQuK/0qwdk=;
 b=InwivObEW5Y1ORbafuYnYu5zhXGnzj9bUYY63dlMMQefhGC3ux+YrWi0jr0yksXGPV
 PQhi9RBCp6LJRzbI1ERgF8olnrbnjH/cCICChwurWft+exy69ENd6fWVUBZqM0f5hxr6
 2EUbSTLHpJ9ONwRDwqFeEOkAdTpnA7eSp8vh3HmET8JX1aTbk0AUF1W9LVbWRs1vzGbB
 yg3+5Y1euXdE53f/wOc4FLhYD8U4APKzvVHcTiFaAY+xYngBjk8MhRtDqPZ4dezDYQcB
 xsbpuO2SfH/SuWoX+GOelmB1yXE4wJVGXRKJTl0bYkZyoA6k8g+7Fly9rEGt1ffBg9jo
 Pksw==
X-Gm-Message-State: APjAAAXPzqOCkG1aA/g2YPQK3hVAuRBBKJNpRRwhuy3MBOZClk5w/zlo
 26Begak05RA6O6oYVqhyeQ==
X-Google-Smtp-Source: APXvYqw0T4QCT53ktSmZ/bDfjHKN1Q33PzMjlDXREV9/xAvpwiGdJgn/fXfPZ0OGxTvrmQK2bgtXTg==
X-Received: by 2002:a05:6830:11cc:: with SMTP id
 v12mr460277otq.79.1556754770021; 
 Wed, 01 May 2019 16:52:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j1sm16365532otl.43.2019.05.01.16.52.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 16:52:49 -0700 (PDT)
Date: Wed, 1 May 2019 18:52:48 -0500
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mm-evk: Add BD71847 PMIC
Message-ID: <20190501235248.GA25128@bogus>
References: <d809d10676011d1d35c3f78fe3e0ec47b73398d6.1556028030.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d809d10676011d1d35c3f78fe3e0ec47b73398d6.1556028030.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_165251_222016_6BB96D32 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 14:16:48 +0000, Leonard Crestez wrote:
> The BUCK2 regulator is used for cpufreq voltage control, otherwise
> configuration is mostly static.
> 
> This uses the newly-implemented rohm,reset-snvs-powered property to
> properly handle the SNVS state of imx8mm.
> 
> Between BD71837 and BD71847 the BUCK3/4 regulators were removed but
> datasheet and board schematics kept the names for BUCK5/6/7/8. The
> driver however renumbered 5/6/7/8 to 3/4/5/6. Use the names from DT
> bindings and add comments to signal this.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> 
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 131 +++++++++++++++++++
>  1 file changed, 131 insertions(+)
> 
> Changes since v1:
>  - Move compatible property first
>  - Remove address/size numbering from regulators list
> Link: https://marc.info/?l=linux-clk&m=155530430429151&w=2
> 
> Other imx8mm cpufreq patches in that series already accepted.
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
