Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767D3A6340
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckrMwSLGQlegPHzc94WleWq2bws8oCQq9pp9BGiOhKs=; b=k2C/yQ3o6gAs7R
	QPkj63HdJkOlgbwCm3FRyuiDLnb1aOCSYINik4HpZaCxJ2OX1rXslkPi5tQBllE3SY/6MMHm9yV/z
	c8oe5ubax8tjnNG9Bg48wSVFzZ/2wNbO+g035Niz8jsCvdVaov7xNoNMZ0KxAmRgXbPk7xT+JPNfX
	CxSAOYHHavyOAabmq32YF9hH02BMUichNbbpFKUz49gSl83WJO5PXrKYRIMD1oNyoh/dGjCBp0kgp
	02owCq20bnF0lL6QoUW2I8KsHtHz3zXko6A6L3N7Yt5//RGeEAHh3oMS+4PQz96rFxDHoAhkmvOhN
	XqszaSoOCi+ceqbwNzEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53iy-0001Ux-DU; Tue, 03 Sep 2019 07:59:36 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53ik-0001UW-NH
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:59:23 +0000
Received: by mail-vs1-xe43.google.com with SMTP id j25so10642174vsq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=benyossef-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0EIbhIJ7hKKOu+M281PD3WDdpKkR/xA5QEVwHRycTR0=;
 b=Lz8LMQhaTxdacgyadkkNlBcEe9tBTF6g2Stqiw+ggeQ7ZvzWzCXwwFaRgbu9gGjYIl
 lgs+jWRb+B//qn14IUPCm+BKxLLp6MDvUFnr48zd67gqoulkvMMMO7QSPs3Qkbd7v8P2
 JzYL1VGYv+8pWnDDfFUDPiWQQkJiYEnRnCJaSBagiDgg9QOVn4SMhr8aBCHZIfuaqxsA
 CNJLraj+UCdJwt91JZNtqo7j1SepslMoRtYWz4L1i680RXznMVpqYXudJKJl0rieosxa
 hHtqI/xZz2533ni8GMtVguyDb49VMP0btKTr1dDiPWMatQC9ufxj7i/+rXCJRzbDPl7G
 McwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0EIbhIJ7hKKOu+M281PD3WDdpKkR/xA5QEVwHRycTR0=;
 b=jIoylDw8Odqqud6Z9qqo3zzFTLalf6jq3UBx/wwgYLfCeGYELl9lxmrX3pC8rxEO5I
 dfOcpdQilsQNTKLaWSNxZkQ2f8NEHgJX+d89WoFJ1/NXpREFbn9EWzJ5J1TmGWFvOvg3
 t+EEhEBPTKkC3K3OEtWuQbO2znzl2IHmrmZLFR2lHiEHdjOGYc1Vic7mwPg8oEAZjt0m
 lccDI41kRLy0AkWMpZKq7a8w1EVma9a1BG2a/raNoq4/2s0owZ/aZZ9F5V5wqLsndxw8
 II/CufCe2KatdWdKV2FUkEhDZgi94/BhV4JqIlIazE0WnRLVKbVlB3V3xtTRl9Rf2uq1
 i6Xg==
X-Gm-Message-State: APjAAAUOeSaaqRhiHmMCdl9p+ZHTM/vcqDdSsKUYdLm45nZigg1CE91q
 5CfuJXULdyQ09IAzsx17qNQbPDmPIEs9YwvvT1nZkA==
X-Google-Smtp-Source: APXvYqzLbfk+7QC7rLnbvGPNJsbo//EE9HrvhMXGdOD64gG+wjNiviukUFKpbMwLXQphsPJJIcfQjKXRlkCVUjoLzNE=
X-Received: by 2002:a67:f546:: with SMTP id z6mr17083944vsn.136.1567497561775; 
 Tue, 03 Sep 2019 00:59:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190901203532.2615-1-hdegoede@redhat.com>
 <20190901203532.2615-6-hdegoede@redhat.com>
 <CAOtvUMdd+V5pesw+O-kk9_JB5YpxUM+hU+Uu=kiMvOL9d0AziQ@mail.gmail.com>
 <0d55a6a7-9cca-38cb-97a2-558280fdc122@redhat.com>
In-Reply-To: <0d55a6a7-9cca-38cb-97a2-558280fdc122@redhat.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Tue, 3 Sep 2019 10:59:10 +0300
Message-ID: <CAOtvUMeK2+29PJBm6L1S0dqM8JXEZYUy1qKiP9H=xDEJjnO7mA@mail.gmail.com>
Subject: Re: [PATCH 5/9] crypto: ccree - Rename arrays to avoid conflict with
 crypto/sha256.h
To: Hans de Goede <hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_005922_760692_3E6B22BA 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Atul Gupta <atul.gupta@chelsio.com>,
 linux-s390@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Eric Biggers <ebiggers@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMywgMjAxOSBhdCAxMDo1MSBBTSBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUBy
ZWRoYXQuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gMDMtMDktMTkgMDk6NDUsIEdpbGFkIEJl
bi1Zb3NzZWYgd3JvdGU6Cj4gPiBPbiBTdW4sIFNlcCAxLCAyMDE5IGF0IDExOjM2IFBNIEhhbnMg
ZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gUmVuYW1lIHRo
ZSBhbGdvX2luaXQgYXJyYXlzIHRvIGNjX2FsZ29faW5pdCBzbyB0aGF0IHRoZXkgZG8gbm90IGNv
bmZsaWN0Cj4gPj4gd2l0aCB0aGUgZnVuY3Rpb25zIGRlY2xhcmVkIGluIGNyeXB0by9zaGEyNTYu
aC4KPiA+Pgo+ID4+IFRoaXMgaXMgYSBwcmVwYXJhdGlvbiBwYXRjaCBmb3IgZm9sZGluZyBjcnlw
dG8vc2hhMjU2LmggaW50byBjcnlwdG8vc2hhLmguCj4gPgo+ID4gSSdtIGZpbmUgd2l0aCB0aGUg
cmVuYW1pbmcuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogR2lsYWQgQmVuLVlvc3NlZiA8Z2lsYWRA
YmVueW9zc2VmLmNvbT4KPgo+IFlvdXIgU2lnbmVkLW9mZi1ieSBpcyBvbmx5IHVzZWQgd2hlbiB0
aGUgcGF0Y2hlcyBwYXNzZXMgdGhyb3VnaCB5b3VyIGhhbmRzLAo+IHNpbmNlIEhlcmJlcnQgd2ls
bCBsaWtlbHkgYXBwbHkgdGhpcyBkaXJlY3RseSB0aGF0IGlzIG5vdCB0aGUgY2FzZS4KPgo+IFlv
dSB3YW50IGVpdGhlciBBY2tlZC1ieSBvciBSZXZpZXdlZC1ieSB0byBzaWduYWwgdGhhdCB5b3Ug
YXJlIG9rIHdpdGggdGhpcyBwYXRjaC4KPgoKWWVzLCB5b3UgYXJlIHJpZ2h0IG9mIGNvdXJzZS4g
V3JvbmcgbWFjcm8uLi4gc29ycnkgYWJvdXQgdGhhdC4KCkFja2VkLWJ5OiBHaWxhZCBCZW4tWW9z
c2VmIDxnaWxhZEBiZW55b3NzZWYuY29tPgoKCi0tIApHaWxhZCBCZW4tWW9zc2VmCkNoaWVmIENv
ZmZlZSBEcmlua2VyCgp2YWx1ZXMgb2YgzrIgd2lsbCBnaXZlIHJpc2UgdG8gZG9tIQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
