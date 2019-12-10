Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80BE118B3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mDx6rTc/oXnaPKwCN1Vl7iH5m5IsEyVQT+zlLEvsAPw=; b=Ray5cPMl5X0S8eYF0R/TXiDIA
	bKmbokxIb8bihG1Mv6fwiMSIfm9hNBOzMmYY9ojr4c21XDdAZXlLc+rtthrNFtdoNCiLD2Cse6kGd
	B3Y37jBjzmgR3tMhjgtJxWWl4a59G4NTTLI0MfrWaTWKJ/K0SHxGwnXQtM5ecbRnN/QG1hU7muTKx
	7A65sHflIlKkmIrNHD40Vqs/RUlgxSGcz/e5uHyvwRb0s5W4s7oe+GdXHI7/s68ChNqmoR0jIfU4t
	dI2nTAg2ZotrtT6SKj2zmBa9gXxN2blu9OghSXQJhkcG2eeQ+6Iw/a6G25+35ehQYA5uETAEPeiFn
	KKU2v5Agw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegg0-0006bP-Ca; Tue, 10 Dec 2019 14:39:48 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegfr-0006aD-BM
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:39:41 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47XN4R2jvMz9txPV;
 Tue, 10 Dec 2019 15:39:35 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=S5kJVxPB; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id h_8fAE0U-HoN; Tue, 10 Dec 2019 15:39:35 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47XN4R1Whkz9txPQ;
 Tue, 10 Dec 2019 15:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1575988775; bh=gC07UrkwsOByoVoBIV4uyW1SIFHfck0w0oYmnN2eVmc=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=S5kJVxPBDtEJof7P7KiznADxbNG3gE1jXaxpcR3MKMReOTnvMUIuCOPU2EwO2JYvz
 bQF+6k36pGkxUSHvMr2woVfbXc1TrlcRFqStmczYl+Zel3SHLk7Imx+672RESlTwWE
 TGGY3rLrhsFplKCs29s3aOxdlXrG4Jy0gYxaqwLk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A165C8B815;
 Tue, 10 Dec 2019 15:39:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id Hn7oLwJSlDri; Tue, 10 Dec 2019 15:39:36 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 96E4F8B754;
 Tue, 10 Dec 2019 15:39:35 +0100 (CET)
Subject: Re: [PATCH v2 2/4] kasan: use MAX_PTRS_PER_* for early shadow
To: Balbir Singh <bsingharora@gmail.com>, Daniel Axtens <dja@axtens.net>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kasan-dev@googlegroups.com,
 aneesh.kumar@linux.ibm.com
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-3-dja@axtens.net>
 <a31459ee-2019-2f7b-0dc1-235374579508@gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <5d1ec6e3-777e-9f23-ea8f-50361a29302f@c-s.fr>
Date: Tue, 10 Dec 2019 15:39:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <a31459ee-2019-2f7b-0dc1-235374579508@gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_063939_697494_DE547109 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMC8xMi8yMDE5IMOgIDEwOjM2LCBCYWxiaXIgU2luZ2ggYSDDqWNyaXTCoDoKPiAKPiAK
PiBPbiAxMC8xMi8xOSAzOjQ3IHBtLCBEYW5pZWwgQXh0ZW5zIHdyb3RlOgo+PiBUaGlzIGhlbHBz
IHdpdGggcG93ZXJwYyBzdXBwb3J0LCBhbmQgc2hvdWxkIGhhdmUgbm8gZWZmZWN0IG9uCj4+IGFu
eXRoaW5nIGVsc2UuCj4+Cj4+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0
b3BoZS5sZXJveUBjLXMuZnI+Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBBeHRlbnMgPGRqYUBh
eHRlbnMubmV0Pgo+IAo+IElmIHlvdSBmb2xsb3cgdGhlIHJlY29tbWVuZGF0aW9ucyBieSBDaHJp
c3RvcGhlIGFuZCBJLCB5b3UgZG9uJ3QgbmVlZCB0aGlzIHBhdGNoCgpJIGd1ZXNzIHlvdSBtZWFu
IFBhdGNoIDEgKHRoZSBvbmUgYWRkaW5nIHRoZSBjb25zdCB0byBhbGwgYXJjaGVzKSBpcyBub3Qg
Cm5lZWRlZC4gT2YgY291cnNlIHRoaXMgb25lIChQYXRjaCAyKSBpcyBuZWVkZWQgYXMgaXQgaXMg
dGhlIG9uZSB0aGF0IApjaGFuZ2VzIGthc2FuLmggdG8gdXNlIGNvbnN0IHRhYmxlIHNpemUgaW5z
dGVhZCBvZiBpbXBvc3NpYmxlIHZhcmlhYmxlIAp0YWJsZSBzaXplLgoKQW5kIHRoYXQgd291bGQg
YWxzbyBmaXggdGhlIHByb2JsZW0gcmVwb3J0ZWQgYnkgdGhlIGtidWlsZCB0ZXN0IHJvYm90LgoK
Q2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
