Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63494163AB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 04:03:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ABDpTOPIEz2PiebEYeYwQRqycOZLnSCgvmtbyeZ5z4=; b=XtNyDLcQQZq/ba
	asyuTQfcIFOJ4KsbeKFnW1Myw/+oxGown50ysTuFN0Jn++loCI6mWceXczV9rGdgpvLtomMKc0GjZ
	seMtlAzhqM5YS/VHAhqDMdVztlOqhtCllcWHjkwKOfhCfPfJVEfTdwwRDkuQML7XmmPIyD3aLRzCm
	DmB28Fmo53b+BXnYA3IjB0ADUak/YbbcTSgGCHKhPM02Vd+ek5meTPfgmspWOGFE/huJdsb4xfg5W
	bMT6Vryx688cpW12EOoeLipa9ZQhb6scpFdb9WGAQHKGC0k6JOWADVwSVLSnpGKstGGkTNujxJQyA
	8IyUzRrKNypZ4OomsjHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4FeD-0001rS-5S; Wed, 19 Feb 2020 03:03:37 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Fe4-0001qe-HM
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 03:03:29 +0000
Received: by mail-oi1-f195.google.com with SMTP id c16so22415963oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 19:03:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Hf1f6QP19rHdaFJBEywe6mRYXkeEBsQdT49X3f8AQCs=;
 b=RAHQq2Ds90PZuc6zrDYGRYjG+x4ONkQKJW7nDSWNMHuR4fFOWNwBL4pPgMLeUz91Jm
 ANL2TVmVn8yLMkHgVu+cv7dEa5Wi20oTX2jXcB89IALLCYDUyuLtsCBAJ6fAhlYEAuKJ
 ohGY4XF6oMwOPx34DH1rEnYIJ8Wt0z4u5T0n5BulUFP6DqhALwZtUliEGe38iE8qxUp2
 0LIV93sEE+dz1OHUgyyLd/wLf+CJ4KFMOyTvjpPuzcfx/Rg5vfRoGlpKjK2uT6hI69Bq
 JrJml17XqvMttUmEq7k3IDD/8Mh4CuRY/7hK1LaEhcxxxf/cZ1LLG3pj3Y83dd9jdIuv
 wuEg==
X-Gm-Message-State: APjAAAVWkUekZ7IliSddrgNutb6N7ib84fOfo7frN5KfVSr6sGUWnLW0
 6yTnZ3bqRdcI/35iw1PFJg==
X-Google-Smtp-Source: APXvYqzb9WboKkTWigfur8GY+H5M6QkRTHO++ZcVsbVhsDtpZ0hlIVyOR7AyTXVJ5W9SnTQCgMCmfQ==
X-Received: by 2002:aca:4c90:: with SMTP id z138mr3411041oia.140.1582081406582; 
 Tue, 18 Feb 2020 19:03:26 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b145sm303254oii.31.2020.02.18.19.03.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 19:03:26 -0800 (PST)
Received: (nullmailer pid 16294 invoked by uid 1000);
 Wed, 19 Feb 2020 03:03:24 -0000
Date: Tue, 18 Feb 2020 21:03:24 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 RESEND 1/7] ARM: dts: imx6sx: Improve UART pins macro
 defines
Message-ID: <20200219030324.GA16230@bogus>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_190328_570476_808B93C9 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 19:13:35 +0800, Anson Huang wrote:
> Add DCE/DTE to UART pins macro defines to distinguish the
> DCE and DTE functions, keep old defines at the end of file
> for some time to make it backward compatible.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since V2:
> 	- Adjust the definitions order to make DCE always before DTE, no other c=
hange.
> ---
>  arch/arm/boot/dts/imx6sx-pinfunc.h | 260 +++++++++++++++++++++++++------=
------
>  1 file changed, 174 insertions(+), 86 deletions(-)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
