Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F5CEDB57
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 10:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bV6N7qh8lZwUrUqoxQ2Gr4YJdPwWmQK/jglK2nhNtlA=; b=Ant6y7fNlL3gKO
	AgRDSsQUS9c2JAAXhXbY0FOs1l6/aOEsby++9v9LYrYOdH+rWqDqSHhrmrU9g1me1Co4zw2PzFCsK
	vVVKMElPZ0YjTBlFxERsh52Ve3Hvjj+S5tNgito7OGRBC0io66WVA50ZNnpAg5My4CIzTsUpzkqI2
	ru2029m99XiYjI1lSJvv+eptjqq5VcPXliNoJycHO8T0YoMZqMXlAX5/QpiHUbxDRLDUB8AvogPJa
	eSWYDhp0JFmY7vfJqNj883l4ntKrPu+37EPMKJ4HJ9Nbnt63FsrR8zFG3Sbq9PgZJ+iI7izkHaE1Y
	qk9q/0v4O5jkhQB1NiRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRYPO-0004d7-VJ; Mon, 04 Nov 2019 09:12:22 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYPG-0004b5-Iv; Mon, 04 Nov 2019 09:12:16 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Moex5-1hcWCB2fCz-00p8ko; Mon, 04 Nov 2019 10:12:10 +0100
Received: by mail-qk1-f179.google.com with SMTP id h15so7206489qka.13;
 Mon, 04 Nov 2019 01:12:10 -0800 (PST)
X-Gm-Message-State: APjAAAXlruwgovTMPnjXVKsF9kyUAjhRnYJ1iAZDGyBWeIsKvyuCVJjn
 vygVeAQ1vbuob1rjB4lHNONmfLlD7ZONtysMTiM=
X-Google-Smtp-Source: APXvYqxFWfC/pRRphyl2sEqUGu4g2hW8Ws8h+GoExMAObfzyIMrknTzY4xbMka/8WJkNHFwlq+X2sKNUp3jxigxtutU=
X-Received: by 2002:a37:4f13:: with SMTP id d19mr1192533qkb.138.1572858728295; 
 Mon, 04 Nov 2019 01:12:08 -0800 (PST)
MIME-Version: 1.0
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
 <1572850587-20314-14-git-send-email-rppt@kernel.org>
In-Reply-To: <1572850587-20314-14-git-send-email-rppt@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 4 Nov 2019 10:11:51 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3e7oG5NMPbhgQOoKvB0Z5ui0iAHHFqyAxy87Nd903Vmw@mail.gmail.com>
Message-ID: <CAK8P3a3e7oG5NMPbhgQOoKvB0Z5ui0iAHHFqyAxy87Nd903Vmw@mail.gmail.com>
Subject: Re: [PATCH v3 13/13] mm: remove __ARCH_HAS_4LEVEL_HACK and
 include/asm-generic/4level-fixup.h
To: Mike Rapoport <rppt@kernel.org>
X-Provags-ID: V03:K1:wAR55YVm4O5nwtbkge7OY1DJWhCuVAfm8ZJHpHJZifDOfIYe5Dx
 rScnxMuiE/WKdv2NI8NXIwsYWXiYGY8g22HcCT287dGyWtLtOw0Ey5l1oW6wgG6G7k2f8Ra
 3tkbyCq2gry1TCgaYNLBXHwyG2SzPChhyP+ke0ukmcQxsOEs8SZMnHbgu2gZd4JHOn/SGqL
 ZwVlWOh0trrbhcUYjp8+A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:glI3B9QkQi0=:X5oLCzVXPTIkK96pT612zQ
 S1IP89VFG0KugLHX/PFAEr9gCbjpA3X6c17WEcP0DJlndnE5PfoFWH7XL7UAjhCjSZwjZV2vy
 1Nw3g/fY0vAMJg8Ir8NM9bBSlzvMOy33ni7WF55thoZ//F/HwAy3+edgGikLujVQtcThGGPPF
 +ozxWnLwkPfgXstLiAUlL1LWDT35apaQsnNyyOK5ThcscR9m8pvP7EhwWfmSB5KIEG4IeB0Yf
 PyYbkG35ERJdBaqSUdoRfnXrGKhVHWRGDVE8+iu4p1k8Ptvy/JPEyY6oqk91cEnJedh7TAaQO
 Qxnp4dUFJvaDkbZSNDGgZ0M2YJXHoXC1otwImZEMhXRYran3RIYzjV/nc3EuK31BOtyf22Keb
 4eq8y542KSe2oIUDvAf3lvH6ygDHUGDhCJeKNED2CbhKIucmH8TDeBCJcUq5IX/nwWsqyYvWY
 qTAcBinYfEJR3e5qsGnRhjC9IpvmoawHbHw3qNsH52WSqNdy5VYu6OJTzwV5NqKlcdJZ1TOcc
 5Kugyz5UNvjIUxUK5WjphvsjAsnCqFL7RZlPZeuI6KTxgbTHHe94P3J3blQkGlyBDP7CpbVro
 LS/oknl3s37Yf4hWyjyVOtjMdOrzR2aTmNFXAwzefnq7nleYU1+BDx3w9Btd2f95Ek/zArMd1
 w/MvbpnkdvAmgcdWKmWajyY6O7mvP0i5ubVKDVZo6RTPbsIqdxMgwEeN1WmyzIeMSX4cfdvwX
 p4/StXU0Dxf8kOreR0t7RqzQw6FFOLfoY3/5uy3ueLHxClx2MwvQXubF6B+Kn6RInLmn3Qrnp
 zhlCT83hWrTPx3872VEiqGr59y2Dj5tuUxVqoih6SwnPpXlYWVOzHiF382MZORksaswm+eMyO
 Slst1SZWxWmecIFIWTRQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_011214_922865_D739625C 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux-MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Sam Creasey <sammy@sammy.net>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 7:58 AM Mike Rapoport <rppt@kernel.org> wrote:
>
> From: Mike Rapoport <rppt@linux.ibm.com>
>
> There are no architectures that use include/asm-generic/4level-fixup.h
> therefore it can be removed along with __ARCH_HAS_4LEVEL_HACK define.
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

For asm-generic:

Acked-by: Arnd Bergmann <arnd@arndb.de>

Have you discussed how the series should get merged? I assume an initial
set of patches can just go through architecture maintainer trees, but
whatever patches don't get picked up that way would go through either
Andrew's -mm tree (for memory management) or my asm-generic tree
(for cross-architecture cleanups).

Since there is still at least one regression, I expect not to do anything
for now. Please let me know when/if you expect me to merge the
remaining patches.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
