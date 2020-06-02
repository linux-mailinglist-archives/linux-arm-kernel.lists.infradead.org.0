Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FFD1EBFD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYThfNefgnwAWRRq4BoKYz1zIeHaE4ZV4IqTIJ3gxm0=; b=e0cif81PVU8NSM
	dymsIeCYiGzg96GW71A28a3UXKi/6+UAM/8xPmdX4nGv4L6OrbpPEOYzf3BzfcKbn7twVZLxAyPkj
	lxCGEsNu/lpgej7UnjhMRy9CGbw8N/8RR6WpupXZbPbhKespwqZxFAuUb8PH0k4gwt6XKiKdnGuD0
	h7IvNeknVbOBweT3BNRG4Ovoy8oHHFThc5UdGSp5a3xc2Pw8/RF3pE6gnaDFDUV1cEtnM+4Yeyh0W
	orXKy3h8/A8Q0cNI0oulexIjXRCeep/TSDFdPuBgLPnNrbo1f6LUR75NbIo4QmLgz0eout2uYIqp1
	qJbYk7D9CEM41I7GylhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9dE-0002BG-Cv; Tue, 02 Jun 2020 16:19:16 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9bh-0000t3-Hz
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:17:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200602161738euoutp012a5a75e1b9da6414541b41397ac10c83~UxloJcYIk2755627556euoutp01C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200602161738euoutp012a5a75e1b9da6414541b41397ac10c83~UxloJcYIk2755627556euoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591114658;
 bh=ZsH46X2OsHgVVE4UNgCQSLzPGPM56MRSMz7Fj5fkReY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NgwEoJbD/s4k7Eq8XJQUVgm0nBv2BSEsmu4Ub4+HK23oaGCe0C6YuDeLLg1hkwuC0
 eh/XvbG9OXLz2i/4Z74QjUcNwx3CxHDTnry/wvfT796CElMZ0XjgdN2m+sMxiUp8HY
 yeFyZW0cPC5e6RDhgz65oFYWxEUm/VPmY21Q5li8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200602161738eucas1p12bde97b5a914113bd67a30baeb678840~Uxln0uBkY1855418554eucas1p1R;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 0C.23.60698.1AB76DE5; Tue,  2
 Jun 2020 17:17:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200602161737eucas1p2c83700f7c17296c4367ee3fda1c6e783~Uxlnakb1u1812318123eucas1p24;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200602161737eusmtrp1b27e313f0a87e0dacc6846a4570f1e5d~UxlnZ44VD2876728767eusmtrp1N;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-15-5ed67ba1bb4d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0B.29.07950.1AB76DE5; Tue,  2
 Jun 2020 17:17:37 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200602161737eusmtip273b20c9f2d5ed78dde100331f078ec25~UxlnNTaQz0825708257eusmtip2B;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] arm: decompressor: set malloc pool size for the
 decompressor
Date: Tue,  2 Jun 2020 18:17:27 +0200
Message-Id: <20200602161731.23033-2-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602161731.23033-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH++3ezety+nP5OFn0GPWHRj4w6kdG9IRbBL2gIMq62W1Gm8rm
 MuuP1gNLTV2a5DM0FM184LQ5zZqtpZa1EGspqZkVvbCMNLIsc7tK/fc953zO+Z4Dh6HkfeIA
 5khMPK+J4VQKiZQ2tY7ZlxafdESGmrpWkNqcGjHJrG4RkZ7Tt0TkUaqa9FjLETG+dohJV1OB
 hFizbyNSZetzI68GusXkxp+HiAwbJkRk3DJGkzpjNrXGk+1ydFJsvr6TZn9XvKfYIqOONVYk
 S9heR7OE/Wy3u7F1JadYw/CQhE2vr0DsN+O8bTP3SFcd4lVHjvGakNUHpNFl95tRXLLX8Wup
 rW56VO2RgtwZwMtgwlAsSUFSRo7LEQz09FNCMILg3os+Wgi+IchNsomnW57VdiOhUIag7tHI
 FPUOgdlc6KIkeC1klLaLnQUfPCqCpuzzLhcKP0XwymISOalZeBekDpVSTk3jxTBQapM4tQxH
 gKXg15TffDhf1jCZZxh3vAryR1QC4g0Pct/QTu2Fg6DyzHOXpibxszfzXUcAzmbAXmyihDkb
 oGZkVCToWfCxrd5N0HOhI+si7ZwP+BRkZS4Xei8iMBX8oAUmAnrtP107UDgQappChPRamGg/
 N9XqCd1D3sIKnpBpukIJaRlcSJIL9CKozmieGhgAaR/LkQEp8v47Ju+/A/L+eRUhqgL58zqt
 Wslrw2P4hGAtp9bqYpTBUbFqI5p8uo4/baNmdGf8oBVhBik8ZKFhjki5mDumTVRbETCUwke2
 7nFHpFx2iEs8wWti92t0Kl5rRXMYWuEvC7/2YZ8cK7l4/ijPx/Ga6aqIcQ/QI/I1KWHAQLb4
 +X7frSyK29RfOXiG+21ONN7NWBftuyEt/pyfrgSXcFEvQ2yaJ9v5tkGfqusRZOfYpcby+IVK
 01tNe4g5P06p37oxIjB95YLBGjLbo7Hl8qfIS8N5X9fHjl/dbMsplGd9aUySf244fGJHIaKT
 r3pbfExL9uItM0QKWhvNhQVRGi33F5M6K6xwAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xe7oLq6/FGWxpkLfYOGM9q8WkdQeY
 LG427mayONOda3Hz0ApGi02Pr7FaXN41h83i0NS9jBZrj9xlt3j44Aarxep/pxgtPkz4z2Tx
 Z/9PFovNm6YyO/B5XL52kdljdsNFFo+/q14weyzYVOqxaVUnm8eda3vYPN6dO8fusXlJvceE
 D2/ZPPq2rGL0+LxJLoA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
 JTUnsyy1SN8uQS9j+dE9jAWd/BWLuo+xNzCu4+li5OSQEDCRuLrxBmMXIxeHkMBSRomTTzpY
 uxg5gBJSEivnpkPUCEv8udbFBlHzlFFizvUbzCAJNgFHif6lJ1hBEiICf5kkDs46DVbFLHCN
 UWLjhJNgVcICIRITj15iBbFZBFQlHiw9wgZi8wpYS+yf85sVYoW8RPvy7WwgmzkFbCRmf8kB
 CQsJ5Eo8XP6KHaJcUOLkzCcsICXMAuoS6+cJgYT5BbQk1jRdZwGxmYGmNG+dzTyBUWgWko5Z
 CB2zkFQtYGRexSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERjV24793LKDsetd8CFGAQ5GJR5e
 A8NrcUKsiWXFlbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqPLyrNSS0+xGgK9OVEZinR5Hxgwskr
 iTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cB44erJ3nIWIe/tV26o
 xBt/X1ewrPqYl1FHgPfTLTltByffCTrPp2J67/ic0iu7lBvLTNhTNl4X3vVXqiG+/uOlxJ3v
 Oo+0Sdje2rI4dlfDeVGe9wKXCu/2xIa+KO5yjml3mfR4YS2jzitbX56cK5s+X/57d/H7ayEF
 1X864vt1V5xhmrnevuOlEktxRqKhFnNRcSIAE1ZQ3gADAAA=
X-CMS-MailID: 20200602161737eucas1p2c83700f7c17296c4367ee3fda1c6e783
X-Msg-Generator: CA
X-RootMTR: 20200602161737eucas1p2c83700f7c17296c4367ee3fda1c6e783
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200602161737eucas1p2c83700f7c17296c4367ee3fda1c6e783
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <20200602161731.23033-1-l.stelmach@samsung.com>
 <CGME20200602161737eucas1p2c83700f7c17296c4367ee3fda1c6e783@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091741_742982_6F501984 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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

TW92ZSB0aGUgZGVmaW5pdGlvbiBvZiBtYWxsb2MgcG9vbCBzaXplIG9mIHRoZSBkZWNvbXByZXNz
b3IgdG8KYSBzaW5nbGUgcGxhY2UuIFRoaXMgdmFsdWUgd2lsbCBiZSBleHBvc2VkIGxhdGVyIGZv
ciBrZXhlY19maWxlIGxvYWRlci4KClNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwu
c3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2Vm
aWxlIHwgNyArKysrKy0tCiBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TICAgfCA2ICsr
KystLQogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlIGIvYXJjaC9hcm0v
Ym9vdC9jb21wcmVzc2VkL01ha2VmaWxlCmluZGV4IDljMTFlNzQ5MDI5Mi4uYzQxOTU2NTFlMzcx
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvTWFrZWZpbGUKKysrIGIvYXJj
aC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlCkBAIC03LDcgKzcsOSBAQAogCiBPQkpTCQk9
CiAKLUFGTEFHU19oZWFkLm8gKz0gLURURVhUX09GRlNFVD0kKFRFWFRfT0ZGU0VUKQorTUFMTE9D
X1NJWkUgICAgID0weDEwMDAwCisKK0FGTEFHU19oZWFkLm8gKz0gLURURVhUX09GRlNFVD0kKFRF
WFRfT0ZGU0VUKSAtRE1BTExPQ19TSVpFPSQoTUFMTE9DX1NJWkUpCiBIRUFECT0gaGVhZC5vCiBP
QkpTCSs9IG1pc2MubyBkZWNvbXByZXNzLm8KIGlmZXEgKCQoQ09ORklHX0RFQlVHX1VOQ09NUFJF
U1MpLHkpCkBAIC02OCw3ICs3MCw4IEBAIFpURVhUQUREUgk6PSAwCiBaQlNTQUREUgk6PSBBTElH
Tig4KQogZW5kaWYKIAotQ1BQRkxBR1Nfdm1saW51eC5sZHMgOj0gLURURVhUX1NUQVJUPSIkKFpU
RVhUQUREUikiIC1EQlNTX1NUQVJUPSIkKFpCU1NBRERSKSIKK0NQUEZMQUdTX3ZtbGludXgubGRz
IDo9IC1EVEVYVF9TVEFSVD0iJChaVEVYVEFERFIpIiAtREJTU19TVEFSVD0iJChaQlNTQUREUiki
IFwKKwkJCS1ETUFMTE9DX1NJWkU9IiQoTUFMTE9DX1NJWkUpIgogCiBjb21wcmVzcy0kKENPTkZJ
R19LRVJORUxfR1pJUCkgPSBnemlwCiBjb21wcmVzcy0kKENPTkZJR19LRVJORUxfTFpPKSAgPSBs
em8KZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMgYi9hcmNoL2Fy
bS9ib290L2NvbXByZXNzZWQvaGVhZC5TCmluZGV4IGU4ZTFjODY2ZTQxMy4uNTU3NTgyNjRlNzc2
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TCisrKyBiL2FyY2gv
YXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMKQEAgLTMwOSw3ICszMDksOCBAQCByZXN0YXJ0Oglh
ZHIJcjAsIExDMAogI2lmbmRlZiBDT05GSUdfWkJPT1RfUk9NCiAJCS8qIG1hbGxvYyBzcGFjZSBp
cyBhYm92ZSB0aGUgcmVsb2NhdGVkIHN0YWNrICg2NGsgbWF4KSAqLwogCQlhZGQJc3AsIHNwLCBy
MAotCQlhZGQJcjEwLCBzcCwgIzB4MTAwMDAKKwkJbW92CXIxMCwgI01BTExPQ19TSVpFCisJCWFk
ZAlyMTAsIHIxMCwgc3AKICNlbHNlCiAJCS8qCiAJCSAqIFdpdGggWkJPT1RfUk9NIHRoZSBic3Mv
c3RhY2sgaXMgbm9uIHJlbG9jYXRhYmxlLApAQCAtNjIzLDcgKzYyNCw4IEBAIG5vdF9yZWxvY2F0
ZWQ6CW1vdglyMCwgIzAKICAqLwogCQltb3YJcjAsIHI0CiAJCW1vdglyMSwgc3AJCQlAIG1hbGxv
YyBzcGFjZSBhYm92ZSBzdGFjawotCQlhZGQJcjIsIHNwLCAjMHgxMDAwMAlAIDY0ayBtYXgKKwkJ
bW92CXIyLCAjTUFMTE9DX1NJWkUJQCA2NGsgbWF4CisJCWFkZAlyMiwgcjIsIHNwCiAJCW1vdgly
MywgcjcKIAkJYmwJZGVjb21wcmVzc19rZXJuZWwKIAotLSAKMi4yNi4yCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
