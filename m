Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1E81ECF84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3LO88Y3Oml8QjebOcmeHmcvQdEpmW0W9fqQKJfDRkg=; b=ApY1WpY3HwHWSD
	NrM6AT21d8FtVqIzH+JE+RYHgB6EkrXO0H2i0N05ElLT80CNNubAqeJ7+YRxzspv5a9CODc8/9zIB
	KCFfCEkj11jrZZRRas1vii+VYxhNtXEzrrC+YcYVatiFKD+z1LKz7FnOZNRtHOHE0bi0Mwr7esIWS
	N2mKDZa2g5+sf5MGmU7XKE1l0aHFaSe5ukq1O8Icv2/9FChU03IZYqneoRa2mX3oOWCrqgMo/3YF5
	ce+yAeRY7NTaT4VZBHuK8W6T3DYykA4EvDsU2R/oSpOk4E7DhSsplTnLmItNoBps28NOZTQK95CU3
	DhykvXHyXhBZ4yi1MC6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSEq-0000Ih-Ef; Wed, 03 Jun 2020 12:11:20 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSEj-0000Hg-LA
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:11:14 +0000
Received: by mail-lj1-x241.google.com with SMTP id z9so2356064ljh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 05:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YfIwoVqhINbM8JX02JQVBFl5UwDmm1K0R0OAHvfku4E=;
 b=aWqv3ou5Qov3U3msHumGanAGhQDq5piVnxaH/XWJmipKJsOeWVNQIztptBeNCtMWG6
 99b3l7r9pG46qUjWpv+WoQs+yVkeYL+OHYfJzjhbwlgDHanfANKMk5J6k2xrDF0jApcs
 ITr+QKkVRhH2NduIS0rGnMoa1juq/PSUMUe+/Vobm+ot+3yv1cd8yFBR8RpnGpZzbD/i
 KGvscj/DzzzJcfsZ/B2RW2XxwxgRgDyru1kGkFLZGIOB4klILxvqMmjRjUexshZjeou7
 IWTl2Oef6qF/8FD3/+nq6Ege6qhULB4qLz6/BgG3qQflgRe1nkZ+ZiOB0fEUutqZ2TNb
 CrWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YfIwoVqhINbM8JX02JQVBFl5UwDmm1K0R0OAHvfku4E=;
 b=j5e7ZoPuy6CoWBbpP+J1tDYDYZ/oJOK2MQKAgdEiWnAW3DlAF22BvW0H7uczHeryMZ
 3regDl1KYLyd2clXKoJzTNkw1dg+cwOk48zpBsLCp/zQrsN/XXdGo7vVhHODj+7r58NA
 PtO7xgEAm5i2AYDKUaSc2jUWWXxRzMOr2qKgK8MLLaI5J3vHO6wAX6vQYKVxAd+chmRs
 g3cOqRBDWr94lF0fTSMJq4la1ppX4jHIetF4VHx5JH/cIg6+HRqPeEu1GyfoYpNj2j+o
 00/z6uGFGmbmbZ0EgDmM6xCXrxCM+QaKcGJbbM4YZWchA3CcZXhmQcoDb9DMiNMfbxcQ
 61XQ==
X-Gm-Message-State: AOAM533nchZSdNT3JfDbeQV4yhu+6bpUoi4+ma2GPGKC9pTwGgL7pPtl
 LXpurinVd5DwbK4hzIQSzluOaz0sWhUp1ajoJPJ1/g==
X-Google-Smtp-Source: ABdhPJwGPqax4Ku+Y+HnI5jIvzA/eJkmp5Pc0XM9c3bmnH0a+2++YRcBgL324sT+NutIXiJsU51+xCLtJmEUSqS/sw4=
X-Received: by 2002:a05:651c:112e:: with SMTP id
 e14mr1798631ljo.338.1591186270117; 
 Wed, 03 Jun 2020 05:11:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
 <20200513145935.22493-15-benjamin.gaignard@st.com>
In-Reply-To: <20200513145935.22493-15-benjamin.gaignard@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jun 2020 14:10:59 +0200
Message-ID: <CACRpkdYu2As27M60ogUoLfX1z=XZSCSx5qTLwm5ADdf9Jy7HGQ@mail.gmail.com>
Subject: Re: [PATCH 14/15] dt-bindings: pinctrl: stm32: Add missing interrupts
 property
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_051113_723265_C0BE9DF5 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Greg KH <gregkh@linuxfoundation.org>, linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 5:00 PM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:

> Driver use interrupt-parent field so update the bindings to allow it.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
