Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE16EB6D33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 22:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nb0HsDgneNDRW0+9UpwsJWuWC3b8HUsGSCrwpGoGj4s=; b=byaapf83wWMxxj
	BXXGZCIWwv56vujMWyHtL933Qn9J6Y4q+0gQhlH4E709joR3xsIAkBsDqfmBkx3rIqt/Vl/pu757X
	pyYvieDGXLNLl/A0yQs8Ai7bbaUYUR33U+hDqA9TMQN6I0BAXTQu1D6AoF0kJ09PLZL1Jyre6NjA4
	JUIOKGRjHDrK/wQQKMaTfAvKR/jPgEVNxSzs8yMkZNSdkG/yTHJ7+vZcOpqlW1FnFSZ3yWuyZXFiQ
	3pmS5yYe+ngWkof91HCLF26TJvLkMKmenwhy68vpVfXzPUdxw0MYAZX9IeU+pZ00RxS0mtIwM7hkz
	8HGm7+AC4GoOOO29/CGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAg9b-0005aO-Ic; Wed, 18 Sep 2019 20:02:19 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAg9Q-0005ZY-4q
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 20:02:09 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MbAtM-1hdXFq3c8O-00baXC; Wed, 18 Sep 2019 22:02:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>
Subject: [PATCH] udc: lpc32xx: fix 64-bit compiler warning
Date: Wed, 18 Sep 2019 22:01:41 +0200
Message-Id: <20190918200201.2292008-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:bxmp9dxd7Rf7t+/OQ2JUHr1N8GlyL8/PIoJYASViwBPyicev7rU
 mGcazxroqrLSR8aEG3r61RC0FTDY3Z/BB70JjUmx5SaeGIjTkD02/Iao/Rd+7mm5OiPszrn
 FQaA/aOrpghPymORpTgqUWD9Fsq1MYqllZiZOYSGPBvrv7e9LDs+rXgyTcbv890NE8KPCCW
 0CDNbVvuz1asLg62dvs5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jeVV6YZmc9o=:A6TaEpzkeGq91HCJvjF+ED
 zWi3nmSwgbTVAYHyP4cpemKiYgURYEPadrm4qGR0Hxps2xPeqTmPj7MykYvboXsiSse4UqKv6
 M4SjDGkK+ADlHNUp4C1rTabbS9vHC+MFR/Ia9cQYeoJjLpt58x04zVmQpu0okrJ0d1D+1lcpE
 M4wOQhrAuMUhFFoM0WilzCEbBBlY7QhxbxHG0sApr4SP/nWHg3ug4Qf0jofejTwyHLarKC2lp
 RoCsDU6p8rfAlY+Qn+tJ2Y+Zn7yTS3FdzXUTMZHBDfgHYq+2j7MpkoHlWFfO+jTPkl+/AWXm1
 YHF2GfwrSEUBUT1DL//5YEOX9E23S6BAbFwQzanf/GIrmE4/DGHkSB+YPSqzGPgtJymQSYn6k
 MzU6oqcn7muGo1FZiNkK19aPCVhT2vG/6cPsu4fxWis21E5xnUdQZOfQ48ScHg9u4D3ZYo7p9
 kMUsMr1Mb6+rMQBzgY1qV8XT3CzZgjwQofZqFxlAgTjzuLplChuuwxASCHpBYw+aw2MK9L8wW
 FAVbF/F4hzfSPz0m7s0k8/l83uiTgslG4000kDmXp7QuGu9neoUfrZaTWYAiA/aOCbFaxUfje
 5AxYpHmHI1eP3c6a5se+4UojEqGK375TcBibjXGD05YKlpJjelzjqtPn8Qb9MXP6FyUHnED2k
 c8sIXxnCpfAmgEPZdM2oJFIidrZDBnoMgMiYDQZZiKSkY4zsdf1D6dd1/d23AswfCdnE/DU31
 HpkxP0pIAnggserqBj80Ldmh2ZQU8dwNEKAWO5oNly+uOFvxXwDuBw1bBf9B8GIIdPyK7NKA4
 vPRHbH+jc5mHtrvyepL+QN9kc6MKA1l2s+nTy4BYWj2N6apHHZpA1p0uiFA8+hjp2B4leAvPl
 VXVEQIFGxozISn8jh88A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_130208_484453_FB3B083C 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Z2NjIHBvaW50cyBvdXQgYSBzdXNwaWNpb3VzIGNhc3QgZnJvbSBhIHBvaW50ZXIgdG8gYW4gJ2lu
dCcgd2hlbgpjb21waWxlLXRlc3Rpbmcgb24gNjQtYml0IGFyY2hpdGVjdHVyZXMuCgpkcml2ZXJz
L3VzYi9nYWRnZXQvdWRjL2xwYzMyeHhfdWRjLmM6IEluIGZ1bmN0aW9uIOKAmHVkY19wb3BfZmlm
b+KAmToKZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9scGMzMnh4X3VkYy5jOjExNTY6MTE6IHdhcm5p
bmc6IGNhc3QgZnJvbSBwb2ludGVyIHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XcG9p
bnRlci10by1pbnQtY2FzdF0KZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9scGMzMnh4X3VkYy5jOiBJ
biBmdW5jdGlvbiDigJh1ZGNfc3R1ZmZfZmlmb+KAmToKZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9s
cGMzMnh4X3VkYy5jOjEyNTc6MTE6IHdhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVyIHRvIGludGVn
ZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KClRoZSBjb2RlIHdv
cmtzIGZpbmQsIGJ1dCBpdCdzIGVhc3kgZW5vdWdoIHRvIGNoYW5nZSB0aGUgY2FzdCB0bwphIHVp
bnRwdHJfdCB0byBzaHV0IHVwIHRoYXQgd2FybmluZy4KClJlcG9ydGVkLWJ5OiBMaW51cyBUb3J2
YWxkcyA8dG9ydmFsZHNAbGludXgtZm91bmRhdGlvbi5vcmc+ClNpZ25lZC1vZmYtYnk6IEFybmQg
QmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Ci0tLQogZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9LY29u
ZmlnICAgICAgIHwgMiArLQogZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9scGMzMnh4X3VkYy5jIHwg
NCArKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9nYWRnZXQvdWRjL0tjb25maWcgYi9kcml2ZXJzL3Vz
Yi9nYWRnZXQvdWRjL0tjb25maWcKaW5kZXggODY4YmRmN2Y0MmQwLi5hYzA4OTFhM2RiZjIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvS2NvbmZpZworKysgYi9kcml2ZXJzL3Vz
Yi9nYWRnZXQvdWRjL0tjb25maWcKQEAgLTQ1LDcgKzQ1LDcgQEAgY29uZmlnIFVTQl9BVDkxCiAK
IGNvbmZpZyBVU0JfTFBDMzJYWAogCXRyaXN0YXRlICJMUEMzMlhYIFVTQiBQZXJpcGhlcmFsIENv
bnRyb2xsZXIiCi0JZGVwZW5kcyBvbiBBUkNIX0xQQzMyWFgKKwlkZXBlbmRzIG9uIEFSQ0hfTFBD
MzJYWCB8fCBDT01QSUxFX1RFU1QKIAlkZXBlbmRzIG9uIEkyQwogCXNlbGVjdCBVU0JfSVNQMTMw
MQogCWhlbHAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMu
YyBiL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMuYwppbmRleCBiM2UwNzNmYjg4
YzYuLjJiMWYzY2M3ODE5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9scGMz
Mnh4X3VkYy5jCisrKyBiL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMuYwpAQCAt
MTE1MSw3ICsxMTUxLDcgQEAgc3RhdGljIHZvaWQgdWRjX3BvcF9maWZvKHN0cnVjdCBscGMzMnh4
X3VkYyAqdWRjLCB1OCAqZGF0YSwgdTMyIGJ5dGVzKQogCXUzMiAqcDMyLCB0bXAsIGNieXRlczsK
IAogCS8qIFVzZSBvcHRpbWFsIGRhdGEgdHJhbnNmZXIgbWV0aG9kIGJhc2VkIG9uIHNvdXJjZSBh
ZGRyZXNzIGFuZCBzaXplICovCi0Jc3dpdGNoICgoKHUzMikgZGF0YSkgJiAweDMpIHsKKwlzd2l0
Y2ggKCgodWludHB0cl90KSBkYXRhKSAmIDB4MykgewogCWNhc2UgMDogLyogMzItYml0IGFsaWdu
ZWQgKi8KIAkJcDMyID0gKHUzMiAqKSBkYXRhOwogCQljYnl0ZXMgPSAoYnl0ZXMgJiB+MHgzKTsK
QEAgLTEyNTIsNyArMTI1Miw3IEBAIHN0YXRpYyB2b2lkIHVkY19zdHVmZl9maWZvKHN0cnVjdCBs
cGMzMnh4X3VkYyAqdWRjLCB1OCAqZGF0YSwgdTMyIGJ5dGVzKQogCXUzMiAqcDMyLCB0bXAsIGNi
eXRlczsKIAogCS8qIFVzZSBvcHRpbWFsIGRhdGEgdHJhbnNmZXIgbWV0aG9kIGJhc2VkIG9uIHNv
dXJjZSBhZGRyZXNzIGFuZCBzaXplICovCi0Jc3dpdGNoICgoKHUzMikgZGF0YSkgJiAweDMpIHsK
Kwlzd2l0Y2ggKCgodWludHB0cl90KSBkYXRhKSAmIDB4MykgewogCWNhc2UgMDogLyogMzItYml0
IGFsaWduZWQgKi8KIAkJcDMyID0gKHUzMiAqKSBkYXRhOwogCQljYnl0ZXMgPSAoYnl0ZXMgJiB+
MHgzKTsKLS0gCjIuMjAuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
