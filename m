Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377F594D50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4QUm2PTp08hdJGrPh9aDjldJjeGrLdxvQIISVRv++Q=; b=O1rzkpyEXHvc79
	GrrX7idu8AbLpHc3GOOFDKkYyjA9YBOqE4u2M4FQ/IQ0499z5+Keerneq0n6ShetEookTot7hBHv1
	s5VECnKngBq1dcLMcBeEtB8hcu2d8srZuGi8AK0kPgHHqyWeVXHQh7PMH4phBOuAI/DrV2PTD4ph1
	GrLe2KiCCUJNxo0vIgKq/CtLZAzdI+chkO2IC3r6yQAl49I2Z8350fb8XIQHNNc91+MrvxRc/1R3M
	AnsxDAkhPkzSBikjkClwaqeEEluNNWHdk8n7GpDRLCU0RJunSvkAGB0Sp4zZytJ8wgASUwrf6y5BU
	VgDrA8XwlUOdhqn/biPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmqV-00033w-O6; Mon, 19 Aug 2019 18:57:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmq2-000339-45
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:57:07 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07AF122CF7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 18:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566241024;
 bh=PpzftFy+vdiatOV+exGKaz9N/3u/KbCTsM0d09Za0es=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HZQ6yz5NGksGii9M1i5p7wjUL7g8sLBJxRBKY5eopCEtPHL3Ik4FxqTrAXLTdGD51
 whAWTJqe40JDFzOs2spq+afA1cpJhacz8H2SU/BaA9k0zfEsU67d6ehiAsW3FsCLqQ
 y1qY5NGFRE6M02bsXI3DQ46CiB4n6Ezxt5lG1Bq4=
Received: by mail-qt1-f175.google.com with SMTP id e8so3074168qtp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 11:57:03 -0700 (PDT)
X-Gm-Message-State: APjAAAWbrgdV2xGws0ixsm6lPxBce5qBRMfM6imKx2xJOTEGDz+Smt33
 0PtCmjB6Dt7M7OI0VgibzFhGi2r3Wc7Hpru19g==
X-Google-Smtp-Source: APXvYqyem9usStmeAj3X3lcl6uuICrDQDfmec0Vvyrcebdi+L8pRqRmBajRkKgyiE/FrM7aOJG7WZwyRe3W8Eaubi6I=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr22505378qtq.136.1566241023152; 
 Mon, 19 Aug 2019 11:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190819182039.24892-1-mripard@kernel.org>
 <20190819182039.24892-4-mripard@kernel.org>
In-Reply-To: <20190819182039.24892-4-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 19 Aug 2019 13:56:52 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+wd=z3e72VUP1rkEagrrQu+Cg2Ypqo_ZmBFaZ1LOkRvw@mail.gmail.com>
Message-ID: <CAL_Jsq+wd=z3e72VUP1rkEagrrQu+Cg2Ypqo_ZmBFaZ1LOkRvw@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: watchdog: sun4i: Add the watchdog
 clock
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_115706_180816_F65A6AA7 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 1:20 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner watchdog has a clock that has been described in some DT, but
> not all of them.
>
> The binding is also completely missing that description. Let's add that
> property to be consistent.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - New patch
> ---
>  .../bindings/watchdog/allwinner,sun4i-a10-wdt.yaml           | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
