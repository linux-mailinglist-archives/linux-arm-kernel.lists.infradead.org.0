Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E1B1EBB6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6c1wpofLUqsemmkxK0PBGs1kNc85b+qE0S+iVH6NWeo=; b=PZCrxDMIaBrixI
	97i5roA4FgibfeXVUNUlz0O0LAYbtjOOW8IiBxjrFT43dGhRFqNpgGKDlYE2Mpf0UMj8715QapCtU
	hsQm9oWzycFV0zCPQV0GyRARDkispJ1L23q8ZjeBn3ToZResoIi1dB5Kyznn4lD8e1iQagRXdvUBu
	izcQkWoxTPoFzqntbOBsU/xd2KzTFUqMP6tSkknNhGJIQ1n8qWPbX5uTtLN3DLb0ZDqIDS1TfGMaS
	vVNps7x8b9ljsY/vJ2xTFczqKKuV4e4ECu+zSvGl3eJl9EepZsq65XZBEvseDV2aXfTm90b+KlIr/
	LIFUNOJ62p/HI4hlroNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5sq-0005Mh-Bk; Tue, 02 Jun 2020 12:19:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5sj-0005MK-CB
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 12:19:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id o13so10707714otl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 05:19:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8U9J7axH0X3eOq8QXa7GZDrK15sZ3vWR0+Ed5s8ZVY4=;
 b=IkoOsR+00Zz6CdppRQre+9ZI4Q6qd85AJ6icu6YBLpmDc0NAYSyEifyH1vv9s9kYwn
 i2HJ+3exIsi8t7yN5BJN8jg6UY202NEqobF7QbF+xFBa/tliJTj22AT1Da88jA0lpl2+
 Gq77jkiUPgYdG5805a3PpnGB5viFEXw9zwJ6EvPWiRld94qH58cs/a3lQEgNKhpyFzfN
 tHNV9sMBBmmFBosx3Rlqng4fsUOITKDYugSH5kdUxCfhGeOFk7hdn1IEAr5u5Pmlg5Ky
 t0YlpPCN5WvuxnyQ4NZPOjQWVkq6B/8VomdtCkR+qDKmzywrWE5ADw/YUPk2UgLYqSbh
 wnSw==
X-Gm-Message-State: AOAM531DhQrVjzAJe3DVEig0dLrNYl/vV1l9NdhxfyjeBFBGRcvDrcYn
 jCCgDU/TXC/caHZISdCZWCsVKQ+tccNEB4ytrLI=
X-Google-Smtp-Source: ABdhPJxCUVufn0UclL/j03PwgmbW0xMAjRRCPu26IwamOJj0Zaeu4kHWwVoobozYyflNIWwrQbiOzf+rDqC3xTORV48=
X-Received: by 2002:a05:6830:141a:: with SMTP id
 v26mr8421475otp.250.1591100340012; 
 Tue, 02 Jun 2020 05:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
 <20200521120308.GR1551@shell.armlinux.org.uk>
 <20200521123327.GQ1059226@linux.ibm.com>
 <20200521140745.GS1059226@linux.ibm.com>
 <20200521145020.GS1551@shell.armlinux.org.uk>
In-Reply-To: <20200521145020.GS1551@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Jun 2020 14:18:48 +0200
Message-ID: <CAMuHMdViAcnaPzeD6cS8U-uzjZARGyf0dqaiehevn+DwCNid5Q@mail.gmail.com>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_051901_417020_76EA62E3 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Doug Berger <opendmb@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Thu, May 21, 2020 at 4:50 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Thu, May 21, 2020 at 05:07:45PM +0300, Mike Rapoport wrote:
> > Ah, when either of these patforms will become a part of the
> > multiplatform build, the only option for multiplatform build will be
> > sparsemem.
> > So it would be nice if somebody could check the cost of using sparsemem
> > vs flatmem, espessially on low end machines.
>
> Do you think they will become part of multiplatform?
>
> If they're low-end machines, then adding:
>
> (a) the additional memory overhead of a multiplatform kernel
> (b) the additional runtime overhead of the complexities of multiplatform
>     kernels
>
> is surely an odd thing to do, especially when few really care about
> these platforms becoming part of a multiplatform kernel, except those
> who like the idea of multiplat.

The fallacy of "multi-platform", again?

Isn't it a requirement for any new ARM v7-A platforms to be part of
ARCH_MULTI_V7, even if it's a low-end machine?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
