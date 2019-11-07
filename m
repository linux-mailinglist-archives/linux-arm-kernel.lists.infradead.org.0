Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCA1F30D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtIltJbxXT/on+mhSydxZTNER/2GKvvw6ho5Lon74sY=; b=mGzeil2Rz8STdY
	8rAUaBNkY9JKOAcWw8yoe+9zVL8f5QM7/q7S3WXhZqlUDlslfsQZ0k2dwhKqghfEMfp34qJGl4+ch
	vyRnNCRRRLvzJov5Wb8sBKBmFF0Ytd9rGq3KRiuFmi8krUrULwngCqVav3dIK3QHBmtP6BnzF8Fvk
	IyyHUVxDZpvzQkSciCcmYQEMsnMqY1N7HjCdS8HOdkOQ83WOSyYMhdyVuWONYO2k1cB2qCFfmxx4p
	Nyp3FjGc7Mt/dyEsvU4PMfBh8GYQFEcrLU04RxDdyhkd0kEUiekJoeEUqN8wgWdJkvw3q3Spzy0Wn
	fDDsc0InubwRDIWD8++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSiQZ-0004d6-Hl; Thu, 07 Nov 2019 14:06:23 +0000
Received: from mail-vk1-xa32.google.com ([2607:f8b0:4864:20::a32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiQS-0004ck-5v
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:06:17 +0000
Received: by mail-vk1-xa32.google.com with SMTP id t184so609175vka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hfccBQDXdKkofhhfdt33ltAt0xyMjhjwgr+Vw2ehaGU=;
 b=Mlz5zdqk9lqu+fG5wQH6AtKKww0+S9o3Sjn/moVy8ybUyCwUpcA9cpwcBRGF1fl96q
 tWGYNsQEF9w0MPmlMtillsBwlO7fmhmprZPMCdx6tr+lf+httR44lwucHs1mSMIdV9sQ
 vuQ+UWXtgrxZunQJr3RucRO8ScYy1w76Ufwx/yD8m+fjpOPDuwfGBgiTrf03Mk53LWcr
 lqLHPSGDmArpGJPAwKUlpntO5p0590geNTchseiYXyLXCRhtwmWbfJ97mp+CWMp6tNvv
 dfaN2KnPilkNIhp6BPKZOMuwurN14D8dmS3lOhJxzuSMsUuR8wekEHzvoHigYLGi0abX
 lIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hfccBQDXdKkofhhfdt33ltAt0xyMjhjwgr+Vw2ehaGU=;
 b=ay2AagOtwKchSPYWPyQkvwil4uJzpF7kvorPy1WAu0A5s7RcYN5lb9xJM/qu8vQUHy
 dMVXj5lxCgi5aUUJaU9VzZL112Agm6rHA/R0jRZ0C9ClzBkD8xE2Rxdd/p0mT/h0wjdr
 09GLEw+lMSsRGGgqnVigr+Of5Mbx1ps5FjtzUW5GzFOpwKtxl+QSI3xuxjBq8mSgMZlW
 mlaKBjfmJyAM8BG14wa2jAPDQ8R2UWkkk2xv0u40R7GDZsaXDSOMo6bjrEhJuzifoqiV
 tBtaBscjJTh+D/PUSFv/6VolaJAm0Q/pFmp00wrplyZNCeX7ba6RUn3I3+v1PnZ9AH6B
 eWgg==
X-Gm-Message-State: APjAAAXrPzIOpmsD1NSPYo7Rb43LVRKqk7kHtQ394W91e2xn5P4v6e0g
 aWDeLIxHgtir+IyTq44qng9mUAGFKwj5GIrsPaUxPw==
X-Google-Smtp-Source: APXvYqy3/Q2k+TcLkmUJSckC+YwKpjDcsNUVnGIkRuGNn9Jn7imd7+88YzAMU0JnNqJhJzwEJdXaNf15e1nP0SrN1/Q=
X-Received: by 2002:a1f:7387:: with SMTP id o129mr2941513vkc.73.1573135574411; 
 Thu, 07 Nov 2019 06:06:14 -0800 (PST)
MIME-Version: 1.0
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
In-Reply-To: <1573068840-13098-2-git-send-email-agross@kernel.org>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 7 Nov 2019 19:36:03 +0530
Message-ID: <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
To: Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_060616_245704_422939EA 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a32 listed in]
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(Removing arm-soc)

Hi Andy,

On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
>
> Arnd, Olof, and Kevin,
>
> I have one slight faux paux in this pull request.  A drivers: soc change got
> into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> without messing up a lot of people who depend on the SHAs not changing.  So I'm
> sorry for this inclusion.  I'll scrub this better next time.
>
> Andy

> ----------------------------------------------------------------
> Amit Kucheria (5):
>       arm64: dts: qcs404: thermal: Add interrupt support
>       arm64: dts: msm8998: thermal: Add interrupt support
>       arm64: dts: msm8996: thermal: Add interrupt support
>       arm64: dts: sdm845: thermal: Add interrupt support
>       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors

One of my patches to add interrupt support to msm8916 tsens is missing
here. Specifically this one:
https://patchwork.kernel.org/patch/11201853/

Will there be a second PR this cycle?

Regards,
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
