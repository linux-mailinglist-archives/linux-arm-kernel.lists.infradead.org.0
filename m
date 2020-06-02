Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB321EBFD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCQU6Y8gzPI5SlzWIr4CeZZuW9g+O6wQY2BCd839f4Y=; b=rH73fFomH4/AR5
	4EgWPFj8ChHVokvcMHFVumVtbEYpIRQBvKV1R9ckEW5YY6SV8MoqjRSwdKwJEuPSNrfG6PIAH64UW
	BekLJzDsjraSEwMiVyLQ6MTRnmcXvXKS9WnBPxC8viC1ikuCp/AyFT86r5ldqdiXqSzx/tRkFBmv/
	brIue9gR5DmaN9DcFtY4T7h4XhCe7n0KnCfYtADkDw1Olj8ybQRHMFGmo8tu2UIkUtr8mk1VHmPJV
	/SwMVnTd1cyQyfZKG4FeM+WSkjNZmlqDynd7QlwFlDptaaTiRZrYlbFPA6qa9m65JJDFTIVRjHlIT
	ZEwP2xVdmzdqnJqjOOhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9cY-0001Rx-HH; Tue, 02 Jun 2020 16:18:34 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9bh-0000t1-I0
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:17:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200602161738euoutp0121cf5bcec796202e3b2d6ca4b3c12082~Uxln_ghVV2755627556euoutp01A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  2 Jun 2020 16:17:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200602161738euoutp0121cf5bcec796202e3b2d6ca4b3c12082~Uxln_ghVV2755627556euoutp01A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591114658;
 bh=j/PSbzf6lrcO66laTAdT7EAr/x351R/C6wzGDMCSIm0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eVm0FqeyqFN3D8I3XhNlFEg/3JPG9UgvatIugb9gaabwYB96c5Q+ikTtyarbd56P1
 nBlq6WmE5UgUEMCpB+dF/A0srCtbahjb76sqX/TiJxhffLkefNlJGG40KrP5TojYgA
 fqeOIP3mV/rheJI5OqL3SqVyIzPyLV8vE0DPq5Hc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200602161737eucas1p2904ac203291fee2a3e53bd6300fc2800~UxlnaC1Bp1812718127eucas1p2x;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A9.81.60679.1AB76DE5; Tue,  2
 Jun 2020 17:17:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200602161737eucas1p241dd0e0a9b5eea7c5d5774c46b3c570b~UxlnCnuci1103811038eucas1p2T;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200602161737eusmtrp19e8a12671829c8af45fcf9e379bc087b~UxlnCAFO32876728767eusmtrp1M;
 Tue,  2 Jun 2020 16:17:37 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-9d-5ed67ba17c13
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1A.29.07950.1AB76DE5; Tue,  2
 Jun 2020 17:17:37 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200602161736eusmtip13d171833d1a9fdf7a556e537819b2626~Uxlm19sc02213922139eusmtip1i;
 Tue,  2 Jun 2020 16:17:36 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] kexec_file_load() for arm
Date: Tue,  2 Jun 2020 18:17:26 +0200
Message-Id: <20200602161731.23033-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601142754.26139-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfVBMYRTGvXv33r0tm+vKOJMmMzsxo6Hka64pKcPMNYMY/GOIpatSu+3c
 Ld+0NCMSZclHGSMfUxZLu7Vqq5HN1GpJa1lFqFlCpjTksy/t3gz/Pec9v+c558y8JEa/xv3J
 RFUqx6sUyXJCKjbX/Xo8o3CPK3bmQOtkpuTsLZzRGWpETMuBShHz8KiSabEWI8boduGM03Ke
 YKx51Yi5ef+VhGlva8aZ64MNiOnJHRIx/Xd/iRmTMQ+L8mWdLgfGFmgdYnZA/wFjLxrTWKP+
 CMG2uqoItruxUcKarqSzuT1dBHu8VI/Yr8bAlaPXSSPiuOTE7RwfGrlJmvDG1SlRV8t2Vtu0
 Ii2qk2YhHxKoOXDvfZ0kC0lJmipG0GDVE0LRi6CmYgATiq8IyvsKsL+WnIqmkUYRghfvukeK
 9wiednUQHoqgoiHnqg33NPyobyKw5GV6gzHqKYL2u2aRhxpPhUFbbYc3V0xNgZwep9ijZVQ4
 /LhdQgjzJkNm0R2v9qEioMb+RSQw4+DBubdefiwVDDcOPvdqbJjPKCvwrgTUCRKGmj7jQtBi
 +N7+c0SPh876UomgA8B+MnvYTA7rdDipmyd4sxGYz/8UC0w4tDb+JjwMRk2DW5ZQ4TkaKvtO
 4YLVF5q7xgkr+ILOfAYTnmVw+BAt0EFgyKkaCfSHY53FKBfJ8/87Jv+/A/L/zbqIMD2ayKVp
 lPGcZpaK2xGiUSg1aar4kC0pSiMa/nX2wfrecmTp32xFFInkY2Qzw1yxNK7YrtmltCIgMbmf
 bNEjeywti1Ps2s3xKRv5tGROY0WTSLF8omz2pY8baCpekcolcZya4/92RaSPvxalXIiOyWqY
 evnhwtShspexfmsin/jVrm/avy+7eZPtRYAs16Zz0BWOuNkTHqkkyFFIJwXWZ/fFYM/XJu0N
 +uE01fKV8/El8pS5hvAxJds+BV5z0/1ZLeqBZyv4pakL1LojELTs6mM7lpi+LKMtwW0yrIqy
 FI4aG7Cc3zp99ekyt1ysSVCEBWO8RvEH9DnZxXEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsVy+t/xu7oLq6/FGbSsZLPYOGM9q8WkdQeY
 LG427mayONOda3Hz0ApGi02Pr7FaXN41h83i0NS9jBZrj9xlt3j44Aarxep/pxgtPkz4z2Tx
 Z/9PFovNm6YyO/B5XL52kdljdsNFFo+/q14weyzYVOqxaVUnm8eda3vYPN6dO8fusXlJvceE
 D2/ZPPq2rGL0+LxJLoA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
 JTUnsyy1SN8uQS/j/rVX7AV7eSv2nmhgamA8xtXFyMkhIWAi0b/zAnMXIxeHkMBSRok9LY9Y
 uhg5gBJSEivnpkPUCEv8udbFBlHzlFHi9rH3rCAJNgFHif6lJ1hBEiICf5kkDs46DVbFLHCN
 UWLjhJPMIFXCAoYSDw4/A7NZBFQl+j9cZgGxeQWsJb5v2MgGsUJeon35djCbU8BG4sDpT0wg
 thBQzftp3UwQ9YISJ2c+AbuOWUBdYv08IZAwv4CWxJqm62AjmYHGNG+dzTyBUWgWko5ZCB2z
 kFQtYGRexSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERjX24793LKDsetd8CFGAQ5GJR5eA8Nr
 cUKsiWXFlbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqPLyrNSS0+xGgK9OZEZinR5HxgyskriTc0
 NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cDI8+irx8xNvF7NOsebFv46
 tO+hmUKPkJSByb78K0l3ynsun1krFf5qxgdR12bhJzHXYuzWPFfNelVxYGLqjJflMx4x13Ha
 39ZyfJfE5HR3UZ+h0PnHcTLVOoeOPzLIffB4md4EhdUF5de9zLVm39hx0ubEC5u49kV8R/Pe
 yT8ylH7v+IpLNDJDiaU4I9FQi7moOBEAn1adVgEDAAA=
X-CMS-MailID: 20200602161737eucas1p241dd0e0a9b5eea7c5d5774c46b3c570b
X-Msg-Generator: CA
X-RootMTR: 20200602161737eucas1p241dd0e0a9b5eea7c5d5774c46b3c570b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200602161737eucas1p241dd0e0a9b5eea7c5d5774c46b3c570b
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200602161737eucas1p241dd0e0a9b5eea7c5d5774c46b3c570b@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091741_740201_0A87DBF9 
X-CRM114-Status: GOOD (  12.87  )
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

VGhlIGZvbGxvd2luZyBzZXJpZXMgb2YgcGF0Y2hlcyBwcm92aWRlcyBpbXBsZW1lbnRhdGlvbiBv
ZiB0aGUKa2V4ZWNfZmlsZV9sb2FkKCkgc3lzdGVtIGNhbGwgZm9ybSB0aGUgYXJtIGFyY2hpdGVj
dHVyZS4gekltYWdlIGFuZCB1SW1hZ2UKKGxlZ2FjeSBmb3JtYXQpIGZpbGVzIGFyZSBzdXBwb3J0
ZWQuIExpa2Ugb24gYXJtNjQsIHRoZXJlIGlzIG5vCnBvc3NpYmlsaXR5IG9mIGxvYWRpbmcgYSBu
ZXcgRFRCIGFuZCB0aGUgY3VycmVudGx5IGxvYWRlZCBpcyByZXVzZWQuCgpDaGFuZ2VzIGluIHYy
OgogIC0gYWRkIENPTkZJR19LRVhFQ19GSUxFX1VJTUFHRSBmb3Igb3B0aW9uYWwgdUltYWdlIHN1
cHBvcnQKICAtIE1BTExPQ19TSVpFIGFzIGEgZGVmaW5lIGluc3RlYWQgb2YgYSBzeW1ib2wKICAt
IERDU1ogdGFnIGhvbGRzIGNvbWJpbmVkIGR5bmFtaWMgbWVtb3J5IHJlcXVpcmVtZW50cyAoYnNz
K3N0YWNrK21hbGxvYykKICAtIHVzZSB1bmlvbiBmb3IgYSBzaW5nbGUgdGFnIHN0cnVjdHVyZQog
IC0gY29weXJpZ2h0IG5vdGljZSBpbmNsdWRlcyBSdXNzZWxsIEtpbmcKCsWBdWthc3ogU3RlbG1h
Y2ggKDUpOgogIGFybTogZGVjb21wcmVzc29yOiBzZXQgbWFsbG9jIHBvb2wgc2l6ZSBmb3IgdGhl
IGRlY29tcHJlc3NvcgogIGFybTogYWRkIGltYWdlIGhlYWRlciBkZWZpbml0aW9ucwogIGFybTog
ZGVjb21wcmVzc29yOiBkZWZpbmUgYSBuZXcgekltYWdlIHRhZwogIGFybTogQWRkIGtleGVjX2lt
YWdlX2luZm8KICBhcm06IGtleGVjX2ZpbGU6IGxvYWQgekltYWdlIG9yIHVJbWFnZSwgaW5pdHJk
IGFuZCBkdGIKCiBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8ICAyNSAr
KysKIGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZSAgICAgIHwgICA3ICstCiBhcmNo
L2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TICAgICAgICB8ICAgOSArLQogYXJjaC9hcm0vYm9v
dC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgfCAgMjIgKy0tCiBhcmNoL2FybS9pbmNsdWRlL2Fz
bS9pbWFnZS5oICAgICAgICAgICB8ICA3NyArKysrKysrKysKIGFyY2gvYXJtL2luY2x1ZGUvYXNt
L2tleGVjLmggICAgICAgICAgIHwgIDE0ICsrCiBhcmNoL2FybS9rZXJuZWwvTWFrZWZpbGUgICAg
ICAgICAgICAgICB8ICAgNSArLQogYXJjaC9hcm0va2VybmVsL2tleGVjX3VpbWFnZS5jICAgICAg
ICAgfCAgODAgKysrKysrKysrKwogYXJjaC9hcm0va2VybmVsL2tleGVjX3ppbWFnZS5jICAgICAg
ICAgfCAxOTQgKysrKysrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2tlcm5lbC9tYWNoaW5l
X2tleGVjLmMgICAgICAgIHwgIDM5ICsrKystCiBhcmNoL2FybS9rZXJuZWwvbWFjaGluZV9rZXhl
Y19maWxlLmMgICB8IDIxMSArKysrKysrKysrKysrKysrKysrKysrKysrCiAxMSBmaWxlcyBjaGFu
Z2VkLCA2NjIgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtL2tlcm5lbC9rZXhlY191aW1hZ2UuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2tl
cm5lbC9rZXhlY196aW1hZ2UuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2tlcm5lbC9t
YWNoaW5lX2tleGVjX2ZpbGUuYwoKLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
