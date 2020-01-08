Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6031339E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 05:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7kcMQBJRyWYw3qUk0dBCYsAkP9bUGKXiJiJOQnp/io=; b=Oyfw1MekakciP0
	oaCaI4ZZCmranDsELMUVu+ZQeEyvQg2l3CoECEtIAkt6LJJrm0odB8cuBxcR+0zNSrgK6Wa0Zdc/V
	k3i/LYfyH3Y+B1cWBi3oqpajugjno0sE5LtOcUCXK41MDH0q9Yb5KP8ymIMZ6K4KhP5TUmEftrOLS
	4SpdSFsbc1zxCzhQp/zwDs8GnUtjOkeqIw2tTncQ7NkJCpvPE1f4MuLGXBFKMtEk/+HOC6yF++W2l
	AH9gPpjZzHyWyZfxPKqImTr7HtDL8NDztbGWI4ojbY1Yc8/hbuDYzynuOcdZqq1WR7FkxDp9Hm7jP
	WYnA9CZDB6syNF+pevKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2ZJ-0002Qh-2W; Wed, 08 Jan 2020 04:03:41 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2ZA-0002QA-VP
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 04:03:34 +0000
Received: by mail-io1-xd2d.google.com with SMTP id d15so1742345iog.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZKgTIULF+m3fwb99kLhWStg2O2v70iS62DUlXDYi2mE=;
 b=AhnBm3pJA/Njh7IFk7pPT4B1vmiNe2UB4Re6DPj1yVxl+u5RycCytdRrs5dFgEnDD4
 X8iUschS92J2yFBhsnj0aeX7EaKvkYPYycllm5Eo/pvguQFC49XUER5vjM8ijkTE5Bnq
 cDl1S3TA+gvtKdGpr5GhMrrxm4gcZQ0FXq0sFIQ6jzMB04jRe0alTEqjO/xOsvR+pMrp
 y9L3iwufVjIktdKVhWx8Qcj0CVUEOd9ov2cJbq8txYwQMoB3WYQTR2ZYSwJtlLcNuT1C
 82OscVYCRNWQjU8k9sw0UuU67HXgFSFhI+e3gdnC4sb99yojNfze7wPGfvHHV7ZnDq+t
 XRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZKgTIULF+m3fwb99kLhWStg2O2v70iS62DUlXDYi2mE=;
 b=aWyFbckciGRC2Oc+5ojO0peC0mxSOp/3lmuogr4dAmyAHbcKU+LxP1Ma8asM2uYH4X
 eSHF4UB5XP398Dq418N/9BRGcZab1hqVRbyf6bN201n7rhLdluzdAb6CYfVrBzMKGZIV
 hih5M447oMkyYzAU6FaV7ZqPrpdIIX1lC07HE+PZV+dfT5fm+aDDKZ8yg4Un0CPWtdQz
 REBxYAWoE2NHnBPZo+NXpB9jJETozzaycKcM6bQxrDje9Q8EoDwczjpGTziPrTRNn+ph
 5rTQhBYvpxNxD7JcKitwv+C156+qWUMxxPCWNefaboPaIh03UrCn19lZMPWJxHwKaBGH
 n60w==
X-Gm-Message-State: APjAAAXAFsyP23xYD2x38xUyXZm0mTS0UW+dpK94agRICViC00Rr+/n2
 Gp1HErCXtN9GLjMmpn3JMjZgySKEOakeVQ==
X-Google-Smtp-Source: APXvYqwg2UzXtcnCFk+iqOl/lZVXc2ZQbgi0XXxEuz+tT6tOLlG4kXyKyVQzrZgfaUOMYUhie53jnw==
X-Received: by 2002:a5e:9814:: with SMTP id s20mr1721589ioj.96.1578456211150; 
 Tue, 07 Jan 2020 20:03:31 -0800 (PST)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com.
 [209.85.166.48])
 by smtp.gmail.com with ESMTPSA id p65sm538501ili.71.2020.01.07.20.03.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2020 20:03:30 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id z8so1762879ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:03:30 -0800 (PST)
X-Received: by 2002:a5d:814f:: with SMTP id f15mr1786781ioo.275.1578456209881; 
 Tue, 07 Jan 2020 20:03:29 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
 <VI1PR0402MB36007146C33D2B4F7F24FB46FF2E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20191223101627.p4a72y6ai5ns7pit@pengutronix.de>
 <20200107222406.vw7ewgm7uilu2x6e@pengutronix.de>
 <VI1PR0402MB3600DACC1709D2FB5EB25E9AFF3E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB3600DACC1709D2FB5EB25E9AFF3E0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Wed, 8 Jan 2020 17:03:18 +1300
X-Gmail-Original-Message-ID: <CAEj2-1Nh=-Qc4Q1diDSbe=9yOO-UBYR2BQm7hF9vo-qgCOst=Q@mail.gmail.com>
Message-ID: <CAEj2-1Nh=-Qc4Q1diDSbe=9yOO-UBYR2BQm7hF9vo-qgCOst=Q@mail.gmail.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
To: Andy Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_200333_079721_FD4C144C 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 2:43 PM Andy Duan <fugang.duan@nxp.com> wrote:
> @Andre Renaud,  can you add kernel command line "nosmp" to check the issue ?
> Suppose one core cannot reproduce the issue.

We have done this test previously, and 'nosmp' does resolve the issue.

Regards,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
