Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721D6EC06C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:20:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcpvPBp1ViyBlhSm1JT71gOV1hMBZYTkqofphMqCtM8=; b=WVPJZ1uuYv9dha
	YZRrbk6HYiuNieI52I9gF5Kyw7IXAOOTM6ugU8Lyy3gdoTFuIz//BmjYCKvqTPJKqlBvkW8dnOAo3
	m/D1ZwczY8Pk7hcB1xaYuO7bhWX8QD+XhNzT8kswvPXFN/BU6PbiCGRC/x1jEbg4hOadDxwDZ6IDu
	w6cA62FNan0EhLVZn+dOo7P7H9GAe+u7AaOfml02JXtfaNYi7XJPSiNN7PNsHNgU4xrrw4PS9DH42
	aHIB+d5/sFL62T+VL6fu49WYGAqpTgwdXw7rE3ywze7quOoBY4wXioc6nsk2bznwMEfT1OtzpunYS
	Er9BNyIN4pI/iU05tzuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQT6T-0007Em-7l; Fri, 01 Nov 2019 09:20:21 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQT6L-0007E5-Th; Fri, 01 Nov 2019 09:20:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id DEA1E608313B;
 Fri,  1 Nov 2019 10:20:11 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 8IWPWn6JPQyM; Fri,  1 Nov 2019 10:20:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B72236083139;
 Fri,  1 Nov 2019 10:20:10 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id sbwSZl86X70W; Fri,  1 Nov 2019 10:20:10 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id F410762EBCC0;
 Fri,  1 Nov 2019 10:20:09 +0100 (CET)
Date: Fri, 1 Nov 2019 10:20:09 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Mike Rapoport <rppt@kernel.org>
Message-ID: <1435962204.69872.1572600009245.JavaMail.zimbra@nod.at>
In-Reply-To: <1572597584-6390-13-git-send-email-rppt@kernel.org>
References: <1572597584-6390-1-git-send-email-rppt@kernel.org>
 <1572597584-6390-13-git-send-email-rppt@kernel.org>
Subject: Re: [PATCH v2 12/13] um: add support for folded p4d page tables
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: add support for folded p4d page tables
Thread-Index: S6h0nIi9frMaCZ4VaOjeTjwnLFOM0w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_022014_103626_42D4714C 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-c6x-dev <linux-c6x-dev@linux-c6x.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, linux-parisc <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davem <davem@davemloft.net>,
 linux-alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIk1pa2UgUmFwb3BvcnQiIDxy
cHB0QGtlcm5lbC5vcmc+CgpbLi4uXQoKPiAjZGVmaW5lIHB0ZV9wYWdlKHgpIHBmbl90b19wYWdl
KHB0ZV9wZm4oeCkpCj4gZGlmZiAtLWdpdCBhL2FyY2gvdW0va2VybmVsL21lbS5jIGIvYXJjaC91
bS9rZXJuZWwvbWVtLmMKPiBpbmRleCA0MTdmZjY0Li42ZmQxN2JjIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvdW0va2VybmVsL21lbS5jCj4gKysrIGIvYXJjaC91bS9rZXJuZWwvbWVtLmMKPiBAQCAtOTIs
MTAgKzkyLDI2IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBvbmVfbWRfdGFibGVfaW5pdChwdWRfdCAq
cHVkKQo+ICNlbmRpZgo+IH0KPiAKPiArc3RhdGljIHZvaWQgX19pbml0IG9uZV9wdWRfdGFibGVf
aW5pdChwNGRfdCAqcDRkKQo+ICt7Cj4gKyNpZiBDT05GSUdfUEdUQUJMRV9MRVZFTFMgPiAzCgpJ
c24ndCB0aGlzIGRlYWQgY29kZT8KCkZvciB1bWwgd2UgaGF2ZToKY29uZmlnIFBHVEFCTEVfTEVW
RUxTCiAgICAgICAgaW50CiAgICAgICAgZGVmYXVsdCAzIGlmIDNfTEVWRUxfUEdUQUJMRVMKICAg
ICAgICBkZWZhdWx0IDIKClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
