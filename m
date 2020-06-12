Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474351F7849
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMoY/lZia5gZoPU43ASIbPDWjjXkqzXrT3FUka8i+zI=; b=ZgnwAC07v93Tnm
	hh/uHXamrtvkbUXCy7pDHlwKxT97uyEcW39EhHpWy0x3un/hPUs+Yoe0HXKlwIhjDmqopbAPh5QAq
	HgSzeb+XJSJHF6P2GE/pBxWm5bJWtg7ZF4LskPumcqanEKfB7mJk0whtaKltTdfVZiDYGfXvLW1yY
	F8pf6QnuaIusoZOgioJW1jmFjnpIPpk6Fj9Gxd5ijMhNJgQAqM4wQmT7j5O+TqoQzewU8Vto6XfcY
	M/TR/9QTU+ACv+Eud/sHwKsLoYgVV9SCcvQ3WKM9yOIVZoltIKZ67j/etA/VuhmtDlMv8sKn7Bsyl
	OsUAldPWdAI5CqzcEQ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjKi-00045z-9q; Fri, 12 Jun 2020 13:02:56 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjKY-00045O-N8
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:02:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id y17so3716494plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B4qeZQcX95U4N3R/ypmQmEh1mMjrUPShqDI2RTzZrjQ=;
 b=EPdfTDWl1G/GVHurZylyRqjKzspNsa17BFE58sovbsXPHfds/7uvGL65oLZbe17VZQ
 Ar6IEsfVe0S3pirOPx3w771y1O9/Q7ARtuUz9LaeG2YISqLi2vNQ3kb4wADnfLDepLgp
 F2MLaikUlPZCu+u3fAYRDizjOrDd/+41mk5wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B4qeZQcX95U4N3R/ypmQmEh1mMjrUPShqDI2RTzZrjQ=;
 b=GDWYV7zqa5LAmOZMxQq19Y1yIU6tEcW27IOxVAdPUL7bUIIKyXtbus+uDPY7yXJBZl
 R/Ec0rQnwyln92EvfMDjraWjsx10mTYHnqEfPqQRO/tOhZHe7+TRNRKGlA9HDWELKnA0
 YE65D/Yvsr8H1Pj6Kk6OtffOTmqtUSRj5064uy4CFgoWJAbKF6mMccdUPaSHEUGXWr1M
 ND/heA2uWuVQO0TWfriWYjJu5HlJyCzazCAYx7KkmJ9gVDwLUwY4DC+gkoJrl4Pj+5RC
 vqg6Ytl/CMhyLz4lYi8cVhsF0APFp7ZtslkXIg2hM0CZa/0XNDV700Rt9rvDCtSELDaU
 IGtQ==
X-Gm-Message-State: AOAM5339FGzhuZIAAvjRW6RA6u0xjFbOcbgHOPuXcskMUrhLMr/ZkE/O
 D5ATuET0LF6rNWr9s18oAAlsgQ==
X-Google-Smtp-Source: ABdhPJyvkfI58V2aXL74q8VxrTKcq9UctmPdxlYUl4YZz8qY2tcibtTno2DYbZMfzP1WXTFnsCG46g==
X-Received: by 2002:a17:90a:cc18:: with SMTP id
 b24mr13045485pju.118.1591966965021; 
 Fri, 12 Jun 2020 06:02:45 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:02:43 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 00/12] Initial MStar/Sigmastar Armv7 SoC support
Date: Fri, 12 Jun 2020 22:00:00 +0900
Message-Id: <20200612130032.3905240-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200610090421.3428945-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060246_860991_8D421662 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBzZXQgYWRkcyBpbml0aWFsIHN1cHBvcnQgZm9yIE1TdGFyL1NpZ21hc3Rhcidz
CkFybXY3IGJhc2VkIFNvQ3MuIFRoZXJlIGlzIGp1c3QgZW5vdWdoIGhlcmUgdG8gZ2V0IHRvIGEg
c2hlbGwKd2l0aCBhbiBpbml0cmFtZnMgYnV0IHN1cHBvcnQgZm9yIGEgbG90IG9mIHRoZSBoYXJk
d2FyZSBpcwppbiBwcm9ncmVzcyBhbmQgd2lsbCBmb2xsb3cuCgpNU3RhciBhbHNvIHNoaXBwZWQg
Y2hpcHMgd2l0aCBNSVBTIGNvcmVzIGFuZCBBUk05IGV0YyB3aGljaAphcmUgaW5jb21wYXRpYmxl
IHNvIEkndmUgdHJpZWQgdG8gbWFrZSB0aGUgZGlzdGluY3Rpb24gaW4gdGhlCmNvZGUgdGhhdCB0
aGlzIGlzIHN0cmljdGx5IGZvciB0aGUgQXJtdjcgYmFzZWQgY2hpcHMuCgpEaWZmZXJlbmNlcyBm
cm9tIHYyOgoKMS4gV2l0aCBNYXJjIFp5bmdpZXIncyBoZWxwIHRoZSBHSUMgbm9kZSBoYXMgYmVl
biBmaWxsZWQgb3V0IHByb3Blcmx5LgoKMi4gQSBjb21tZW50IHdhcyBhZGRlZCB0byB0aGUgYXJj
aCB0aW1lciBub2RlIHRvIGV4cGxhaW4gd2h5IHRoZQpjbG9jay1mcmVxdWVuY3kgaXMgc3BlY2lm
aWVkLiBCYXNpY2FsbHkgdGhlIHZlbmRvciB1LWJvb3QgaXMgb2xkIGFuZApicm9rZW4uCgozLiBC
YXNlZCBvbiBBcm5kIEJlcmdtYW5uJ3MgZmVlZGJhY2sgdGhlIGhlYXZ5IG1lbW9yeSBiYXJyaWVy
IGlzIG5vdwppbXBsZW1lbnRlZCB1c2luZyBhIERUIG5vZGUgdG8gc3BlY2lmeSB3aGVyZSB0aGUg
cmVnaXN0ZXJzIGFyZSBpbnN0ZWFkCm9mIGhhcmRjb2RpbmcgdGhlaXIgbG9jYXRpb24uIEEgYmlu
ZGluZyBkZXNjcmlwdGlvbiBoYXMgYmVlbiBhZGRlZCBmb3IKdGhlIG5ldyBub2RlLgoKNC4gRXhw
YW5kZWQgY29tbWVudHMgYXJvdW5kIHRoZSBoZWF2eSBtZW1vcnkgYmFycmllciBjb2RlIHNvIGl0
J3MgbW9yZQpvYnZpb3VzIHdoeSBpdCBsb29rcyBsaWtlIGl0IGRvZXMuCgo1LiBUaGUgaGVhdnkg
bWVtb3J5IGJhcnJpZXIgaW5pdCBjb2RlIHdhcyBmb2xkZWQgaW50byB0aGUgbWFjaGluZSBpbml0
CmZ1bmN0aW9uLgoKNi4gVXBkYXRlZCB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3MgYW5kIHByZWZp
eGVzIGJhc2VkIG9uIEFuZHJlYXMgRsOkcmJlcidzCmZlZWRiYWNrLiBUaGV5IGhhdmUgYWxzbyBi
ZWVuIHNwbGl0IG91dCBpbnRvIGEgbnVtYmVyIG9mIGNvbW1pdHMKCjcuIEJhc2VkIG9uIEFuZHJl
YXMgRsOkcmJlcidzIGZlZWRiYWNrIEkndmUgYWRkZWQgdGhlICJyaXUiIChyZWdpc3RlciBpbnRl
cmZhY2UKdW5pdCkgaW50ZXJuYWwgYnVzIHRoYXQgY29udGFpbnMgYWxsIG9mIHRoZSBwZXJpcGhl
cmFsIHJlZ2lzdGVycyBhbmQgdGhlIHByb3BlcgpyYW5nZXMgZm9yIHRoZSBzb2Mgbm9kZS4gVGhp
cyBidXMgaGFzIGNsb2NrcywgaW50ZXJydXB0cyBhbmQgc29tZSBjb25maWd1cmF0aW9uCnJlZ2lz
dGVyIHNvIGl0IG1pZ2h0IGdldCBpdCdzIG93biBkcml2ZXIgaW4gdGhlIGZ1dHVyZS4KCjguIEkn
dmUgZHJvcHBlZCB0aGUgcG11IG5vZGUgZm9yIG5vdyBhcyBpdCdzIG5vdCBuZWVkZWQgdG8gYm9v
dCBhbmQgSSdtIG5vdApzdXJlIG9mIHRoZSByZWxhdGlvbnNoaXAgYmV0d2VlbiB0aGUgc2luZ2xl
IGNvcmUgaW4gbW9zdCBvZiB0aGUgY2hpcHMgYW5kCnRoZSA0IGRvY3VtZW50ZWQgaW50ZXJydXB0
cy4KCjkuIE51bWVyb3VzIGNvc21ldGljIGNoYW5nZXMgYmFzZWQgb24gQW5kcmVhcyBGw6RyYmVy
J3MgZmVlZGJhY2suCgpEaWZmZXJlbmNlcyBmcm9tIHYxOgoKMS4gdjEgb25seSByZWFsbHkgc3Vw
cG9ydGVkIHR3byBzcGVjaWZpYyBjaGlwcyB0aGF0IHdlcmUga25vd24KYXQgdGhlIHRpbWUgb2Yg
c3VibWl0dGluZyB0aGF0IHBhdGNoIHNlcmllcy4gU2luY2UgdGhlbiBpdCdzCmJlY29tZSBhcHBh
cmVudCB0aGF0IHRoZXJlIGFyZSBhIGZldyBmYW1pbGllcyBvZiBTb0NzIGJhc2VkCm9uIHRoZSBz
YW1lIEFSTXY3IGNvcmUsIGNsayBibG9ja3MsIGludGVycnVwdCBjb250cm9sbGVycyBldGMKYW5k
IHRoaXMgdjIgYXR0ZW1wdHMgdG8gbWFrZSBzdXBwb3J0IG1vcmUgZ2VuZXJpYyBzbyBpbiB0aGUg
ZnV0dXJlCm1vcmUgU29DcyBmcm9tIHRoaXMgbGluZWFnZSBjYW4gYmUgYWRkZWQuIFN1cHBvcnQg
Zm9yIHNvbWUgb3RoZXIKY2hpcHMgaXMgYWxyZWFkeSBpbiBwcm9ncmVzcyBhbmQgd2lsbCBmb2xs
b3cuCgoyLiB2MSBvbmx5IGFkZGVkIHN1cHBvcnQgZm9yIHRoZSBCcmVhZEJlZSBib2FyZHMgdGhh
dCBJIGhhdmUgYmVlbgp3b3JraW5nIG9uLiB2MiBhbHNvIGFkZHMgc3VwcG9ydCBmb3IgYSByZWFk
aWx5IGF2YWlsYWJsZSBjYXIgZGFzaApjYW1lcmEuCgozLiBTdXBwb3J0IGZvciB0aGUgQnJlYWRC
ZWUgYm9hcmQgaGFzIGJlZW4gc3BsaXQgaW50byB0d28gdG9wIGxldmVsCmR0cyB0byBjbGVhbmx5
IHN1cHBvcnQgaWYgZWl0aGVyIHRoZSBtc2MzMTMgb3IgbXNjMzEzZSBpcyBtb3VudGVkIG9uCnRo
ZSBib2FyZC4gVGhlIGNoaXBzIGFyZSBwaW4gY29tcGF0aWJsZSBidXQgc29tZSBvZiB0aGUgaW50
ZXJuYWwKaGFyZHdhcmUgaXMgZGlmZmVyZW50LiBUaGUgdS1ib290IHBvcnQgZm9yIHRoZXNlIFNv
Q3MgY2FuIGRldGVjdAp3aGljaCBjaGlwIGl0IGlzIHJ1bm5pbmcgb24gYW5kIHNlbGVjdCB0aGUg
cmlnaHQgZHRzIHNvIHRoZSB1c2VyCmRvZXNuJ3QgaGF2ZSB0byBjYXJlIHdoaWNoIGNoaXAgaXMg
bW91bnRlZCBvbiB0aGVpciBib2FyZC4KCkRhbmllbCBQYWxtZXIgKDEyKToKICBkdC1iaW5kaW5n
czogdmVuZG9yLXByZWZpeGVzOiBBZGQgbXN0YXIgdmVuZG9yIHByZWZpeAogIGR0LWJpbmRpbmdz
OiB2ZW5kb3ItcHJlZml4ZXM6IEFkZCBzc3RhciB2ZW5kb3IgcHJlZml4CiAgZHQtYmluZGluZ3M6
IHZlbmRvci1wcmVmaXhlczogQWRkIDcwbWFpIHZlbmRvciBwcmVmaXgKICBkdC1iaW5kaW5nczog
dmVuZG9yLXByZWZpeGVzOiBBZGQgdGhpbmd5LmpwIHByZWZpeAogIGR0LWJpbmRpbmdzOiBkdC1i
aW5kaW5nczogYXJtOiBBZGQgbXN0YXIgWUFNTCBzY2hlbWEKICBBUk06IG1zdGFyOiBBZGQgbWFj
aGluZSBmb3IgTVN0YXIvU2lnbWFzdGFyIEFybXY3IFNvQ3MKICBBUk06IG1zdGFyOiBBZGQgYmlu
ZGluZyBkZXRhaWxzIGZvciBtc3RhcixsM2JyaWRnZQogIEFSTTogbXN0YXI6IEFkZCBBcm12NyBi
YXNlIGR0c2kKICBBUk06IG1zdGFyOiBBZGQgaW5maW5pdHkvaW5maW5pdHkzIGZhbWlseSBkdHNp
cwogIEFSTTogbXN0YXI6IEFkZCBtZXJjdXJ5NSBzZXJpZXMgZHRzaXMKICBBUk06IG1zdGFyOiBB
ZGQgZHRzIGZvciBtc2MzMTMoZSkgYmFzZWQgQnJlYWRCZWUgYm9hcmRzCiAgQVJNOiBtc3Rhcjog
QWRkIGR0cyBmb3IgNzBtYWkgbWlkcml2ZSBkMDgKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vbXN0YXIueWFtbCAgICAgICAgfCAzMyArKysrKysrKwogLi4uL2JpbmRpbmdzL21pc2MvbXN0
YXIsbDNicmlkZ2UueWFtbCAgICAgICAgIHwgNDQgKysrKysrKysrKwogLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgIHwgIDggKysKIE1BSU5UQUlORVJTICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDExICsrKwogYXJjaC9hcm0vS2NvbmZpZyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKwogYXJjaC9hcm0vTWFrZWZpbGUgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZp
bGUgICAgICAgICAgICAgICAgICAgIHwgIDQgKwogLi4uL2R0cy9pbmZpbml0eS1tc2MzMTMtYnJl
YWRiZWVfY3J1c3QuZHRzICAgIHwgMjUgKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9pbmZpbml0
eS1tc2MzMTMuZHRzaSAgICAgICAgfCAxNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9pbmZpbml0
eS5kdHNpICAgICAgICAgICAgICAgfCAgNyArKwogLi4uL2Jvb3QvZHRzL2luZmluaXR5My1tc2Mz
MTNlLWJyZWFkYmVlLmR0cyAgIHwgMjUgKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9pbmZpbml0
eTMtbXNjMzEzZS5kdHNpICAgICAgfCAxNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9pbmZpbml0
eTMuZHRzaSAgICAgICAgICAgICAgfCAgNyArKwogLi4uL2Jvb3QvZHRzL21lcmN1cnk1LXNzYzgz
MzZuLW1pZHJpdmUwOC5kdHMgIHwgMjUgKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9tZXJjdXJ5
NS1zc2M4MzM2bi5kdHNpICAgICAgfCAxNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9tZXJjdXJ5
NS5kdHNpICAgICAgICAgICAgICAgfCAgNyArKwogYXJjaC9hcm0vYm9vdC9kdHMvbXN0YXItdjcu
ZHRzaSAgICAgICAgICAgICAgIHwgODMgKysrKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vbWFj
aC1tc3Rhci9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwgMjYgKysrKysrCiBhcmNoL2FybS9t
YWNoLW1zdGFyL01ha2VmaWxlICAgICAgICAgICAgICAgICAgfCAgMSArCiBhcmNoL2FybS9tYWNo
LW1zdGFyL21zdGFydjcuYyAgICAgICAgICAgICAgICAgfCA4MCArKysrKysrKysrKysrKysrKysK
IDIwIGZpbGVzIGNoYW5nZWQsIDQzMSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9tc3Rhci55YW1sCiBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21pc2MvbXN0YXIs
bDNicmlkZ2UueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL2luZmlu
aXR5LW1zYzMxMy1icmVhZGJlZV9jcnVzdC5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bS9ib290L2R0cy9pbmZpbml0eS1tc2MzMTMuZHRzaQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtL2Jvb3QvZHRzL2luZmluaXR5LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9i
b290L2R0cy9pbmZpbml0eTMtbXNjMzEzZS1icmVhZGJlZS5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybS9ib290L2R0cy9pbmZpbml0eTMtbXNjMzEzZS5kdHNpCiBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvaW5maW5pdHkzLmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybS9ib290L2R0cy9tZXJjdXJ5NS1zc2M4MzM2bi1taWRyaXZlMDguZHRzCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvbWVyY3VyeTUtc3NjODMzNm4uZHRzaQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL21lcmN1cnk1LmR0c2kKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9tc3Rhci12Ny5kdHNpCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1tc3Rhci9LY29uZmlnCiBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm0vbWFjaC1tc3Rhci9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
L21hY2gtbXN0YXIvbXN0YXJ2Ny5jCgotLSAKMi4yNy4wLnJjMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
