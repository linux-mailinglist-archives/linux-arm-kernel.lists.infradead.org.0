Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A161B0311
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu8HHI7FDnCRvHAzn/b26owpwOYgeJwUAkorF18PY6M=; b=FQym53IzK2QOvL
	RSXi5N+4bxHwg7Aoxfr1wJaaqAU7Zni1TXgTIYhZ0F5ZFeifdviC+/wV7b0NNL/mSK3SlSmbtaYwl
	QGLzwpJAAuacBQ2wrGfDQ9NF4GUGiwc+ijpyyrNLUc3K8mrliQI88mkNPM9rpqAlGO1dxYvFHg6un
	U0sLa1rNUwBSIwReYu2u26C1nU9jF/MfiWTJAPMc9eF2lBgK4Kl9Kt9nqaI8bMzqGUxMtXRWZ9ntB
	g4eVnX6V95a8sFmnEHOvi27mN4abH65+dQNqYcMK/oU1pbnHWRluSdeX+91e+yrcdIhnjOIMWoZHc
	b9BssoYmVsHKowiVuE+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQwx-0004OQ-PG; Mon, 20 Apr 2020 07:34:39 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQwp-0004Nj-Rt
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:34:33 +0000
Received: by mail-ua1-x941.google.com with SMTP id a10so3235858uad.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 00:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=opCQWgYuAFYxLdRztezYqwdg+lsU+kLFUGlLQxUPDrg=;
 b=pAtkxvUGU+urLdOoGr0lXgvyKlRl16BlV9bPojdE8r0nGdNQq0Sf8j3kDMPzqsRTNX
 /LFbidWy/e3DGc29eEF6nu6yj59jxfAxBjHAb2EgMa+bg+B48EiqCITZNUxpRSsLnMrT
 1pAPf2rlHJV8chg1gtTC1AdvdJrNEq9jnheHYXDf0XqoLc1k7T/9W8DO+0mdau7N8LYG
 DLjtMznlnI3ljgsnfWjLUkhC+8JsNwrM8EnL6vcMmUgkJr/2MQGjDEJQS8mgEpIeVW0x
 b34kleywutIxcGdICiWzOZaLbd2j2BLBRJKRpKtHFv0Q+/EHjk5AYIBWRS5G/u16KQBh
 z7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=opCQWgYuAFYxLdRztezYqwdg+lsU+kLFUGlLQxUPDrg=;
 b=a7UhGNs8YqejfIfUXQSwJkNv6WFA5SkIe3eq0fNV8mj/pRd/e4+9nNDXx47ipnKIU7
 RMD+e0YqjPXOtF0qL5DUJ/02jswbF+cS75CdUlaT3EfLpQb2M4iK+hlU+aAs8d82sOc8
 mXOXZp5sch/IwnLNGNCtm3R3KoCThcFLTOE2jecDKYx6t9PDIv6RpTkR42hzh56hzm0b
 sy77EUYUsHXUYlG6WnpW2yXX21dOfxvWVuFS5OJPdfwRGFaOd6w7L5fmzjNWymrZ4BhS
 MaRplo2qHh9lT6qxr6aVCQlSglEPro0gL7qGUdSMADPZZfirUQuVBHDnTsj4p7sg4AW0
 VGzg==
X-Gm-Message-State: AGi0Pub/p7qN/uZnOYEAyTI+hZhfJbcLINOcnq/U/YYlgGsOviIT9Ku8
 vzJFVuzrlj83oHRkrarTLr+tpn5tJNbagw6DQE3B0g==
X-Google-Smtp-Source: APiQypIP0+2cZRffzlocpbxn2ONEPkD5ue7l25ETDalvg1y0d5aVMpH/wBvI56nsmtEm2deJhKL1tD2ouDEFeELmEvY=
X-Received: by 2002:ab0:3343:: with SMTP id h3mr272200uap.19.1587368070353;
 Mon, 20 Apr 2020 00:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200417154901.112236-1-colin.king@canonical.com>
In-Reply-To: <20200417154901.112236-1-colin.king@canonical.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 20 Apr 2020 09:33:54 +0200
Message-ID: <CAPDyKFocu+ckJE5WpMWuNTMJiwkfgQ4Ha-AXCF4mRJKMrhFa0A@mail.gmail.com>
Subject: Re: [PATCH][next] sdhci: arasan: fix uninitialized value being
 returned as error code
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_003431_908729_70C82502 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kernel-janitors@vger.kernel.org,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Manish Narani <manish.narani@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 at 17:49, Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> Currently the error return value in variable ret is not being initialized
> and so a successful return path is returning a garbage value. Since ret
> is not being used the simple fix is just return 0 on a successful return.
>
> Addresses-Coverity: ("Uninitialized scalar variable")
> Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Thanks for the patch, but this time I have already applied [1] an
earlier fix for it.

Kind regards
Uffe

[...]

[1] https://patchwork.kernel.org/patch/11493633/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
