Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F2AFB5F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RC2dC52rr+UU2e2wC38xmHee2dum542zNqCSdGTDfA=; b=jx6yHBbXfq1ocE
	yd2rgoNRQMdgj1ICckXr5ejnZmjmyzr0o6u3Jdm7pIEFwTpjr03LWXF8GLt3QwXITFvr9jmyCDjL9
	kvAbY5JLKtRsKqPFXasWTBOxvTAb9N02f3uJibfboSXtsjFA1cbxSWn8djHN7O79npcpaBvLNssSE
	SDWKOcSKZ8JS0EFqspvrf4WioreQ/oivjACtfhLEvQvi0ia8wBX5d0zMt4zm7EDhbLkosNwo+gham
	aLx0fZL6A8GzpDDs0eXFvvxc2+Z1d2skwf/gibc3B6vcV7eS7z3dWJQdpEcn2rNFCV5lXpwRDLDbZ
	uURiXhxxaX/Wm+d0XSuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUw8K-0005sB-6m; Wed, 13 Nov 2019 17:08:44 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUw87-0005no-Vy
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:08:33 +0000
Received: by mail-il1-x141.google.com with SMTP id z12so2479170ilp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 09:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bBWxzsZRUXKbQzzivFjemLaJtwPKdmL9lKnNHf/rwAM=;
 b=N89l11BmZ7KDAZGxB47EC1AYg6Yxy1wBxilJdrAUL+wf60hooxylxjDXwTs3ZVa8fV
 IOzY9jFb4SoA5B5B7Qk2dV9Etb0EBG2TyXo3kUXsOy96E/uTaBK4m8IcyQUhs07AZbRX
 J5TON/jLYKd7nEgPCtKqNRlZagzwmWje7FBDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bBWxzsZRUXKbQzzivFjemLaJtwPKdmL9lKnNHf/rwAM=;
 b=h7y1Kw00TnB1Wr1ppMm6hAhPsm5pXeA6XzrIDMNiUy4+qK3jkYwN7IABWUw1N4rBHL
 UmFXFMbsvaOoKatZIf2uevFSPJUgo8biKGqKVwGD+t5JaID533W3Pei6VQviMkjcQBg8
 xaTdYv76ThQhhUJqrf3ub9JbXrzNRAvAvYOQbjWuwJZgNUcZiOlz/fx1jSsUHkzB0SUC
 qMZQptPgNqKXa+4NIS/dBLzas39AbI/mhcCPx8sN6D+8+AOBRoUHWKAdhevqPssfMopp
 /b9dgYXpDAAv146wbQueFOIubHz6oTQAtA9owxL6ExyI6g5axk3kXEAG0sC3ZnbpsP5m
 UqXg==
X-Gm-Message-State: APjAAAVI6FxaFwd2F/vic+addQk7SUAYmCxGtsoN46zlSgI/idDOSdbV
 6PcKjOkPJkm7+KQZw/g5ABvJXqeMZ+U=
X-Google-Smtp-Source: APXvYqw2/olye62kcBPxui1I829v5g+1lcPkL7Xc5OumeBPKjy4NGuwtksI7+a3we4VeE5sod4+Qzw==
X-Received: by 2002:a92:8404:: with SMTP id l4mr5430057ild.137.1573664909986; 
 Wed, 13 Nov 2019 09:08:29 -0800 (PST)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id y8sm364270ilg.47.2019.11.13.09.08.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Nov 2019 09:08:29 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id q83so3409291iod.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 09:08:29 -0800 (PST)
X-Received: by 2002:a5d:8953:: with SMTP id b19mr4637156iot.168.1573664490254; 
 Wed, 13 Nov 2019 09:01:30 -0800 (PST)
MIME-Version: 1.0
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
In-Reply-To: <20191111005158.25070-3-kever.yang@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 13 Nov 2019 09:01:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UjbPALRU2r0s27F4RxjsbDyQ+horUBezVQejk1pT=vqA@mail.gmail.com>
Message-ID: <CAD=FV=UjbPALRU2r0s27F4RxjsbDyQ+horUBezVQejk1pT=vqA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_090832_034047_ABEA984B 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alexis Ballier <aballier@gentoo.org>,
 Soeren Moch <smoch@web.de>, Hugh Cole-Baker <sigmaris@gmail.com>,
 Andy Yan <andyshrk@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Andrius_=C5=A0tikonas?= <andrius@stikonas.eu>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sun, Nov 10, 2019 at 4:52 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
> will be 'enable' with the dts node at a default PWM state with high or low
> output. Both too high or too low for vdd_log is not good for the board,
> add init voltage for driver to make the regulator get into a know output.
>
> Note that this will be used by U-Boot for init voltage output, and this
> is very important for it may get system hang somewhere during system
> boot up with regulator enable and without this init value.

I'm a tad bit confused here.  When U-Boot boots the kernel, how is the
PWM configured?

I remember folks going through a lot of work to make sure that we
could actually _read_ the PWM state that the bootloader gave us and
report it as the initial voltage.  If the kernel ends up needing to
configure the PWM regulator's period for some reason, I remember it
would actually pick something close.  Is that not working for you?

For instance, on rk3288-veyron when I boot up mainline (no devfreq on
rk3288-veyron on mainline) the vdd_logic reports 1.2 volts because it
read what the bootloader left it as.

...are you saying that U-Boot doesn't configure the PWM and you're
trying to fix it up in the kernel?

-Doug


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
