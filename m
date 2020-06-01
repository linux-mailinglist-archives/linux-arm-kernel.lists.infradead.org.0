Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4102A1EA0F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4Se146yMiCnb8cI71fAux1Ml+yWOSozylJnymod2qU=; b=SU3AaDBa7R1nYv
	REb/wzDbV5BRNtDrHCtWtBApjZ5TQBZAIUtj2FZGIRiXn34kfaQLNUyOMGYTCnpBZKgQ9TIkyIwTL
	eFgcL57tt/QXjj3VUWNkH+6FEhBeo+jlVNH6uAE1r7oiScsvsHH5stOzDk92nNlXcXaCljZUcDrJm
	ZLuXfhQMpv29lIXDXn8qEynFkT4Jo9kUm/r8jmkkMG8RTzWdUO1iOsXMRcwcl2fWHPoadp90el9O9
	CFzz5cKwSuSnvHgDD9oWPuaHnTtIRGaGw+t5aHKKOl3uPd0janIFFulZZiXu0vZz4KuxcCxR99Qix
	BArYrKrGVR0EAZTH7U5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgfo-000422-IJ; Mon, 01 Jun 2020 09:24:00 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgfS-0003tH-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:23:39 +0000
Received: by mail-il1-x133.google.com with SMTP id p5so7616124ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 02:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zqbM69/6RW5Btr+W+KHpVhDzS+R37L39EP+X3OHdumA=;
 b=WiZjnsTn7t6HATVqWNwzrCyf5T8xkwd5HR2j4Vvo5xu7w7JgxRYRSp3N+/3ZQSnoOb
 G9J2tzfRzki+NXd/XEXaSwFPmIQjAQJJwCaCdEfYlyM2w9N2XBtKo8Rk93FyrWCtAyw5
 v5q8CNwHVBzDU33yYausjqJpHWIr64asf8+CGUYhILKyPE+W6rW44HXy1MYFVCUpCicA
 fi7D19giO5H/WMBwqp57oXR0Wgm3MeQuFbuORUi97EMIZ7sIMgf+iiKMfSScH+rSiCI0
 mX2x6df2Ucdyv6UajdPE0/ybpMpfkTVgloVKE1pe9dVQeVSWYsyIi+PlHsLyckT41XYy
 fIUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zqbM69/6RW5Btr+W+KHpVhDzS+R37L39EP+X3OHdumA=;
 b=GE9f9yU+kf/VcH9EPOWst2Dp65ayw8O+OVIdYTxaE3/663159PlrPJ6TS0tlFE0ZvG
 H6ya+8ihoNBWusR3Xwu5Ek469ijp1DSeGIjKXUBPfgr2HM7zzic9+iKlasFpw6KipsND
 pp1az1QcT1Lf5ZDBEUMI3OwUFmpT6tkeA46vFatDQycal2RS3qWOXVBYzYAmtXpyCK2J
 IhQ/A67v3YpsOyR3gqIhh9LZBYPKpwUlfjVvgE1tOd1aAdjnFZSDlVZp8tX1h7BP/cNp
 48CoS5mHAqJVuIHEpTNYKzmjr3siFZyB9ZJ3ksojPqcFAXnej//OK3pDrOXQ3cQlswX0
 k1Og==
X-Gm-Message-State: AOAM533M3cgK7kPp5Wbzi/tnVvlMunShyX3WqHKcw/nYiJJUOR+uBpSN
 o9qpXnqNonXCOBb/lo0vkO4ctmQMfDIBuRW2FRZ/pA==
X-Google-Smtp-Source: ABdhPJzNfGfNdBgl/JJpnGyRowW9LBmQ/5RldTpIc35wpQR9xtvWpjDFGb9F6X7IvF1goJw4p1ikZSe4SvzOYC9hJ40=
X-Received: by 2002:a92:d3c2:: with SMTP id c2mr5456378ilh.181.1591003416905; 
 Mon, 01 Jun 2020 02:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck> <20200527101929.GT5031@arm.com>
 <20200531093320.GA30204@willie-the-truck>
 <CABV8kRyHo+EAWaMUzGA220z=HJRBCpH6UWiYGb84uSL3h8HQHw@mail.gmail.com>
 <20200601091441.GW5031@arm.com>
In-Reply-To: <20200601091441.GW5031@arm.com>
From: Keno Fischer <keno@juliacomputing.com>
Date: Mon, 1 Jun 2020 05:23:01 -0400
Message-ID: <CABV8kRz2ineTcLS29Lh=BW_kJB_X7PoqY-MaMj_pUUziOxrYCw@mail.gmail.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_022338_483274_26F15883 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kyle Huey <khuey@pernos.co>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 5:14 AM Dave Martin <Dave.Martin@arm.com> wrote:
> Can you explain why userspace would write a changed value for x7
> but at the same time need that new to be thrown away?

The discarding behavior is the primary reason things aren't completely
broken at the moment. If it read the wrong x7 value and didn't know about
the Aarch64 quirk, it's often just trying to write that same wrong
value back during the next stop, so if that's just ignored,
that's probably fine in 99% of cases, since the value in the
tracee will be undisturbed.

I don't think there's a sane way to change the aarch64 NT_PRSTATUS
semantics without just completely removing the x7 behavior, but of course
people may be relying on that (I think somebody said upthread that strace does?)

Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
