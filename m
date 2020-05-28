Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6DB1E697D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3BMFnkCrjF2qDs0A2OwupCMPJEVMHhbu+YA1+v6NNM=; b=RhaiPvfUfHOu6Z
	mjqFHcqnGgbTqfsP/gOqIMSSrtRIMdLu5vS5RT6HmyaGj7Tt6e+lVQgYk0kADFe/aGG07Rm7mtjWR
	xXKX+Bf9HJu8NHkTLTrX4r77gD9tD39xyhYQ7fj6r/Rv+NZs3EGDhCaPRLs6xvgu8tfRp0FaQDz45
	1L5lH6nAioomij6foTzmbP1COyFckGZLp6Zuca78C8cPfmHchOETyl6c3QUlj7GCextVsQxRX7pMD
	0ZdtXtadU0sBeBxyGbz3Igd3MBfdMZ9OHd1K7eEd0FaiChFCC0Yh3XwYSXdTIv1K1ZY9uMq8nb0/P
	wRau2q7pEwYpRnrHzObg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNOd-0007kv-NW; Thu, 28 May 2020 18:36:51 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNNq-0007Hr-Df
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:36:04 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49XxGf1qBrz8k;
 Thu, 28 May 2020 20:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1590690954; bh=r3FexnWOGPLoKtGxgqbQb3w5FegJpG2pFaJligFub9Q=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=MJEkVhek6HxCEop0X9gCrt1t2efUnqPy6REWgs6m2AhFwhDcAweOn/8IicZwCrpuR
 UV4OSOcUHuc8GXUrS/OHRTcH3ZLbDnTFOZ7OUwIvQkBsxqakPXcSKSFDUGkWMfOY0V
 Jyhf7WDcuVSiC8xlMLYNU3Zfi4k9ZN8ZDJS6Ho+/9Y+DJwRtARe3bdvuDBpjaLyZeZ
 CXki0epj+9QuX+3QyH+CKgogSTccWI8KjpMbsptp1jbNK0UYJrPS+JPQvLukslqnu5
 lDq7gvlmrwjCU8NKXp3cqiYg6hgqusHfHcjfDgOCY5Qq6blFd7RSDIR+jxodifDwOM
 rwSLmqsY9An+g==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Thu, 28 May 2020 20:35:54 +0200
Message-Id: <87eea7ba7c0bc3902db18f57a8711fa53004e9b5.1590690650.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1590690650.git.mirq-linux@rere.qmqm.pl>
References: <cover.1590690650.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 2/3] usb: gadget: udc: atmel: fix uninitialized read in debug
 printk
MIME-Version: 1.0
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Songjun Wu <songjun.wu@atmel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_113602_629132_A4EC0A96 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rml4ZWQgY29tbWl0IG1vdmVkIHRoZSBhc3NpZ25tZW50IG9mICdyZXEnLCBidXQgZGlkIG5vdCB1
cGRhdGUgYQpyZWZlcmVuY2UgaW4gdGhlIERCRygpIGNhbGwuIFVzZSB0aGUgYXJndW1lbnQgYXMg
aXQgd2FzIHJlbmFtZWQuCgpGaXhlczogNWZiNjk0Zjk2ZTdjICgidXNiOiBnYWRnZXQ6IHVkYzog
YXRtZWw6IGZpeCBwb3NzaWJsZSBvb3BzIHdoZW4gdW5sb2FkaW5nIG1vZHVsZSIpClNpZ25lZC1v
ZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCiBk
cml2ZXJzL3VzYi9nYWRnZXQvdWRjL2F0bWVsX3VzYmFfdWRjLmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3VzYi9nYWRnZXQvdWRjL2F0bWVsX3VzYmFfdWRjLmMgYi9kcml2ZXJzL3VzYi9nYWRnZXQvdWRj
L2F0bWVsX3VzYmFfdWRjLmMKaW5kZXggOTE1M2UyMjA4NDhkLi45MzQyYTNkMjQ5NjMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91ZGMvYXRtZWxfdXNiYV91ZGMuYworKysgYi9kcml2
ZXJzL3VzYi9nYWRnZXQvdWRjL2F0bWVsX3VzYmFfdWRjLmMKQEAgLTg2NSw3ICs4NjUsNyBAQCBz
dGF0aWMgaW50IHVzYmFfZXBfZGVxdWV1ZShzdHJ1Y3QgdXNiX2VwICpfZXAsIHN0cnVjdCB1c2Jf
cmVxdWVzdCAqX3JlcSkKIAl1MzIgc3RhdHVzOwogCiAJREJHKERCR19HQURHRVQgfCBEQkdfUVVF
VUUsICJlcF9kZXF1ZXVlOiAlcywgcmVxICVwXG4iLAotCQkJZXAtPmVwLm5hbWUsIHJlcSk7CisJ
CQllcC0+ZXAubmFtZSwgX3JlcSk7CiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmdWRjLT5sb2NrLCBm
bGFncyk7CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
