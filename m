Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BAA54E91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twcbDEenZvdwCwrTEko+y1D0HOeblsxBzeW0OAG9LQI=; b=tEjGxp74GiY1NU
	gcDDP+V8ysdCfQHmhpA8yoq2BPkp+yQ34tZwEeXHFJ9i6k2s9AVIsSMw/duWcP41KrKMaC/PWtzkQ
	yqmmhGa3M/ExK+TUeIb5q2ZAiwZVf3ibSfJyvI1SscmhCxsuw2500gl8/VHXqW7zLbREplSBZh7sl
	WKmFRCSEbLW4uA67b5g4UKDr9xfjBvmgcoV3Lxg2tUM84oYVtAdvTnHADmkPkFjueiC4ddd0U1eUp
	PxUU2BjYfVNj2vlLD5rsssYU0aoQV6TVe6rnoGufedjZCUc4KrOBDg79foIgBUUk1/v3h96Lx9DeI
	WIIwlGy7D7kwlMfwu1mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkLu-0001Qk-P1; Tue, 25 Jun 2019 12:15:10 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCP-0001fc-De
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so15997664ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kpFJs+0Grq3rIWSZSclERwxX9HWUhqfMVa/gJ7foQMg=;
 b=f3ILDiISh6J/ustSJ9LfDwi/+if3rb1AK1TDReTng1erbZxcKO2ipTkIUNWASbpgk8
 boYiDODxf8fBjUe5Z0WMbZD87uwJCHi05NBkVBO45Ps6WXPrTKpH58qyQbeJHEtoc7NA
 mQG06Uh/kExG6e370/chRNtRtzzNWAihZkaiBCiKBjQHP+caYXRN7ziaGHYoO+223vJl
 31l+j/pTBmF92+xSJ/J8wGFiLj0xUVVwHYbWSmyniFM8DhQeGPrJ32O5W/LpLqUGYuOc
 90H5JM6R9ignu+r5LyJTLflo/pR2hwJFm5VjhvOM33gLWVQc2hUGd1kJw0pRIBbJDwuw
 RwwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kpFJs+0Grq3rIWSZSclERwxX9HWUhqfMVa/gJ7foQMg=;
 b=klAmwJE0cqUxSFZWjCm+8ugGxyyv24Tcnl36txdTpKS82qWjxTNhAwretaUT+VV0v3
 hh0UTSv6WpNd1odzBTWLgpZdurZW4E4p8kqLtXxVeh38GFXtVIm1/3V8UX+CI4VzLn+I
 o5eoOyhWf+OBQkfueucowEFx02yOTTnUa28gW9GMTY+d0lFBjDUWFOk+u7aHygYC6aZ1
 ICjD9zXS8I1weP0+54zOc844GdL7YWSN2R65o444w6cOxtBeXtRr62x2m0DljqYliMdP
 k1HhgGhlRA1ZxaeHII8ZAkdoIqnZf2RrlK7LAbOkXrqO8XyvjRpw+eKE1OtaSZ2GbAx/
 e5mA==
X-Gm-Message-State: APjAAAU2hqG4VGIEXQ0OSIpT0Xr/Vrt1Zc2b6Vkv2sXzhERlG5JjJ9z3
 h6rPgXh9FHzfWMQRp8xk6DX+M+7fepIC1g==
X-Google-Smtp-Source: APXvYqz2M4aQMH0GCFuyd98Vr9WiWLNIXx+GjWF4CqBXxixNcNRm9RyZ7/1EiPfBtbI3jm5k8NUzsw==
X-Received: by 2002:a2e:85d7:: with SMTP id h23mr20643889ljj.53.1561464319956; 
 Tue, 25 Jun 2019 05:05:19 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l22sm1286258ljc.4.2019.06.25.05.05.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:18 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:52:43 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 5/7] i.MX arm32 DT changes for 5.3
Message-ID: <20190625115243.2wsn6czrkqztxgbk@localhost>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-5-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625075305.29082-5-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050521_629246_B417B919 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:53:03PM +0800, Shawn Guo wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt-5.3
> 
> for you to fetch changes up to 48cbd9ff53b7391111e8460c3d9307ba14a5f8c0:
> 
>   ARM: dts: imx7ulp-evk: enable USBOTG1 support (2019-06-24 23:12:18 +0800)
> 
> ----------------------------------------------------------------
> i.MX arm32 DT changes for 5.3:
>  - New board support: iMX6-based Kontron SMARC-sAMX6i, i.MX7D based
>    Meerkat96 board, and NXP LS1021A-TSN board.
>  - A series from Andrey Smirnov to update vf610-zii-dev and
>    imx7d-zii-rpu2 board, fixing UART2 pin assignment and stdout-path,
>    adding QSPI device, and dropping unused pinmux.
>  - Update imx6sl and imx6qdl device tree to assign corresponding clocks
>    instead of dummy clock.
>  - Update i.MX6/7 boards from NXP to assign corresponding power supply
>    for LDOs.
>  - Update i.MX6/7 device trees to enable SNVS poweroff key support
>    according to board design.
>  - Update coresight DT binding for i.MX7 according to consolidations
>    for CoreSight replicator and funnel.
>  - A series from Marek Vasut to update M53Menlo board on various devices
>    like UART, USB, ethernet PHY, GPIOs etc.
>  - Enable USBOTG support for imx7ulp and evk board.
>  - A series from Peter Robinson to update imx6sx-udoo board, switching
>    to SPDX License Identifier, enabling I2C devices and bluetooth
>    support.
>  - Add video capture support for i.MX53 and imx53-smd board.
>  - Add PXP device for i.MX6UL.
>  - Other random small updates on various boards.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
