Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E130FD3CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 05:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFp9qTkECO9/PZTrNwpeiimlxVm+hsI5yqMVc97UcNU=; b=otzz1gYBOjv0aw
	EJyNK/9bWp7HMbxVFRPgKo7kM4EXBXS4XgdUKpCaMJOSNbjo5LQbVSgEGgqNvcvcjNtiw2/72EpQp
	oU8PNC+yawNEzuLEWxqfM4ChyXRay135ksmUUHCnKhYRmzeL9GINeeAjSYRT6UubK8uIOe5Eu4fDC
	26aXGR6y7SbRC47/DfZJKdXuEIyWGlIpDjCV87AFqhiYBiH23cNHwRh1XLjmyuBBMdVIHMdv6sVQG
	K83I47UxYl5v4Q1hHwdL+frb/Y5PcvlRkjBJe889lL+OrKDO3soHBEpaFRUtGvYHL0ZzXSv9q1KvF
	8vz5W/yXql/ZBLGj70Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVTZe-0006IB-QG; Fri, 15 Nov 2019 04:51:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVTZT-0006HE-Kx
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 04:51:00 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2864D20732
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573793459;
 bh=Zf6sTIMli76oYQWsxTvqKPeMc72IZB/Z2B0hBOL0C+w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=U6HSO2YxLNSLY6xFeYZ9L9kZOnK1zLpDkmnckCZ40n7Wa2tNA8RrHy8A/3JbXDRMO
 0c59Tcos/mF4g2JiaTaJAqm7VWCRDVjlegnSnsoXJdJUDHp9MEEUWO4o2/BDcp1Zog
 VLk+oFYf+bN8ZPmHI3WhZycAGPyJWHg/ObSj/sa8=
Received: by mail-qk1-f179.google.com with SMTP id m16so7116763qki.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 20:50:59 -0800 (PST)
X-Gm-Message-State: APjAAAW7Po3022VpIkJFfjCpp5IlN4TVOuRd7LKjv5XyXmBKF3we0S0B
 f2hg51RyVlnelpfPYPFjAiBZu/ensarRvmV0TG8=
X-Google-Smtp-Source: APXvYqzfQ+D+sIW1zancKDC1U3nM1foEwdOLpsyTt+w7ZHUDx3VbOqfLeYpK5/1wDeVyzBxq3G2x5b7W0mA8w1wSKUE=
X-Received: by 2002:a37:9d44:: with SMTP id g65mr10669230qke.302.1573793458206; 
 Thu, 14 Nov 2019 20:50:58 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-8-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-8-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Date: Thu, 14 Nov 2019 22:50:21 -0600
X-Gmail-Original-Message-ID: <CAOZdJXXHK9U_Y7_VgVmuOFKDAh4OqBJ7hZx58hisZZ6Cz6xE2w@mail.gmail.com>
Message-ID: <CAOZdJXXHK9U_Y7_VgVmuOFKDAh4OqBJ7hZx58hisZZ6Cz6xE2w@mail.gmail.com>
Subject: Re: [PATCH v4 07/47] soc: fsl: qe: qe.c: guard use of
 pvr_version_is() with CONFIG_PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_205059_707520_443167DB 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:04 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> +static bool qe_general4_errata(void)
> +{
> +#ifdef CONFIG_PPC32
> +       return pvr_version_is(PVR_VER_836x) || pvr_version_is(PVR_VER_832x);
> +#endif
> +       return false;
> +}
> +
>  /* Program the BRG to the given sampling rate and multiplier
>   *
>   * @brg: the BRG, QE_BRG1 - QE_BRG16
> @@ -223,7 +231,7 @@ int qe_setbrg(enum qe_clock brg, unsigned int rate, unsigned int multiplier)
>         /* Errata QE_General4, which affects some MPC832x and MPC836x SOCs, says
>            that the BRG divisor must be even if you're not using divide-by-16
>            mode. */

Can you also move this comment (and fix the comment formatting so that
it's a proper function comment) to qe_general4_errata()?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
