Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB531F10B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fj/6MFgGhUyyWuxYYcQJ7hrHg7smBQ/R9NWQz6Gt4yI=; b=b8MVlDCT46MzXJ
	P8tIVtLybSsw8w4WaBOtNUHEGh/dyLYMMUuZmsFeAMpovkI8eukChw3mrmRVYkWn12ZBJ45MtfCtS
	oard8a95DqtJjnrpjv4QD7N2tfjlms4ijs8GZdBekfyIDqBYLTvawLETskV6D68CitQOaI7IPQE3D
	079bKrOtwkbqLCETVxlRr7xnASV5pFOLPOvlLiQ4fblhdiIHJ1r5WmEE+sDyjYBq/SEYxU0UNQ97+
	ApDhVmwfeDkZFOQlwCXeQVaB4Uk3c532qjnZFh83x/tHwXo7GslHYt1BJFIpsm9BhcPidOKhufh8t
	Jm4+SBAKlOM0akWZp4qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsTw-0001sH-Nu; Wed, 15 May 2019 11:54:00 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsTp-0001rq-NZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:53:55 +0000
Received: by mail-vk1-xa43.google.com with SMTP id l199so673956vke.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 04:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XqTiQWMIUKTMvV3HGe2FXr2QXLkNPTKOj2lPv0DODS0=;
 b=L44WaYKFencKFL0aLRS4NaNaiepcTeSneyqE/eagATEjv28G/XY8rdrsINJYIQTZ92
 +PAtHPEVh8jR6qiTWKFFfSP1YkX7lU1GpVic60govDCk0GD9r4cJ91O5J6R1ASoGkJiU
 pwD0pXq8TRFRlQS5+wFTsIeGJMUFygr0Z/efTjq8sjfpv/HlMMDxuYSkqsFMm5CRpwm1
 HLqUJbTGo7MXb67aLZ0NYqUVwWM/iGnfiWnM954ZKFJk9wjWdFEtfhfXNzRPB2YT4cX3
 77AwPyaxeHAs+IgiexzVRguxuEPOP+ojlb2p4XdTHLUFutHRjAJsb04tpSMsrNmvvuQP
 EpxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XqTiQWMIUKTMvV3HGe2FXr2QXLkNPTKOj2lPv0DODS0=;
 b=L6eEU2RtUearW/W0+WVfvz0MzfXF2uxuxWuyN2uFrM40ngyAw9r2mP8E4yV7rjMq59
 HRxJokmH8t2AeZsnADHEKABMx8W/RyyqTpT2ctDG0OKapgkjsOOLRCMwoRuecsrukt4B
 k1XBGKYJ8bHrltfgstx+RtmbX0BNFskGDgzQorhHQNhuhG2FqRjLi/z2PzI0KKdKI+7W
 f3g8oAWn5KfplF5ksyAdv3K5cJWmqYikiAUlb7CQodWQM69bw0wMXD4dpcyQwahWlmNu
 sihFmlqT1rFn3AJubw1fYWi1B+c1LgwnbrDjxtPkmiQfzXuqipwOy3yytvYjOZ8H6MZ9
 vytA==
X-Gm-Message-State: APjAAAWgbPTJpgjvTiTo5FgU+kDO/JJZZf8g1US90dMBpxOcRkFr8MRB
 bUrasJuiT3e+n8wnNMYGii0xYzOXYoCtb9CufKjvcw==
X-Google-Smtp-Source: APXvYqxLLXp4CbKZ5K2cHxrvSLCedDsciD24l4vc3t7NCOi6h5PckPFbTpLuj6YsLGx3RyREW/4BoB33n9It563S1oQ=
X-Received: by 2002:a1f:6e4d:: with SMTP id j74mr888394vkc.36.1557921232169;
 Wed, 15 May 2019 04:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190509172427.17835-1-scott.branden@broadcom.com>
In-Reply-To: <20190509172427.17835-1-scott.branden@broadcom.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 May 2019 13:53:16 +0200
Message-ID: <CAPDyKFrmTEkknnmU22xuKaoG1=SbU2MfQANPmtV0wcF1xKaguA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] mmc: sdhci-iproc: fixes for HS50 data hold time
To: Scott Branden <scott.branden@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_045353_782846_7D7D54F6 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 9 May 2019 at 19:24, Scott Branden <scott.branden@broadcom.com> wrote:
>
> This patch series fixes data hold timing issues for various sdhci-iproc
> ip blocks that do not meet the HS50 data hold time.  NO_HISPD bit is set
> in quirks.
>
> Changes from v2:
>  - Added info to commit message as to stable tag selection decision
>    as per Adrian Hunter
>
> Changes from v1:
>  - Change fixes tag to Cc: stable@vger.kernel.org to specify version
>    to backport to
>
> Trac Hoang (2):
>   mmc: sdhci-iproc: cygnus: Set NO_HISPD bit to fix HS50 data hold time
>     problem
>   mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data hold time problem
>
>  drivers/mmc/host/sdhci-iproc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> --
> 2.17.1
>

Applied for fixes, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
