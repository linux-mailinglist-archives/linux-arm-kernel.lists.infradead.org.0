Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F920311DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjX4tWQveHBSn7oOM0DAbDkiZhiBh6ap5mzEuo+1XCI=; b=r+XNpg/PR0ji9d
	C6+cXt5mS7duVAI3FOLQny8nqvdJ+ih5lS0yba4hdTUw+uFnsjDYe/zv6y0OcxMmsZDuOUTy4IZ0G
	fL56kYeyQFBlYN2h5TylmztzAF5pBj1GIYiy8ehnbSfV5kodMym7KdCzRJbnNjclnoQfZ+PeXeyXq
	CiKEEp0geb5QtonUeuufHqAD6yphyI6wBxnGoz/+JnLHvx1ANrqM3sPuDBW8bfWccxFMYEJVXZZvh
	LMGRCVHmysrkghomEs9v0AbILX26/35k8VV1F1pEaCGuLgxrzRt56PTSF5qGJsTYW3zJsFJtt1Qsw
	aSWU8nOKMuxbZoALkNBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWjyg-0008JE-6K; Fri, 31 May 2019 16:01:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWjyY-0008Ib-Mf
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:01:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=afcLOKgX4OCVxF4a1lMtB51TBMhd9WaUTbt0JZE8sdA=; b=K7SQjXfvbYmDcBK7oUohd1cdWc
 5/e7pclxjeKmXtoe19jFn4nLNW5Hrauywrc7WCafOoC3i5W9ceXGYAoufDEZntmLz/it13WfJtr/y
 sx3ADo1j4i9lD/gLplWPHbovhAE2+S/GTdEoDrOVgPRm0EtQfT/xONai5IgqYIIsD4qAfH1DJWkGb
 dLyYg/tTY3ccOW3NAlc2lwQC1UWSH4LiZaaCdb07QMGrm0ZO73JKfpMmqw6EVSek0mvppNLDIH3Pd
 XTxj0eEFdik4lu/JiBcCy7/u66ipDrf+TEXbZ1UZ5wWBkcDmafH2SDt3LoWLvUohl7Zhcz2UvgxaD
 ouMuTEDA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:50406 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hWjyQ-0001iJ-Pm; Fri, 31 May 2019 17:01:42 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hWjyQ-0008Ni-8V; Fri, 31 May 2019 17:01:42 +0100
In-Reply-To: <20190531155700.crrawgf3iot2sm2t@shell.armlinux.org.uk>
References: <20190531155700.crrawgf3iot2sm2t@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH v2] serial: sa1100: add note about modem control signals
MIME-Version: 1.0
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hWjyQ-0008Ni-8V@rmk-PC.armlinux.org.uk>
Date: Fri, 31 May 2019 17:01:42 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_090150_737980_C474EF04 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXMgc3VnZ2VzdGVkIGJ5IFV3ZSwgYWRkIGEgbm90ZSBpbmRpY2F0aW5nIHRoYXQgdGhlIG1vZGVt
IGNvbnRyb2wKc2lnbmFscyBkbyBub3Qgc3VwcG9ydCBpbnRlcnJ1cHRzLCB3aGljaCBwcmVjbHVk
ZXMgdGhlIGRyaXZlciBmcm9tCnVzaW5nIG1jdHJsX2dwaW9faW5pdCgpLgoKU3VnZ2VzdGVkLWJ5
OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWdu
ZWQtb2ZmLWJ5OiBSdXNzZWxsIEtpbmcgPHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPgotLS0K
IGRyaXZlcnMvdHR5L3NlcmlhbC9zYTExMDAuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9zYTExMDAuYyBi
L2RyaXZlcnMvdHR5L3NlcmlhbC9zYTExMDAuYwppbmRleCA5N2JkZmVjY2JlYTkuLjhlNjE4MTI5
ZTY1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL3NhMTEwMC5jCisrKyBiL2RyaXZl
cnMvdHR5L3NlcmlhbC9zYTExMDAuYwpAQCAtODYwLDYgKzg2MCwxMCBAQCBzdGF0aWMgaW50IHNh
MTEwMF9zZXJpYWxfcmVzdW1lKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKmRldikKIHN0YXRpYyBp
bnQgc2ExMTAwX3NlcmlhbF9hZGRfb25lX3BvcnQoc3RydWN0IHNhMTEwMF9wb3J0ICpzcG9ydCwg
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqZGV2KQogewogCXNwb3J0LT5wb3J0LmRldiA9ICZkZXYt
PmRldjsKKworCS8vIG1jdHJsX2dwaW9faW5pdCgpIHJlcXVpcmVzIHRoYXQgdGhlIEdQSU8gZHJp
dmVyIHN1cHBvcnRzIGludGVycnVwdHMsCisJLy8gYnV0IHdlIG5lZWQgdG8gc3VwcG9ydCBHUElP
IGRyaXZlcnMgZm9yIGhhcmR3YXJlIHRoYXQgaGFzIG5vIHN1Y2gKKwkvLyBpbnRlcnJ1cHRzLiAg
VXNlIG1jdHJsX2dwaW9faW5pdF9ub2F1dG8oKSBpbnN0ZWFkLgogCXNwb3J0LT5ncGlvcyA9IG1j
dHJsX2dwaW9faW5pdF9ub2F1dG8oc3BvcnQtPnBvcnQuZGV2LCAwKTsKIAlpZiAoSVNfRVJSKHNw
b3J0LT5ncGlvcykpIHsKIAkJaW50IGVyciA9IFBUUl9FUlIoc3BvcnQtPmdwaW9zKTsKLS0gCjIu
Ny40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
