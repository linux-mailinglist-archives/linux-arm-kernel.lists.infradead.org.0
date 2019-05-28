Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CF22C020
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWDHHy9kXnBgbOeRDnH62/k+f2L4PnTEcaqBC3bvGUk=; b=EYF3+Wn4jB/2ni
	iAII63Jw+IafJicsGplFbxWAkD7HSf7p4KP1CMLfvdfXQXdAHkuKzkWj65FlTK1Trg4ZjKouIcAEs
	LDMk48xJYjUBTYOF6XqGdI8X439JZQHxRG9KQTRW7NQxx+dNVvSXG+c92JQOGS1R2eOXiaoRIDDas
	UqRO4v9VFJQCmTMen4Fir6BRJzUaGg4F6brm0tEWMviEDg2c6eTfrfvpv/QLy++9STpjexKiRWvUx
	klma/NGmMOSzM0S/oJpSiskphozH1vzT84BYjvry0ltgQjm2/e40BJ1EqN9V0Cm2EyMt2l2ut+a1M
	vCPvDTiyvg3L0PSa4wmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWbV-0003aD-8L; Tue, 28 May 2019 07:33:01 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWbO-0003Zq-Qy
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 07:32:56 +0000
Received: by mail-qk1-f194.google.com with SMTP id a132so21001212qkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 00:32:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nhOkwCI4oeSEN7Z9K4KfT0XX1rSzyNJY90lVt/0jJOU=;
 b=qg2UmX5Iroo5L8CcyQAJhABreEs9Zq3Wm5Y2uTk5GouFwlWelXORRwhMh0/gSMtkpt
 P6WQlnStvq1a2x8Hd+g9Hnc8tfG8NFGoTopPjNkwrmu/KtFtizTTOvzJIEv/wNA/Yk/S
 S3U0aj75v7XKBzQFQMmlToisEBpca+gEwNbufqINjaix3C7ihF4Z/1ej+OZPe6/k7C7z
 4rTCCmsu4ZYXuoWJLRDKc3da6Z4L865g3nRq3qEuq1jB2+x+iFLrbZ72uSbRGxpy+nMJ
 8S4tMxvgLC/270ZithYicz9ybMeFoHiFv02WH38jBs2NC/wStXiD2zETd64T6ypoAUux
 4GUQ==
X-Gm-Message-State: APjAAAXbZTZn2rIvTwfHa1lQk9UKeXvdVZWUqwfRrUoU5jJvLh3a/lwM
 bmF8tC8D+LJedaOmjW+Y8pqYY4OtcD9eYWdoX10=
X-Google-Smtp-Source: APXvYqylrkn3/BX9liY/cTQ1OBa1FrymChHdVLo17Xc0wPDis02JNOwWyGK+pytYVYJnvnNKn4svc8lO3SffLaWaNtQ=
X-Received: by 2002:a05:620a:16c1:: with SMTP id
 a1mr5405199qkn.269.1559028772951; 
 Tue, 28 May 2019 00:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <2072571511d5c77bb9ac53168e44e90b@agner.ch>
In-Reply-To: <2072571511d5c77bb9ac53168e44e90b@agner.ch>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 28 May 2019 09:32:35 +0200
Message-ID: <CAK8P3a1rBt8JLjaDqL-0FnFhUR=f5nsqF8tJhYzOjHyTf18+dg@mail.gmail.com>
Subject: Re: Linker error `.exit.text' referenced in section `.alt.smp.init'
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_003254_875013_A482DE7E 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Masami Hiramatsu <mhiramat@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 9:12 AM Stefan Agner <stefan@agner.ch> wrote:
>
> Hi,
>
> Cross compiling Linux v5.2-rc2 with CONFIG_DNS_RESOLVER=y using gcc 8.2
> I noticed the following build error:
>
> ...
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      init/version.o
>   AR      init/built-in.a
>   LD      vmlinux.o
>   MODPOST vmlinux.o
>   MODINFO modules.builtin.modinfo
> `.exit.text' referenced in section `.alt.smp.init' of
> net/dns_resolver/dns_key.o: defined in discarded section `.exit.text' of
> net/dns_resolver/dns_key.o
>
> make: *** [Makefile:1052: vmlinux] Error 1
>
> It seems that Masami noticed this a while back:
> https://lore.kernel.org/lkml/20180911231012.fdc45840f3d91860daa2e180@kernel.org/T/#u
>
> Anybody else seen this?
>
> When I remove put_cred in exit_dns_resolver the kernel links fine...

I've seen two or thre of these in total. This only happens on 32-bit ARM
when a function that needs SMP patching gets inlined into an __exit
function. In this case, it's the atomic_dec_and_test().

The last one I fixed was https://lkml.org/lkml/2019/4/15/625
I think I've seen the one in the dns_resolver before but couldn't
reproduce it recently.

I used to have a patch that completely avoided dropping .exit when
SMP patching was active, but I think we can fix them up as they happen,
as I have built thousands of randconfig kernels without hitting this.

The easiestwork around here  would be to drop the __exit annotation
and add a comment. We could also move put_cred out-of-line and
make it non-__exit, or add an extern wrapper for it.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
