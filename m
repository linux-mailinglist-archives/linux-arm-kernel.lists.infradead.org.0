Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3525511A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OpFsgbIgeEAxDk1WH3YWOYdJ57ubm9TY2qFIRVadSo=; b=DOVak4fR8sOXug
	0qGqlnK3yUGcljttWadLI6qJNQGpDZzOsNxhMiBflt3176T0Qh0fZV32eJaXFIHqumtaSqfCkyroq
	B4uwp2fCX2U72+oYdCBnm5tTjufnKi8SEJd4GJVdjvPomUtP/6DnWASmMRJWMPXZGPqrXBaFBpe3x
	TPPlS1PY1tSmx0UYuGv03WDOcLak0u+Rpl8A9ebnTQKW4NS63+WR+5hRlxAzYN5ivInuu6+AF0Yzr
	dYlUENh0SrTLDsTJoyxp/BxtHDmVYEwUDrfP+useDNlo2FU0raGy5cmWQwukVcSKrZfL3QNYlU2U0
	Yp1WyA9M1htElJE1FvNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfm7J-0000Q8-9m; Tue, 25 Jun 2019 14:08:13 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfm76-0000Oz-IT
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:08:02 +0000
Received: by mail-ed1-x541.google.com with SMTP id k8so27300409edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=CAtg3PLJ+XKSV8dAF2QLAFWrkpUis1quRM8X3SddO/c=;
 b=DlsNVgfRWTP8NpGGrX9t3Nbz1zo7ltZhwtKOk/Es+ZdbHwht+lr3TCIe70hcYOlrBR
 ABPEEparLAqoeRRvZ5Pzq1cEVMTiKJ3tiqSO4M7ZzKp6aqKBOmxw686MYovwaEFXhy8l
 NK+f1Jf6pSuG3cXFg7wdY+FYcdimxOYB8sVXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=CAtg3PLJ+XKSV8dAF2QLAFWrkpUis1quRM8X3SddO/c=;
 b=IGHE8e2JIFXzL8BLRAug2AT93A5CjrLOoMPr+aI+xxgVXkpS8XK2Vugsae2KG3swrB
 InPpmtH9qACRKJjJEeFzviQkzr4YYyGvHFbJuN4YNqvh0N4vKRcjKgxQ7oQSDVYqt2+U
 1dV8AWgtIAiz4L3vTJPZJQDa3v892IZ04kKyMJZEKUV0CGfyS3MlZ4ZsEH983L565lV1
 I7v4HDjhMcD/CNRAv+S/f7PhCsEHSM0aPDzRMKGz8NBSdQ6SLOP1l8et0QInbrQZF6tT
 YDZw3SmjX3zYiGBTDQ69fl/Om/90aMqa4b3O0mtAMtVEPAEFu50yM0AGQOwcfaChk+Nm
 r/XA==
X-Gm-Message-State: APjAAAW7+PLrMZbCtBHLAtmYKt09Xm/5kT3cD5KteR0jvyrW9viw4CLT
 rKiC6nySraVE+5SU1ZGiP0rtoQ==
X-Google-Smtp-Source: APXvYqwnUNvO8RCgD+CoeE0AtlUeuwzv5wVl2MiDkEcmAY2cVmivLFNLtUKUMk2lZa5wxlyqXHk8gw==
X-Received: by 2002:a50:92e1:: with SMTP id l30mr77999218eda.141.1561471678547; 
 Tue, 25 Jun 2019 07:07:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id w17sm4594091edi.15.2019.06.25.07.07.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 07:07:57 -0700 (PDT)
Date: Tue, 25 Jun 2019 16:07:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Emil Velikov <emil.velikov@collabora.com>
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
Message-ID: <20190625140755.GT12905@phenom.ffwll.local>
Mail-Followup-To: Emil Velikov <emil.velikov@collabora.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, dri-devel@lists.freedesktop.org,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
References: <cover.1561452052.git.andrzej.p@collabora.com>
 <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
 <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
 <20190625133639.GA16031@arch-x1c3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625133639.GA16031@arch-x1c3>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_070800_665014_434A3978 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 02:36:39PM +0100, Emil Velikov wrote:
> On 2019/06/25, Andrzej Pietrasiewicz wrote:
> > Hi Russell,
> > =

> > W dniu 25.06.2019 o=A012:03, Russell King - ARM Linux admin pisze:
> > > On Tue, Jun 25, 2019 at 11:46:34AM +0200, Andrzej Pietrasiewicz wrote:
> > > > It is difficult for a user to know which of the i2c adapters is for=
 which
> > > > drm connector. This series addresses this problem.
> > > > =

> > > > The idea is to have a symbolic link in connector's sysfs directory,=
 e.g.:
> > > > =

> > > > ls -l /sys/class/drm/card0-HDMI-A-1/i2c-2
> > > > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1=
/i2c-2 \
> > > > 	-> ../../../../soc/13880000.i2c/i2c-2
> > > =

> > > Don't you want the symlink name to be "i2c" or something fixed, rather
> > > than the name of the i2c adapter?  Otherwise, you seem to be encumber=
ing
> > > userspace with searching the directory to try and find the symlink.
> > > =

> > =

> > Thank you for your comment. So you imagine something on the lines of:
> > =

> > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc=
 \
> >  	-> ../../../../soc/13880000.i2c/i2c-2
> > =

> > ?
> > =

> Fwiw my Intel machine lists a number of i2c devices:
> /sys/class/drm/card0-DP-1/i2c-6
> /sys/class/drm/card0-DP-2/i2c-7
> /sys/class/drm/card0-eDP-1/i2c-5
> =

> Note: I haven't looked _if_ they relate to ones you're proposing here.
> =

> One thing worth mentioning is, the ones I've seen are not symlinks to
> another sysfs entries. And there aren't any i2c nodes in /dev ...
> =

> Just a random food for thought :-)

Those are the i2c-over-dp-aux controllers. I think we want to list these
too.

Btw to make this more useful maybe some default implementations for
get_modes which automatically dtrt, as a helper? Probably could use that
to squash quite a bit of boilerplate.

Otherwise I like this. Biggest problem I'm seeing here is rolling this out
everywhere, this is a lot of work. And without widespread adoptions it's
not terribly useful for userspace.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
