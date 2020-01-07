Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6701333C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqpQjenbFC5IHYVUCGtYm0vf7jKrylPPmy394J9/as4=; b=OARNuxfqjgC3XA
	mxJ5FuwQDAvkrYePId1Ryygt2cqhdAjj1P/tZHuOGBa82HfzXOZzU8hNOJT+mT0lhlvPU/Pnk2yVg
	aA8dzGLWZUeQmKZhrsZxVAlKZ5C1IF7otCoNEn7u9MMOyjW2fra95WydfepcizqwtLN9Kf89j+pKN
	o0AUdbGE81qCh+zL3SeT7PQywb3XfVdVUdKAmeh88Lax9o/LYx5P0nES8ytyyvO/I6oFb5bAu33fH
	xoLgF8LaV74/Gzjnqg5Fx3tti2ulWCxqHxjJcFRTpObSUIQN0Kcs6unxUQ3/GdUeiDF43OSg//i3V
	9d7wztvoZRQMqjDPXORA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iowIF-0003aa-TH; Tue, 07 Jan 2020 21:21:39 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iowI8-0003Zx-GM
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 21:21:34 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MQNAv-1j2KPB399N-00MNZr for <linux-arm-kernel@lists.infradead.org>; Tue,
 07 Jan 2020 22:21:28 +0100
Received: by mail-qk1-f181.google.com with SMTP id 21so793398qky.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 13:21:27 -0800 (PST)
X-Gm-Message-State: APjAAAV51DFXp+JjjSVfH5/0DMBPq96gS9vdzSmh3pq3RGb4lpTvfO1/
 AKXcHj9WVm0Cv8mY+i+qwuIBg5M3mVRcvpjDB9k=
X-Google-Smtp-Source: APXvYqwWX14oOMnhpeDIoY9y/919XllKVczGD7LmnCZAjDLYU2w9nCEzI9WjKQKE+gbrCYDkW3aHGRLQ/VQ1GiU5OO4=
X-Received: by 2002:a05:620a:cef:: with SMTP id
 c15mr1363924qkj.352.1578432086524; 
 Tue, 07 Jan 2020 13:21:26 -0800 (PST)
MIME-Version: 1.0
References: <20200107201327.3863345-1-arnd@arndb.de>
 <CAHmME9rnevSYwWvfyv8LRitVo-=KVpPCoGLwYxo62mwnW0vjiQ@mail.gmail.com>
In-Reply-To: <CAHmME9rnevSYwWvfyv8LRitVo-=KVpPCoGLwYxo62mwnW0vjiQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 7 Jan 2020 22:21:10 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3N=Zcq3rztj94Ty0_Fbfkw4db+-fLgASvK_UD4LTY=Ww@mail.gmail.com>
Message-ID: <CAK8P3a3N=Zcq3rztj94Ty0_Fbfkw4db+-fLgASvK_UD4LTY=Ww@mail.gmail.com>
Subject: Re: [PATCH] crypto: curve25519 - Work around link failure
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-Provags-ID: V03:K1:FLz2wStLknOqy6gIoYgiHHohQHKWXkAfjnb6qK2ctbMug/svgM4
 Yd/0E98C1vZmHH4n96nIjTrCDDBkA4rOQU20WrUGJpTBLHKk8QiSaE1YuCOba+ETBDtqL6r
 msMWlbjZEV7sSOCvpzh//4XEyq2t7mGQBzgZ2s/1ED4zR4lIiR+7Jpp36nOK68ziJvQfBJj
 +5fshXCJ9K7KoiFndNbfw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wNVWCCja80w=:hOIrOmzl3sW2QLbdfR+p6t
 MAc6HixzYwMgNyZqFpD33N7Lg49Fv2n+I48CAImr+fKv0AB7SlC/3NizwYHXx/DEsj0avB/8+
 jpftKMaUzm19E2fAA/0mZ1k5hd6I4F5wkiXwPprfsAKoZa5SD1I28n7AVkR7UcPM6EadYM+eX
 ky+J3IwLcd7qLFwmYHh3NJQzRVEh2LIEAh9pHYs9kMTFXB1n8opIJgqQxMI/nwYmUdYit82nl
 LQl6qF0wxrJYMox/Y9G+Ir/7LUhGYtjcqEBDMuRcwl3hRncgZ4va0YPEQ0UQICj1O5PbJaGJT
 fJ82DLPjt6r6pwsiPvGqFP+toU30fSNtulYJfn+H0OqBljz1oSZb2r6qg8NmxbtwZ8C7+50/0
 x0A/N/gV2adQ+6V8e7t/0XJD+O8B5+Ql6SlZuXGJeo+XJNU84IVEEjNdxOUeq2EHVb7ptZOu/
 tgPlO0rL6nKoKHqtd6LOF/ax4XJ27NVbzBHabhgqLLWL2fBpaVKFzT4G6s/DAmBcX1Mvgbp7v
 IB2T1zx/gtzwideCrTKrFS713HYkIJFApLTqHu4K3eOEo3edEuTAjVXW+bjywFsAvbVJKQ7wS
 BT5q6Hc0Z5pYrcxdVYOgYZYYUBFOqSa/4YqFoH38lUkX+DPLisFQ13Guy04Ko/wG3BF8QPXn1
 QgoNj9ZKEnreSVkdBWyE6r42WfYLlzx3QPrUn386vxqtSmlELlK3YKVWmuiaK5Gi1a0Aj2XQ7
 pOvVCFZKOfJsUULG6O4r+khBFbToKlEMTzFaxIbWPTfHnETJ2SDZMmAQt1I2atA6d1uCmK01/
 9fBVwdkGqC30kyhHp/AWT5jvqA4uFePWGHZxpFuQYrz24kcx2uZt9/XjZXMALKUfI6PNXgi5i
 KaaZEofvr0JOw9E0vufg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_132132_836163_9EB28DBB 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Tue, Jan 7, 2020 at 9:26 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hey Arnd,
>
> Another solution to this was already posted:
>
> https://lore.kernel.org/linux-crypto/CAHmME9pg4KWw1zNVybxn1WLGusyGCjqeAHLQXY=Dr4zznUM82g@mail.gmail.com/T/#t
>
> That might be slightly cleaner, though yours is shorter. I'm alright
> with either one.

Yes, I agree the other approach looks nicer. I've added that to my randconfig
builder in place of my patch to see if it's sufficient. If not, I'll
let you know.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
