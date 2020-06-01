Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2240C1EA5CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEA4irg6svT38n743yn55aUrF8PpQti3i6xBLl9iPB0=; b=h6h5eAGdtBuOW+
	vYtboCM/8O4WcrcOmaOLt+chwQ261gEFdunSXhMwsZ/rBEfSmJ6zoX50iusoCJsQUtjVo1CHUDeOr
	vTDRgqln6Q67SKX379RVtI5404HC/NXRA/rh2VaiiXR0vK14MhmhVRY1FD+pco0LFbWq8vjDGNi1W
	003fMdv0015DPQO9XPZ1Uaf1wiGOvngNKJhrjI2noeKtSjwmIOn+NEBnKI6QhbaC4U4R4zCDBv3sK
	KQEpr49XeOQP/IjNxuSLUpZrL6AyOGDAJa/YioUdorvDP70KzguC2xImPzZfPm/jh7mP0Uc9xcmqB
	2DzObtc6eLtJWTz/FBnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflRR-0004GZ-0k; Mon, 01 Jun 2020 14:29:29 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflQD-0003NS-Jz
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:28:15 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601142812euoutp02591c29cb95574f0b166447e51bbf9074~UccyeaVg42486424864euoutp02n
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 14:28:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601142812euoutp02591c29cb95574f0b166447e51bbf9074~UccyeaVg42486424864euoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591021692;
 bh=HFutmAJ4iU4eRu//A59XEGsqCOlB4bks5rPsSUwsxYM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IkI6ksKVUMLdTpX2UzR8W8GeY2bTkRn18ozcd8UtJqBpRpjJ9zbzlXyYkMRDFgoRy
 ZNvpquAECy1TyPOrzO1L54Yaps4K6tBuydayoWC7IhXRyHuSQp4EczQcxdQ3wTF2qh
 GrumXYYJoyTUA2P2QVLP91dvzwfngL66X6YjKHKo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601142811eucas1p19d39e7d97706e1a427081585d8f5e430~UccyKSk7P2463924639eucas1p1t;
 Mon,  1 Jun 2020 14:28:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EE.EA.61286.B7015DE5; Mon,  1
 Jun 2020 15:28:11 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200601142811eucas1p260e5a434ea7743eecdb37c4d975c5f05~Uccxwp9c62609926099eucas1p2R;
 Mon,  1 Jun 2020 14:28:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601142811eusmtrp11c12ae0e99e01cf8f1af56f48ad46e53~UccxwBku83017330173eusmtrp1j;
 Mon,  1 Jun 2020 14:28:11 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-be-5ed5107b54dd
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 42.FB.07950.B7015DE5; Mon,  1
 Jun 2020 15:28:11 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601142811eusmtip14e43cd3fa12be09844c167c5a24c91ac~UccxjpZJT1573515735eusmtip1l;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] arm: Add kexec_image_info
Date: Mon,  1 Jun 2020 16:27:53 +0200
Message-Id: <20200601142754.26139-5-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601142754.26139-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvZ3pMKCtQyHxWIyaqomgglvMJIAR8GEiPPDkg8ZClWGTtqQj
 KPpAcUP2CqmUJUBcAqkIUhEJS8BicKk0UWoL7qgJagRMoUGMtFIGom//Oef7z7l/cklM8k4o
 JdNUp1iNSpEhI/zwjsE5645z1Cv5zroiGd1maBXS5S39Ano0r1tAPy9S0qPmJkSbPtuF9HBX
 LUGb9b2IvvPonQ899nFESN92P0P0T51HQP/pm8PpeyY9dkDMDNtfYEyN9gXOzBu/YkyDKYsx
 GQsI5q29h2AmrVYf5t7NXEb3c4JgStuNiJk2rY9fecQvIonNSMtmNWH7E/1Sx18nZF4Vn3k0
 9hrXoocrC5EvCdReuDZs9ylEfqSEakLguTGH8cUMgtLRb4gvphFc+WQQLlumhicIftCIoHaq
 cokaRzBY1Yx7KYKKgrJbT4TeQSDlEkCXPn/RglE2BGN9HQIvFUCFwmyBFfNqnNoC+Xm9yKtF
 VDjoJ69h/L0NkN/4gPBqXyoC+i1OAc/4w9OqL4vXVlMh0HzesaixBf7C/ZrFFECVkFD3YRbn
 Fx2E1h/1SyEC4Pvjdh9erwNLRfECQy7oXKgo38d7ixF01P5a8obDW+tvwstgVDC0doXx7SjQ
 XnQQvFUMIxP+/BPEUN5RifFtEVy5LOHpzdBS1rO0UAol35uQDsmq/wtT/V+A6n+3GhBmRGvY
 LE6ZwnK7VOzpUE6h5LJUKaEn1EoTWvh0FvdjZydyvTxuRhSJZKtEdz/Y5BKhIpvLUZoRkJgs
 UBQ9ZJFLREmKnLOsRp2gycpgOTMKInHZGtGe69+OSagUxSn2JMtmsprlqYD0lWpRUnNOTI/T
 NXPOcCguNj2NLt24+/bOTZGeCwPvx7mh4GR1p01cf+uYwyldG701cipIndy9wllt1s23/Yq7
 WL/5aOzAm9G84oC52Lr5w2y8w9YbWiBvPGOlLr1MDXSfDU+M1DXMbh+8EyMdmIrQuy3pnhGX
 oSI4Wwjbsg3Fa+2RMpxLVewKwTSc4i9uBwcJcAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNIsWRmVeSWpSXmKPExsVy+t/xu7rVAlfjDPqncVpsnLGe1WLSugNM
 FjcbdzNZnOnOtbh5aAWjxabH11gtLu+aw2ZxaOpeRou1R+6yWzx8cIPVYvW/U4wWHyb8Z7L4
 s/8ni8XmTVOZHfg8Ll+7yOwxu+Eii8ffVS+YPRZsKvXYtKqTzePOtT1sHu/OnWP32Lyk3mPC
 h7dsHn1bVjF6fN4kF8AdpWdTlF9akqqQkV9cYqsUbWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eT
 kpqTWZZapG+XoJfx/FZ8wUS+iiMPb7E0MB7k7mLk5JAQMJF4f/ktG4gtJLCUUeLuPs0uRg6g
 uJTEyrnpECXCEn+udUGVPGWUODYlB8RmE3CU6F96grWLkYtDROAvk8TBWafZQBxmgWuMEhsn
 nGQGqRIW0JP43nkOzGYRUJVob9zLCGLzClhLTH03jRlig7xE+/LtYBs4BWwkDpz+xASxzVri
 /bRuJoh6QYmTM5+wgBzHLKAusX6eEEiYX0BLYk3TdRYQmxloTPPW2cwTGIVmIemYhdAxC0nV
 AkbmVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIERve3Yzy07GLveBR9iFOBgVOLh3XD/SpwQ
 a2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAr05kVlKNDkfmGzySuINTQ3N
 LSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwZkxf3vlL33YJc/jG6E0xLRWv
 V+wONn0V6rTKXMrIcEFruJT2+SY+3/y7p229DlQ02wsm1yvtC7mqYqVWIzXnUJizsdnnqf08
 MivVX2SE5G67ZrO7Ym6BcNzfhItiU0u+q7wsjRP542XFWKv0m2lC+M2W3gU+287/D298cCmU
 0//p/uu3xauVWIozEg21mIuKEwGpgaMp/gIAAA==
X-CMS-MailID: 20200601142811eucas1p260e5a434ea7743eecdb37c4d975c5f05
X-Msg-Generator: CA
X-RootMTR: 20200601142811eucas1p260e5a434ea7743eecdb37c4d975c5f05
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601142811eucas1p260e5a434ea7743eecdb37c4d975c5f05
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142811eucas1p260e5a434ea7743eecdb37c4d975c5f05@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_072813_794626_DA329910 
X-CRM114-Status: GOOD (  13.70  )
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

QWRkIGtleGVjX2ltYWdlX2luZm8gdG8gcHJpbnQgZGV0YWlsZWQgaW5mb3JtYXRpb24gYWJvdXQg
YSBrZXhlYyBpbWFnZS4KClNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1h
Y2hAc2Ftc3VuZy5jb20+Ci0tLQogYXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYyB8IDI4
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYyBiL2Fy
Y2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMKaW5kZXggNzYzMDBmMzgxM2U4Li5jMTBhMmRm
ZDUzZDEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMKKysrIGIv
YXJjaC9hcm0va2VybmVsL21hY2hpbmVfa2V4ZWMuYwpAQCAtMzEsNiArMzEsMzIgQEAgZXh0ZXJu
IHVuc2lnbmVkIGxvbmcga2V4ZWNfYm9vdF9hdGFnczsKIAogc3RhdGljIGF0b21pY190IHdhaXRp
bmdfZm9yX2NyYXNoX2lwaTsKIAorLyoqCisgKiBrZXhlY19pbWFnZV9pbmZvIC0gRm9yIGRlYnVn
Z2luZyBvdXRwdXQuCisgKi8KKyNkZWZpbmUga2V4ZWNfaW1hZ2VfaW5mbyhfaSkgX2tleGVjX2lt
YWdlX2luZm8oX19mdW5jX18sIF9fTElORV9fLCBfaSkKK3N0YXRpYyB2b2lkIF9rZXhlY19pbWFn
ZV9pbmZvKGNvbnN0IGNoYXIgKmZ1bmMsIGludCBsaW5lLAorCWNvbnN0IHN0cnVjdCBraW1hZ2Ug
KmtpbWFnZSkKK3sKKwl1bnNpZ25lZCBsb25nIGk7CisKKwlwcl9kZWJ1ZygiJXM6JWQ6XG4iLCBm
dW5jLCBsaW5lKTsKKwlwcl9kZWJ1ZygiICBrZXhlYyBraW1hZ2UgaW5mbzpcbiIpOworCXByX2Rl
YnVnKCIgICAgdHlwZTogICAgICAgICVkXG4iLCBraW1hZ2UtPnR5cGUpOworCXByX2RlYnVnKCIg
ICAgc3RhcnQ6ICAgICAgICVseFxuIiwga2ltYWdlLT5zdGFydCk7CisJcHJfZGVidWcoIiAgICBo
ZWFkOiAgICAgICAgJWx4XG4iLCBraW1hZ2UtPmhlYWQpOworCXByX2RlYnVnKCIgICAgbnJfc2Vn
bWVudHM6ICVsdVxuIiwga2ltYWdlLT5ucl9zZWdtZW50cyk7CisKKwlmb3IgKGkgPSAwOyBpIDwg
a2ltYWdlLT5ucl9zZWdtZW50czsgaSsrKSB7CisJCXByX2RlYnVnKCIgICAgICBzZWdtZW50WyVs
dV06ICUwOGx4IC0gJTA4bHgsIDB4JXggYnl0ZXMsICVsdSBwYWdlc1xuIiwKKwkJCWksCisJCQlr
aW1hZ2UtPnNlZ21lbnRbaV0ubWVtLAorCQkJa2ltYWdlLT5zZWdtZW50W2ldLm1lbSArIGtpbWFn
ZS0+c2VnbWVudFtpXS5tZW1zeiwKKwkJCWtpbWFnZS0+c2VnbWVudFtpXS5tZW1zeiwKKwkJCWtp
bWFnZS0+c2VnbWVudFtpXS5tZW1zeiAvICBQQUdFX1NJWkUpOworCX0KK30KKwogLyoKICAqIFBy
b3ZpZGUgYSBkdW1teSBjcmFzaF9ub3RlcyBkZWZpbml0aW9uIHdoaWxlIGNyYXNoIGR1bXAgYXJy
aXZlcyB0byBhcm0uCiAgKiBUaGlzIHByZXZlbnRzIGJyZWFrYWdlIG9mIGNyYXNoX25vdGVzIGF0
dHJpYnV0ZSBpbiBrZXJuZWwva3N5c2ZzLmMuCkBAIC00Miw2ICs2OCw4IEBAIGludCBtYWNoaW5l
X2tleGVjX3ByZXBhcmUoc3RydWN0IGtpbWFnZSAqaW1hZ2UpCiAJX19iZTMyIGhlYWRlcjsKIAlp
bnQgaSwgZXJyOwogCisJa2V4ZWNfaW1hZ2VfaW5mbyhpbWFnZSk7CisKIAlpbWFnZS0+YXJjaC5r
ZXJuZWxfcjIgPSBpbWFnZS0+c3RhcnQgLSBLRVhFQ19BUk1fWklNQUdFX09GRlNFVAogCQkJCSAg
ICAgKyBLRVhFQ19BUk1fQVRBR1NfT0ZGU0VUOwogCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
