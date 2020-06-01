Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFD51EA5CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIAVsp+jHtgGpf0WAs4ZOys8MKRhIbh8qvFgCeiC6rQ=; b=pWUdzfyltwlXAl
	5fKmAQp8Zinb9jCj4VOyO3Js2GGUDKz8xhP7ni9ubeYslR9+KjDdCNYhRsdbDIn7dDc2/0hbY9rgw
	lk2yh209oq/SRJw+I5Rf++ARL6UBF8RCpk2dHW6jtRanggdAUtZpujimd+wZs3A3sEobBV7DO3GBJ
	XnUGLPcQFUlYg/N2EFTElcmZzgW4NKM/45sCFJwKC7YKw7BoPtgOkhpvXSCnhBldkSBAQptpJsWUI
	J07ttkVPD+zhun0C2zSi3EUQZnMOVQhcSvvUGGY6+CiLXFSD/iNzm8dm2uD0hz6ooQaXCtizvjV4h
	H9NWLJx0oAvusQVh7QXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflR6-000451-RB; Mon, 01 Jun 2020 14:29:08 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflQD-0003Mv-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:28:15 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601142811euoutp01baf93504bdf7e4830f301c64f5830344~UccxxKBU10989309893euoutp01n
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 14:28:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200601142811euoutp01baf93504bdf7e4830f301c64f5830344~UccxxKBU10989309893euoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591021691;
 bh=Qz6U1Wo5NiI9a+hsP0kvKTekCHlCwheEB+SMihQuSRY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IHzDkama6HDzRYDvYnFe7jW7aHTsZ41zrK2JUmgP0jPY9ER2dbBbGmm0xrpx3dvRZ
 iTLGrLrzHeEAogbalCoZvpEK1Z1YT+TOljz5MtJb5U6uH7pb66GiDcgq+U7eX+v9ou
 sln6vRo9+glRM5yDbc75sK7Yei2XtL/LImRFm54o=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200601142810eucas1p222984f1c15f427a5327b43bc2ef363c0~UccxaOV1B2609926099eucas1p2P;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3E.6D.60698.A7015DE5; Mon,  1
 Jun 2020 15:28:10 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200601142810eucas1p23056f7997a880ff7d676c64703f87115~UccxH0XE83062630626eucas1p2G;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601142810eusmtrp2a83a46639842bb833882f4c67dbd6ff9~UccxHKKwk1485714857eusmtrp2K;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-e0-5ed5107a3af5
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 45.52.08375.A7015DE5; Mon,  1
 Jun 2020 15:28:10 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601142810eusmtip2567a0195d07aa80b2647c6d26b54bace~Uccw8Hs4M2413124131eusmtip2R;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] arm: add image header definitions
Date: Mon,  1 Jun 2020 16:27:51 +0200
Message-Id: <20200601142754.26139-3-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601142754.26139-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeUgUYRjG+WZmZ8ettXGNetMOWpJIzQNLBhRR6Y+BEiSIIEibcjzKVdtJ
 O4i0wiMrNUWqtcOiaFmvdjVL047Fo9Q2RPOI1rIsS/LII1zTLXdHyf+e5/1+z3vAR+GKPokL
 FZdwjFcncPFKUkZUN1lMW0/R7yJ8vt/xZvTXKiRMfvkLjOk9+xRj2i6qmF6jFjGGL10SpqP2
 BskYC+sRU9ZgljL9n3okTIm1BTFjeX8xZva5hWAqDYV4sCPb0dWOs0Vp7QQ7p/uOs8WGZNag
 u0CyH7rqSHbEZJKylfdS2byxYZLNqdIhdsKwPnzZPllgFB8fl8KrvYMOyGLT8/vJJLPricz3
 pVgaaliVjRwooLeBtaMEz0YySkFrEbRZtBLRTCJoftuOiWYCwei4nlyM3LJ2L1APEDyemZGK
 ZhDBwNxHZKNIOgRy77+yUyvpKQxqCzNJm8HpTgT9z6sxG+VM+8PL6QbCpgnaDbS/MqQ2LacD
 oLOwGxPnbYDMB4/tsx3oQHjROo6JjBO8vj5gz66g3aH0XLdd4/P8+UdF9pOAvkLBH/NPidho
 B5QVTeGidoah5iqpqNfC35rb802peZ0KBfn+YvYSguob04TIBMAH0wxpY3B6C1TUeovlEKia
 K1iIOkLPsJO4giPkV1/FxbIcsjIUIr0JynPrFhq6wOUhLcpDSs2SYzRLDtD8n1WMcB1azScL
 qhhe8Evgj3sJnEpITojxOpSoMqD5X9dqbZ56gp7NHjQimkLK5fKHHzsjFBIuRTipMiKgcOVK
 eeib1giFPIo7eYpXJ0aqk+N5wYhcKUK5Wu5398d+BR3DHeOP8HwSr158xSgHlzTkER5UPqnf
 2Ha0sT7181f3ykijn/NNXVafnjeFacy7x5WWr/FY2J71+t0pNd8GLIHpO+s00XmhTZ5nErlI
 3xyjJtpj+o5PCNHvU/DZ+VPfXuvvyBa3XYFv9IfHRwdnb5LryoSSlrRNZt/j0Rv2e+YGK5v2
 hKzhNlsPbo8acZGdblQSQizn646rBe4f/Coc83EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsVy+t/xe7pVAlfjDA69lbXYOGM9q8WkdQeY
 LG427mayONOda3Hz0ApGi02Pr7FaXN41h83i0NS9jBZrj9xlt3j44Aarxep/pxgtPkz4z2Tx
 Z/9PFovNm6YyO/B5XL52kdljdsNFFo+/q14weyzYVOqxaVUnm8eda3vYPN6dO8fusXlJvceE
 D2/ZPPq2rGL0+LxJLoA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
 JTUnsyy1SN8uQS+jddJDtoK70hXtt9YwNTAeEeti5OSQEDCRmPfvOmsXIxeHkMBSRonOiweY
 uhg5gBJSEivnpkPUCEv8udbFBlHzlFHiyfleRpAEm4CjRP/SE2DNIgJ/mSQOzjoNVsUscI1R
 YuOEk8wgVcICZhIHfxxhAbFZBFQlVnxsYwexeQWsJa5Mvc4EsUJeon35djYQm1PARuLA6U9g
 cSGgmvfTupkg6gUlTs58wgJyHbOAusT6eUIgYX4BLYk1TdfBxjMDjWneOpt5AqPQLCQdsxA6
 ZiGpWsDIvIpRJLW0ODc9t9hQrzgxt7g0L10vOT93EyMwrrcd+7l5B+OljcGHGAU4GJV4eDfc
 vxInxJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOMpkBvTmSWEk3OB6acvJJ4
 Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjNmft/xgM3plYHMzq99D
 X7gtMpHF8G3WRRGuF7HFSrMXmebO3e0qdS79/xkL12X8a64GS/7U0n9za68K26G1Sxeyczml
 zZVIz5TZ3mP0YM6ySR+uTZTT4DBe9iW/KqggQOLvrOB7uVPjornWReZ4xnxhWye/6Lf4Rs66
 9+dPrimyOHjQ5cPqRCWW4oxEQy3mouJEAGmHb9wBAwAA
X-CMS-MailID: 20200601142810eucas1p23056f7997a880ff7d676c64703f87115
X-Msg-Generator: CA
X-RootMTR: 20200601142810eucas1p23056f7997a880ff7d676c64703f87115
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601142810eucas1p23056f7997a880ff7d676c64703f87115
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142810eucas1p23056f7997a880ff7d676c64703f87115@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_072813_682791_B83A05A7 
X-CRM114-Status: GOOD (  16.91  )
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

VGhpcyBzdHJ1Y3R1cmUgd2lsbCBiZSB1c2VkIGxhdGVyIGJ5IGtleGVjX2ZpbGUgbG9hZGVyLgoK
U2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4K
LS0tCiBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TICAgICAgICB8ICAzICstCiBhcmNo
L2FybS9ib290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUyB8IDEzICsrLS0tLS0KIGFyY2gvYXJt
L2luY2x1ZGUvYXNtL2ltYWdlLmggICAgICAgICAgIHwgNDggKysrKysrKysrKysrKysrKysrKysr
KysrKysKIDMgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
CiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaAoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMgYi9hcmNoL2FybS9ib290L2Nv
bXByZXNzZWQvaGVhZC5TCmluZGV4IGRjYzFhZmE2MGZiOS4uOTdlNGNmY2ZjMTk3IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
Y29tcHJlc3NlZC9oZWFkLlMKQEAgLTcsNiArNyw3IEBACiAgKi8KICNpbmNsdWRlIDxsaW51eC9s
aW5rYWdlLmg+CiAjaW5jbHVkZSA8YXNtL2Fzc2VtYmxlci5oPgorI2luY2x1ZGUgPGFzbS9pbWFn
ZS5oPgogI2luY2x1ZGUgPGFzbS92N20uaD4KIAogI2luY2x1ZGUgImVmaS1oZWFkZXIuUyIKQEAg
LTIxMSw3ICsyMTIsNyBAQCBzdGFydDoKIAkJLndvcmQJX21hZ2ljX3N0YXJ0CUAgYWJzb2x1dGUg
bG9hZC9ydW4gekltYWdlIGFkZHJlc3MKIAkJLndvcmQJX21hZ2ljX2VuZAlAIHpJbWFnZSBlbmQg
YWRkcmVzcwogCQkud29yZAkweDA0MDMwMjAxCUAgZW5kaWFubmVzcyBmbGFnCi0JCS53b3JkCTB4
NDU0NTQ1NDUJQCBhbm90aGVyIG1hZ2ljIG51bWJlciB0byBpbmRpY2F0ZQorCQkud29yZAlBUk1f
WklNQUdFX01BR0lDMiBAIGFub3RoZXIgbWFnaWMgbnVtYmVyIHRvIGluZGljYXRlCiAJCS53b3Jk
CV9tYWdpY190YWJsZQlAIGFkZGl0aW9uYWwgZGF0YSB0YWJsZQogCiAJCV9fRUZJX0hFQURFUgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgYi9hcmNo
L2FybS9ib290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUwppbmRleCBmODJiNTk2MmQ5N2UuLjMw
OGU5Y2Q2YTg5NyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgu
bGRzLlMKKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKQEAgLTMs
MTQgKzMsNyBAQAogICogIENvcHlyaWdodCAoQykgMjAwMCBSdXNzZWxsIEtpbmcKICAqLwogCi0j
aWZkZWYgQ09ORklHX0NQVV9FTkRJQU5fQkU4Ci0jZGVmaW5lIFpJTUFHRV9NQUdJQyh4KSAoICgo
KHgpID4+IDI0KSAmIDB4MDAwMDAwZmYpIHwgXAotCQkJICAoKCh4KSA+PiAgOCkgJiAweDAwMDBm
ZjAwKSB8IFwKLQkJCSAgKCgoeCkgPDwgIDgpICYgMHgwMGZmMDAwMCkgfCBcCi0JCQkgICgoKHgp
IDw8IDI0KSAmIDB4ZmYwMDAwMDApICkKLSNlbHNlCi0jZGVmaW5lIFpJTUFHRV9NQUdJQyh4KSAo
eCkKLSNlbmRpZgorI2luY2x1ZGUgPGFzbS9pbWFnZS5oPgogCiBPVVRQVVRfQVJDSChhcm0pCiBF
TlRSWShfc3RhcnQpCkBAIC00Myw3ICszNiw3IEBAIFNFQ1RJT05TCiAgIC50YWJsZSA6IEFMSUdO
KDQpIHsKICAgICBfdGFibGVfc3RhcnQgPSAuOwogICAgIExPTkcoWklNQUdFX01BR0lDKDQpKQot
ICAgIExPTkcoWklNQUdFX01BR0lDKDB4NWE1MzRjNGIpKQorICAgIExPTkcoQVJNX1pJTUFHRV9N
QUdJQzMpCiAgICAgTE9ORyhaSU1BR0VfTUFHSUMoX19waWdneV9zaXplX2FkZHIgLSBfc3RhcnQp
KQogICAgIExPTkcoWklNQUdFX01BR0lDKF9rZXJuZWxfYnNzX3NpemUpKQogICAgIExPTkcoMCkK
QEAgLTEwNyw3ICsxMDAsNyBAQCBTRUNUSU9OUwogICAgIF9lZGF0YV9yZWFsID0gLjsKICAgfQog
Ci0gIF9tYWdpY19zaWcgPSBaSU1BR0VfTUFHSUMoMHgwMTZmMjgxOCk7CisgIF9tYWdpY19zaWcg
PSBBUk1fWklNQUdFX01BR0lDMTsKICAgX21hZ2ljX3N0YXJ0ID0gWklNQUdFX01BR0lDKF9zdGFy
dCk7CiAgIF9tYWdpY19lbmQgPSBaSU1BR0VfTUFHSUMoX2VkYXRhKTsKICAgX21hZ2ljX3RhYmxl
ID0gWklNQUdFX01BR0lDKF90YWJsZV9zdGFydCAtIF9zdGFydCk7CmRpZmYgLS1naXQgYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9pbWFnZS5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmQ1YzE4YTBmNmEzNAotLS0g
L2Rldi9udWxsCisrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2ltYWdlLmgKQEAgLTAsMCArMSw0
OCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KKworI2lmbmRlZiBf
X0FTTV9JTUFHRV9ICisjZGVmaW5lIF9fQVNNX0lNQUdFX0gKKworI2lmZGVmIENPTkZJR19DUFVf
RU5ESUFOX0JFOAorI2RlZmluZSBaSU1BR0VfTUFHSUMoeCkgKCgoKHgpID4+IDI0KSAmIDB4MDAw
MDAwZmYpIHwgXAorCQkJICgoKHgpID4+ICA4KSAmIDB4MDAwMGZmMDApIHwgIFwKKwkJCSAoKCh4
KSA8PCAgOCkgJiAweDAwZmYwMDAwKSB8ICBcCisJCQkgKCgoeCkgPDwgMjQpICYgMHhmZjAwMDAw
MCkpCisjZWxzZQorI2RlZmluZSBaSU1BR0VfTUFHSUMoeCkgKHgpCisjZW5kaWYKKworI2RlZmlu
ZSBBUk1fWklNQUdFX01BR0lDMSBaSU1BR0VfTUFHSUMoMHgwMTZmMjgxOCkKKyNkZWZpbmUgQVJN
X1pJTUFHRV9NQUdJQzIgKDB4NDU0NTQ1NDUpCisjZGVmaW5lIEFSTV9aSU1BR0VfTUFHSUMzIFpJ
TUFHRV9NQUdJQygweDVhNTM0YzRiKQorCisjaWZuZGVmIF9fQVNTRU1CTFlfXworCisjaW5jbHVk
ZSA8bGludXgvdHlwZXMuaD4KKyNpbmNsdWRlIDxhc20vc2V0dXAuaD4KKworLyogQVJNIHpJbWFn
ZSBoZWFkZXIgZm9ybWF0ICovCitzdHJ1Y3QgYXJtX3ppbWFnZV9oZWFkZXIgeworCV9fbGUzMiBj
b2RlWzldOworCV9fbGUzMiBtYWdpYzsKKwlfX2xlMzIgc3RhcnQ7CisJX19sZTMyIGVuZDsKKwlf
X2xlMzIgZW5kaWFuOworCV9fbGUzMiBtYWdpYzI7CisJX19sZTMyIGV4dGVuc2lvbl90YWdfb2Zm
c2V0OworfTsKKworc3RydWN0IGFybV96aW1hZ2VfdGFnIHsKKwlzdHJ1Y3QgdGFnX2hlYWRlciBo
ZHI7CisJdW5pb24geworI2RlZmluZSBaSU1BR0VfVEFHX0tSTkxfU0laRSBBUk1fWklNQUdFX01B
R0lDMworCQlzdHJ1Y3QgemltYWdlX2tybmxfc2l6ZSB7CisJCQlfX2xlMzIgc2l6ZV9wdHI7CisJ
CQlfX2xlMzIgYnNzX3NpemU7CisJCX0ga3JubF9zaXplOworCX0gdTsKK307CisKKyNlbmRpZiAv
KiBfX0FTU0VNQkxZX18gKi8KKworI2VuZGlmIC8qIF9fQVNNX0lNQUdFX0ggKi8KLS0gCjIuMjYu
MgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
