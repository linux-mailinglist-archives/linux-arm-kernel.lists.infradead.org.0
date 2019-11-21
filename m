Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D3B105D24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 00:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQweBzf+wjkOgsHfMpmP5HydRHzpysrtXg5JtIzUhMU=; b=YdEU//WxqkIs6P
	k5FlKHRF8S0SkYyWjoU1lkXk5Nfnp3tL4CWqTxHIRaJf1EZGRIDONnqISFtUKUeBONZJVy62Mi5KN
	DjCgiKWACdfWwbaVB6mrGwQwrdWWn1uiw3/B/Fc0V6ROqj1chEUjDpSAi640f5Rl88rrtDVkb6faA
	2Y2g16Vv9NAiDSnsE5N2bLLXOD/GuTK+53v5Cr6XBZDOmPJvH3ISbz0d/KuOujypznMUFFeqICNAU
	YDZZFMmFhf21/HJ+7p673p5JdutTFOBIUkGkAnQ6YUKM/DLDhg20FahKb5Eb6TanNAxo01MhcOzmY
	16YUzHlBdybjTbLA/Dsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXvsQ-0000Mu-Oz; Thu, 21 Nov 2019 23:28:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXvsG-0000M4-9M
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 23:28:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id 3so2524252pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 15:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=i0z/1OaECwr1imppf4Bt21QJXpxn3YyaLp+8xHiQvN8=;
 b=vD8iksYRA8ofjoIM56DEBfrvwi7AhJdrBvhWoKWt3SZ0ZNFx1vn98Szq60Qn6zjyNh
 cjXQMpZFpCAk7UxOUCYAoM7OB0LJJybZ22wvd4AmrV1RG7XdQ9GJ93xxA8ItKgXR4KWr
 mUIIqsFagER9I/3EeBbthYi53zu7VSo9zPbsn6HGe1vO/7qtwJ806D+MgBGsNXCPx9wh
 QXUrfJC966c3xb7jJvBgVi2k4CB3jIfEzY0aODyc0WUqUTi5MDNKf62MU0r3C6bEpuBG
 q9gzg6ffvLwGVRbrY3nLehthJuNJke+5/LJB1O79BAHupfZPSLFOQJsEVqPUUr+jHTC2
 ZD5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=i0z/1OaECwr1imppf4Bt21QJXpxn3YyaLp+8xHiQvN8=;
 b=B30f5tJNFfzBhGKzuxL7TlEIr2QR9E+SvDMP549LHcuESJikErqrKIIqq9onuRd9tc
 L9otvtE2yTitI03LPEzZ1ugsDsMFbqEcwsPH89CJGiFFJtDIotqJMImV/jTU1fOEKEuz
 DiJW5rwws6OTgZrqLjzWlkyc6aZRLjBpCsLq8KEyFBX9PsKSy0vfD0TSHPO6vOBamrny
 8fMZpcshV/zgWmNs9z3X2+Cbx2uo9kspcGYqbOM4AJMTSN+pZgYm1yBl3+uho96C/ay9
 Qmag2u81WFj7r6qGZATuOiLuP74eYJERsogAp3gPQ/pSCkfJDtmvuEPLDfrz2EalKFEc
 bZCQ==
X-Gm-Message-State: APjAAAUsHfWFQyciKvJqcawdzydR5Ze1m9NO+Mlot6gw4Vf7WXI6XUIv
 r63dQC3HbqtX4R543h/+4TrOKubqhPg=
X-Google-Smtp-Source: APXvYqxx51Asre1IY3pY4JpWhwntATKvJHOJXADsxNRbnQbMK+EIp0yoOUiHb7Qdv5SwaqY0PuMsEA==
X-Received: by 2002:a63:553:: with SMTP id 80mr12149847pgf.366.1574378909591; 
 Thu, 21 Nov 2019 15:28:29 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id c64sm4656814pfb.177.2019.11.21.15.28.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 21 Nov 2019 15:28:29 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: Re: [PATCH 1/1] arm64: dts: meson-sm1-sei610: gpio-keys: switch to
 IRQs
In-Reply-To: <CAFBinCDYbHW-7XOo1O1M-ghNj-7R+A4j6Y1skenuz6-TG8e9wQ@mail.gmail.com>
References: <20191121183711.19785-1-khilman@kernel.org>
 <CAFBinCDYbHW-7XOo1O1M-ghNj-7R+A4j6Y1skenuz6-TG8e9wQ@mail.gmail.com>
Date: Thu, 21 Nov 2019 15:28:28 -0800
Message-ID: <7h4kywollv.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_152832_321699_BD9E0AB5 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?SsOpcsO0bWU=?= Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Thu, Nov 21, 2019 at 7:37 PM Kevin Hilman <khilman@kernel.org> wrote:
>>
>> From: Kevin Hilman <khilman@baylibre.com>
>>
>> Switch the GPIO buttons/switches to use interrupts instead of polling.
>> While at it, add the mic mute switch and the power button.
>>
>> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
>
> (I don't have the schematics of the board so I have to assume that the
> GPIOs are the right ones - based on that)

I have the schematics, and I also forgot to mention that I tested this
on the SEI610 board, and can watch the interrupt counts in
/proc/interrupts increase for each of the buttons/switches.

> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Thanks for the review,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
