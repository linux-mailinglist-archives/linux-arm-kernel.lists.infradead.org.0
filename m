Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5C21F1B35
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ah9t2vK6kQ0Aq/6ne1/+nc0znOkvUrGbG1FWyC3mmoU=; b=URxA0wP0gs3huo
	1hlkn0bg/0UrThmoCArCMG+/++Gj7Vjd+SPQfoFFP+Iv6CMcutNRAD0lwXJlRE0IzJLb+DcKXgjY1
	NdittGGzBozvTq5nOVcsCBZnzIYJXmtU+nXxHCejLidrvvF1jsKnZLunA9+WnFUG8VcviM/sJ+hj/
	uQz0Wc5/xuY/ASs80AcxOplzcMhDMmHAweme6Crqsq2jAKFQWXP+cLc5ChEKLSXa+kBGB77PT+pI/
	6uN9mtkiJTZY9lOh0tftDoc4fBsk6WZQpURssG7LkTt6Rn3zOt4+4GEApPpf51/+2TcMXHuMM+ilw
	qWCEj7ogJTBPAtXsXoXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJ0j-0003pb-IX; Mon, 08 Jun 2020 14:44:25 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJ0b-0003op-U2
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 14:44:19 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M7KKA-1jabti1w9E-007j6p for <linux-arm-kernel@lists.infradead.org>; Mon,
 08 Jun 2020 16:44:14 +0200
Received: by mail-qk1-f177.google.com with SMTP id g28so17463320qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 07:44:13 -0700 (PDT)
X-Gm-Message-State: AOAM532f5vLaoq+gM2hFciddW3xaySqtE3E+bXv/0Dx6K44MqQGwW0Rt
 GAziVA9JUkH1er2zUjOFhX06+zA9bARm2aVV6Y8=
X-Google-Smtp-Source: ABdhPJwK0DNjprGGWKE4jZbk/yfV4VjjjLxDUBlzD4JFgL+XYq9hUtWK9vhHfAEzQRES0o12IPdLhkDerNtBKiemf0o=
X-Received: by 2002:a37:554:: with SMTP id 81mr22887416qkf.394.1591627453055; 
 Mon, 08 Jun 2020 07:44:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
 <20200608111834.GB5736@afzalpc>
In-Reply-To: <20200608111834.GB5736@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 8 Jun 2020 16:43:57 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1q51=_DUS1A8k67c3TyQ+7LTpeo98LmzoFK=qg+8Fktw@mail.gmail.com>
Message-ID: <CAK8P3a1q51=_DUS1A8k67c3TyQ+7LTpeo98LmzoFK=qg+8Fktw@mail.gmail.com>
Subject: Re: ARM: vmsplit 4g/4g
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:2caRdwrHQ7zLSHvJNfCY076aQcf9Bx3IpUwv/wigyyNZljxl6z/
 8vAPwZ/Z+0zTQmbgegzbZ3bqOaloEqGHx4lsYfoWGNh7gmp4e/+/frgC11s2bGdTy8Fh3uz
 Xa8tvzN+h3WHHgEVJNI781L2ByWre76pQDL8OLbjdU3IbCwbs9LUVBFgcjUoQwVqxRHide9
 iW4HFY5XYPoyhLIbzQstw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3yjvoAdIiK4=:3zHOd+KW25rogoxtx0unFl
 XV5QwqCpshWIqcSkSzGHkcyPY+QhW4j2lM6L/91zJoTU3cwRK0BFTJc8b6XnzDdCNcstW7RXO
 JTvLpZpTFv8cao0e0Q8PtBHkXnVdB03cuGKgaeSjX1KgIBQFKk4aMmUnvJbMryP20YF12I95M
 HoXWuGgWG2a3whOAxivNQcho4guQrLPJtaFHEw4+Gifh63q0XYt++/9Wr1HMOQ+vNVRl3OXAP
 nTBRsKkThosmBcc2tPcyYPIsmWuhmhmy6R2b9fzqELzLMAgp+fk0Qkyhk5mQ6TkYH7CuFlfoy
 3VT9wnw91/D4Ox7uzqp+fGZg2SvcbcL8+RACxnwCkxW0Nukd/dtMbeG9SyFFNQ7FcjY+DN6gF
 8pHzNHrV6uL8i/8Ud1zbjL3TngBkqEIzMS5TeYQmi7WqlukRGOFSmz7kv7Zs2qENnQB0IhL5L
 TVpfIwGS9vf6czG8R/FLqWbI3GuNpxv9PniNjeTd1QoH2YbjmkSgZjwfHBhQGxwG5BfedCc8E
 azF/sDWS6eHKNy6CdtPvRedzOGvuhJ/6nqchJTGRMnWrwgfuY3YmzEbKus/opqKV1C71Sw/Vk
 yIXi8uXgvCDb/vsJ8EOmIiIjYphHCnuqq9cy+TQOfZKny2tczhrPSQL82WUjDm93cPKKSL2PO
 +RfMwuFXOe4uzHNqQUJteHC6AbfMtY8TORMY/aL1rIyiLENXIWR4hktGf01PABeJCAUYdOVvg
 ozlqQzcgnDJ2Kytxvqhj6h0cDtO3DiAr37CXL3siL6joRAoxs0U6zOk/WVWRZbryoQgNTPN/U
 qr/J9gnC3p923v+57xHAiISc7AvbytEZzzH0RMsGxEXgJ03UCw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_074418_261190_678DB77A 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 8, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> On Sun, Jun 07, 2020 at 09:26:26PM +0200, Arnd Bergmann wrote:
>
> > I think you have to use get_user_pages() though instead of
> > get_user_pages_fast(),
> > in order to be able to check the permission bits to prevent doing a
> > copy_to_user()
> > into read-only mappings.
>
> i was not aware of this, is it documented somewhere ?, afaiu,
> difference b/n get_user_pages_fast() & get_user_pages() is that fast
> version will try to pin pages w/o acquiring mmap_sem if possible.

There is another difference: get_user_pages_fast() does not return
a  vm_area_struct pointer, which is where you would check the access
permissions. I suppose those pointers could not be returned to callers
that don't already hold the mmap_sem.

> > Do you want me to review the uaccess patch to look for any missing
> > corner cases, or do you want to do the whole set of user access helpers
> > first?
>
> i will cleanup and probably post RFC initially for the changes
> handling copy_{from,to}_user() to get feedback.

Ok.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
