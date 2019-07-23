Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631757182B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MPQVanaeeK286LggnDWGd09yrWvuPN9tboz3JWUUaI=; b=AsHDzPDWnFCU3G
	9Uz59fjFvmdAytYG4z0hFmYVz3LCrgUDa1Km8Fh/C8LT+8+MU2mpmnRe/mg9CkmtI5ujrsMwo8ZVB
	eOQRVgnp+/CKY43kExQE8kqAlJbK2OERUXmzXKgwrW8IwNmXC3ZBZ7cJAWnMDZ6yBPpi0NlpnjiHs
	I3tFvYnmX9dlTwM9PCFG46QUgBo+G8eBw7yiqNEdr8apzL/uCSTrAbwvfOmyPUuYTtD0/9PSYZR6R
	eij8mGL/HcqFaWLbLf5JycPRo5M+5xqchX4Nw9+VXjLmrZvz7qQwodWJvgWjvH7Wvmz6iW8wRbC/I
	kIT3jec4hxuyKET0oYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptov-0003ml-R4; Tue, 23 Jul 2019 12:23:05 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmT-0001pu-Tx
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122030euoutp020d328a42b68c145138622bff0f4bc221~0CJqIypFf3178131781euoutp02c
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190723122030euoutp020d328a42b68c145138622bff0f4bc221~0CJqIypFf3178131781euoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884430;
 bh=RUl5wJeFoskqQ1lDVm8gqntXrYOyS23MWPseu8SSF2o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e6HlEwEvhOIZ0/qXBkr91CsMlxwf3AeC/VOQUCSsII6gY76QG6xzJvxXolgeArVKU
 n3YnaDSCxKMTih1A9WIgAwBBMmM/33DuIvKtbA/bI1S4oDTWT7dgfkO1VypMkd4p8T
 p/Cy+CIF5KF06Iyvlg5PGJKgZTe7Hz+3aYuLh9a4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190723122029eucas1p229ebf0e7f961ec1ea52fdd2e8068089a~0CJpnFwhH2751627516eucas1p2g;
 Tue, 23 Jul 2019 12:20:29 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DF.0C.04377.D8BF63D5; Tue, 23
 Jul 2019 13:20:29 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122029eucas1p21e1a51e759f9b605d2c89daf659af7bb~0CJo-Ssns1893418934eucas1p2G;
 Tue, 23 Jul 2019 12:20:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122029eusmtrp1014a6d434e4a0d7a52cc6c3dda4f522e~0CJo0lgUD2543625436eusmtrp1K;
 Tue, 23 Jul 2019 12:20:29 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-bb-5d36fb8dd1e6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 11.51.04146.C8BF63D5; Tue, 23
 Jul 2019 13:20:28 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122028eusmtip2f4761e8c1aeee8935e1e6249aa5034b5~0CJoJwBlI1731117311eusmtip2r;
 Tue, 23 Jul 2019 12:20:28 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 10/11] arm: dts: exynos: Add interconnects to Exynos4412
 mixer
Date: Tue, 23 Jul 2019 14:20:15 +0200
Message-Id: <20190723122016.30279-11-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAKsWRmVeSWpSXmKPExsWy7djP87q9v81iDZqXalgcOraV3WLjjPWs
 Fte/PGe1mH/kHKvFla/v2Sym793EZjHp/gQWi/PnN7BbbHp8jdXi8q45bBafe48wWsw4v4/J
 Yu2Ru+wWtxtXsFnMmPySzYHfY9OqTjaPO9f2sHnc7z7O5LF5Sb3HwXd7mDz6tqxi9Pi8SS6A
 PYrLJiU1J7MstUjfLoErY+emF6wFc9gr3re/YmtgbGPrYuTkkBAwkWhfeoOli5GLQ0hgBaPE
 xMNbmCGcL4wSe27dYYVwPjNKbLq9gQmm5cKVc1AtyxklnjW+YYVr+Xq9H6yKTcBTomfiDrCE
 iMARRonJC96DtTALrAJyvm9jBKkSFgiROHngFFgHi4CqxM5p18FsXgEniU//TrNC7JOXWL3h
 ADOIzQkU7zrazgZRIyhxcuYTFhCbGaimeetsZoj6j+wSbx4mQdguEn+X9kPFhSVeHd/CDmHL
 SJye3MMCYRdLPN15H+xSCYEGoEeXHYFqsJY4fPwiUIIDaIGmxPpd+hBhR4lfv48yg4QlBPgk
 brwVhDiBT2LStulQYV6JjjYhCFNLYsHvaIhGCYmm1degZntIfOlpYpzAqDgLyS+zkPwyC2Ht
 AkbmVYziqaXFuempxUZ5qeV6xYm5xaV56XrJ+bmbGIHp7PS/4192MO76k3SIUYCDUYmHd8Me
 01gh1sSy4srcQ4wSHMxKIryBDWaxQrwpiZVVqUX58UWlOanFhxilOViUxHmrGR5ECwmkJ5ak
 ZqemFqQWwWSZODilGhi314rrNjZciumd8+pMTlPTz5hX7R6h5xd7fLYtX9qU7nUz0Oscz+Ln
 RrkW25ofc+VfDDU5u/NysNDFOgbBm2YTN9xQfp7U0CY8kUPD2LaX/0yD8FnV0NPNKc31V6Jf
 p626y9t2YnXtRq4wLo719jfuH36TcXWtX4VbZtXdeClzmU9bJRVnpyixFGckGmoxFxUnAgC6
 lrohYwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xe7o9v81iDb5ssbI4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexs5N
 L1gL5rBXvG9/xdbA2MbWxcjJISFgInHhyjmWLkYuDiGBpYwSG963MUEkJCQ+rr/BCmELS/y5
 1sUGUfSJUeLGsmOMIAk2AU+Jnok7WEESIgKnGCW2Lj8HVsUssIlR4u7xiewgVcICQRJvLzeA
 7WMRUJXYOe062ApeASeJT/9OQ62Ql1i94QAziM0JFO862g5WLyTgKLFt+2tGiHpBiZMznwDd
 ygG0QF1i/TwhkDAzUGvz1tnMExgFZyGpmoVQNQtJ1QJG5lWMIqmlxbnpucWGesWJucWleel6
 yfm5mxiBcbrt2M/NOxgvbQw+xCjAwajEw7thj2msEGtiWXFl7iFGCQ5mJRHewAazWCHelMTK
 qtSi/Pii0pzU4kOMpkCvTWSWEk3OB6aQvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZ
 qakFqUUwfUwcnFINjLNtxYRMHlvM03jBNnXutikdJkw/+c8lr3j+9Esma/yi5WnS70Rezjr9
 QDh1c2fJuy3mtd7VJ3g9pdzN11y+XW1w5EPFjpu/mpdvecX1tlup6YO3++afuTv/crjXXJQp
 mXXNtk1EgWPp6j8lEnnuG862yysJNE7cIKT+5/zDn4LJvTFcG1t+uyixFGckGmoxFxUnAgDh
 0cb16QIAAA==
X-CMS-MailID: 20190723122029eucas1p21e1a51e759f9b605d2c89daf659af7bb
X-Msg-Generator: CA
X-RootMTR: 20190723122029eucas1p21e1a51e759f9b605d2c89daf659af7bb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122029eucas1p21e1a51e759f9b605d2c89daf659af7bb
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122029eucas1p21e1a51e759f9b605d2c89daf659af7bb@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052034_127690_6375EB4E 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 cw00.choi@samsung.com, myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGFuICdpbnRlcmNvbm5lY3RzJyBwcm9wZXJ0eSB0byBFeHlub3M0NDEy
IERUUyBpbiBvcmRlciB0bwpkZWNsYXJlIHRoZSBpbnRlcmNvbm5lY3QgcGF0aCB1c2VkIGJ5IHRo
ZSBtaXhlci4gUGxlYXNlIG5vdGUgdGhhdCB0aGUKJ2ludGVyY29ubmVjdC1uYW1lcycgcHJvcGVy
dHkgaXMgbm90IG5lZWRlZCB3aGVuIHRoZXJlIGlzIG9ubHkgb25lIHBhdGggaW4KJ2ludGVyY29u
bmVjdHMnLCBpbiB3aGljaCBjYXNlIGNhbGxpbmcgb2ZfaWNjX2dldCgpIHdpdGggYSBOVUxMIG5h
bWUgc2ltcGx5CnJldHVybnMgdGhlIHJpZ2h0IHBhdGguCgpTaWduZWQtb2ZmLWJ5OiBBcnR1ciDF
mndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT4KLS0tCiBhcmNoL2FybS9ib290
L2R0cy9leHlub3M0NDEyLmR0c2kgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaSBiL2FyY2gv
YXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQppbmRleCBhNzBhNjcxYWNhY2QuLmZhYWVjNmM0
MDQxMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCisrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQpAQCAtNzg5LDYgKzc4OSw3IEBACiAJ
Y2xvY2stbmFtZXMgPSAibWl4ZXIiLCAiaGRtaSIsICJzY2xrX2hkbWkiLCAidnAiOwogCWNsb2Nr
cyA9IDwmY2xvY2sgQ0xLX01JWEVSPiwgPCZjbG9jayBDTEtfSERNST4sCiAJCSA8JmNsb2NrIENM
S19TQ0xLX0hETUk+LCA8JmNsb2NrIENMS19WUD47CisJaW50ZXJjb25uZWN0cyA9IDwmYnVzX2Rp
c3BsYXkgJmJ1c19kbWM+OwogfTsKIAogJnBtdSB7Ci0tIAoyLjE3LjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
