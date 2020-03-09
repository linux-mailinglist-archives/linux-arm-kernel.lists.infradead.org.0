Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C478917EC26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 23:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIOUIeOqRAwSTKaVgOwBUxaB97uYWaCI1snyeMUAgAQ=; b=k96rPtqwfx59pO
	hxWTkDS12pR5fZ0cCkyFKDYfDq7c6Hnwy2p2tnMKRo/KXdPx0Jy3i2LXwUv8oCKgQIeClFmZj6NUi
	tHK/BhVdQUwTm4zKzuZtNP2VhpdXRNK07TT2vFtNgJhgefVmRhMJqLvd4HNU33DWzYuXlO/fY6OJm
	mtKswfozYRY8BLTxQHKWyVuXmXM0F05sJDVJeT1dVs6Lx2sRyyXPxot2kIWD9zR3jSpbsHdVAakSg
	6/Runj9nMt3qvSU7661rj96ZfJL3TbW4R1S2TG9+KMHKTYM28M0g88Fk4ZwVVfDcljHNgq6X+dtVn
	pRey69A7KcG987yy24CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBQyU-0002Tb-GJ; Mon, 09 Mar 2020 22:34:14 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBQyN-0002LY-6t
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 22:34:08 +0000
Received: by mail-oi1-f193.google.com with SMTP id q81so11916986oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 15:34:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pLnP9gGfDbqjzLs0w/R1F12ZQEp2IKQhsRrBYCzbdX4=;
 b=mnnUia6BI4c1qYVVbpVXqDnOC8d9SC2bV6Oo8aSucvbm0KZKaiWvBt1/Af8zMfeFN2
 JvYmtM3mNzKtKnaZq+qdb+yCTE1yXYNOX5IWHJPowKooYD4RKlvBptTTfyIIwriY/gfI
 ZPzCA8LQujgUYGv6o3iLMXO+AfUAQxPBP9V5S6bsguLj91TEf7jKxkbHhpBuMnuW6KxQ
 HUOdUzCanDTqj/Ujz2jghypXx46+JWpRD5LOEVrrDs6rtGd1kVPpTryH7FhULTxMPKv5
 yx6r2z9ayR66qfdwEia2HojqYPJhStFLZYz404eWI+QwtTAX6jy6tj9YgzD7JRRxnYQR
 ltjg==
X-Gm-Message-State: ANhLgQ1pjJ7MMiSvcbFQqi07OnuQXARQKZOddbeblsm8oD3V74OL1NCg
 UxkVbSB8WoseXpcVc8Xp5RMQGrB4
X-Google-Smtp-Source: ADFU+vuFHnwhRweBQSWPXoUE1wKW7lc1AWmrHNDfJwBODhNOK7vaEmhjfoyaXlfU2kdFZKsuLRBNjw==
X-Received: by 2002:aca:cd48:: with SMTP id d69mr482548oig.16.1583793241090;
 Mon, 09 Mar 2020 15:34:01 -0700 (PDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com.
 [209.85.210.47])
 by smtp.gmail.com with ESMTPSA id 46sm864611oth.28.2020.03.09.15.34.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Mar 2020 15:34:00 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id s15so3062759otq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 15:34:00 -0700 (PDT)
X-Received: by 2002:a05:6830:104a:: with SMTP id
 b10mr14900892otp.63.1583793240222; 
 Mon, 09 Mar 2020 15:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200221083637.13392-1-yuehaibing@huawei.com>
In-Reply-To: <20200221083637.13392-1-yuehaibing@huawei.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 9 Mar 2020 17:33:49 -0500
X-Gmail-Original-Message-ID: <CADRPPNTb2_-0QpD=iuP-W-Tk6n-a3rHKp-M38xw5kf+BXXrbPg@mail.gmail.com>
Message-ID: <CADRPPNTb2_-0QpD=iuP-W-Tk6n-a3rHKp-M38xw5kf+BXXrbPg@mail.gmail.com>
Subject: Re: [PATCH -next] soc: fsl: dpio: remove set but not used variable
 'addr_cena'
To: YueHaibing <yuehaibing@huawei.com>, Youri Querry <youri.querry_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_153407_251644_B57F4046 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Roy Pledge <Roy.Pledge@nxp.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 2:38 AM YueHaibing <yuehaibing@huawei.com> wrote:
>
> commit 3b2abda7d28c ("soc: fsl: dpio: Replace QMAN array
> mode with ring mode enqueue") introduced this, but not
> used, so remove it.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/soc/fsl/dpio/qbman-portal.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
> index 740ee0d..350de56 100644
> --- a/drivers/soc/fsl/dpio/qbman-portal.c
> +++ b/drivers/soc/fsl/dpio/qbman-portal.c
> @@ -658,7 +658,6 @@ int qbman_swp_enqueue_multiple_direct(struct qbman_swp *s,
>         const uint32_t *cl = (uint32_t *)d;
>         uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
>         int i, num_enqueued = 0;
> -       uint64_t addr_cena;
>
>         spin_lock(&s->access_spinlock);
>         half_mask = (s->eqcr.pi_ci_mask>>1);
> @@ -711,7 +710,6 @@ int qbman_swp_enqueue_multiple_direct(struct qbman_swp *s,
>
>         /* Flush all the cacheline without load/store in between */
>         eqcr_pi = s->eqcr.pi;
> -       addr_cena = (size_t)s->addr_cena;
>         for (i = 0; i < num_enqueued; i++)
>                 eqcr_pi++;
>         s->eqcr.pi = eqcr_pi & full_mask;
> @@ -822,7 +820,6 @@ int qbman_swp_enqueue_multiple_desc_direct(struct qbman_swp *s,
>         const uint32_t *cl;
>         uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
>         int i, num_enqueued = 0;
> -       uint64_t addr_cena;
>
>         half_mask = (s->eqcr.pi_ci_mask>>1);
>         full_mask = s->eqcr.pi_ci_mask;
> @@ -866,7 +863,6 @@ int qbman_swp_enqueue_multiple_desc_direct(struct qbman_swp *s,
>
>         /* Flush all the cacheline without load/store in between */
>         eqcr_pi = s->eqcr.pi;
> -       addr_cena = (uint64_t)s->addr_cena;

Hi Youri,

Looks like this problem exposed another issue that you removed the
cacheline related code in the upstream version.  Then the comment /*
Flush all the cacheline without load/store in between */ is no longer
true now, and probably the whole block can be replaced with a single
line to increase s->eqcr.pi?   The same for the block above.  Can you
provide a better fix for this issue?

Regards,
Leo

>         for (i = 0; i < num_enqueued; i++)
>                 eqcr_pi++;
>         s->eqcr.pi = eqcr_pi & full_mask;
> --
> 2.7.4
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
