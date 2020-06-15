Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1FA1F9B90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhuV2I8FqjE5JiVZ8Idpo0KTSzgaxj1Sk2O30+rzrIE=; b=n6RrlRTDg5PNM4
	Y1qfQVw3ZCkaOEJBSgZG1fPxzfZUg9Z+qP3wxM9zBEpxuvN0fr5eZyjEij1OeX57JIVz5a6RoXUxW
	q7rJjSJNeH+RNFXOeu/8uaWzUS5rn+Utn1ebkWL+lt34FPO9OqUzbJp2MBeueGY12XSFLdm/Ycmgt
	onXXHc/tF1AyG72pGrJAeEVg62VTfOuKWhXw82g3dwlEPdYRPa5nzpvfZjAWBhSELN4akUKaQtz/N
	pCAzboO9nTdYCzErpFoe+9KgnUL8g77ooh41t/MlzruMSxy5XdHHwpU8VpvvXKKXPENCM6CRAxu3u
	NHMELxrE7qfFOokvq3Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqjw-00043X-Ub; Mon, 15 Jun 2020 15:09:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqjp-000439-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:09:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E658068B05; Mon, 15 Jun 2020 17:09:26 +0200 (CEST)
Date: Mon, 15 Jun 2020 17:09:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
Message-ID: <20200615150926.GA17108@lst.de>
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
 <CAK8P3a2MeZhayZWkPbd4Ckq3n410p_n808NJTwN=JjzqHRiAXg@mail.gmail.com>
 <20200615144310.GA15101@lst.de>
 <CAK8P3a17h782gO65qJ9Mmz0EuiTSKQPEyr_=nvqOtnmQZuh9Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a17h782gO65qJ9Mmz0EuiTSKQPEyr_=nvqOtnmQZuh9Kw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_080929_378521_866940B2 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTUsIDIwMjAgYXQgMDQ6NDY6MTVQTSArMDIwMCwgQXJuZCBCZXJnbWFubiB3
cm90ZToKPiBIb3cgYWJvdXQgdGhpcyBvbmU6Cj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2Vu
dHJ5L3N5c2NhbGxfeDMyLmMgYi9hcmNoL3g4Ni9lbnRyeS9zeXNjYWxsX3gzMi5jCj4gaW5kZXgg
M2Q4ZDcwZDM4OTZjLi4wY2UxNTgwN2NmNTQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC94ODYvZW50cnkv
c3lzY2FsbF94MzIuYwo+ICsrKyBiL2FyY2gveDg2L2VudHJ5L3N5c2NhbGxfeDMyLmMKPiBAQCAt
MTYsNiArMTYsOSBAQAo+ICAjdW5kZWYgX19TWVNDQUxMX1gzMgo+ICAjdW5kZWYgX19TWVNDQUxM
X0NPTU1PTgo+IAo+ICsjZGVmaW5lIF9feDMyX3N5c19leGVjdmUgX194NjRfc3lzX2V4ZWN2ZQo+
ICsjZGVmaW5lIF9feDMyX3N5c19leGVjdmVhdCBfX3g2NF9zeXNfZXhlY3ZlYXQKPiArCgoKYXJj
aC94ODYvZW50cnkvc3lzY2FsbF94MzIuYzoxOToyNjogZXJyb3I6IOKAmF9feDY0X3N5c19leGVj
dmXigJkgdW5kZWNsYXJlZCBoZXJlIChub3QgaW4gYSBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDi
gJhfX3gzMl9zeXNfZXhlY3Zl4oCZPwogICAxOSB8ICNkZWZpbmUgX194MzJfc3lzX2V4ZWN2ZSBf
X3g2NF9zeXNfZXhlY3ZlCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fn5+fn5+fn4KYXJjaC94ODYvZW50cnkvc3lzY2FsbF94MzIuYzoyMjozOTogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvIOKAmF9feDMyX3N5c19leGVjdmXigJkKICAgMjIgfCAjZGVmaW5lIF9f
U1lTQ0FMTF9YMzIobnIsIHN5bSkgW25yXSA9IF9feDMyXyMjc3ltLAogICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Ci4vYXJjaC94ODYvaW5jbHVkZS9n
ZW5lcmF0ZWQvYXNtL3N5c2NhbGxzXzY0Lmg6MzQ0OjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBt
YWNybyDigJhfX1NZU0NBTExfWDMy4oCZCiAgMzQ0IHwgX19TWVNDQUxMX1gzMig1MjAsIHN5c19l
eGVjdmUpCiAgICAgIHwgXn5+fn5+fn5+fn5+fgphcmNoL3g4Ni9lbnRyeS9zeXNjYWxsX3gzMi5j
OjIwOjI4OiBlcnJvcjog4oCYX194NjRfc3lzX2V4ZWN2ZWF04oCZIHVuZGVjbGFyZWQgaGVyZSAo
bm90IGluIGEgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYX194MzJfc3lzX2V4ZWN2ZWF04oCZ
PwogICAyMCB8ICNkZWZpbmUgX194MzJfc3lzX2V4ZWN2ZWF0IF9feDY0X3N5c19leGVjdmVhdAog
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgphcmNo
L3g4Ni9lbnRyeS9zeXNjYWxsX3gzMi5jOjIyOjM5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8g4oCYX194MzJfc3lzX2V4ZWN2ZWF04oCZCiAgIDIyIHwgI2RlZmluZSBfX1NZU0NBTExfWDMy
KG5yLCBzeW0pIFtucl0gPSBfX3gzMl8jI3N5bSwKICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF5+fn5+fgouL2FyY2gveDg2L2luY2x1ZGUvZ2VuZXJhdGVkL2Fz
bS9zeXNjYWxsc182NC5oOjM2OToxOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYX19T
WVNDQUxMX1gzMuKAmQogIDM2OSB8IF9fU1lTQ0FMTF9YMzIoNTQ1LCBzeXNfZXhlY3ZlYXQpCiAg
ICAgIHwgXn5+fn5+fn5+fn5+fgptYWtlWzJdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6
MjgxOiBhcmNoL3g4Ni9lbnRyeS9zeXNjYWxsX3gzMi5vXSBFcnJvciAxCm1ha2VbMV06ICoqKiBb
c2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IGFyY2gveDg2L2VudHJ5XSBFcnJvciAyCm1ha2Vb
MV06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCmtlcm5lbC9leGl0Lm86IHdh
cm5pbmc6IG9ianRvb2w6IF9feDY0X3N5c19leGl0X2dyb3VwKCkrMHgxNDogdW5yZWFjaGFibGUg
aW5zdHJ1Y3Rpb24KbWFrZTogKioqIFtNYWtlZmlsZToxNzY0OiBhcmNoL3g4Nl0gRXJyb3IgMgpt
YWtlOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
