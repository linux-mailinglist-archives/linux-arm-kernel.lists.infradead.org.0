Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AFF18667A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGScoktAX90RkWFrdtFdyIQ7grn4PuYsMvHIEpIUu3U=; b=NBCGcVV2I4Jd/E
	CV5UdoHhw22a3i+EAdbtiv59A6RxdGBudlIHgPRk+/a/s/3XDe9TXYqwbi49bB0sJNqiogtYA6m4W
	XRAGBif/slWL2zFkojInwWVlpLNBCcfJl4n48o3JTeYVJ42sTc1p31pePhgJ7TcAEome5w6rAj1fg
	+K44D4dxSGkKIU6CWU3+UdlC5PS3Wi3ow1SdFVZmVXiMrijqGI/kHOfFiCwlV0xex6l3w65iXcez1
	qYtyTB0JAm2PJkMHuDCIv431GQmfreGKhLw+NOpVi/pbz31MimhGIcdced3byspqPkTm3elQoOqyD
	n4qFF8OeAL6E6+OQaaXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDl8d-0007c8-0R; Mon, 16 Mar 2020 08:30:19 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDl8U-0007Uu-C8
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:30:11 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MbizQ-1jjF8D3bw6-00dCEg for <linux-arm-kernel@lists.infradead.org>; Mon,
 16 Mar 2020 09:30:08 +0100
Received: by mail-qk1-f176.google.com with SMTP id z25so19779294qkj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:30:07 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2kTh9t+xncmVbPhJcKtNbl5mHHyztVnYFXY6FPUvEv3q/gYsof
 L2ciIqOQrdHLdjy9uFQkVQHvYt4buN+6miamnfs=
X-Google-Smtp-Source: ADFU+vvyPJOD7NA64Sv+/yqiF+NJlwZx8uue2CLxsFnH5N5ZzWWHWlodsVSd2XAZyQm3iAyvUigtWyzxiB7iRdaN1HM=
X-Received: by 2002:a37:b984:: with SMTP id j126mr23740630qkf.3.1584347406786; 
 Mon, 16 Mar 2020 01:30:06 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-8-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1584200119-18594-8-git-send-email-mikelley@microsoft.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Mar 2020 09:29:50 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0+uBsurfQ4smjPDGkJQSkMe-TxJ4cWR_EZXgDR4-bAWQ@mail.gmail.com>
Message-ID: <CAK8P3a0+uBsurfQ4smjPDGkJQSkMe-TxJ4cWR_EZXgDR4-bAWQ@mail.gmail.com>
Subject: Re: [PATCH v6 07/10] arm64: hyperv: Initialize hypervisor on boot
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:31pfKEowds1snMzVVnIjDQkiDnKKufj62hVgmVvm9jnz04/B4Ms
 A0JqPybYGrFaLW0wJM1h9MFU4MPrA75Pwu23zaSyhqCjseckNl6o9o2oFTHoi06TAob14m9
 SQufdihQKINtgCw/hB+JjjBnSgiJ41sRDLSLHnNhsTDCUg+fACNkQSD6CNwgwERQuPKtlxA
 CfQus5vvfe8RV/aC/QtEQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nUJk7s3cXi0=:2glrro6REYx6SHdtPfCb+3
 DPiZ80pyy+8NesdxwzmM2K/SVwC84tCuDTs4EZTwlxvfsmarAB2g3goW7NObEEpTH/wrUnttS
 w+F2aBGk7vvLX3BFaw48PxSwuc1etif1CZ89udSduFleNZo5YncV0Exe4CmeN9U83EG8rbF+B
 91CDbJz1GIaXAFPb3moiaFayGg38ZNe9dRi6r37mwjnMJdSPhhFkEMtZBGp7f+ONLUfOw9h2X
 DvjfEdqdumQc5/UN2soLqORMV8D6G1vpbfwofF3aHHslygXnHDZ7crnU7io6jLeKtuEFE0xRF
 hTSyBwB4XUnjRe2FQKXI8KrD7uPy6+8IX0oJhcmjyuyrVqfzRXF8QpZTn1OI6VQS3p0S9hMgM
 7/ZEaoGHLFjCgSPW3Xoofy0g+fOprfgn4krFWOtKr7sI6yoXI9bJR45fcV/dmWpfk+QI1n47H
 OJ2hKijjiPx8TbuPpJsaOoXo3v6DOHYBFcR5+6FuulYWL1wQh74BJxQcY97jynfHsXYOlrBPM
 PME0as0kcYIWGN2h62xyTROwB+5seGoguX6H3ir/tLTA3UJiBr/kpD05JwBmsYEhPt1D0R5+F
 oV4efFUt5sqPo9UFfMMuqQrk6PAojsuZz80xupmZgBh4lOYtkc0seKKDayOLB60+wRXbetlPm
 D+2JbV+wzz0j8gr3Fiyx6WMtaTgHZCNQayuzvyOfi3Vq/tPoI5aiQ6OSo78ESfZnihtceyRnw
 VVkXMpBXMyEMdtH2ULD42UHS237Y1jL2Zc0kI8/V/6zc5SmbE0wIfWM7FEsHwrguyrgIAjCeo
 bnT3zxuRF6EhyRKnPEEDfSZW08GOqj6l+h2FBCqfubdy93eRts=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_013010_709547_9A45CCE1 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-hyperv@vger.kernel.org,
 linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 sunilmut@microsoft.com, linux-arch <linux-arch@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 marcelo.cerri@canonical.com, olaf@aepfle.de, Boqun Feng <boqun.feng@gmail.com>,
 John Stultz <john.stultz@linaro.org>, Andy Whitcroft <apw@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
>
> Add ARM64-specific code to initialize the Hyper-V
> hypervisor when booting as a guest VM. Provide functions
> and data structures indicating hypervisor status that
> are needed by VMbus driver.
>
> This code is built only when CONFIG_HYPERV is enabled.
>
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> ---
>  arch/arm64/hyperv/hv_core.c | 156 ++++++++++++++++++++++++++++++++++++++++++++

As you are effectively adding a new clocksource driver here, please move the
code to drivers/clocksource and send the patch to the respective maintainers
(added to Cc here), splitting it out from the rest of the patch.

You should also describe why your platform doesn't just use the normal
architected timer interface.

> +TIMER_ACPI_DECLARE(hyperv, ACPI_SIG_GTDT, hyperv_init);

This looks like it registers a driver for the same device as the normal
arch timer. Won't that clash?

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
