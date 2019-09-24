Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D7EBD05A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 19:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYyuwm7yMvvfCju2kidxKQV2jKumL6sF9H2xRj9vhvo=; b=Rvvq9xaT8F93O6
	elFqDvyxp1xa7BxgGJXPwhkfSesR88uayJVOx779ml3J2UVIv1FOZ5c4YMng359N3KL2pjSS9302h
	gmkMFBIpymrAi2BOS6YYQYlRrrdD6o+0jQWXNTttvUNrqMokMPxXjUjhP+TGYcjjGix7Vunj8znLa
	YKoFeYxo/LtXP/vAIKSccdlyXHLBDQGGzIu1c27WCc7JbfQqhB4+gNJOuIHM0I2j4l73QDpfdhL6t
	vxzK4TmJXjtqEah5bd7Y2KBW9NVdCqfsXT6QiAhJOzukJ6IWdQcMsdCcdkMHL9WzwuVKzqrQRmRT9
	/T5ABlXMUV7W1P/Dxkdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCoMd-00082M-CJ; Tue, 24 Sep 2019 17:12:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCoMD-00081K-18
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 17:12:10 +0000
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D88B21971
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569345128;
 bh=SRE4w45g2rUmKQrrhnWYkWFb0+EjC7R6yTgfc4Pc+Es=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Cul4lPj43R8SyZJQUrm1p46lCQuMZI9UnsJcDgpnHzZJ8uDFW8mskgD538ujFAp7r
 GMQjnCrwIiJv5CpFT5sD2o9WeddqpRNSJZ+ZvBu1++0hAreStOeIqgualI3wNRokzO
 FJFSzQhe72b1eUfPKiXabbR3dq929RWk06sPT5YY=
Received: by mail-wm1-f53.google.com with SMTP id p7so1011397wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 10:12:08 -0700 (PDT)
X-Gm-Message-State: APjAAAXHxlU3H/fUjeijavrdXgYYFiy9vaHTI8khNRIzuTlgqnKBx5CB
 oi2nQPMyUgm7nqMle8Q1W6yQ12Kdf9nSPiarHo5VLQ==
X-Google-Smtp-Source: APXvYqz3Q0HHqCyDvH+elSspozaob5vsw8VZ7sTVeqI9f4cRrzEBFK5bbTHm3tCuCwTdatbEuC0akEIkOQ4fshlQF84=
X-Received: by 2002:a1c:3803:: with SMTP id f3mr1303822wma.161.1569345126773; 
 Tue, 24 Sep 2019 10:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
 <20190924064420.6353-1-christian.brauner@ubuntu.com>
In-Reply-To: <20190924064420.6353-1-christian.brauner@ubuntu.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 24 Sep 2019 10:11:55 -0700
X-Gmail-Original-Message-ID: <CALCETrUdjCZ2tyGHuYi0TOQDtxEDAYdv-17=-5MKpfzFdiPNMw@mail.gmail.com>
Message-ID: <CALCETrUdjCZ2tyGHuYi0TOQDtxEDAYdv-17=-5MKpfzFdiPNMw@mail.gmail.com>
Subject: Re: [PATCH v1] seccomp: simplify secure_computing()
To: Christian Brauner <christian.brauner@ubuntu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_101209_104607_F0EA3DDD 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, Will Drewry <wad@chromium.org>,
 Kees Cook <keescook@chromium.org>, Parisc List <linux-parisc@vger.kernel.org>,
 X86 ML <x86@kernel.org>, linux-um@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andrew Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:44 PM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> Afaict, the struct seccomp_data argument to secure_computing() is unused
> by all current callers. So let's remove it.
> The argument was added in [1]. It was added because having the arch
> supply the syscall arguments used to be faster than having it done by
> secure_computing() (cf. Andy's comment in [2]). This is not true anymore
> though.
>
> /* References */
> [1]: 2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")
> [2]: https://lore.kernel.org/r/CALCETrU_fs_At-hTpr231kpaAd0z7xJN4ku-DvzhRU6cvcJA_w@mail.gmail.com
>
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Will Drewry <wad@chromium.org>
> Cc: Oleg Nesterov <oleg@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-parisc@vger.kernel.org
> Cc: linux-s390@vger.kernel.org
> Cc: linux-um@lists.infradead.org
> Cc: x86@kernel.org

Acked-by: Andy Lutomirski <luto@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
