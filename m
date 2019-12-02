Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C234B10E8F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDqw+MuKSP3D2gLhNCf4aN6lEKRJjjDV2Kf4U9YmUZ0=; b=u1HDQdpgxZc/DS
	wsd9Yv8rH3u8dTnBjgG88P3pON1ffltDh5Hy+RGZfP8Rtc8xB2CxyyHoSerepBQyxF6lrWLo0npHj
	VpYoEIEnXW8TDNPmHGUGJimytywIlVLM6K8pO74L2YCAzfhZ/6C0NCd1QkM10GkoyBFzlXuBTAQp9
	UfJY9JIDXZB1IJnIAq4VOHn6uqG30TTaYftPi1v5uFLsMAgndf89cYs4HxH7dihJmV8OwnLvQ+A1o
	ZzelcUHNSwIoVd4//VlGs5sIo5eemRWdpZVOedL5J2OJH+OqWwvJ5vVuCKMX/aXfCb56pc9FEyrpq
	GssfSZ+3noZRGmx5AV5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibizc-0008Sl-6y; Mon, 02 Dec 2019 10:31:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibixJ-0005Dk-B0; Mon, 02 Dec 2019 10:29:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9B2BCB220;
 Mon,  2 Dec 2019 10:29:23 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 9/9] arm64: dts: realtek: rtd1395: Add Realtek Lion Skin EVB
Date: Mon,  2 Dec 2019 11:29:10 +0100
Message-Id: <20191202102910.26916-10-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202102910.26916-1-afaerber@suse.de>
References: <20191202102910.26916-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022925_555359_F15D9CF9 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgRGV2aWNlIFRyZWUgZm9yIFJlYWx0ZWsgUlREMTM5NSBTb0MgTGlvbiBTa2luIGV2YWx1
YXRpb24gYm9hcmQuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1
c2UuZGU+Ci0tLQogdjI6IE5ldwogCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZp
bGUgICAgICAgICAgICAgfCAgMSArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5
NS1saW9uc2tpbi5kdHMgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hh
bmdlZCwgMzcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9ydGQxMzk1LWxpb25za2luLmR0cwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcmVhbHRlay9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9NYWtlZmlsZQppbmRleCBmNjE0MDgwYjVlMjcuLjU0YmQwMmQxMWMwMiAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL01ha2VmaWxlCisrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9NYWtlZmlsZQpAQCAtOSw1ICs5LDYgQEAgZHRiLSQoQ09ORklHX0FSQ0hf
UkVBTFRFSykgKz0gcnRkMTI5NS16aWRvby14OXMuZHRiCiBkdGItJChDT05GSUdfQVJDSF9SRUFM
VEVLKSArPSBydGQxMjk2LWRzNDE4LmR0YgogCiBkdGItJChDT05GSUdfQVJDSF9SRUFMVEVLKSAr
PSBydGQxMzk1LWJwaS1tNC5kdGIKK2R0Yi0kKENPTkZJR19BUkNIX1JFQUxURUspICs9IHJ0ZDEz
OTUtbGlvbnNraW4uZHRiCiAKIGR0Yi0kKENPTkZJR19BUkNIX1JFQUxURUspICs9IHJ0ZDE2MTkt
bWpvbG5pci5kdGIKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQx
Mzk1LWxpb25za2luLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzk1LWxp
b25za2luLmR0cwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjgzZjli
NTM2Y2RlYQotLS0gL2Rldi9udWxsCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMzk1LWxpb25za2luLmR0cwpAQCAtMCwwICsxLDM2IEBACisvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQorLyoKKyAqIENvcHly
aWdodCAoYykgMjAxOSBBbmRyZWFzIEbDpHJiZXIKKyAqLworCisvZHRzLXYxLzsKKworI2luY2x1
ZGUgInJ0ZDEzOTUuZHRzaSIKKworLyB7CisJY29tcGF0aWJsZSA9ICJyZWFsdGVrLGxpb24tc2tp
biIsICJyZWFsdGVrLHJ0ZDEzOTUiOworCW1vZGVsID0gIlJlYWx0ZWsgTGlvbiBTa2luIEVWQiI7
CisKKwltZW1vcnlAMmYwMDAgeworCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOworCQlyZWcgPSA8
MHgyZjAwMCAweDNmZmQxMDAwPjsgLyogYm9vdCBST00gdG8gMSBHaUIgb3IgMiBHaUIgKi8KKwl9
OworCisJYWxpYXNlcyB7CisJCXNlcmlhbDAgPSAmdWFydDA7CisJfTsKKworCWNob3NlbiB7CisJ
CXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOworCX07Cit9OworCisvKiBkZWJ1ZyBj
b25zb2xlIChKMSkgKi8KKyZ1YXJ0MCB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworLyogTS4y
IHNsb3QgKENPTjEpICovCismdWFydDEgeworCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cit9OwotLSAK
Mi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
