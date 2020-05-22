Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DF31DF182
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdbkqmjwkbziBjX+HIbZqtaiYkizU8b1ZaYE58tIfPw=; b=CXfD7wjmsctgSD
	P3CN5mj4wYyTV3eXnUzjcPgqef4HqdFUZESUZm4nsPAB7MUk9EZCkQp14stxTwnPpjBFG8vaqCuaU
	TOIb/xsR5T3LIiEvi/b2OW811KCrqlNCzYdrocVV3Tcy5hibA+aJE9YqPlwaYG4QY3qseuSevXXbu
	exndlFBJNesSgDmfgNg+g9PdG/uiWwh9ebHGXB+txblpuU+vGGWQrQ3jI19vK7ngsWYAPbIat2TJu
	LJSghhjRBCEryC6L6eZPg4381FDDKM3zqOzJPmLzqrP1FriBfS/dt2jwtO2wdgVYQ9+DSVXoTU+EG
	CNWcoZH/ka1hVHVkXrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFdT-0007SE-SD; Fri, 22 May 2020 21:55:23 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcFd4-0007QH-WA
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:55:00 +0000
Received: by mail-io1-f67.google.com with SMTP id h10so13001128iob.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:54:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n091YDxaErv8oWkQMHbQBobP632/VWNstnpimxg6/X8=;
 b=dgr1iTjy3WEcK6e2E3bT8mqLg6PmrMM6ycFPZyoqYTJlv9urDS0pj6CZHCzO7nsAq+
 c3QYxlpgZaePoANPNIYmC+6ZnsPJX51VjMgFMFrW9ClcM/Gda2SDa3snbigNHcx/grpO
 WtJIjAitY2bedY3OfcTip7EzXXwOiA+OJC6z5BMDzU3xWixc7JR6UYe/7TZG45OFSAHB
 Szi/0msoBUDUNDwlw6898EpXwH/UAwwtDgcq+WlTChG8qsWHQ/zmkj5x2upLyKnuD4Wc
 p5kkbLbTH9UVWVu9w1Zn2NpIqSYcV6Hta8Wl73jrzLTZq+KJujPF2D23/4ezqGFEBN39
 aBCQ==
X-Gm-Message-State: AOAM532LgYS0KRoTUlcKOQDVYCTT9PkhiQ/UTq6Px5xngkgep6tHjzWQ
 tWg+TlYDhL4NxGQFcAWl1R3Ou68kqrA=
X-Google-Smtp-Source: ABdhPJzaCsz4fNJ+qeJun9KtfuafxU/AeD5hkw18DlZjA86IRl35ToFdjz1/akQLj56LIqAb7CsikQ==
X-Received: by 2002:a02:394d:: with SMTP id w13mr10308922jae.58.1590184496831; 
 Fri, 22 May 2020 14:54:56 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id r25sm4235500ioj.51.2020.05.22.14.54.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 14:54:56 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id w18so12157800ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:54:56 -0700 (PDT)
X-Received: by 2002:a92:5cc1:: with SMTP id d62mr14815529ilg.95.1590184496349; 
 Fri, 22 May 2020 14:54:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200508140846.47608-1-yuehaibing@huawei.com>
In-Reply-To: <20200508140846.47608-1-yuehaibing@huawei.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 22 May 2020 16:54:33 -0500
X-Gmail-Original-Message-ID: <CADRPPNS2Rp=_NEH8Kst=jG7Dj+z=rm=T7Nbs5_PO8nr4w4w5EQ@mail.gmail.com>
Message-ID: <CADRPPNS2Rp=_NEH8Kst=jG7Dj+z=rm=T7Nbs5_PO8nr4w4w5EQ@mail.gmail.com>
Subject: Re: [PATCH -next] soc: fsl: qbman: Remove unused inline function
 qm_eqcr_get_ci_stashing
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_145459_036368_638A475B 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Roy Pledge <roy.pledge@nxp.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 9:11 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> There's no callers in-tree anymore.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied for next.  Thanks.

Regards,
Leo
> ---
>  drivers/soc/fsl/qbman/qman.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/soc/fsl/qbman/qman.c b/drivers/soc/fsl/qbman/qman.c
> index 1e164e03410a..9888a7061873 100644
> --- a/drivers/soc/fsl/qbman/qman.c
> +++ b/drivers/soc/fsl/qbman/qman.c
> @@ -449,11 +449,6 @@ static inline int qm_eqcr_init(struct qm_portal *portal,
>         return 0;
>  }
>
> -static inline unsigned int qm_eqcr_get_ci_stashing(struct qm_portal *portal)
> -{
> -       return (qm_in(portal, QM_REG_CFG) >> 28) & 0x7;
> -}
> -
>  static inline void qm_eqcr_finish(struct qm_portal *portal)
>  {
>         struct qm_eqcr *eqcr = &portal->eqcr;
> --
> 2.17.1
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
