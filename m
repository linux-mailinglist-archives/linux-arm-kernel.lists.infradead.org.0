Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362AA30A0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXfBNg3QOJzVNzZJRaSurQ5buB5uff01rrW0OKyqde4=; b=XAZLtZDy244IP+
	eQD5C+wgB9Q/ITd7Gqp9eVWime0VwDkgmhMN8mQqwi4bEi+x4kV86qeNonDpXDYQRXpQc/bXOGkCO
	NTrfEEY4HVRHDLRoDt5V3Zd0DDKebmVBZq7oTYg3qLJ5Kqwy5kGh5d5bzI5t/t0KKFzj6lnEWSiwd
	540pTPVtRzv6GoiXvpSObNCjlW6K6fxuPg1DxQNykHpsuzlcuJSEHBnhhO2FdqmVfM5lOplKIZ6V0
	1w8FzpP0cUH6lAR995avx33Dr6Y0nw9gmG/X92h7c+fz0SuUDDilwVkYNUSKQL5UxrGQbta25EcVl
	ouvpndHMiTRkvy4m2wJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcjD-0004mH-8c; Fri, 31 May 2019 08:17:31 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcj5-0004lS-KC
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:17:25 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 76c7f568
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 07:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=vV7g1HtOkLPHTvxQrsleWOReJbM=; b=mE2jYH
 5Srr0VaX5IhWi4RYsPM6UCGhdNhoAo2RdcwoxJwAGYmp1d4TDrwwZQW97/GrMK5L
 yZtHOh/EWBZ2nBt48z+VjP/gHhDQo8SHJKFFhVJf3UcN/1aeecFc46izrko1CrZa
 iR/ub5UJl+pAqPShngyZqHGofOLvnZ5jc3Mvw7M5xNpbJPRfNnAmg7BOfn03/gtU
 GwkzlaSR0ADHwSdHXZMG1whZZfWC7E3M44HTMVBsOezsJ1hTbc0niBlp5Ma/3tWX
 V+A4WicwjnfWzuaqJxgereyupFcNJimH7ABRJ3LZFxurM/aC7HlTNjsLi4UHx0DP
 D/SYbbUaKf2d5qcw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 5b71b522
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 07:46:37 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id n18so8382594otq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:17:18 -0700 (PDT)
X-Gm-Message-State: APjAAAUnji1/CquoR1V10pIeK+FxraUxFpdP4IJ/2VtHS6u0oxhSVTty
 sBl19fO2jhTGlDZIWf216o52D8pchmbED/QJH7I=
X-Google-Smtp-Source: APXvYqzKlmFhru/pDXwRMaqmgR2Y/k1KGYrsdsEkXEeczEVUJb1npzo66YeAU86gOb81lEwqLHhnBbJYiLGfALQJ+6U=
X-Received: by 2002:a05:6830:1612:: with SMTP id
 g18mr845264otr.243.1559290638103; 
 Fri, 31 May 2019 01:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190529182324.8140-1-Jason@zx2c4.com>
 <CAK7LNARFUaaJH+g3oGzwFyKnELum72nOzxnvUfMKYBaAoGVkug@mail.gmail.com>
In-Reply-To: <CAK7LNARFUaaJH+g3oGzwFyKnELum72nOzxnvUfMKYBaAoGVkug@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 31 May 2019 10:17:07 +0200
X-Gmail-Original-Message-ID: <CAHmME9rGAUW9hjjZ7ZqNvZvaOCGrVHs3JNhYyr6g2PhZgS3TQg@mail.gmail.com>
Message-ID: <CAHmME9rGAUW9hjjZ7ZqNvZvaOCGrVHs3JNhYyr6g2PhZgS3TQg@mail.gmail.com>
Subject: Re: [PATCH] arm: vdso: pass --be8 to linker if necessary
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_011723_886121_13AE1D09 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <rmk+kernel@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Masahiro,

I'm not sure exactly. I did just notice another place --be8 is being added:

ifeq ($(CONFIG_CPU_ENDIAN_BE8),y)
LDFLAGS_vmlinux += --be8
KBUILD_LDFLAGS_MODULE   += --be8
endif

I suppose it's possible that this is kbuild related where one of those
isn't winding up in the right place. I did see that the commit that
this patch addresses uses "=" instead of the more usual ":=" or "+="
for whatever reason.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
