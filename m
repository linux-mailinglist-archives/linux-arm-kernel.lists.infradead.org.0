Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792E01D9549
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WabOiVbxvlpzh84I/yJQAjr/c+lr8I5SzFtNbQ2UhZM=; b=UnFa/0Vk8uaFmT
	OUaO8hwNOURhnDYVoe1GBEJqrUKxwv7gxdQh1eM/x2NLgycRnJtzwU8aj+sYHzIbQftOhGmGlldgH
	FsKjRR5hksk7gHxsKw15fdwgTAoTgFpjDdxpwF9LT6ck0buceyxN8GFbBbe6bFx3sjmci+S6ueN61
	sWi0WDOF7+QAOip+FVCt/cNMtZfImgzTdNlmH+dkrPAckJXKqMJ25+ogBIVc06wYzrFKpkhs1umox
	P3qbqSy3H2UTauGw04VkM/gtfM8svuAHXA3+hWw7rWwws4aoSirRCutS7KVgVaNnw7vf/aNKBpBQB
	dXcES74sH1Fb5k1cwUgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0Qd-0007wx-1s; Tue, 19 May 2020 11:28:59 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0QV-0007vm-OU
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:28:53 +0000
Received: from mail-qv1-f54.google.com ([209.85.219.54]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MvavG-1ikYQf3XHy-00sdC7 for <linux-arm-kernel@lists.infradead.org>; Tue,
 19 May 2020 13:28:44 +0200
Received: by mail-qv1-f54.google.com with SMTP id l3so6265268qvo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 04:28:42 -0700 (PDT)
X-Gm-Message-State: AOAM5330qY/GihG80Himrp3NBWg1V/0iai6gBqdoOWXi1tnqiEejASrV
 MUWfo1kOThg+J36buFC+sOeWw6H8GeDPFja06hQ=
X-Google-Smtp-Source: ABdhPJx+Ipnp1De8u1nx4B4U7GgZtHcjTeorwfefYcSy2qSkv9jr1bxjHK/e2HLBvFYfYy1Fq3XFH9dyxPrnUgH7uP8=
X-Received: by 2002:a05:6214:1392:: with SMTP id
 g18mr19411615qvz.210.1589887721612; 
 Tue, 19 May 2020 04:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
 <20200519094637.GZ1551@shell.armlinux.org.uk>
 <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
In-Reply-To: <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 19 May 2020 13:28:24 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3H=7qx+Rz9sScTVCSMKWGwQ_ROnyoyK73A5yUd+_jbTw@mail.gmail.com>
Message-ID: <CAK8P3a3H=7qx+Rz9sScTVCSMKWGwQ_ROnyoyK73A5yUd+_jbTw@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-Provags-ID: V03:K1:ucqu1acsrx1sq79rrMFE5X9PkzSEu9oyemE9AiseyE/gQjukifi
 3Y/0N3TLb+tk0qfNIgtzH5K5zQSqjgNbq2epRHeND7sx4oFo2nAk/1KTtxplZ1OlkXaLe8h
 7qFpCfebQMyOidO0Veu12vLXg30trijPi2kquGVpT/z4/owTF0Dge+Z9nKxQC6Ivt1Qgp2f
 Kkk94wAN0Jl03hpj8h/cA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CD8Ui08FQKY=:wuv6MF7q/vUFW1S+HwQ44h
 JgJsu4ZoFmg38GbHivvjvgUpPMfChXYhz5vKoIr1vrcCLWBVs1UZh98Z/fMI0ChVSVTUJJNF9
 KmUyucZs6XfcRacP4qLUe56MyxJ9kEdvhi0ciujI70JIiJh/j6JpXeJ2xeACBofDrORamLFuR
 QUuV++ozuvULPuLzeroN7JLXkCZp85JQw66yW1zY2ecHTGCfBf+eDir6P43zsIa0glUa0r3mb
 Ka7eP5FK5sVsnNOqnEkb19P/tIMQ8hpAOfgl+9HKvWX6sIhxTqV9rSPusinJo8x1vBG0CLSVJ
 a8ToJC5v2c34GUu4qkwZtRr7fJhsKjwEyoSwxgtIpwQ6cn0++HGXF1JwOP+TheMLf50oDSibf
 gWt1/c/7nZzYZTWqkHPPoIhvngFToTes7JFxsw9ig3sU8CcfXuJRkpdIrGqMKi6WFseDahlvx
 tZ//Ms4OAMUXEQcGZi7s+P6US15q2+q9i8UscDcUi+4tzdKebANk6ClehdPLTIFlCDKRRzINq
 ujiiYxw2Aw1hmp6UWrXMtMwygW8B7FL9VlsamZIkfPLekoIZrM4BpDp+3jnsfX3ARRTX6NRBD
 oPPk37ikydoQo6O7P+TPrGk1szSL16RHt3zBvuE4p0D74P1QQ5O079HG21tKmVZNMoPGZXOWO
 9vhOc6/QAswxyNa6jbj6+u6GOFbpQYkMlrKhQkFvc3NyIhfO6l429ggf2INIqnJJpaet/6uV9
 aQ6aB2puYBZATvlNfijUvDw+oSfBgJaiRsLQWENPYTwBrFQVwKbel2NNazSHMu7urHOqQPYmV
 keAxWnO5Qay3r/DQoHcaSmfkceDqq/a2o5gAY14gC0fBMua6R4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_042852_090263_A194AA7D 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
 <devicetree@vger.kernel.org>, Grant Likely <grant.likely@arm.com>,
 Nicolas Pitre <nico@fluxnic.net>, Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Lukasz Stelmach <l.stelmach@samsung.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 1:21 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, May 19, 2020 at 11:46 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:

> >
> > > However, something under /chosen should work.
> >
> > Yet another sticky plaster...
>
> IMHO the old masking technique is the hacky solution covered by
> plasters.
>
> DT describes the hardware.  In general, where to put the kernel is a
> software policy, and thus doesn't belong in DT, except perhaps under
> /chosen.  But that would open another can of worms, as people usually
> have no business in specifying where the kernel should be located.
> In the crashkernel case, there is a clear separation between memory to
> be used by the crashkernel, and memory to be solely inspected by the
> crashkernel.
>
> Devicetree Specification, Release v0.3, Section 3.4 "/memory node" says:
>
>     "The client program may access memory not covered by any memory
>      reservations (see section 5.3)"
>
> (Section 5.3 "Memory Reservation Block" only talks about structures in
> the FDT, not about DTS)
>
> Hence according to the above, the crashkernel is rightfully allowed to
> do whatever it wants with all memory under the /memory node.
> However, there is also
> Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt.
> This suggests the crashkernel should be passed a DTB that contains a
> /reserved-memory node, describing which memory cannot be used freely.
> Then the decompressor needs to take this into account when deciding
> where the put the kernel.
>
> Yes, the above requires changing code. But at least it provides a
> path forward, getting rid of the fragile old masking technique.

There is an existing "linux,usable-memory-range" property documented
in Documentation/devicetree/bindings/chosen.txt, which as I understand
is exactly what you are looking for, except that it is currently only
documented for arm64.

Would extending this to arm work?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
