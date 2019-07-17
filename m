Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851B46B859
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:36:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPqxXvgXcaDxACeP8iNwkLIOGe4fUQHvDIGpWSOewGM=; b=iOlUcAcM/qoXhF
	7vyxC5IY1WuN73W1esqBSM008fSdIK2ULIt8R2/SnME+eLIULZjq0pW9cXVKn7EucCeAVNEZzqEtU
	aY0AlcP7VWG7LBzQ9DYVXMEx10EKhe28li2tZmArXqOYAwOdElFkQQRHKuM+7tp5yHsj0EEvHoDbH
	kUw8Yh9xERo2l3/yvX+a1QDiotGi8IjE5w8wq49WDb1WCnhaiD0x37vN0tfrYfDYKcYhqiD3cta7p
	P/DI4io/S53ce0lx+eJW5FayYW9Fy/CO2F3T0Xpcdyl7Y6uL9RTEmxSX5TPXbvk5nUMJiAz9bZrHc
	sZKaZZmUbojuOfOhq2Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfQK-00080T-Th; Wed, 17 Jul 2019 08:36:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfP7-0006st-3J
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:35:14 +0000
Received: by mail-qt1-x843.google.com with SMTP id r6so18288820qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ry+MzwHDIHpb/9BQL6U47IaqQPJx3BKYqS3CpMjifoY=;
 b=vMLalo+L/IIAOYtRRggYh08gz4EUGIoknTz9dXt0nx1IEelHQMaTKDlgMsLeQr+Ckh
 HUYqpBPeFUUUmUcAh2g+atuM10ImyWztAf7D+0NImSQd/NE65C7oCU4gQnjF5whflX6i
 H50lbswKhrHASrFvTn70By5otCpgLgBNSdMshtHN7QAn8uuVPFjQVdpsuNNLxYmOXd4z
 IPhr3XU2k95v24WvA0j1HZAUO3cK577MwxQbkXAC3yfAnuqA/2T9CDN28/QYa54SFSIH
 3hCaKUiUH7JeBLFKmy0ZLt4LgyP6i+uQEa70PFHc7GLyap662g6pDpzo+jnpZXuo662W
 vIVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ry+MzwHDIHpb/9BQL6U47IaqQPJx3BKYqS3CpMjifoY=;
 b=M0CwQDeYVw4CTM1tuS6CIYrwc+T65HmxS58FcUXnNx2Pja55KWdkQuIbe8IClMRUPJ
 UQ6CmG98hrEqaf6mMdFH2bUyrQXSH42XZryKpj+HMlsI4+tyoH266OnjBmKM+T3nSHYi
 6e+INlmnzIwO9mDp++/k4UzCJPCnoCWma6H2Bx3S5DeHUq8t9OCH3ho8h8IsGxkURIk6
 cz7Zasqf1AxxOQend2/r2d2dXlnq+lh3hk7z3IJZoRfsaKlxS6LOUH/TqPI5rq/MkbGm
 NUUJ3ADHBCr6HUoyS4erW2SAH84WoFIx9UZFiohocXFIkwf5mcaE3BOGIwksWQ8DVJaJ
 mmTw==
X-Gm-Message-State: APjAAAW98psXqgMOONXKVZIsfz/Op4EadYB2X+h9zDjNkiT3Y8aR8sqD
 GWw/IcSCqTrxmVuE2MdjCulBFb0t0gFth4VY3M31hA==
X-Google-Smtp-Source: APXvYqziPJO1KRjHolx5k/4Q2eX8wSDr3YvFQfFnKotTHXYJdSW7xA10kL7Hbc02A83aPhvErcljmU7bWXgKFLHZ+XU=
X-Received: by 2002:ac8:354d:: with SMTP id z13mr27515741qtb.340.1563352512060; 
 Wed, 17 Jul 2019 01:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5B=yK_S=2xRFt_1pAJ2iYE7CCCenOKQ3rjOeF3e+=vQtQ@mail.gmail.com>
In-Reply-To: <CAOMZO5B=yK_S=2xRFt_1pAJ2iYE7CCCenOKQ3rjOeF3e+=vQtQ@mail.gmail.com>
From: Dong Aisheng <dongas86@gmail.com>
Date: Wed, 17 Jul 2019 16:26:16 +0800
Message-ID: <CAA+hA=S=JMZDsbeJdzCRH+pikfy9nry-8UHq9V-75LuM0gxH6A@mail.gmail.com>
Subject: Re: [PATCH v2 10/15] arm64: dts: imx8qm: add conn ss support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013513_359741_03D0A5FB 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 3:31 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
> >
> > The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
> > USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
> > Add <soc>-ss-conn.dtsi with compatible string updated according to
> > imx8-ss-conn.dtsi.
>
> Subject and commit log does not match what the patch is actually doing.

What 'not match' did you mean?

Regards
Aisheng

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
