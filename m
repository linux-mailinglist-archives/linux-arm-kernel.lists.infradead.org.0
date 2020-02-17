Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C45161641
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DoShWSDvYykZNTjqOMxi5/enaiDsr7yYhLTWdB8l6b4=; b=kYTmPIqcPy6So4
	k95hve/kyz0/VUuoNOSwW18JSrVB7+Qmsu58RgTtjyoSRsaB6N5kPar1HYJkaF0pPEiBAYhOCRwYo
	7mtOPmSUSz86MCVni6afDCW0RZaqWQZJWFh+5wwKF894DdrRxK6fmsmt8QNery1a16P7iKOJ9C/b5
	OC52fM2e3lHLhCmDI4Ng6alLQNohT0HyKiKF1MyVUqBo0SvWE5GXJMtqAergEmTsV67j2R3S3kcRw
	GypVNLAqH18ZbxMPh2mdNC8RrlbGlnXlftd4sNrQFcKOSGHRA7hMJBzWO7+mCPatAuA0by3lDspEB
	1LLd/l0m68NforbcoGDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iPd-0006bY-H0; Mon, 17 Feb 2020 15:34:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iPM-0006b0-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:34:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id q8so9066913pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 07:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OnGntDBcyiKhIaqHVrJNbrm40qr8SM9LXEMNXQWW6ww=;
 b=puy2ySPzIMygltvNUbJE8vGf3zYfJWDb5d1gMlzL/Xhr1hVyX/AOPbH4tJy8m6CBrZ
 bOMYxrMlSPRkq7d4m4xS0UUQhkX6khSRHbB2Auv4TX6O6zaa43iDz52AQXnw0tH5hlHh
 Ei6p1C77fcO67RzPnKOeaUXQyp33kNaePe6WzzVao7Dm2hrk3n1wd0Xd00NA1+DMHUPd
 j7hh8bOQT+d5Fh2SjytG2tJYdalDhNkU5lVx8kx4t8GPbjbLaCJeDwkC/tZsnbsZbUPH
 jjGAMArjlXbqwcCByr1ZBWWe0X866EBAgE+EPaYGxCohozditLw4A44lg+/KL4wEdW5c
 4dhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OnGntDBcyiKhIaqHVrJNbrm40qr8SM9LXEMNXQWW6ww=;
 b=Um65LjhD9Odiv5Z3vVOIf8SNciyCGtOtNOdNJLncyYLxa+VkLhUQWq1QiX85YjOiZ3
 qdUmvuwJZ2A65cCuD7rgoKeex3rXCZUv0yYSdisfk6eeubqxT5N1J4kpb4LyJGX1tyqc
 k25AhPf5HOmKQSR6iFyUtJM0l6iExbMleLLskd75pmTzYctvEgIOcyPT4MsJAGxAPvZp
 tniAz46LXpaTbNKyFtU7olmmKM5c/fXP/5Z59VPdQDDDaaWoZQUrZnic+h6tBNStJSSh
 43CDiQYJ7WZvbXVMbgm+o+hb6G9ta/F4TF8+bWpguSyKyfVuU2RLZJZE3yXmyKd2tdLa
 hdHg==
X-Gm-Message-State: APjAAAXRF+hsFmtToQ75HqnK6tWMnGprVLOvXmgKOd5lVF1hhRccw3wt
 n2p2hvNYCioXMQlLaqjwpno=
X-Google-Smtp-Source: APXvYqz2CFg3GxIP/H+IgdKCxm1s0BXfvZ43HoHHoeIaCPsqWl8JRxmzOBbjGUiwrh89Li2i5GusqA==
X-Received: by 2002:a63:fc0c:: with SMTP id j12mr18071653pgi.378.1581953643383; 
 Mon, 17 Feb 2020 07:34:03 -0800 (PST)
Received: from gmail.com ([64.251.70.126])
 by smtp.gmail.com with ESMTPSA id z16sm820852pff.125.2020.02.17.07.34.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 07:34:02 -0800 (PST)
Date: Mon, 17 Feb 2020 07:34:00 -0800
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 0/5] arm64: add the time namespace support
Message-ID: <20200217153400.GA26105@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204175913.74901-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_073404_453043_8FF3A728 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vincenzo, could you take a look this patchset?

On Tue, Feb 04, 2020 at 09:59:08AM -0800, Andrei Vagin wrote:
> Allocate the time namespace page among VVAR pages and add the logic
> to handle faults on VVAR properly.
> 
> If a task belongs to a time namespace then the VVAR page which contains
> the system wide VDSO data is replaced with a namespace specific page
> which has the same layout as the VVAR page. That page has vdso_data->seq
> set to 1 to enforce the slow path and vdso_data->clock_mode set to
> VCLOCK_TIMENS to enforce the time namespace handling path.
> 
> The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> update of the VDSO data is in progress, is not really affecting regular
> tasks which are not part of a time namespace as the task is spin waiting
> for the update to finish and vdso_data->seq to become even again.
> 
> If a time namespace task hits that code path, it invokes the corresponding
> time getter function which retrieves the real VVAR page, reads host time
> and then adds the offset for the requested clock which is stored in the
> special VVAR page.
> 
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Dmitry Safonov <dima@arista.com>
> 
> Andrei Vagin (5):
>   arm64/vdso: use the fault callback to map vvar pages
>   arm64/vdso: Zap vvar pages when switching to a time namespace
>   arm64/vdso: Add time napespace page
>   arm64/vdso: Handle faults on timens page
>   arm64/vdso: Restrict splitting VVAR VMA
> 
>  arch/arm64/Kconfig                            |   1 +
>  .../include/asm/vdso/compat_gettimeofday.h    |  11 ++
>  arch/arm64/include/asm/vdso/gettimeofday.h    |   8 ++
>  arch/arm64/kernel/vdso.c                      | 134 ++++++++++++++++--
>  arch/arm64/kernel/vdso/vdso.lds.S             |   3 +-
>  arch/arm64/kernel/vdso32/vdso.lds.S           |   3 +-
>  include/vdso/datapage.h                       |   1 +
>  7 files changed, 147 insertions(+), 14 deletions(-)
> 
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
