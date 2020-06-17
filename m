Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A40C1FD894
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+KIKmL5oDSmZnkHWmkhmflUaJO9Rb0OAklr0dnquz4=; b=RfjyJ6r56Qpwbl
	lYAeb8Nl6BfvMGrTiSztsv0DYH8ZF9YofpFQHk87iLHmQ+QD2Hr8KwLMY7LwohO3AeWg3UTmPI2LG
	VpQl2eS9IzgMPc5nmGgUW/rmCHPS+gdQZEUri/yleWhMiuI1iRf3tqY9N78fcQ7TyPW+4CvbIKiX7
	Ox2BWOl+4L+Vtc2XZW73S1JrYvxIs2J7xaxUX4HmtoVbuxX/YH+KDzmwCM0U8kZWkifmGnE24hDch
	5RQe+CkO4M2sktKAUZJhbKGj+75m2+J/QlosafeEakDdSSvi+BJbbYhnjgTNusRRh68rVv9HS1Qu5
	nQcM9FP7JLHXSuujRbSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgO3-0004aa-Vg; Wed, 17 Jun 2020 22:18:28 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgNv-0004Zf-81
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:18:20 +0000
Received: by mail-ua1-x944.google.com with SMTP id x14so1307627uao.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G94FcsS0WOn7M75ysLn9y+On7M3JekOpEmThXP28ZdY=;
 b=kF8zjCb2wBpmlfaifSfSW/aXObfQMB4FPptDYGdX0f8EGxInYp3cPzF7Vr2FEt9KhW
 /MY498VVxzR82ujBtjFR0F4fMY1MXsdd065FbDblIQ+GhCOREiVELZwpSekeO0u5Le/W
 V2AgAwmO1prYDtH57MqUXu/eSAAJ2R2TDCv7zkug0oV6SOM5tCOFqQtaHeR7Dmmy5YeB
 CuFicE44NwGxevqk2j0NHDlNWwHciFJwK1R6UtM5Vc/R0qleaK3yL8MZxAByalgsYrSP
 rwAy5ryABJDHppc9urXaIB7omRmemQAfzC+0ClWqdNdKTDxo52Z1rQVL1KvvClFDhWCv
 8UsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G94FcsS0WOn7M75ysLn9y+On7M3JekOpEmThXP28ZdY=;
 b=Uy8UDBu6s0nkqcx9x1G3ozijR8LNEUy0cuO3LEu50o4kv5SY6LmhOMTcCWOa7cIT3l
 Qv8h4hZE8VXeF7plCgwgPVGxS6Qa7RFZ2QTlP7KQRk9FglVK4RPRMjBNefteeMm4CAP9
 mV3h2aptbGirSbn3ICygK0VKj7GusjEtcqGl0k9w8yWTyFVOibpG0Ygj4MKVHvrUdbyC
 2XlaCmLdctFmvnDFb8BC4cJFnvoKZjdfJ55k/Wb+wsczpJvNqCCRVK9qa5JvT5yYNFne
 EazkAbEswFG5B2bC9q9bMRLfVW6YDvMuVEmfsOmnaOBB6ixX3zUVPNV2DRKEl/dx+kTs
 SgQg==
X-Gm-Message-State: AOAM530L2ZPriLDjKYX1lsc+x0hTVP4BOhIlfw3LjsWPrPFNGAIFgfjF
 eOTojFJt3dMT0IRZJ0UCj55+0K5wDBaRHnFx1g==
X-Google-Smtp-Source: ABdhPJyXVYfljJY3UtGziRurqfb7z7DrxRoIyuquBplbxz2EDO6DLlsocrMMgV27RBrw/rQExCrutqJilimY5LX/Fj0=
X-Received: by 2002:ab0:6f91:: with SMTP id f17mr968870uav.32.1592432298124;
 Wed, 17 Jun 2020 15:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
 <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
 <20200617204510.GA396261@zx2c4.com> <20200617205443.GA403252@zx2c4.com>
 <CAHmME9qX2dVBf-23g1ASW1EFaX_4VLUH5QZBCM71NVfe6rtaxA@mail.gmail.com>
In-Reply-To: <CAHmME9qX2dVBf-23g1ASW1EFaX_4VLUH5QZBCM71NVfe6rtaxA@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 17 Jun 2020 23:18:07 +0100
Message-ID: <CALjTZvYnH_xQ45LLZ3Mp_oxatjWons4JFFpf3F_01F20s3SwVQ@mail.gmail.com>
Subject: Re: Any progress on R_ARM_THM_JUMP11 issues?
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_151819_304309_59ACA550 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 WireGuard mailing list <wireguard@lists.zx2c4.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi again, Jason,

[Adding a bit of extra context for linux-arm-kernel.]

On Wed, 17 Jun 2020 at 22:02, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> But I am wondering: has anybody heard about toolchain progress toward
> fixing this? Couldn't the compiler reorder functions itself more
> intelligently? Or avoid emitting the B in the case that the jump will
> be too far? Or does nobody care much about 32-bit ARM these days so
> it's just fallen by the wayside and
> CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y is the best we've got? Or
> something else?

The thing is, CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y implies
-fno-optimize-sibling-calls, which seems like a big hammer to work
around a toolchain bug.
Now, this bug has been reported in Linaro binutils as early as
February 2011 [1] and the upstream bug has been deemed fixed in
binutils 2.22 [2], two months later. I usually don't build modular
kernels, but in OpenWrt we don't have a choice due to the compat
backports of wireless drivers. What strikes me as odd is the fact that
without CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11, all kernel modules load
and run just fine, except for WireGuard. Anyway, I completely agree
that if it's a toolchain bug, the toolchain must be fixed.

Out of curiosity, I also compared the vmlinux sizes in both modes
(OpenWrt kernel, Linux 5.4.46 with my Turris Omnia configuration, gcc
9.3.0 and binutils 2.34).

Pure ARM:
24243392 bytes

Thumb-2 (with CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y):
22102716 bytes

A 2 MiB smaller code footprint is nothing to sneeze at.

[1] https://bugs.launchpad.net/binutils-linaro/+bug/725126
[2] https://sourceware.org/bugzilla/show_bug.cgi?id=12532

Cheers,
Rui

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
