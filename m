Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6445A1EBFC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZzCn1N+BcfhDzAiq2b5mdj2unfqp07L42qSFoADwBzU=; b=uPcc4+Ah1hruPl
	nUd+1Q3FwWDm1Uk36tHcApCydy1BuHCGH1hhwIORi3HQJcMsD6RlAOVCO6Ev/HrDhX/DGM+TbkESv
	KHVJ/jtBMyClKJ50LEFUanc8XELlz6NLhcuDiUjrTndKqxKuStZRSKXKZwczzMZKKNy7tlgFqWDOQ
	jnPpp2K+75rziY/7JkrsWRAqSpE5idzQiKia6Di86kC9sROqK/Dq2kjddHxT3cy7dG1WsP6z7PuYN
	1fxwKA/Zs/MopEbXH/+7TEd764adFtYoxM0Dcv4d0HrmbPN2/KSapO50IuN2lMKA/n4MNbU00oQDj
	6nSk+NgNOMqDi4reqIrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9c7-00016u-D7; Tue, 02 Jun 2020 16:18:07 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9bg-0000tO-Fu
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:17:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200602161739euoutp0225f68f2948fd5aca6febe5ef7b376ed6~Uxlo4hj881095510955euoutp02c
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  2 Jun 2020 16:17:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200602161739euoutp0225f68f2948fd5aca6febe5ef7b376ed6~Uxlo4hj881095510955euoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591114659;
 bh=UQuTozY2MxX8UBgz0xZ3wonyIu/c1B+C4uicBd24pYQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G3yHcZOlkuPt9kxT427OqGHvNtKAhYsXUp2y8tB4cvBu80mmOUq65hG27xSZFGn7H
 R+ZqDZKQvJZEqmdxjCEKl/pC+Y6ntw36fbUr44qRD9sXUwF8sMfl0pMwV+Q9Y3oC+z
 9jcqlZ8b5p1Hgw7+7dQUwAgAiL/en6x4o2n+tKS0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200602161738eucas1p15e82a7613dba95267f60bdb5b4239d69~Uxlonj1ap2724027240eucas1p1r;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9A.81.60679.2AB76DE5; Tue,  2
 Jun 2020 17:17:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200602161738eucas1p2151f88b526bb009c27820a4f290a961e~UxloH1urK2274322743eucas1p24;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200602161738eusmtrp124c2fc089d2eefc0e4f645c81f22f111~UxloG8qmZ2876728767eusmtrp1R;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-a0-5ed67ba20cfa
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D1.DE.08375.2AB76DE5; Tue,  2
 Jun 2020 17:17:38 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200602161738eusmtip107f00e3cd9844fdc6d380d542d79d533~Uxln48eu12690626906eusmtip13;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] arm: decompressor: define a new zImage tag
Date: Tue,  2 Jun 2020 18:17:29 +0200
Message-Id: <20200602161731.23033-4-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602161731.23033-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju2zk7HpfT40nYi0XFukCWZRl2QukiBYf6URH4I2g186SWW7E5
 L0WlRVk27wx1s/AWmnmhabPctDUry6UmxcpLkSVlmqWoWVJW21nUv+d9n+d53+f9+EiM7hP6
 k7HKeE6llMdJCRFuevi9K7D0pEMWpG0NYm4W1AmZ3FqrgOlJNQuYJ5cVTI+tEjHGdw4h86yp
 iGBsumbE1Nx/5cEMvHkpZG7MtiNmLPuXgPlx9zvO1Bt12BZv9pmjG2MNKd04+7NqCGOLjRrW
 WHWJYPsdFoL93NnpwdaXn2Gzx0YJNrOhCrETxoW75+4ThUVxcbEJnGrNpoOimM9v3+PH+3yS
 UhrMghRk9kpHJAnUehgwhKUjEUlTlQj6r3ThfDGJoGx2BuOLCQSDFcUoHXm6HOVpQ4QT01QF
 gpYZ4EUfEDw18gRBbYWsa4+ETsKPmhJAky6NcBYY9RzBwF2TwKmaR4XDcMc47sQ4tQwu6Ysw
 JxZToZA/aPHg1y2CtIpGwhnWkwoDw2QcL/GFx4WDLqsPFQDVZ1+4MPZHfu6WwRUbqAwSHhhK
 BfycbXA157X7hHkw3Nbgnr8A7HlanH+MM5CXG8J7tQhMRd9wXhMK/Z0zrgwYtQLqmtbw7a1g
 tedgvNUbXo768hG8IdeU726L4eIFmlcvhdosi3ugP2QMV6JsJNX/d4z+vwP0/3YVI6wKSTiN
 WhHNqdcpucTVarlCrVFGrz50TGFEf76cfbZt8jZq+hFpQxSJpF7ioLUOGS2UJ6iTFTYEJCb1
 E4d32GW0OEqefIJTHTug0sRxahuaT+JSiTi49ON+moqWx3NHOe44p/rLCkhP/xRESszXa79m
 nn5CJ2/X7rH2bAwMe0R6WczBWb3WECQTf5puaa7efGfkfNuyDXN29QbT7I59hTV53UlJKnJ8
 JJQ1fSkzrnKUJB6JOhzrsbhr1dSplZKI1gzNlsay1GmtsiC3fVthi09O+968kiUR9ct1rR1z
 R8burSyujokc3+knkUhxdYx8bQCmUst/A2AsUHxuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrDIsWRmVeSWpSXmKPExsVy+t/xu7qLqq/FGTz8zWuxccZ6VotJ6w4w
 Wdxs3M1kcaY71+LmoRWMFpseX2O1uLxrDpvFoal7GS3WHrnLbvHwwQ1Wi9X/TjFafJjwn8ni
 z/6fLBabN01lduDzuHztIrPH7IaLLB5/V71g9liwqdRj06pONo871/awebw7d47dY/OSeo8J
 H96yefRtWcXo8XmTXAB3lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1N
 SmpOZllqkb5dgl7Gu0fPWApu81c0bNnN1MC4m6eLkZNDQsBEYkn7CzYQW0hgKaPEwX72LkYO
 oLiUxMq56RAlwhJ/rnUBlXABlTxllGh6/Q2snk3AUaJ/6QlWkISIwF8miYOzToNVMQtcY5TY
 OOEkM0iVsICTxKuzH1lAbBYBVYnOWXPA4rwC1hLTn+xhh1ghL9G+fDsbyGZOARuJ2V9yIA7K
 lXi4/BU7RLmgxMmZT1hASpgF1CXWzxMCCfMLaEmsaboONp0ZaErz1tnMExiFZiHpmIXQMQtJ
 1QJG5lWMIqmlxbnpucWGesWJucWleel6yfm5mxiBMb3t2M/NOxgvbQw+xCjAwajEw2tgeC1O
 iDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYG+nMgsJZqcD0w3eSXxhqaG
 5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGOd3+GvbJa67XVaUcyBxfeLR
 ufs583Udc25t0I2XOs02K3zDkrhVjHsLpNfn9Ny+o1W+TE5Ha3H3jzsx+h+/n3/2RP5c1Jx1
 yZwtU3x5g74zFQjVfZfkOT4rKyFDT3c1T3P8r5o0X5a/TQW79pVqaZ6dZZVv91h0XuzDzvW3
 buVvuX3V+uXmFCWW4oxEQy3mouJEAFVibh//AgAA
X-CMS-MailID: 20200602161738eucas1p2151f88b526bb009c27820a4f290a961e
X-Msg-Generator: CA
X-RootMTR: 20200602161738eucas1p2151f88b526bb009c27820a4f290a961e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200602161738eucas1p2151f88b526bb009c27820a4f290a961e
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <20200602161731.23033-1-l.stelmach@samsung.com>
 <CGME20200602161738eucas1p2151f88b526bb009c27820a4f290a961e@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091740_736561_B71BA9D3 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERDU1ogdGFnIHdoaWNoIGhvbGRzIGR5bmFtaWMgbWVtb3J5IChzdGFjaywgYnNzLCBtYWxs
b2MgcG9vbCkKcmVxdWlyZW1lbnRzIG9mIHRoZSBkZWNvbXByZXNzb3IgY29kZS4KClNpZ25lZC1v
ZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0tLQogYXJj
aC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgfCA5ICsrKysrKysrLQogYXJjaC9h
cm0vaW5jbHVkZS9hc20vaW1hZ2UuaCAgICAgICAgICAgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2Vk
LCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgYi9hcmNoL2FybS9ib290L2NvbXByZXNzZWQv
dm1saW51eC5sZHMuUwppbmRleCAzMDhlOWNkNmE4OTcuLmQxNWMxMjY5ZWI1ZCAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKKysrIGIvYXJjaC9hcm0v
Ym9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKQEAgLTM5LDYgKzM5LDExIEBAIFNFQ1RJT05T
CiAgICAgTE9ORyhBUk1fWklNQUdFX01BR0lDMykKICAgICBMT05HKFpJTUFHRV9NQUdJQyhfX3Bp
Z2d5X3NpemVfYWRkciAtIF9zdGFydCkpCiAgICAgTE9ORyhaSU1BR0VfTUFHSUMoX2tlcm5lbF9i
c3Nfc2l6ZSkpCisgICAgTE9ORyhaSU1BR0VfTUFHSUMoMykpCisgICAgTE9ORyhBUk1fWklNQUdF
X01BR0lDNCkKKyAgICBMT05HKFpJTUFHRV9NQUdJQygoX2VuZCAtIF9fYnNzX3N0YXJ0KSArCisg
ICAgICAgICAgICAgICAgICAgICAgKF9zdGFja19lbmQgLSBfc3RhY2tfc3RhcnQpICsKKyAgICAg
ICAgICAgICAgICAgICAgICBNQUxMT0NfU0laRSkpCiAgICAgTE9ORygwKQogICAgIF90YWJsZV9l
bmQgPSAuOwogICB9CkBAIC0xMDgsMTAgKzExMywxMiBAQCBTRUNUSU9OUwogICAuID0gQlNTX1NU
QVJUOwogICBfX2Jzc19zdGFydCA9IC47CiAgIC5ic3MJCQk6IHsgKiguYnNzKSB9CisgIC4gPSBB
TElHTig4KTsJCS8qIHRoZSBzdGFjayBtdXN0IGJlIDY0LWJpdCBhbGlnbmVkIGFuZCBhZGpvaW4g
YnNzICovCiAgIF9lbmQgPSAuOwogCi0gIC4gPSBBTElHTig4KTsJCS8qIHRoZSBzdGFjayBtdXN0
IGJlIDY0LWJpdCBhbGlnbmVkICovCisgIF9zdGFja19zdGFydCA9IC47CiAgIC5zdGFjawkJOiB7
ICooLnN0YWNrKSB9CisgIF9zdGFja19lbmQgPSAuOwogCiAgIFBST1ZJREUoX19wZWNvZmZfZGF0
YV9zaXplID0gQUxJR04oNTEyKSAtIEFERFIoLmRhdGEpKTsKICAgUFJPVklERShfX3BlY29mZl9l
bmQgPSBBTElHTig1MTIpKTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2ltYWdl
LmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9pbWFnZS5oCmluZGV4IGQ1YzE4YTBmNmEzNC4uNTVi
NTFmYWE2YjdlIDEwMDY0NAotLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9pbWFnZS5oCisrKyBi
L2FyY2gvYXJtL2luY2x1ZGUvYXNtL2ltYWdlLmgKQEAgLTE1LDYgKzE1LDcgQEAKICNkZWZpbmUg
QVJNX1pJTUFHRV9NQUdJQzEgWklNQUdFX01BR0lDKDB4MDE2ZjI4MTgpCiAjZGVmaW5lIEFSTV9a
SU1BR0VfTUFHSUMyICgweDQ1NDU0NTQ1KQogI2RlZmluZSBBUk1fWklNQUdFX01BR0lDMyBaSU1B
R0VfTUFHSUMoMHg1YTUzNGM0YikKKyNkZWZpbmUgQVJNX1pJTUFHRV9NQUdJQzQgWklNQUdFX01B
R0lDKDB4NWE1MzQzNDQpCiAKICNpZm5kZWYgX19BU1NFTUJMWV9fCiAKQEAgLTQwLDYgKzQxLDgg
QEAgc3RydWN0IGFybV96aW1hZ2VfdGFnIHsKIAkJCV9fbGUzMiBzaXplX3B0cjsKIAkJCV9fbGUz
MiBic3Nfc2l6ZTsKIAkJfSBrcm5sX3NpemU7CisjZGVmaW5lIFpJTUFHRV9UQUdfWklNQUdFX01F
TSBBUk1fWklNQUdFX01BR0lDNAorCQlfX2xlMzIgemltYWdlX21lbTsKIAl9IHU7CiB9OwogCi0t
IAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
