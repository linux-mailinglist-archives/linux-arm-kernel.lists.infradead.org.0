Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00539C9C11
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yj/wJUipQa9wYzajNxxtpJ6xMQ9zrllHUsxdMewBucQ=; b=rbQ/NMNvekjVgA
	OZurJNFuppvtSzT+W/kDU10yAQCj/rLJ4xslyzrHKXKQzo0YT2//YhHiUdu+IDBnV52cI5298DwS5
	48Adbpeg5kOZI0WtUCQEZbbi4E4Xw+W8NS6bGL5KfJKd+j+URjIjDTKccZo91DB4954Nd55CPtTGY
	n8T0UlAvwUwZ4qafKKYA43j9UzNd2WZsTZcHcdkd4ZYimB4f1FjmP9/Tz0lVFrvaf7raT2/C3ZGNh
	26Y5Vq/5noy7ckAP5NQ5UzDyGsdWN8mQTMsfpfcSvOs9mqr2dbRfcQX/rxQzv83CebgpNpW8iB506
	IVwk8jXp7vuf/H71q5UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFyDV-0004OO-TE; Thu, 03 Oct 2019 10:20:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFyDF-0004No-1U
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:19:58 +0000
Received: by mail-lj1-x241.google.com with SMTP id q64so2030705ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 03:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mx2mVdBYrakYmKxbPV66SmuQcwBPBGOoE53tUIGHR+A=;
 b=BiohckBckv+eDTVkHIyBC8N7T6XQTXFT0oc1lxYcBVidzoZVAV7lN2qPws75YjQJom
 1CmWc86k3OXNMIg+KGYFkKk6WH1jJwJc3SKei1E2Yu4AzBDEcm4ZJXgtKbt6RVaUVznD
 CdfVW6NE3SjiWU+htl7iwmSSKUfC2xcuX9HoxBnoxGakn5KIslygdNV1woIbSjwhXpmv
 91FSZG18vyp7hlyJqI11V2Tq/w5eEMXw+EWwG8DfaGipdHvG4Rwibr4fPOk7D9XW71ox
 zmuEvTjefK87JRBKNAkHvnOPRBXGTu0uuHxeMbPjuuH67AfuFHpc7T0oayvOk58CB8C0
 L8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mx2mVdBYrakYmKxbPV66SmuQcwBPBGOoE53tUIGHR+A=;
 b=TCKw6sU9eoW7dSC3DSKwKEMRwYOD7PxLlK58YZIOBeVEus8Y/E/xwNYEf9Hd9baGsq
 L6MELvvnL5V/2swLhDEx9zjTTucQktOUJOa8rEtTsQg2ZLsQZXgAmQ9IIYj2IfDokd7w
 rYY1eJjmCK9fQ44bWMqgFNbhbJOwXCzaen7huAfk4uHbw0GJ7pGKUSIc1By7t/6vK5xg
 k7LIqpFPNKAsklcrjHodEj+8wmMZ7lO3pN1xpQm/paSLHOo/bP9pcRHVmmnw+9EpSWaL
 1Vm1mx+CmO7diSP4FGhd3S5dplpppZKu3v4tevQ/i7dPXhfPk0uBUqNq8p0fEKu8UISA
 Dvcg==
X-Gm-Message-State: APjAAAWlzlxyS6DqJCg8jRhEPNvHqe9KM8q3LjbpveuVq0Jz20XQDgQl
 oBDsPJ+rNLAN1nNuf86go0BOW/UHPuCGrGMBYLlwFg==
X-Google-Smtp-Source: APXvYqxtEBgA75ZlWizzadlM7ku6Sc5eWq/YvW5BJWg+JWNU8Jj6xHbXWXCZZexLY3SRjk7ikjV1/YWyZXiTaMlU0qU=
X-Received: by 2002:a2e:63da:: with SMTP id s87mr5494745lje.79.1570097994932; 
 Thu, 03 Oct 2019 03:19:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190927031551.20074-1-hui.song_1@nxp.com>
In-Reply-To: <20190927031551.20074-1-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 3 Oct 2019 12:19:42 +0200
Message-ID: <CACRpkdZh80H+G43-y0AGXJo0p=C5YADZBu3h1v2-3LvLj_Z=aQ@mail.gmail.com>
Subject: Re: [PATCH v6] gpio/mpc8xxx: change irq handler from chained to normal
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_031957_093088_D124E62A 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 5:26 AM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> More than one gpio controllers can share one interrupt, change the
> driver to request shared irq.
>
> While this will work, it will mess up userspace accounting of the number
> of interrupts per second in tools such as vmstat.  The reason is that
> for every GPIO interrupt, /proc/interrupts records the count against GIC
> interrupt 68 or 69, as well as the GPIO itself.  So, for every GPIO
> interrupt, the total number of interrupts that the system has seen
> increments by two
>
> Signed-off-by: Laurentiu Tudor <Laurentiu.Tudor@nxp.com>
> Signed-off-by: Alex Marginean <alexandru.marginean@nxp.com>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
>  Changes in v6:
>         - change request_irq to devm_request_irq and add commit message

There is some build error on the patch, can you look into it?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
