Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD7371829
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ssteZ48J10Y4Psf7wyotY+eF/FBdwJF+2hZhU6SYx/E=; b=UNWU1QchcuS3EW
	OUbPT0X9onBhbKer1YyQWef0rGgRwrtjkdFQrWIL2/Or1Rxc0aLK8qfSntz4GjJFrA3B9h8Mx9yQY
	fCHMVXiOz5fHgES6jn8Tw1UN5MmqQGMmvc8MI+ap7pXbVpP8d273k2vQ19qUg+ELhRV+h2/GjmJbq
	z9X4at0pQS1Z3sG4uONBaSNR/eT9y2dw8mjPJYAzkY3jno9C4xz1An2no8sJRzrj5BAp9W3pnvAev
	IdfiBjEfjoAYEduS3xQnj1Jg/Z+V0KKGaSJuGz8CPz6dbxgWO76VQHOgByRGFEZUyVI8uoAN1vY94
	9gcQbaJzRY+wHaCKMgDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptoO-0003Fc-Ce; Tue, 23 Jul 2019 12:22:32 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001mP-30
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:34 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122023euoutp02a201183ab6afd3df6b0e89e30cca334a~0CJjw7y1x3178431784euoutp02V
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190723122023euoutp02a201183ab6afd3df6b0e89e30cca334a~0CJjw7y1x3178431784euoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884423;
 bh=E/h0xeZuDlNNpc19sQ9I4e8CfCTnOd78afTD5lcFh3M=;
 h=From:To:Cc:Subject:Date:References:From;
 b=pPAsus1DBleQ6S8y5rermerrTyuGuh8KA86IlfNttrx3SsT70dFDlokUXrKMAmhTz
 6s1kMTKHhe0xWel0esD7M8F1H+E3n7q1mFSJtGKrEq8l9ZVQPBmSFZd1rQCgZQxtx8
 PRdxuz1Qz4jKXKJSzJMu/7pvTWBn4LdOVAllPjNA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190723122023eucas1p14e0b1f612566a63f236384b167998f5d~0CJjR-aG73225832258eucas1p1M;
 Tue, 23 Jul 2019 12:20:23 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FF.4B.04298.68BF63D5; Tue, 23
 Jul 2019 13:20:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5~0CJinGERD2753327533eucas1p2K;
 Tue, 23 Jul 2019 12:20:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122022eusmtrp1e012e5e4af5b700844603da16e8bca7f~0CJicZZZb2487524875eusmtrp1g;
 Tue, 23 Jul 2019 12:20:22 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-75-5d36fb866a77
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 17.D8.04140.68BF63D5; Tue, 23
 Jul 2019 13:20:22 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122021eusmtip2f9a8f6ab49accc2bea0b902873bf9f4f~0CJhzpRHb1612616126eusmtip2H;
 Tue, 23 Jul 2019 12:20:21 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 00/11] Simple QoS for exynos-bus driver using interconnect
Date: Tue, 23 Jul 2019 14:20:05 +0200
Message-Id: <20190723122016.30279-1-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAKsWRmVeSWpSXmKPExsWy7djPc7ptv81iDX5+1rM4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 exSXTUpqTmZZapG+XQJXRuOWpYwF/yUr+o//YGpg3CjaxcjJISFgIrH/y0LWLkYuDiGBFYwS
 Gzc+ZYFwvjBKfDjayg7hfGaUOHjiBgtMS9fGHqiq5YwSJ98fZ4ZrefjgEBNIFZuAp0TPxB1g
 g0UEjjBKTF7wHqyFWWAVkPN9GyNIlbBAgMSXQ81gHSwCqhI3HtwCs3kFHCUO/n8DtU9eYvWG
 A8wQcUGJkzOfgMWZgeLNW2czQ9RcY5eY+yUEwnaROPzyOjuELSzx6vgWKFtG4vTkHqiZxRJP
 d94Hu05CoIFRYtOyI1CDrCUOH78IlOAAWqApsX6XPkTYUeL4kjfsIGEJAT6JG28FIU7gk5i0
 bTozRJhXoqNNCMLUkljwOxqiUUKiafU1qNkeErfPvQQ7RkggVuLq6juMExgVZiH5axaSv2Yh
 nLCAkXkVo3hqaXFuemqxYV5quV5xYm5xaV66XnJ+7iZGYDo7/e/4px2MXy8lHWIU4GBU4uHd
 sMc0Vog1say4MvcQowQHs5IIb2CDWawQb0piZVVqUX58UWlOavEhRmkOFiVx3mqGB9FCAumJ
 JanZqakFqUUwWSYOTqkGRp5b1xXn3Lnms+VgbuEj3xZpXpN+Nharrm0Ll9cFLD8VbrylTdGP
 I/h5zfmixStMC7f8kjngOmfBssXpgQt2ZH9/JH9BZlXl7MeiEcH9P5kdM65s3OHW+uV7wLrC
 NKbzs6SvHdc9Gc7Hk+KxgMf2sVHqPUb2kI4H/3c6pQdUi6zfmX9Cz2lKuBJLcUaioRZzUXEi
 APXghPVjAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHIsWRmVeSWpSXmKPExsVy+t/xe7ptv81iDc7cYLM4dGwru8XGGetZ
 La5/ec5qMf/IOVaLK1/fs1lM37uJzWLS/QksFufPb2C32PT4GqvF5V1z2Cw+9x5htJhxfh+T
 xdojd9ktbjeuYLOYMfklmwO/x6ZVnWwed67tYfO4332cyWPzknqPg+/2MHn0bVnF6PF5k1wA
 e5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJeRuOW
 pYwF/yUr+o//YGpg3CjaxcjJISFgItG1sYeli5GLQ0hgKaNE7/y1zBAJCYmP62+wQtjCEn+u
 dbFBFH1ilFh3/D9YEZuAp0TPxB2sIAkRgVOMEluXnwOrYhbYxChx9/hEdpAqYQE/iS1HTrCA
 2CwCqhI3HtxiArF5BRwlDv5/wwKxQl5i9YYDzBBxQYmTM58AxTmABqlLrJ8nBBJmBipp3jqb
 eQIj/ywkVbMQqmYhqVrAyLyKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMO62Hfu5ZQdj17vg
 Q4wCHIxKPLwb9pjGCrEmlhVX5h5ilOBgVhLhDWwwixXiTUmsrEotyo8vKs1JLT7EaAr0wkRm
 KdHkfGBKyCuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwKhfrc22
 QHBfS/r2adPnBlrvbf5myrtp0atZ16Jk3370eNdxXeDrs7R2rsO6P3rdNqnWFPg0JvFMKuO2
 aQu5ofssqHTVr79CgnuvMK79b9Dm+PbUzP+H9/x4Gvxxacs3VYGjDX8OK5g8f2H7SuCj/HTH
 hKh7e1YdPqt6wEC34co96+kF4c4XWJ8psRRnJBpqMRcVJwIAZRGfl9ECAAA=
X-CMS-MailID: 20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5
X-Msg-Generator: CA
X-RootMTR: 20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5
References: <CGME20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_280007_4B5A130A 
X-CRM114-Status: GOOD (  13.52  )
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

VGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdFsxXVsyXSBmcmFtZXdvcmsg
c3VwcG9ydCB0byB0aGUKZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZlci4gRXh0ZW5kaW5nIHRoZSBk
ZXZmcmVxIGRyaXZlciB3aXRoIGludGVyY29ubmVjdApjYXBhYmlsaXRpZXMgc3RhcnRlZCBhcyBh
IHJlc3BvbnNlIHRvIHRoZSBpc3N1ZSByZWZlcmVuY2VkIGluIFszXS4gVGhlCnBhdGNoZXMgY2Fu
IGJlIHN1YmRpdmlkZWQgaW50byBmb3VyIGxvZ2ljYWwgZ3JvdXBzOgoKKGEpIFJlZmFjdG9yaW5n
IHRoZSBleGlzdGluZyBkZXZmcmVxIGRyaXZlciBpbiBvcmRlciB0byBpbXByb3ZlIHJlYWRhYmls
aXR5CmFuZCBhY2NvbW1vZGF0ZSBmb3IgYWRkaW5nIG5ldyBjb2RlIChwYXRjaGVzIDAxLS0wNC8x
MSkuCgooYikgVHdlYWtpbmcgdGhlIGludGVyY29ubmVjdCBmcmFtZXdvcmsgdG8gc3VwcG9ydCB0
aGUgZXh5bm9zLWJ1cyB1c2UgY2FzZQoocGF0Y2hlcyAwNS0tMDcvMTEpLiBFeHBvcnRpbmcgb2Zf
aWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkgYWxsb3dzIHVzIHRvCmF2b2lkIGhhcmRjb2RpbmcgZXZl
cnkgc2luZ2xlIGdyYXBoIGVkZ2UgaW4gdGhlIERUIG9yIGRyaXZlciBzb3VyY2UsIGFuZApyZWxh
eGluZyB0aGUgcmVxdWlyZW1lbnQgY29udGFpbmVkIGluIHRoYXQgZnVuY3Rpb24gcmVtb3ZlcyB0
aGUgbmVlZCB0bwpwcm92aWRlIGR1bW15IG5vZGUgSURzIGluIHRoZSBEVC4gQWRqdXN0aW5nIHRo
ZSBsb2dpYyBpbgphcHBseV9jb25zdHJhaW50cygpIChkcml2ZXJzL2ludGVyY29ubmVjdC9jb3Jl
LmMpIGFjY291bnRzIGZvciB0aGUgZmFjdAp0aGF0IGV2ZXJ5IGJ1cyBpcyBhIHNlcGFyYXRlIGVu
dGl0eSBhbmQgdGhlcmVmb3JlIGEgc2VwYXJhdGUgaW50ZXJjb25uZWN0CnByb3ZpZGVyLCBhbGJl
aXQgY29uc3RpdHV0aW5nIGEgcGFydCBvZiBhIGxhcmdlciBoaWVyYXJjaHkuCgooYykgSW1wbGVt
ZW50aW5nIGludGVyY29ubmVjdCBwcm92aWRlcnMgaW4gdGhlIGV4eW5vcy1idXMgZGV2ZnJlcSBk
cml2ZXIKYW5kIGFkZGluZyByZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZvciBvbmUgc2VsZWN0ZWQg
cGxhdGZvcm0sIG5hbWVseQpFeHlub3M0NDEyIChwYXRjaGVzIDA4LS0wOS8xMSkuIER1ZSB0byB0
aGUgZmFjdCB0aGF0IHRoaXMgYWltcyB0byBiZSBhCmdlbmVyaWMgZHJpdmVyIGZvciB2YXJpb3Vz
IEV4eW5vcyBTb0NzLCBub2RlIElEcyBhcmUgZ2VuZXJhdGVkIGR5bmFtaWNhbGx5CnJhdGhlciB0
aGFuIGhhcmRjb2RlZC4gVGhpcyBoYXMgYmVlbiBkZXRlcm1pbmVkIHRvIGJlIGEgc2ltcGxlciBh
cHByb2FjaCwKYnV0IGRlcGVuZHMgb24gY2hhbmdlcyBkZXNjcmliZWQgaW4gKGIpLgoKKGQpIElt
cGxlbWVudGluZyBhIHNhbXBsZSBpbnRlcmNvbm5lY3QgY29uc3VtZXIgZm9yIGV4eW5vcy1taXhl
ciB0YXJnZXRlZAphdCB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBbM10sIGFnYWluIHdpdGggRFQg
aW5mbyBvbmx5IGZvciBFeHlub3M0NDEyCihwYXRjaGVzIDEwLS0xMS8xMSkuCgpJbnRlZ3JhdGlv
biBvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0aWVzIGNvbWVzIGRvd24g
dG8gb25lCmV4dHJhIGxpbmUgaW4gdGhlIGRldmZyZXEgdGFyZ2V0KCkgY2FsbGJhY2ssIHdoaWNo
IHNlbGVjdHMgZWl0aGVyIHRoZQpmcmVxdWVuY3kgY2FsY3VsYXRlZCBieSB0aGUgZGV2ZnJlcSBn
b3Zlcm5vciwgb3IgdGhlIG9uZSByZXF1ZXN0ZWQgd2l0aCB0aGUKaW50ZXJjb25uZWN0IEFQSSwg
d2hpY2hldmVyIGlzIGhpZ2hlci4gQWxsIG5ldyBjb2RlIHdvcmtzIGVxdWFsbHkgd2VsbCB3aGVu
CkNPTkZJR19JTlRFUkNPTk5FQ1QgaXMgJ24nIChhcyBpbiBleHlub3NfZGVmY29uZmlnKSBpbiB3
aGljaCBjYXNlIGFsbAppbnRlcmNvbm5lY3QgQVBJIGZ1bmN0aW9ucyBhcmUgbm8tb3BzLgoKLS0t
CkFydHVyIMWad2lnb8WEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKU2Ftc3VuZyBFbGVj
dHJvbmljcwoKLS0tClJlZmVyZW5jZXM6ClsxXSBEb2N1bWVudGF0aW9uL2ludGVyY29ubmVjdC9p
bnRlcmNvbm5lY3QucnN0ClsyXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50
ZXJjb25uZWN0L2ludGVyY29ubmVjdC50eHQKWzNdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcGF0Y2gvMTA4NjE3NTcKCkFydHVyIMWad2lnb8WEICgxMCk6CiAgZGV2ZnJlcTogZXh5bm9z
LWJ1czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCgpCiAgZGV2ZnJlcTogZXh5bm9z
LWJ1czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKCkKICBkZXZmcmVx
OiBleHlub3MtYnVzOiBDaGFuZ2UgZ290by1iYXNlZCBsb2dpYyB0byBpZi1lbHNlIGxvZ2ljCiAg
ZGV2ZnJlcTogZXh5bm9zLWJ1czogQ2xlYW4gdXAgY29kZQogIGljYzogRXhwb3J0IG9mX2ljY19n
ZXRfZnJvbV9wcm92aWRlcigpCiAgaWNjOiBSZWxheCByZXF1aXJlbWVudCBpbiBvZl9pY2NfZ2V0
X2Zyb21fcHJvdmlkZXIoKQogIGljYzogUmVsYXggY29uZGl0aW9uIGluIGFwcGx5X2NvbnN0cmFp
bnRzKCkKICBhcm06IGR0czogZXh5bm9zOiBBZGQgcGFyZW50cyBhbmQgI2ludGVyY29ubmVjdC1j
ZWxscyB0byBFeHlub3M0NDEyCiAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQWRkIGludGVyY29ubmVj
dCBmdW5jdGlvbmFsaXR5IHRvIGV4eW5vcy1idXMKICBhcm06IGR0czogZXh5bm9zOiBBZGQgaW50
ZXJjb25uZWN0cyB0byBFeHlub3M0NDEyIG1peGVyCgpNYXJlayBTenlwcm93c2tpICgxKToKICBk
cm06IGV4eW5vczogbWl4ZXI6IEFkZCBpbnRlcmNvbm5lY3Qgc3VwcG9ydAoKIC4uLi9ib290L2R0
cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSAgICB8ICAgMSArCiBhcmNoL2FybS9ib290
L2R0cy9leHlub3M0NDEyLmR0c2kgICAgICAgICAgICAgfCAgMTAgKwogZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYyAgICAgICAgICAgICAgICAgIHwgMjk2ICsrKysrKysrKysrKysrLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfbWl4ZXIuYyAgICAgICAgIHwgIDY4ICsrKy0K
IGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyAgICAgICAgICAgICAgICAgICB8ICAxMiArLQog
aW5jbHVkZS9saW51eC9pbnRlcmNvbm5lY3QtcHJvdmlkZXIuaCAgICAgICAgIHwgICA2ICsKIDYg
ZmlsZXMgY2hhbmdlZCwgMzE0IGluc2VydGlvbnMoKyksIDc5IGRlbGV0aW9ucygtKQoKLS0gCjIu
MTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
