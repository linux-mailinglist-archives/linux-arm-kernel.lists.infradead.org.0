Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808E5816CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5zRH104zXkb6RngGT4kc3yrDBtVAxazBlGUA+n/RZQ=; b=I4uFd8CeTkO2zi
	Wt96ygBOueO0GmM5V6khZJG1fE75AP7ma3aMBFmzoYtIOeykKdZeZVs/A/SFGGxAuNu0NtX2RW2OD
	xO+b7UdCKeQ98ujbIWPGnGpN4c4v06ifCBgXYH5GscYxLqdfFQrjznRHe8/SHfkyUez3LxcgdMQwr
	GpkMuhBbH+bwjYkpW2cBH5vGdSdYYolqw3NsB3zyQ55np5kR2BFKNQWZBCY24AVjgfMuL6P9xPpy3
	YJhwfuc5sAWyxFkNtnOqQdRQ/SC4uT7CIQ0KUn3pgmppsH4juuJ/gwAYMX07cYLt/X4gkmSq5GHel
	7tFHse83T4VR8z44XKwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua4Y-0005dh-FB; Mon, 05 Aug 2019 10:18:34 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua4K-0005bl-D7
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:18:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id t28so78816810lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+OidWRK0NxQrN09q+H0Lz4wCrhTqBVNanJIQIVy/gII=;
 b=lg9VOKzw2db4frYUxtdqEfbgWkOvq9p9FMJSWhGilAgUkM1A/cuExt3oECmeK5QKT6
 t5Uh1vcuMjWQDCEH2XWwYYrGgnCaHakuBuPZr7IZ74XtRBQZ4mTkhnafC8TgX/okuR+l
 ERsy1o8RzDxio5fauDNDhsZ3/Hs5I7gbIqZtIl8P3LOKWCPB7LonUWnBG487BvJqoIEv
 Wtphcmcr/28nxzQPeSvW1GzZogMY4wfQNOdqOLIb5SA6T1UvLt29Guy+svKOhPj0y/j/
 kT+jMS7sypmnQsa64XAOBnEmpKpk0FcEROskM39/RUXBRHfCnWVd7Ys0NGGZZecRgpcF
 N7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+OidWRK0NxQrN09q+H0Lz4wCrhTqBVNanJIQIVy/gII=;
 b=drIrWCmWp0IRF8b3oCqB2hmAUzs/hYXXmwSFXn6g66Ch/4Ki5CgyvW19JSS5MJY5B3
 06/JMZylQ/eXui/nos6zasU4IlDuir4EILKHtkqE6HahWV7QgRcSWzd8PHlgNcWZAsO2
 dziAJiGWUBaaYfrN3GCDP11sCE63VAcHw+oXEn8xFErGX9m2CjqbBAJD8jq1qNwBKPPK
 2fJMtnmmsO9ih89BdmP2hQt0OatIzRlgHBmg1F/GXz84XFYaX/xztxZZHiDMZ87OXHez
 NoOaSVKYTzbdHpjvzEn554c1FNgzt+NxdvaZvGXXgzA2xF6eHJmcOMfUumfy2vEtYojL
 FY0A==
X-Gm-Message-State: APjAAAWT4vxQesywRhuo+4pYQ9moiDZ01+Yy7hW+Eqo+6WQpcGmZ93MJ
 zwWEY5/N2Nb4npKXJhOyBvA1At3UqEnxNXUZuIukPw==
X-Google-Smtp-Source: APXvYqx/47plwVQoKfOxPFRbz9uFPNTC89i2gTxTm/2vOWF4WlpGegp3L3NCwltCpv/ud4yUTO+QjSZAiKhvzrIe6xY=
X-Received: by 2002:a2e:8756:: with SMTP id q22mr79254317ljj.108.1565000298784; 
 Mon, 05 Aug 2019 03:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190725145040.42182-1-kevin.brodsky@arm.com>
 <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
In-Reply-To: <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:18:06 +0200
Message-ID: <CACRpkdbPhxW2-vDhPDz-KpD-AxPJL+Px_ZH8cWVVbCiYpJh3PA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: fast models: Increase clcd's
 max-memory-bandwidth
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031820_480370_51E68653 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pawel Moll <pawel.moll@arm.com>,
 Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Brian Starkey <brian.starkey@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 5:15 PM Robin Murphy <robin.murphy@arm.com> wrote:

> Given that the property is optional anyway, would it hurt to just remove
> it? After trying to dig up any relevant internal email history, it's
> still far from clear how and why it got here in the first place.

Isn't it just my sloppy copy-paste when fixing up the device trees
for the DRM transition? I agree it should just be removed.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
