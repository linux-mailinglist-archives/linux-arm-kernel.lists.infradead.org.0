Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3DBA8353
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpX3xoI9nIqM0r+G0JpQynDtTSEHkFTDn9CWMtnkE1A=; b=q7rXaFjaCqjtV2
	loZKkFIX3UvEqSZWiq5s3DYi4XZbhTNdaYTIaA3grc8Ed5gdu/0wKLIZ3gyOf/06eYyMJk7KV6/2c
	ot8A4c30psxK4T/ELJOqeDeL89a8YJIREqelQ2i8yjgnCr9W/ZqxJE3DYdBMkyblAF5JOQglkN8qW
	vjpMrdHiBqD4nGlENQqAJ21V1p+f3onlAkzRL49iIrCs+4MhhuZKuyV+QNpVYLMU3BlkuuVJk3YOu
	qYgHSn0k9F9Ytj7ao+ue9As44WFOVc3x/pgJdeenuApHlRA0c8z4gaP9z4rDwULU1Axp08gMAywlW
	qeaR+GliKGA9kHF9flpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Uvy-0002ve-Ft; Wed, 04 Sep 2019 13:02:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Uva-0002i2-3A
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:02:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id t17so3230702wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 06:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XYc/WH2seI0xG53pu04DpOsVrDgCeSJvzPVy1Wb7xbc=;
 b=OpobEe6f+1X770rq3d1rRf53pMVcgDaDEKe/WovlDp2hG/tqPnfNk5zQL1yR5IXJYF
 1MOTewq98YCQHq/Qu51mnCqQgtFbvHRRrMZ1+RGH0XfLfY6vCw6Dlf98UjtK/a+kDkuk
 nNsbIV8a1uNN66skhbYXIn4MVV0MeZM/TnE/j0BzdJTkbG0Nzg0kOh4ZJUZQtOh7vC/h
 bIEWGp3OWkoRDE2kZoGRRjicvsFXw0aeLn0495+eVPjpkaUDvVQNEfgQ3uSgctfx0TPl
 D8364k+W38v403LkqfHJzbpKJHFHRtkk4JMoBJI0YcJJFrX68HXQqL7xURr3fLiOJNV9
 6UKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XYc/WH2seI0xG53pu04DpOsVrDgCeSJvzPVy1Wb7xbc=;
 b=CpHVSMKxj9mPvrpLTChr6OWkXXf3V2KcRGKpkEXcw4QnceYxuf8lKePo0MXmeGKMvU
 W35szJ9rCAYmTJaGHIbXpJXHJ6Fo87aM3mb/KcJoHf2HaXmUU6zkzYy/V+WlpBT6dDwB
 8NMiQJP+Br2zdVz1kBOwpzigWs/43cN9lVfYIm+LcQ4I3tQjKf/8X6XNKTCyRuOkNjeZ
 tPhElskD+G+xdeEhpiJqtQQE+/PkbAehg517Z2vVESfBFaEUBCaw7lfR8oNrwOnxzf7m
 sM4aPjLKzKC9MjFZEvjxuHNajHoKcliboYeSt9YmTGFfBkDWmHZ+nV2DHmlysCisnSdI
 cztw==
X-Gm-Message-State: APjAAAUw65RqITint4WGJhU5C8xNsBNP+5QRlZgSz0WyDlHa3WvPVf0F
 dV1DqrmjzfZS6GgJq0Yn/TAsIQlndGrxqBHClV0Ibg==
X-Google-Smtp-Source: APXvYqyCgK6btzLgwwnSgv74jEoWQoHI8ozi7jcw7cQUQdxzdOcrwHxKh0kRXd8ctiQN4glkzmopK4ioCeAsyCa3ItY=
X-Received: by 2002:a1c:3cc3:: with SMTP id j186mr4129045wma.119.1567602141735; 
 Wed, 04 Sep 2019 06:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190901203532.2615-1-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 4 Sep 2019 06:02:09 -0700
Message-ID: <CAKv+Gu8zQd982BH=WRzJC_acU5d+JR2vYzwm9cs4Zrp5Y3FzrQ@mail.gmail.com>
Subject: Re: [PATCH 0/9] crypto: sha256 - Merge crypto/sha256.h into
 crypto/sha.h
To: Hans de Goede <hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_060226_256938_DE081B3B 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Atul Gupta <atul.gupta@chelsio.com>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 the arch/x86 maintainers <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Eric Biggers <ebiggers@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Gilad Ben-Yossef <gilad@benyossef.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 1 Sep 2019 at 13:35, Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi All,
>
> As promised here is a follow-up series to my earlier sha256 series.
>
> Note I have only compiled and tested this series on x86_64 !!
>
> All changes to architecture specific code on other archs have not even
> been tested to compile! With that said most of these changes were done
> using my editors search - replace function so things should be fine...
> (and FWIW I did do a Kconfig hack to compile test the ccree change).
>
> The first patch in this series rename various file local functions /
> arrays to avoid conflicts with the new include/crypto/sha256.h, followed
> by a patch merging include/crypto/sha256.h into include/crypto/sha.h.
>
> The last patch makes use of this merging to remove a bit more code
> duplication, making sha256_generic use sha256_init and sha224_init from
> lib/crypto/sha256.c. An added advantage of this, is that this gives these
> 2 functions coverage by the crypto selftests.
>

For the series,

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Thanks Hans.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
