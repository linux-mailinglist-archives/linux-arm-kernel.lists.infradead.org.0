Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4F8CF540
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSMdSfMWFl8UhE5fqEj0lzyvBfa5zulutiBUR2S1GTU=; b=eKjyBs31jKbimT
	hMP4Tu29iSGYsMIOYqLjvnNfRWeSLT7Z2IvSqnL03NaMnjsH/SvscQ26b7KnDOP7GYkXj0OALvVwS
	jbBJ1g1G2KYYMiKI9oJVhQPg9jHr9f13P8SN33ssfloD3JLT1kVJKab+9bDcMOpsH8nwKlxG99Gvj
	PDySdV0qiDOD03uOdzDrX5sPBRo7olsUart2gE5ARXp4pktvsTtdaJMpBdSIg8ZBOvhpPrm/NVv5g
	G6Un/+nJH/7Z8vvKkNMUy2FIqRq9Dr3BG7RHY+3U0aQBEnfLysWRnieko1+ipHAh7i0k6TzndndK9
	nU2Uk9SHs2ZvaqUe9/jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHl9S-00012P-Su; Tue, 08 Oct 2019 08:47:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHl9L-00011Y-Aq
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 08:47:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id m13so16585576ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 01:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l8gpydJYA0YDgp2JmqFlI7k3M5woSWANVYThPnzBSyg=;
 b=BkRMuuut74Tg4ql3czpGBiGETKQ47t0yfFGj9qUtoNECtFLrPq7patqxRQTIKUPosJ
 e5ij5XG6gLCR9aH2tMBlyg4nicWRgSUUeguPdBLCGj5e+fmO4WBOWHqbIrjN23GcV9X+
 9UiM5zuZ8kUOjmbmakyLfk3DNm7gDqehMEcBVhaBie4GaVJqRz5rpcUAluJLllJOF3Mf
 +y7BzcB/eQ1ZrGH8gN2u8Rxxi+fzSaghOC5xViRMArZNRSxn2csNz/W1bUfwb6lH8tnt
 yTgKoyASrJ8JwI3YQxZpWYMIBXyHXAIoXg2BD9qf9M9BjKJeDzu0rw7W+YgoKaSJzGqP
 eNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l8gpydJYA0YDgp2JmqFlI7k3M5woSWANVYThPnzBSyg=;
 b=HGjYlpT2xqAvNzvN0R+B4hNoNmHS4YA7aIVHOLDvYWFEXin2mtXC4501FSTI8+vvgi
 FyjUwPS/JSf3G0d/Osplfx6TWld+xYa7UKP5gQ3EnUOIs2CCH9hrkgJccLnX+g6E4bJW
 tYu+h3rvm8IZzaqpvLLui1FSYXeVtx/YkBLjP8dI9yWwnhXxg0VR03e9bBhWoix5VsHf
 F4gHXOzJS26cSpP7DALf+VlGh+hWaAzkNnM7QN917JKalo0A+zjlKNC7TpRWFgS4Ltto
 KnxGT7lbZiJGcaV2CfXubY+BF/Wp1A82Ek8pUwMXiiDjt1EZFdmVeYXjwcxbzLDN6Qhs
 x1kw==
X-Gm-Message-State: APjAAAVL1dC832ZnJZO+tDHFcYALwW5RsXv2ko2dQS92lGD7eWagrb/u
 qOYmJUmbPa8PyZyC7b7nyhg5r57Gm9a5Yr4dgSBt1A==
X-Google-Smtp-Source: APXvYqxbNM71HM7CPR6QRsIgEbU3UU9U/CSiMXaA2SIbIfrQl+rWLBRuuYXoBIaSEvilchXKRH21ww7tus0XXj0qkXw=
X-Received: by 2002:a2e:63da:: with SMTP id s87mr20899729lje.79.1570524436968; 
 Tue, 08 Oct 2019 01:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <CACRpkdbqW2kJNdPi6JPupaHA_qRTWG-MsUxeCz0c38MRujOSSA@mail.gmail.com>
 <0ba50ae2-be09-f633-ab1f-860e8b053882@broadcom.com>
 <CAK8P3a2QBQrBU+bBBL20kR+qJfmspCNjiw05jHTa-q6EDfodMg@mail.gmail.com>
 <fbdc3788-3a24-2885-b61b-8480e8464a51@gmail.com>
 <CAK8P3a1E_1=_+eJXvcFMLd=a=YW_WGwjm3nzRZV7SzzZqovzRw@mail.gmail.com>
In-Reply-To: <CAK8P3a1E_1=_+eJXvcFMLd=a=YW_WGwjm3nzRZV7SzzZqovzRw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 8 Oct 2019 10:47:05 +0200
Message-ID: <CACRpkdbuwn-YBYd324OsfC4efBU_1pfnyS+N=+3DmrYOEKKFJw@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_014719_381531_F8B7F63F 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Hocko <mhocko@suse.com>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Dmitry Vyukov <dvyukov@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 drjones@redhat.com, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, philip@cog.systems,
 Jinbum Park <jinb.park7@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>, Greg KH <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>, Rob Landley <rob@landley.net>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Garnier <thgarnie@google.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 12:10 AM Arnd Bergmann <arnd@arndb.de> wrote:
> On Mon, Oct 7, 2019 at 11:35 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> > > 053555034bdf kasan: disable CONFIG_KASAN_STACK with clang on arm32
> >
> > This one I did not take based on Linus' feedback that is breaks booting
> > on his RealView board.
>
> That likely means that there is still a bigger problem somewhere.

I will try to look into it. I got pretty puzzled by this, it makes no sense.

One possible problem is that some of the test chips on the RealViews
are not that stable, especially with caches. The plan is to test in QEMU
and hardware in parallel.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
