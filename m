Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A687C204
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KemKG6CJyUdoE4Dvn5VrlQp+WN+b7869d44mbFqwYqw=; b=ETwV1jHdvzf2p9
	a5L1rJ4/qicowlhYUxe/Apz/S/VhBYUBBxWTr73B6nbsmMcGEbf+oiOYOTtROxEEqs/dv6PyQ3LED
	UJRvxZY0QimvY4x0xhhvgeVWiJI16BgHgx3GwDts6EFMGtTzJH56KK3Ckda/QHvpxRbur2mIsRDfu
	6oHidz2lhwOuy8MQfxXaCJbxl686Vz9JJEoPDQBhFSzSDSgf5Terd0I8/7efpP524bkqjZMNMO++K
	aXFevo0IFH7Bj/kmLCqA/YjdUL0cIBM483VpG7j1YDlCvAbJVbTOKBBFCwZ8jy2Zkh1OCnvA7pmqM
	YF8yUzPRmvM5usJN2Ogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnyn-00077k-KS; Wed, 31 Jul 2019 12:45:17 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnwC-0003wu-7E
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:42:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id t28so65441693lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2lttJaWeNAFLT7UvhBTaO2ZYIgG1MGHq7T2if8RJxqY=;
 b=B3eumO8eqQG3I1elp/UlpeHy3gdGRkakbE1GjKMxFWk3bvUUe9uPEbB9sZG+06J5a8
 rr01H8MKZ+WxGo7wlS7BK5nnhrzM/OTq9no8U/MnyCQrtE1bxF1i01z+klhdWrcD8Tbf
 BukMPo/nMLjtpBVOvQ1i5YV3nblWi/6o0JtOM3/SaPn/YvbRO+u+6whPWy1C+W5zTXPx
 YeDAEJRyKL0edCjh9T47qC6y4pTqgm/3vbdJqYYob91cEj0a2bkeplUxr67drYQJziV1
 1Dawb6/rrIpSsgj3XEvLaHV5T+Mra73DzWvmgwpQ9hLeXTsCehiERcld93GGzM3KH2YJ
 D8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2lttJaWeNAFLT7UvhBTaO2ZYIgG1MGHq7T2if8RJxqY=;
 b=q4ABrosJDC3gy2mLGpK6hgaFgN7yQQpBj6Al+HPFmrO5EcppBY9K6ikEaA2mEGFJPG
 4zn/CcqVUkTCX3DMakfcAzovCs+AZsFv8KEW9FXF2Zp5WFPPdHcV1r26Pj0rnUN2rAz4
 9gaYXW6JdAOh3MgIyNUhDEZeufwAjiBr4t8zTMvSpolJQGk4IQ7VG6bwvfQqdJY9RVuL
 tYtRtwr623LRk8zB5a9IuD8RUhreJB7A9Ui1oSo5584wtdjlmXhVcjhIUx+1+/GHZQws
 X1KqlOdKKldVbVKXZaZEZcKRtbn+oGKE0dCOToNgYUr+w60NnywOn7GSTg5B3ywBo5gT
 iQyA==
X-Gm-Message-State: APjAAAWSDwvezueZLWV9+YnOOr7JKXH8OmvDYbsPi+tOOI3Bwi6nqQTb
 SV2n4ioc5WgslCOUQGK5AepcvDGDfGBlfpuLR6Q=
X-Google-Smtp-Source: APXvYqxx/q5CVs4/7M/DyQInpyLarIwQ6MN8cFZtux5bea54lDsZXckkTKqlUSKYccysfyya6bM+I3oV+spUzssUEi4=
X-Received: by 2002:a2e:8650:: with SMTP id i16mr64945835ljj.178.1564576954236; 
 Wed, 31 Jul 2019 05:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
 <20190731123750.25670-9-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-9-philippe.schenker@toradex.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 31 Jul 2019 09:42:40 -0300
Message-ID: <CAOMZO5B3BcpjbnsXuE5abX8YsuLDrkkHU=RBt6w_SpwuRkTvXA@mail.gmail.com>
Subject: Re: [PATCH v2 08/20] ARM: dts: imx7-colibri: Add touch controllers
To: Philippe Schenker <philippe.schenker@toradex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054236_296396_6E27396A 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 9:38 AM Philippe Schenker
<philippe.schenker@toradex.com> wrote:
>
> Add atmel mxt multitouch controller and TouchRevolution multitouch

You missed to updated the commit log ;-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
