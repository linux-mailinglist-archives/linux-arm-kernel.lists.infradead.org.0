Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A9E1EA5C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=jF/XOnLXfUbQgvU1rX4itKwV8ESBb1qGoFuwApjWM8M=; b=LFOxKinS79sQNG
	yDqDXREMFsUNMwWR97LsmQF/JwM4oMMvJ0X70411kw130o0L7brET0CSDrp4HTYX32+8d1XjZpSRu
	SDerWASPB5+eQkiN2rWIKEpNGrFTLRYh3rr22QKZUkvVHesGZvEXEqjj8Wpf7mnp8AJEZ30OB64cr
	2U5CORqqSGdZ28mhXxmwYw+oOtExtzqkrjEchwHABf2AjGAR3QBZ9Plly0Lb7Df/Y2mAC9liaRhnq
	s+pIaIoUrcPZ8gXimP2xwZgOAlJwsKjibqhCSvv+/hIAC7djDPAnoBuQSlSxZRKNtnB50a5mLwtFW
	eXlm069UfjLSONvrGjbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflQK-0003OZ-If; Mon, 01 Jun 2020 14:28:20 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflQB-0003Md-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:28:13 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601142807euoutp02dcf5945dbd10d7cfa4a641e0e94c3165~UccuRwndf2486824868euoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 14:28:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601142807euoutp02dcf5945dbd10d7cfa4a641e0e94c3165~UccuRwndf2486824868euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591021687;
 bh=RsmNPtERewy68jytV4caViX5l4E08Yym2BhyOFIHcP4=;
 h=From:To:Cc:Subject:Date:References:From;
 b=Ei3Fbr0hYf/FYqOTOQDwwUSDRYsjaZwbt9/qj19bHyslqOPJHowc9fAKANKKico9a
 eact3HfCtd0DhGxi6akwb+FE63Cu/PM9e3oRaK5OTOJ8JD0u9aETKPukbAo4qp9AUn
 2iHyu4gVw4chXrMtu5dHEzaVNam17KvMPIxxEbgA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200601142807eucas1p28a191e83cda6d6b61b8f98fb1de4fe1d~Ucct6mooy1927019270eucas1p2d;
 Mon,  1 Jun 2020 14:28:07 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id AE.E9.60679.67015DE5; Mon,  1
 Jun 2020 15:28:07 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200601142806eucas1p2680c5625411e7a695d8469760a926520~UcctTdbE30046600466eucas1p29;
 Mon,  1 Jun 2020 14:28:06 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601142806eusmtrp21c10612fd4f697e0d47d9fd09391a39c~UcctSpChv1487114871eusmtrp28;
 Mon,  1 Jun 2020 14:28:06 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-df-5ed51076fd47
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 22.52.08375.67015DE5; Mon,  1
 Jun 2020 15:28:06 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601142806eusmtip130913d607995f7f15efb787f606c1abf~UcctIiS_r0934709347eusmtip1k;
 Mon,  1 Jun 2020 14:28:06 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] kexec_file_load() for arm
Date: Mon,  1 Jun 2020 16:27:49 +0200
Message-Id: <20200601142754.26139-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUxNcRjH/e556VRufh1tHlHWxYZxby/Y2fIW2s74h9loUdx0luje2j3d
 kq0VlpeSWuSlFxEqqeiWiyvieomQtVu5Wdkt77awVaZQOs5t/Pd9nufzfb6/Z/sxBPuK8mZi
 9YmCQa+NU9FupPnR0IsFybg90r87iqs9dYXi8mruKrjOvbcU3LMsHddprUCc6U0HxdksRTRn
 zb+NuOoH3S5cj8NOcZdHmhH3LXdUwf1qHCK5OlM+scKDt3W0EnxheivJ/678SPBnTUbeVHmY
 5rs6Gmj+S0uLC193IY3P/dZH80frKxHfb/Jd5x7utiRaiItNEgyaZdvcdpQWttMJp913X95/
 g0pHr5lM5MoAXgjW1q8oE7kxLK5A0N+X4SwGEFy/10NIFIv7EbzIXjPuyKrrdkLlCOyHTjiL
 Dwiq7MWURNE4BHIuPqakgRceVIAl/yAtFQRuQ9DTaFZI1GSshtLhkb8OEs+GmqvXxvIYRomD
 4ZQtXI6bAQfLr9OSVmJPeHL6LSnpSXgeVO17+VcTY8z+a4WEtB/wkAsMHnfQsnk1HH7mIGU9
 GT431bvIejqM3ixRSFmA0+BY3mLZewSBueiHkw+GrpZhWmIIPBeuWDRyOwTqq8uRbPUAe5+n
 /AQPyDOfJOS2Eg4dYGV6FtTkNDgXekP25wqnk4eOI5tzkV/Bf3cV/HdLwb/Ys4ioRFMEo6iL
 EcRAvZCsFrU60aiPUW+P15nQ2I97OtI0cANZfkVZEWaQaqKS6W2LZCltkpiisyJgCJWXcuXz
 p5GsMlqbskcwxG81GOME0YqmMaRqijKo9FMEi2O0icIuQUgQDONTBePqnY481x+tORcKGcbU
 KotCHbFBnx5wbCkU7wwKrffTJN3JOOkTOJr8brGnD2vxG8jW5xHkxrRNvWYfjw/DU89MSPN7
 r/b9vlL0ImPYnvPU/ANdmuq4gLAyTfCllJ8zlw/yixwPy1ady4oscAzZ79eGhTZnhJTMoW2p
 b/23BNiEtWvKVKS4QxswjzCI2j8kYsT8bQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKIsWRmVeSWpSXmKPExsVy+t/xu7plAlfjDE7ekrDYOGM9q8WkdQeY
 LG427mayONOda3Hz0ApGi02Pr7FaXN41h83i0NS9jBZrj9xlt3j44Aarxep/pxgtPkz4z2Tx
 Z/9PFovNm6YyO/B5XL52kdljdsNFFo+/q14weyzYVOqxaVUnm8eda3vYPN6dO8fusXlJvceE
 D2/ZPPq2rGL0+LxJLoA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
 JTUnsyy1SN8uQS9j0eyrbAUzuStWN+9gbWC8x9HFyMkhIWAi0b35LmMXIxeHkMBSRom/N/+z
 dDFyACWkJFbOTYeoEZb4c62LDaLmKaPEp7MXmEESbAKOEv1LT7CCJEQE/jJJHJx1GqyKWeAa
 o8TGCSfBqoQF9CQW/frHCmKzCKhKrNuwlRlkA6+AtcSMy1EQG+Ql2pdvZwOxeQUEJU7OfAJ2
 BLOAusT6eUIgYX4BLYk1TddZQGxmoPLmrbOZJzAKzELSMQuhYxaSqgWMzKsYRVJLi3PTc4sN
 9YoTc4tL89L1kvNzNzECo3TbsZ+bdzBe2hh8iFGAg1GJh3fD/StxQqyJZcWVuYcYJTiYlUR4
 nc6ejhPiTUmsrEotyo8vKs1JLT7EaAr0zURmKdHkfGACySuJNzQ1NLewNDQ3Njc2s1AS5+0Q
 OBgjJJCeWJKanZpakFoE08fEwSnVwOjHHR5S+V36hGDErEX2tcUVQVrHjJe/V3r3zaSFfcUf
 034mVUmeCTo8B1s3snn84BF/5e/YdJd1wsrJJefS9Lz335XJWZV54MN1S4EJAgXGi98GFplG
 zzLbbhH+7UlZt56Jvni1M9NPxYT0JdFPL/Fe/hfnHralYKP97qiwHWebVshZHTztr8RSnJFo
 qMVcVJwIAEqCq3HoAgAA
X-CMS-MailID: 20200601142806eucas1p2680c5625411e7a695d8469760a926520
X-Msg-Generator: CA
X-RootMTR: 20200601142806eucas1p2680c5625411e7a695d8469760a926520
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601142806eucas1p2680c5625411e7a695d8469760a926520
References: <CGME20200601142806eucas1p2680c5625411e7a695d8469760a926520@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_072811_965773_CEA69A0D 
X-CRM114-Status: GOOD (  12.85  )
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

VGhlIGZvbGxvd2luZyBzZXJpZXMgb2YgcGF0Y2hlcyBwcm92aWRlcyBpbXBsZW1lbnRhdGlvbiBv
ZiB0aGUKa2V4ZWNfZmlsZV9sb2FkKCkgc3lzdGVtIGNhbGwgZm9ybSB0aGUgYXJtIGFyY2hpdGVj
dHVyZS4gekltYWdlIGFuZCB1SW1hZ2UKKGxlZ2FjeSBmb3JtYXQpIGZpbGVzIGFyZSBzdXBwb3J0
ZWQuIExpa2Ugb24gYXJtNjQsIHRoZXJlIGlzIG5vCnBvc3NpYmlsaXR5IG9mIGxvYWRpbmcgYSBu
ZXcgRFRCIGFuZCB0aGUgY3VycmVudGx5IGxvYWRlZCBpcyByZXVzZWQuCgrFgXVrYXN6IFN0ZWxt
YWNoICg1KToKICBhcm06IGRlY29tcHJlc3Nvcjogc2V0IG1hbGxvYyBwb29sIHNpemUgZm9yIHRo
ZSBkZWNvbXByZXNzb3IKICBhcm06IGFkZCBpbWFnZSBoZWFkZXIgZGVmaW5pdGlvbnMKICBhcm06
IGRlY29tcHJlc3NvcjogZGVmaW5lIGEgbmV3IHpJbWFnZSB0YWcKICBhcm06IEFkZCBrZXhlY19p
bWFnZV9pbmZvCiAgYXJtOiBrZXhlY19maWxlOiBsb2FkIHpJbWFnZSBvciB1SW1hZ2UsIGluaXRy
ZCBhbmQgZHRiCgogYXJjaC9hcm0vS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgMTUg
KysKIGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZSAgICAgIHwgICAyICsKIGFyY2gv
YXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMgICAgICAgIHwgICA5ICstCiBhcmNoL2FybS9ib290
L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUyB8ICAyMiArLS0KIGFyY2gvYXJtL2luY2x1ZGUvYXNt
L2ltYWdlLmggICAgICAgICAgIHwgIDg3ICsrKysrKysrKysKIGFyY2gvYXJtL2luY2x1ZGUvYXNt
L2tleGVjLmggICAgICAgICAgIHwgIDE0ICsrCiBhcmNoL2FybS9rZXJuZWwvTWFrZWZpbGUgICAg
ICAgICAgICAgICB8ICAgNSArLQogYXJjaC9hcm0va2VybmVsL2tleGVjX3VpbWFnZS5jICAgICAg
ICAgfCAgODAgKysrKysrKysrKwogYXJjaC9hcm0va2VybmVsL2tleGVjX3ppbWFnZS5jICAgICAg
ICAgfCAxOTkgKysrKysrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2tlcm5lbC9tYWNoaW5l
X2tleGVjLmMgICAgICAgIHwgIDM5ICsrKystCiBhcmNoL2FybS9rZXJuZWwvbWFjaGluZV9rZXhl
Y19maWxlLmMgICB8IDIwOSArKysrKysrKysrKysrKysrKysrKysrKysrCiAxMSBmaWxlcyBjaGFu
Z2VkLCA2NjIgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtL2tlcm5lbC9rZXhlY191aW1hZ2UuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2tl
cm5lbC9rZXhlY196aW1hZ2UuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2tlcm5lbC9t
YWNoaW5lX2tleGVjX2ZpbGUuYwoKLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
