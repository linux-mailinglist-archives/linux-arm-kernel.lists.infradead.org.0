Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4AF24445
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kmx9Ly/oLl5N21YjCjGNhr6lJLC8VzrDlgjgmwiG77s=; b=EUlGxbEbVwY0+Y
	L+0iqU8sd3i2Vsa720wpr/mgVv9r9u/YEZ71Y8uKj5Lye4dejg24g4kgRWDNRlFw0ZQwb/f5C2aVo
	mSk97YkGmCOSzpI+MTUaE0gOK9+3H5s1d0tBZQ65QKh6HetV5nD7BjViBrvOJNV1h/e3LxxyUwz15
	5iHGInkKJGjGUnDk0HcalXmO/iEm5SWJuFQSCTPTaeM4P4LoI4NnCqZ+uJHs38tJ6buNjkiMMevkX
	YlftZjCIsxaByjz+EufaOfbtIGJ+qWgVrxTTVhdrimGsHUj0ezO+Mz1giVdTdo+juXomwz4qhSJ1B
	50qI4cN7hkjwfRfSZlEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSreA-0001pS-FL; Mon, 20 May 2019 23:24:46 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSre1-0001o5-Dr
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:24:38 +0000
Received: by mail-vs1-xe42.google.com with SMTP id y6so10052078vsb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZR/L7Hf828I4020IYpCxcxcft8SiYhAJProPc5vXrzU=;
 b=Wl9L0AJOEI10bssx6lat9jgrA3rPKbO8BogUuRNHLDN7Ve5zvOpZnNKVUMTpQBBSvA
 p/ROLEzSFq3wxGQ6g2TbkeeBcO4ve3Y+PyFFmeHbkUyvbi63Vy39FzWnFqQ/iYDf8s83
 1rVab5Txti5C4wfalrdFVBqPk8IPgB+yp/yHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZR/L7Hf828I4020IYpCxcxcft8SiYhAJProPc5vXrzU=;
 b=O/81xkVfhirJCiNzfJ4nB07W1ZifvVtlnasS9iH0x55wNuMDh4Bfchan6wgGp40GDJ
 uZdFhqU1ZVNP7XQSKUnLALeoQ3VcbxMPuz4e1K3wIzKjuHlX2xfeylU0iVrtC8xmzEkl
 o63mu5Op402oERXAY0D4+vA7dxOrp3tVSW3CmWZSjzkwywKN2c8jMEsH123Ir3/UiQvm
 WaEkpRTPtLeLuJAghqxeBTX6D6IUJOoikoC3VIhFxxEfNTgFhvHALRFiqyWyrl0arA0g
 +svxFkitfjaS+IlGgGfUJ8NNVytV8YYat9eeCL3/8OhQ0Jv/JBPqutIq1adon7QL9pdQ
 4U7g==
X-Gm-Message-State: APjAAAWnBARbdzIkxW7VksiWnfTcrx8zeaKMC31wjNwfjka7qf85V9Vu
 pLJgN9s8PMVp2TOJIh2uTGqE+s0fEHk=
X-Google-Smtp-Source: APXvYqzNkNiiDAYUDk+onqMsfVf8CxDvIdh4vMZsuTMhHDx4fwtl/Lfzp6Xv9pSd2cZ7ACnxxn6eJg==
X-Received: by 2002:a67:df8e:: with SMTP id x14mr38689647vsk.110.1558394675592; 
 Mon, 20 May 2019 16:24:35 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com.
 [209.85.217.52])
 by smtp.gmail.com with ESMTPSA id g133sm4208547vke.25.2019.05.20.16.24.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 16:24:34 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id x184so9000313vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:24:34 -0700 (PDT)
X-Received: by 2002:a67:f60b:: with SMTP id k11mr31398691vso.111.1558394674402; 
 Mon, 20 May 2019 16:24:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org>
In-Reply-To: <20190520220051.54847-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 16:24:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WxhL3FLYWvOoys3GOB68WVKinfgjTVK5byyzyTzVsyBw@mail.gmail.com>
Message-ID: <CAD=FV=WxhL3FLYWvOoys3GOB68WVKinfgjTVK5byyzyTzVsyBw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: disable GPU 500 MHz OPP for
 veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_162437_474026_F97CC78A 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, May 20, 2019 at 3:01 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The NPLL is the only safe way to generate 500 MHz for the GPU. The
> downstream Chrome OS 3.14 kernel ('official' kernel for veyron
> devices) re-purposes NPLL to HDMI and hence disables the OPP for
> the GPU (see https://crrev.com/c/1574579). Disable it here as well
> to keep in sync and avoid problems in case someone decides to
> re-purpose NPLL.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
