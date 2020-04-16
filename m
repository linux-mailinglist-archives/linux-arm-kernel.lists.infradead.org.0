Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2F31AC20E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUPCWt43WrOyNMCv5uTv/5pq+Fs61Vzl7ZQzxhY/Dz4=; b=JLQafq4tup7K0H
	0VIZ7OWlDSsHKLAHZhbGMNU5AAIj8L8WI1wfFAyr1j6aVqJXTc4Vuaj7b5Ro1OgsFml2cXiSbam3Y
	KV6m3QPPQW3yJafOM+zuTpoV1kvuTmc+XoYDYRxdwyEsy+dKGhKlHceHmpKteg4dr6k2LfsD5hIkG
	6WuuX/3xk76Rraczx7eywHCxKbvYDgElysaCie20NP9Fp9WpbNgrLRJa3bmQHLpVfK+Nb2XwGwi8B
	eHkrcBoOAYGQn/4KaLeuiIeiasDp1ME22cM/8JCsiRbHsZZryc7BAsYcZ5t3tVtGVZ+2n4548mDuM
	tXHnrGj/u6iEdcrdBL+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4Eq-0001yc-W5; Thu, 16 Apr 2020 13:07:29 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4Ei-0001xw-2v
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:07:21 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MGzDv-1jUJRX1Nit-00E6Jh for <linux-arm-kernel@lists.infradead.org>; Thu,
 16 Apr 2020 15:07:16 +0200
Received: by mail-qk1-f176.google.com with SMTP id 20so13060644qkl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 06:07:15 -0700 (PDT)
X-Gm-Message-State: AGi0PuZSK6r9TtoewAHl1VghGO9I2qYyZdlolB95Un04LS6ZQ3Axnwde
 /RdcH8pvf+ji0giSmIlTSxvTx0n9Z0ACbiAnE3g=
X-Google-Smtp-Source: APiQypIhmxZomDyPI8hn1HA79vovNwkrPUqhu3fHt73HrirP0DJ/PgzDEYqgh4E4jJVMGFCKn/J8UzK64DqY6qWvfL4=
X-Received: by 2002:a37:63d0:: with SMTP id x199mr15671947qkb.3.1587042435017; 
 Thu, 16 Apr 2020 06:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-2-geert+renesas@glider.be>
In-Reply-To: <20200416115658.20406-2-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 Apr 2020 15:06:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a14Vk1JKRYZkkAhC9fAV4CMQzvux_FWdNkn39OwsYn4mA@mail.gmail.com>
Message-ID: <CAK8P3a14Vk1JKRYZkkAhC9fAV4CMQzvux_FWdNkn39OwsYn4mA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: Sort vendor-specific errata
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-Provags-ID: V03:K1:IzqfHJ1PJu35urEIanmXQa3eqR1bkJ2rSPsImUiMXKmGma+gGc1
 zvbw+NUNQsusMtrJov5tLb8l3rVldXUP23Gwszl9Gt/x0E3ZY9aBivuzTeQmXaqtnG8n/Sp
 h3bUrfhZmmddAL/ipZ/PVZrEbNeqygTvT7bBCHRrP3tq9vmlQM2+WK8lNeie1tPAf2+JZJt
 Spn9BiUAl7m3KdEWVFegQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v3L6uTM5o4Y=:2nn85LrLMaZAt0TD1sCeGb
 F66PYEd4z1jJEGx4UDIzbC1tPCHXXq9Jp6HbZhY/iIBz0gDQYC9jBt+FY5tlU8uW1TMVLQJp3
 UWtxPGsh/PHUGBB3pwQ9kOrBkN0y0uFN3YPAQUlNNOUj3RrBFpSRznFGoyxUWyuoI9umWsnbL
 njlOVHsBGmOdckyxUREkCVTdnCxmYsCTgpl0IkISMPKFOqi7kdhaFAdLBaIC6ed2Aq3dDPHrw
 2fT3W/RtVfqt4CY383AC7pm3bdJq6sBu1ZpTpMNZpHtanl0/4AvqvTyguLp18Gx1xDVA1mLPz
 WhwsMv3yflAOSJ4Rq2etLCo1w3SywAq0CjskFxxpau17fEPOu4269fhHnY9UWJ/7f1CRmCocp
 Mzhgyw+jAZwhjdi+xIb0hcitkVnK6R2vWinoXUiFONII6QGiLAJ9lA294vj1SbLUYrGvCteeR
 mm28te+VY2B7J3NQycljJnca/9cTaVhsuaoW7vP4imbqdLmhBVSZ6RLoUDAAUKLNduxMoxbqB
 feKfEYbjXvV/4HE+hIFCtCbLUo14SuWe5j5rZ0YRYoen7Z0GZX37k9dlc2wTX9skrayfHbZZ5
 31Twwbhu07pkTKfJxBnHejEytt5ppmCKXa9OjsC4mBCzZwmCqaZw457FFBAJ1FN+t8YOIgbpF
 Wfu8wNi5lVOar1ewk4NrFAUcmXMnKfZe7ljjF5RS5FuQJsgb9XU37tKeYfPSOv18BzqNf7Eqf
 RySNUVbaNlMZFvoN4KsFnydGKVZ9M1HoHp/tM9izdqFD2GDEcBQhDjQU43cLJ7873TNF7G+2l
 CLjZqi3wHOnjawoX24zj0emAt0lKWBJrYCQmL4twzg/MQc5x+c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_060720_417836_1A45CDAF 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andy Gross <agross@kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Robert Richter <rrichter@marvell.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 1:57 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Sort configuration options for vendor-specific errata by vendor, to
> increase uniformity.
> Move ARM64_WORKAROUND_REPEAT_TLBI up, as it is also selected by
> ARM64_ERRATUM_1286807.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Looks fine to me, though I wonder if we should move the errata
menu to a separate Kconfig file, given that it's already longer than the
Kconfig.platforms and Kconfig.debug files at 500 lines.

Maybe a Kconfig.cpu with both the "ARMv8.x architectural features" and
errata menus?

Either way,

Acked-by: Arnd Bergmann <arnd@arndb.de

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
