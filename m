Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF3A19E101
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 00:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjI9ydHwVtvKkW1mDK6vq7TyocLxSwbisBP0gRFueiI=; b=Siw2Q1Rn7VVQcA
	duedHc6xKAjfnrM5lXX1fHd+FhouyQR/f1LWRwE/p1R2iWR1MLy4qbCuHiHTgk9He51K2Pl10TDeG
	UUk4XNtOBFhX19/Z/lIWUUyPA+V21t0Mkj4R4Re4eTXQsPg715pAnrO6UJ2ehhqIrr/Oov9fAB1OB
	QQOai3SMMwxYgAG7nWBjP90RUgAAItMGjTcXdpCR4B9dZqnkjsBKoMZvwCn6shXRpKNDqNR3KOfBx
	2g72eux+YDRXTRjSn7fIXXT6SEG+gntsgiEn6QbCEjIIsioVC4Cb0bQaA0bMJcsJyYAHFX1P17lvx
	FOh+p8DMjYSz7amYxRbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKUdI-0007UV-4H; Fri, 03 Apr 2020 22:17:48 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKUdB-0007Tk-6r
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 22:17:42 +0000
Received: by mail-lf1-x143.google.com with SMTP id n20so7035436lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 15:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EY7qB3E4P6Av4/deoAxdabDPQIzZPIH5u9Ftk9FOSQo=;
 b=YSBJ3oV1jxYF8RIhzB4D+ZfKeaM1i/0AX1gBJ1YLkF+JaYTdvk2SqChmLe5N7UtSbI
 +WaG4YYN9t4kIo8ZufNiDHCOa+RnaDbI8K1I1tSUGy1jVminpUhSiRyfx+WSqJyXObIc
 kXudSlflVn2bUsmuT5NSQqdTcX4y4JLC5RMQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EY7qB3E4P6Av4/deoAxdabDPQIzZPIH5u9Ftk9FOSQo=;
 b=OMJ9j5ufCJS2Lhh0h6LCRjAFAqKrrRBM6fJpNahwB4n3KniNP1T0inIzLrQ6xzzcTp
 cu9q25UOydLx03qVAeST6yZ8uMfILK+eZ1Kophyac/FjRXMhIV1hgFb9S3hGenmX8UQW
 KD54OE2K5K9ODXZPmJzGOBixmLSK1Wobzinw0bqeyd41Y8ukv3cOH2q5NgDVKyqAePsK
 xbJA9zZH9RQ+963pctfnDXaQjrIVqusWvlzSJa+m1brDYi6qx6+qSdYg1r4dGyIG4fJb
 xqc4ylDJyi/xKQk+8RbkLamrUA+D6YMNMNfVajzH6MPIl/rCq1XCcCaKe3eU41xcBD21
 3F6g==
X-Gm-Message-State: AGi0PuZda7e3/+NoKDLtuAHl0HwU693urNsTYEeoODvxnNAJ+y2wGMfE
 6h1MLqSCAA8oEBLgWvlJVLGTfcCsU70=
X-Google-Smtp-Source: APiQypKl/AVJH4FT6+os31vZaUo3i47SzJD/Z7+iRZlfG1A+oXqZjCRoTNNs2lZQ24nFHoGhchvjwg==
X-Received: by 2002:ac2:4c88:: with SMTP id d8mr6800498lfl.100.1585952256740; 
 Fri, 03 Apr 2020 15:17:36 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
 [209.85.167.45])
 by smtp.gmail.com with ESMTPSA id c203sm4916109lfd.38.2020.04.03.15.17.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2020 15:17:35 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id h6so2578904lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 15:17:35 -0700 (PDT)
X-Received: by 2002:a19:240a:: with SMTP id k10mr6780889lfk.30.1585952255484; 
 Fri, 03 Apr 2020 15:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
 <CAK8P3a3OPgCzLxzd=7Ng=jregKB0HycLLrfA4xYd7-4Te-kHMA@mail.gmail.com>
In-Reply-To: <CAK8P3a3OPgCzLxzd=7Ng=jregKB0HycLLrfA4xYd7-4Te-kHMA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 3 Apr 2020 15:17:19 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgtkiTh+M55onqQJ7TdBvTnAzHFNG77NmsBsDMyV82OQw@mail.gmail.com>
Message-ID: <CAHk-=wgtkiTh+M55onqQJ7TdBvTnAzHFNG77NmsBsDMyV82OQw@mail.gmail.com>
Subject: Re: [GIT PULL 3/4] ARM: defconfig updates
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_151741_419491_49EFDFE2 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 3, 2020 at 2:36 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
> tags/arm-defconfig-5.7

This caused a conflict in 'omap2plus_defconfig'.

I resolved it, but honestly, I couldn't find it in myself to care that
deeply about a defconfig conflict.

So I think somebody might want to check it and maybe re-generate that
thing if it matter.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
