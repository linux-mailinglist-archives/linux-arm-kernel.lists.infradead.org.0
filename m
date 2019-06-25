Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE054FE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwcKJ6OcC4mcTYOJAM2F3zP1EbJP2MqV0pC7YeiHI90=; b=GfANEHj//YkF0i
	JMCqDFSi2SHJjNt1LUU44R3my57rro95OAHBWDEStJOtKl8+Gv3OJWim7VCQ3mtMeumF7v76Fa/co
	A+SqSXBf2TC7UfWvrUU3QKEXfpBZJ2j9HXe08hsnQ76+bm8nrNsxU6o+jHOnzofCE11LXkib+1dds
	2s7qT1C24e24BDBfkPAW9QUSMjDH73gtqzwFUZwlXW5q7A/cP6Olf9yFKRuNfkZUIn3jnj3WkH9p0
	7t2zdrJZbAHI2dEUyWjE9LoMCgh78qFMZVcuN2cu5RHs8SGaPeiibTeNPufvdtAk5Yd4EfhbrWF+V
	fspfxtsAG+a1ukfYNgJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflEM-0000LI-20; Tue, 25 Jun 2019 13:11:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl8L-0002fU-Pf
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:05:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id v24so16160732ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nXpUcqipySAOINyB0BFT8yaer8kzMhFl/5oU1Qgh70o=;
 b=XGYeABaTyCFOW8Emt17YQq/bpeujaNX82OCIW7pVJJZ1GLQG6AKKmjw0Uwa2gSwv3j
 4fnv3UReKs0XaBydijdpzjF/8oYWL/mbtcG8AA8RoBAK57SI1NaxSeQWvlsLqeDWJLdU
 fnRzujJkRcVY7NBqVJQo+N0Rm7HX8c14tsbsD/UV+xGDyh6UIkqPQIeDO3UwXKnP7jFU
 daOX1J8eCiHiGq7/O5JhqAi3sCQokwV1tibiD4rAMOM7D2+ozC7ucbsYY2VlEw0cJSvM
 x0cmodVQis4IWWM+AJXPAMKVf5+lERafo8UtLpWpwtwHd2el3oD33eb8yi8uea9kYVxj
 FhhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nXpUcqipySAOINyB0BFT8yaer8kzMhFl/5oU1Qgh70o=;
 b=fPfxnaQbAdrj2HlMAa+FZdUA/FjuO46FE94yh0e6DusUogR6x2mGun2oIQ2c5ZeLZ+
 AXR3RaS4DQhjHMBoqPSjdDSMqHcocSQ+hFlkOE9OcFQJSO+KoXIFkbkQLynRscIhR8lf
 Bbhdx1ouVMTEZUoASrnD4MmoE6hQbzdLubFY7gq47055pXCSlLGKv5erqd4LC+IMaRSv
 C5jHQR7nckT0c9pJ/q+zGAMo5j2htmMuYRO2WOH/G46eWAvzlvcmA1CAw2bb7RtBeX13
 /GzizpcTpv1lx0AlpkGOyH/jM9QdkIg3A3BCLTOHX1MatYuVEqIFY5j9MePp37U0hU2Z
 N8sA==
X-Gm-Message-State: APjAAAXQbNF/a92Vsy30m8sbzPZz+6Zv3KuxIPCTxPtfZRsqJraET2SJ
 W3q+bry7IZVJd3hRAdW9u5Eu1Q==
X-Google-Smtp-Source: APXvYqyner0fOOQgF31rhHGkJwqEW9yo1lzwoSGg5ACg0lAzl9ZHzGHfAnLhBehxdU9tVSSSyhTaTg==
X-Received: by 2002:a2e:9198:: with SMTP id f24mr39328023ljg.221.1561467911817; 
 Tue, 25 Jun 2019 06:05:11 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h10sm1944515lfj.10.2019.06.25.06.05.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:05:10 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:52:07 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 2/7] i.MX SoC changes for 5.3
Message-ID: <20190625125207.3c6u4o3sompmm5yf@localhost>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-2-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625075305.29082-2-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060513_968803_DB887023 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On Tue, Jun 25, 2019 at 03:53:00PM +0800, Shawn Guo wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-soc-5.3
> 
> for you to fetch changes up to a5a9dffcc9034ec244f68ead4e61c80965cc8d2d:
> 
>   ARM: imx: Switch imx7d to imx-cpufreq-dt for speed-grading (2019-06-12 18:32:03 +0800)
> 
> ----------------------------------------------------------------
> i.MX SoC changes for 5.3:
>  - Switch imx7d to imx-cpufreq-dt for speed-grading, as imx-cpufreq-dt
>    driver can handle speed grading bits on imx7d just like on imx8mq.
>  - Improve imx6 cpuidle driver to use raw_spinlock_t.  The change makes
>    no difference for !RT build, but is required by RT kernel.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
