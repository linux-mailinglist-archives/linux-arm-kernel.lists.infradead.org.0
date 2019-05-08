Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E72B1748D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLcZsgcOMlIumitUZoxY6ycM9jZxPY8KtjF0KwiqUAI=; b=dPK62q+HVOGGVz
	sspYuHh3YLVhyLK2ekIoQLqX0lZ/+W5HrP1DLz8ZHK+fdvcImblTOA9mXA3dIVP3KtlmCyjjBfz4l
	bqjUmEKIwDe7OQdOO0XlD4nRZarV65HRcdmJvU/rprQ5gRDnx/+MgPus6JNEIs0aq4XzUKvFAdPIC
	hxdOkx3299T2WTsSt0rtvZdEpcr0SvistlJPBlsi4DbEXZz4pk+7QOaDIMWY8fdrWJ+13IszfbKIY
	f8wneShneozgt1G5Bq4oFRVwYljB376UOxlAYfUAzNYt1LhfafpG+bI2Uhu6lUP+YtWrrVeJoPuV0
	U7R0S/0GEIGt5Ii+j9Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIWu-0007w7-PS; Wed, 08 May 2019 09:06:24 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIWo-0007vY-2U
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 09:06:19 +0000
Received: by mail-ed1-x543.google.com with SMTP id b8so21347537edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 02:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=ZCByRjUdoltM6JQS2wK/k1Vsg/2ECYjryZKrL53UB1A=;
 b=cAzcttZx8IOcmQDqtJutN0W3TZIg84Kt+H8yqc/dtHNn73Y2pzR4uGqqCerk+xxpRK
 kCgJj/0Cr/9osHXLk0jMGb0DbsYQmdwOxkCRSgnYBTOS4elaRx1CcurT+vvHJOsLuOZf
 kJPxniGaN7IRwAIl1yJA3kUC4nDvoPbGXpO0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=ZCByRjUdoltM6JQS2wK/k1Vsg/2ECYjryZKrL53UB1A=;
 b=IChb6QZQ/42V6hxMu/j86K2qM3bSxrRtCBHlpdeGRN3J/lVzwuS18UmI9t6ktU2Odj
 3LhUWOhnnTdbprlZDLwf0YwI7ZH9CvKSIruXRie3T1qI5hOB19UGEkaBDZut/tVu6Yln
 3iV7fZfewkPPeYkNdOTFYsUBz2owP6RLXM8qaKG4J/L52WzY115aV2r0S6bvxS8v4FSB
 e2UkHZsDAX75PCIPoifaAX8qY4JlmGKeWlS3mYDu1IV9mJQk7uSSrsc8YXkQpqUx/GKA
 e7Z1QEE2JSHoOys4s/GbllnMh/pIS4kQGVJMn/BCAl5TK633GKhJXDinLyyilZTAtMS+
 Hvvw==
X-Gm-Message-State: APjAAAWvQEtUABOFKSANlKGacQLvZcfeUsFxwjaBx1e+GfpxQ9SZhEL5
 q7BydevcUs6l4zeDZs/BEgEkpw==
X-Google-Smtp-Source: APXvYqyhIyJzQJ2/WQmKoGSeee8pS6Iu8b2u59hMI6uOyjAOYUPnEY7pFFD0PgsSnAjiyZEjRhbMSQ==
X-Received: by 2002:a17:906:a48:: with SMTP id
 x8mr3642206ejf.247.1557306376650; 
 Wed, 08 May 2019 02:06:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id f44sm4982723eda.73.2019.05.08.02.06.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 02:06:15 -0700 (PDT)
Date: Wed, 8 May 2019 11:06:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH RE-RESEND 1/2] drm/panel: Add support for Armadeus ST0700
 Adapt
Message-ID: <20190508090612.GT17751@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 Fabio Estevam <festevam@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 stable <stable@vger.kernel.org>,
 =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
 <CAOMZO5B2nMsVNO6O_D+YTSjux=-DjNPGxhkEi3AQquOZVODumA@mail.gmail.com>
 <20190507161950.GA24879@ravnborg.org>
 <20190508083303.GR17751@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508083303.GR17751@phenom.ffwll.local>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_020618_112602_D880B2C3 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 stable <stable@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 10:33:03AM +0200, Daniel Vetter wrote:
> On Tue, May 07, 2019 at 06:19:50PM +0200, Sam Ravnborg wrote:
> > Hi Fabio
> > =

> > On Tue, May 07, 2019 at 12:33:39PM -0300, Fabio Estevam wrote:
> > > [Adding Sam, who is helping to review/collect panel-simple patches]
> > > =

> > > On Tue, May 7, 2019 at 12:27 PM S=E9bastien Szymanski
> > > <sebastien.szymanski@armadeus.com> wrote:
> > > >
> > > > This patch adds support for the Armadeus ST0700 Adapt. It comes wit=
h a
> > > > Santek ST0700I5Y-RBSLW 7.0" WVGA (800x480) TFT and an adapter board=
 so
> > > > that it can be connected on the TFT header of Armadeus Dev boards.
> > > >
> > > > Cc: stable@vger.kernel.org # v4.19
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.=
com>
> > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > =

> > If you wil lresend the patch I can apply it.
> > I have lost the original mail.
> =

> Usually patchwork should have it already (and you can pipe the raw
> patchwork mbox into dim apply), but somehow it's not there either.
> Not sure why, sometimes this is because mails are stuck in moderation,
> sometimes because people do interesting things with their mails (e.g. smtp
> servers mangling formatting).

patchwork was just a bit slow, it's there now:

https://patchwork.freedesktop.org/series/60408/

Cheers, Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
