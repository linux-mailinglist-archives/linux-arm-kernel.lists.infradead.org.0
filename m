Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D4C133088
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 21:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hf+WGTJNCrum0Xx18nVJouWr9pS1SoeGsE03noaTRIs=; b=bz9bVdx1Yws/HQ
	OB7lUP5hiISC6YA5X07k9a7xO1w9zh9LLBIbW39AfezgzG4RKdHh7JrsUY70OC6LDYJyaYmEzgtP5
	rBKQaMIkblQEB0HIF5ZHpWRokzsIgtvQJPsBB6PVdTOZ6It6je/Yx8TkS5SPXVyYbl4nnjsBR7k5O
	b2eEDWf0Vz2b5EqWBEC1IqITGKkvZAkRPAV7mi9cf3S1l0vS5YblcVu4OwLWaHgIdARGlAhzUautG
	4cNJ0WntGTk0KHqr3gR8Po6kRq+1ESmRp1QvXpQ5O6f57eswnLBtAS20OWDQivI+0Rn+6cJK4IcJH
	oKLl3hMFGgMWjw8aLRiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iovRA-0007RB-8y; Tue, 07 Jan 2020 20:26:48 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iovR2-0007QO-Sb
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 20:26:42 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 3574d30a
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 7 Jan 2020 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=SF2YH1/XcFCc2KICEQEdNyxtQ/4=; b=potrUY
 cYc0INRLt1UQpOT+tflIdYmfRQUpqV0aEyc2mdguvNrEmgbgouPIqP9Ir+GQYOyw
 1ynogF16EEP/vLiUaGmrlzw5hjhttdvkV7mZlXSeRcjyeAyeq+A72sZ5Yg3hWd4t
 EzUHh0mJv7Y3B6JfPOY+KT8MPTYCasgDBfXNIVMAxpnN/85zF8jepuMdW9ukUt9C
 LaJLvFrJ1eRESdFINIeuKFNKmAVNmZ+2C+S7RVHwaHVllJvuKJKGc1NgJxEbeyTU
 REScLAiV1zaRZZd9lekRJc2wjtF7ViDoAB3V2MVfPu2+lfdz2kjvLttszMXGUB4L
 0pw5+3Psr6W2kXfg==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 60c6d25e
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 7 Jan 2020 19:27:21 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id 18so602110oin.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 12:26:31 -0800 (PST)
X-Gm-Message-State: APjAAAU2UB2HybNPvuKDnksJyRUlh7/hH4EkAMHzFFC0hTPz2jQ1qGxK
 /gnBdXTIOJDBPsjt1qQybbvbIJb/xUkDUpMGzFE=
X-Google-Smtp-Source: APXvYqyug9RB3w6WVZGIbyrZdMVtg+VyewWxlcNicyva/YUGU9Mjf8+VEkEsiVgp4/YgWGPf8IAdQRchEgtb2dz7gQQ=
X-Received: by 2002:aca:39d6:: with SMTP id g205mr186294oia.122.1578428490343; 
 Tue, 07 Jan 2020 12:21:30 -0800 (PST)
MIME-Version: 1.0
References: <20200107201327.3863345-1-arnd@arndb.de>
In-Reply-To: <20200107201327.3863345-1-arnd@arndb.de>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 7 Jan 2020 15:21:19 -0500
X-Gmail-Original-Message-ID: <CAHmME9rnevSYwWvfyv8LRitVo-=KVpPCoGLwYxo62mwnW0vjiQ@mail.gmail.com>
Message-ID: <CAHmME9rnevSYwWvfyv8LRitVo-=KVpPCoGLwYxo62mwnW0vjiQ@mail.gmail.com>
Subject: Re: [PATCH] crypto: curve25519 - Work around link failure
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_122640_996267_8B6AC802 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
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
Cc: Vitaly Chikunov <vt@altlinux.org>, Herbert Xu <herbert@gondor.apana.org.au>,
 Ondrej Mosnacek <omosnace@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
 X86 ML <x86@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 Samuel Neves <sneves@dei.uc.pt>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Polyakov <appro@cryptogams.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Arnd,

Another solution to this was already posted:

https://lore.kernel.org/linux-crypto/CAHmME9pg4KWw1zNVybxn1WLGusyGCjqeAHLQXY=Dr4zznUM82g@mail.gmail.com/T/#t

That might be slightly cleaner, though yours is shorter. I'm alright
with either one.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
