Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9160B98C18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 09:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JehZjtk1nhsuAknOY/Rr6xibiWb7g+jKqaCCbY1clV8=; b=NeCu7T2HiB/uje
	n7eUnoBz5IICdDvEa/hV/NRUZ3ehLUeUhAMQ+eyh+A9TnVnhXFLGAlCLwPNtMKT2LhMXuRZxGLZa2
	LSu+UK/fbukoHGs5+wNWtWGFh3byGCk+9MF3WV1nA8HHFUkv8fGi/BFz+/CHE1khaEPjXN3kOMetc
	5WSW0nWUohJKYvod2PKUVcwK8wF4NpRUrLUoN/tNYhg1owGI18lKNERLDUgZW/tE6j8eNum8ziuIy
	62Py/0BIXXaa80CFJHHa1K+/zkJlqdAXewM5hw5aaxP0a9EIxek15m+eA6ZPXaM5BqjsxRu1LWuZx
	5GEg+GSzN+5dGRODPULQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h8Q-0004BI-Oh; Thu, 22 Aug 2019 07:03:51 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h77-00045z-UM
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 07:02:32 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DBFF3A7227D4AE8C8C53;
 Thu, 22 Aug 2019 15:02:22 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Thu, 22 Aug 2019 15:02:12 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>, <vz@mleia.com>,
 <slemieux.tyco@gmail.com>, <linux-usb@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH -next] usb: udc: lpc32xx: remove set but not used 3 variables
Date: Thu, 22 Aug 2019 15:05:57 +0800
Message-ID: <20190822070557.74874-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_000230_192946_03AAF8D0 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgpkcml2ZXJzL3Vz
Yi9nYWRnZXQvdWRjL2xwYzMyeHhfdWRjLmM6IEluIGZ1bmN0aW9uIOKAmHVkY19wcm90b2NvbF9j
bWRfcuKAmToKZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9scGMzMnh4X3VkYy5jOjc0NDo2OiB3YXJu
aW5nOiB2YXJpYWJsZSDigJh0bXDigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNl
dC12YXJpYWJsZV0KCmRyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMuYzogSW4gZnVu
Y3Rpb24g4oCYdWRjX2hhbmRsZV9kbWFfZXDigJk6CmRyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBj
MzJ4eF91ZGMuYzoxOTk0OjE0OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhlcHN0YXR1c+KAmSBzZXQg
YnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQoKZHJpdmVycy91c2IvZ2Fk
Z2V0L3VkYy9scGMzMnh4X3VkYy5jOiBJbiBmdW5jdGlvbiDigJh1ZGNfaGFuZGxlX2VwMF9zZXR1
cOKAmToKZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy9scGMzMnh4X3VkYy5jOjIyMDA6MjI6IHdhcm5p
bmc6IHZhcmlhYmxlIOKAmHdMZW5ndGjigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KCkl0IGlzIG5vdCB1c2VkIHNpbmNlIGNvbW1pdCA5MGZjY2I1MjlkMjQg
KCJ1c2I6IGdhZGdldDogR2FkZ2V0IGRpcmVjdG9yeSBjbGVhbnVwIC0gZ3JvdXAgVURDIGRyaXZl
cnMiKQoKU2lnbmVkLW9mZi1ieTogTWFvIFdlbmFuIDxtYW93ZW5hbkBodWF3ZWkuY29tPgotLS0K
IGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMuYyB8IDkgKysrLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMuYyBiL2RyaXZlcnMvdXNiL2dhZGdl
dC91ZGMvbHBjMzJ4eF91ZGMuYwppbmRleCA2MDZjOGJjLi5iM2UwNzNmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3VzYi9nYWRnZXQvdWRjL2xwYzMyeHhfdWRjLmMKKysrIGIvZHJpdmVycy91c2IvZ2Fk
Z2V0L3VkYy9scGMzMnh4X3VkYy5jCkBAIC03NDEsNyArNzQxLDYgQEAgc3RhdGljIGlubGluZSB2
b2lkIHVkY19wcm90b2NvbF9jbWRfZGF0YV93KHN0cnVjdCBscGMzMnh4X3VkYyAqdWRjLCB1MzIg
Y21kLAogICogcmVzcG9uc2UgZGF0YSAqLwogc3RhdGljIHUzMiB1ZGNfcHJvdG9jb2xfY21kX3Io
c3RydWN0IGxwYzMyeHhfdWRjICp1ZGMsIHUzMiBjbWQpCiB7Ci0JdTMyIHRtcDsKIAlpbnQgdG8g
PSAxMDAwOwogCiAJLyogV3JpdGUgYSBjb21tYW5kIGFuZCByZWFkIGRhdGEgZnJvbSB0aGUgcHJv
dG9jb2wgZW5naW5lICovCkBAIC03NTEsNyArNzUwLDYgQEAgc3RhdGljIHUzMiB1ZGNfcHJvdG9j
b2xfY21kX3Ioc3RydWN0IGxwYzMyeHhfdWRjICp1ZGMsIHUzMiBjbWQpCiAJLyogV3JpdGUgY29t
bWFuZCBjb2RlICovCiAJdWRjX3Byb3RvY29sX2NtZF93KHVkYywgY21kKTsKIAotCXRtcCA9IHJl
YWRsKFVTQkRfREVWSU5UU1QodWRjLT51ZHBfYmFzZWFkZHIpKTsKIAl3aGlsZSAoKCEocmVhZGwo
VVNCRF9ERVZJTlRTVCh1ZGMtPnVkcF9iYXNlYWRkcikpICYgVVNCRF9DREZVTEwpKQogCSAgICAg
ICAmJiAodG8gPiAwKSkKIAkJdG8tLTsKQEAgLTE5OTEsNyArMTk4OSw3IEBAIHZvaWQgdWRjX2hh
bmRsZV9lcHMoc3RydWN0IGxwYzMyeHhfdWRjICp1ZGMsIHN0cnVjdCBscGMzMnh4X2VwICplcCkK
IC8qIERNQSBlbmQgb2YgdHJhbnNmZXIgY29tcGxldGlvbiAqLwogc3RhdGljIHZvaWQgdWRjX2hh
bmRsZV9kbWFfZXAoc3RydWN0IGxwYzMyeHhfdWRjICp1ZGMsIHN0cnVjdCBscGMzMnh4X2VwICpl
cCkKIHsKLQl1MzIgc3RhdHVzLCBlcHN0YXR1czsKKwl1MzIgc3RhdHVzOwogCXN0cnVjdCBscGMz
Mnh4X3JlcXVlc3QgKnJlcTsKIAlzdHJ1Y3QgbHBjMzJ4eF91c2JkX2RkX2dhZCAqZGQ7CiAKQEAg
LTIwODUsNyArMjA4Myw3IEBAIHN0YXRpYyB2b2lkIHVkY19oYW5kbGVfZG1hX2VwKHN0cnVjdCBs
cGMzMnh4X3VkYyAqdWRjLCBzdHJ1Y3QgbHBjMzJ4eF9lcCAqZXApCiAJCWlmICh1ZGNfY2xlYXJl
cF9nZXRzdHModWRjLCBlcC0+aHdlcF9udW0pICYgRVBfU0VMX0YpIHsKIAkJCXVkY19jbGVhcmVw
X2dldHN0cyh1ZGMsIGVwLT5od2VwX251bSk7CiAJCQl1ZGFfZW5hYmxlX2h3ZXBpbnQodWRjLCBl
cC0+aHdlcF9udW0pOwotCQkJZXBzdGF0dXMgPSB1ZGNfY2xlYXJlcF9nZXRzdHModWRjLCBlcC0+
aHdlcF9udW0pOworCQkJdWRjX2NsZWFyZXBfZ2V0c3RzKHVkYywgZXAtPmh3ZXBfbnVtKTsKIAog
CQkJLyogTGV0IHRoZSBFUCBpbnRlcnJ1cHQgaGFuZGxlIHRoZSBaTFAgKi8KIAkJCXJldHVybjsK
QEAgLTIxOTcsNyArMjE5NSw3IEBAIHN0YXRpYyB2b2lkIHVkY19oYW5kbGVfZXAwX3NldHVwKHN0
cnVjdCBscGMzMnh4X3VkYyAqdWRjKQogCXN0cnVjdCBscGMzMnh4X2VwICplcCwgKmVwMCA9ICZ1
ZGMtPmVwWzBdOwogCXN0cnVjdCB1c2JfY3RybHJlcXVlc3QgY3RybHBrdDsKIAlpbnQgaSwgYnl0
ZXM7Ci0JdTE2IHdJbmRleCwgd1ZhbHVlLCB3TGVuZ3RoLCByZXF0eXBlLCByZXEsIHRtcDsKKwl1
MTYgd0luZGV4LCB3VmFsdWUsIHJlcXR5cGUsIHJlcSwgdG1wOwogCiAJLyogTnVrZSBwcmV2aW91
cyB0cmFuc2ZlcnMgKi8KIAludWtlKGVwMCwgLUVQUk9UTyk7CkBAIC0yMjEzLDcgKzIyMTEsNiBA
QCBzdGF0aWMgdm9pZCB1ZGNfaGFuZGxlX2VwMF9zZXR1cChzdHJ1Y3QgbHBjMzJ4eF91ZGMgKnVk
YykKIAkvKiBOYXRpdmUgZW5kaWFubmVzcyAqLwogCXdJbmRleCA9IGxlMTZfdG9fY3B1KGN0cmxw
a3Qud0luZGV4KTsKIAl3VmFsdWUgPSBsZTE2X3RvX2NwdShjdHJscGt0LndWYWx1ZSk7Ci0Jd0xl
bmd0aCA9IGxlMTZfdG9fY3B1KGN0cmxwa3Qud0xlbmd0aCk7CiAJcmVxdHlwZSA9IGxlMTZfdG9f
Y3B1KGN0cmxwa3QuYlJlcXVlc3RUeXBlKTsKIAogCS8qIFNldCBkaXJlY3Rpb24gb2YgRVAwICov
Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
