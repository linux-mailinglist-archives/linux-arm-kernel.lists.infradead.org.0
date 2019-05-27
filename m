Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F132BB56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S98iCCeA3pzKVKKrn8P0sh1bJ5JA0cwAedjNbEIDA7Y=; b=RPkqWlSXBdIdgX
	ay1Ky26rWvaSMyH9ThVDfd9UqD+bwxqPSIS2sAfWLLZOjC+WXFcxhF0nXOGMLH8CuiGHNYUk8ZgoE
	T1twvWD1C/p/jwcQ2JdkX1K35iBfkgE8Hs81CrAovpOPj6emjJfTjaDleYHOa4oAexiG7oYwAUfk/
	xvc9Fn/GtoXjGAIx4J/67VL7x2on+xNKxdrkqJovgtjB61143tNSX0+NXvSYFexDTz1U7ICXNf4pO
	b8OHelo7F/nEQtJ883IhsXBSy3u6+hzu5BcFGOYqORlUZAtj4vwF/XWjZzyZgYybOpeiuJBV845w3
	sc7aL405pnkA/jvQeyWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVM2i-0007nl-T3; Mon, 27 May 2019 20:16:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM1Z-0006UN-4G
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:15:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id h1so3743374wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/RSImjt1MT5jNgXT02dp2eGPf34Z2Wdqx9gtfcpPm7g=;
 b=j1RhxcrH/N+9Ow/PCDAcz1k+O+wxeOBPcXR0m/HOh5BSUxpGZOhHgQ9Ni4wXoaoTik
 XhAPQIOLP0kFGjls25OEGiqpJk6GotNQjjAfHQMURNtZRPHzkiLq23DTzvyoKV5xWLyG
 PeGk1Cw/Au+3HHuOUUOERXKwAerjPvSm8NxLBS0mE42oJK87mKuff+TOf1sUUA58ofNc
 ozTjV1ySjvc9BXBVe8SDlRhUU2LILsfUf8e1aVCpnDKss/SuPHVK/bQ6/srHSf6aeMFe
 nKBQ3oYqSiY38YCW0wJbcvDKJrWJd6bK4CTWwRu1U+esP84T7jN/NvNoAk2IJBMm+UZo
 RIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/RSImjt1MT5jNgXT02dp2eGPf34Z2Wdqx9gtfcpPm7g=;
 b=B/FBw4vfmJwPS67fccZGJ2BzT4XbcF/JPSE5Y0yMTp3jcqubHi7hYMNUD/w6rcm6os
 /8Wg/QkjGE+5/iVW9oaswUcffzgmVfsgyIcASAjTnbrvNK7xJZBhnfrPn2uTZoIFG/F2
 ueYYzkSZHZHfnPL2VWLYBbVCH4eXiQAf7sDMREZJf01hH2/kT9DvG+OZSPxXj89PtO0L
 rqazNGiA4mXKKrstTM4z+0bO3F/ovJQd/w5uiL7LWc3kRVFnXFkGUYW39PG8+RfHFWDc
 mZPUCW8dhnQaP34mvRmwRMy3E+IdrOm61Roaj8K4CCiLNakVulkERPXmm2iS+Ff2Fxj2
 jyCg==
X-Gm-Message-State: APjAAAVxCWYnxjFIx7+5YwuPDQmKBod9jSgSpOT0fuscOrZnJ0AFMwzR
 UTXlezz14PXF5BqsSxHOKK0=
X-Google-Smtp-Source: APXvYqzz59ZYxa8nz3xorjK/8PfM5uWPDyZWddCQbGkV+SR0p/w9DtKgq3idupsG6jrWDKxVrXTIGw==
X-Received: by 2002:adf:e408:: with SMTP id g8mr9354316wrm.143.1558988111544; 
 Mon, 27 May 2019 13:15:11 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id i27sm347146wmb.16.2019.05.27.13.15.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:15:10 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 5/7] dmaengine: sun6i: Add support for H6 DMA
Date: Mon, 27 May 2019 22:14:57 +0200
Message-Id: <20190527201459.20130-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527201459.20130-1-peron.clem@gmail.com>
References: <20190527201459.20130-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131513_606488_1C3FABC3 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgRE1BIGhh
cyBtb3JlIHRoYW4gMzIgc3VwcG9ydGVkIERSUXMsIHdoaWNoIG1lYW5zIHRoYXQgY29uZmlndXJh
dGlvbgpyZWdpc3RlciBpcyBzbGlnaHRseSByZWFycmFuZ2VkLiBJdCBhbHNvIG5lZWRzIGFkZGl0
aW9uYWwgY2xvY2sgdG8gYmUKZW5hYmxlZC4KCkFkZCBzdXBwb3J0IGZvciBpdC4KClNpZ25lZC1v
ZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9m
Zi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJz
L2RtYS9zdW42aS1kbWEuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEvc3VuNmktZG1hLmMgYi9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYwppbmRleCBmNWNi
NWU4OWJmN2IuLmRkZWY4N2ViZGZkYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEvc3VuNmktZG1h
LmMKKysrIGIvZHJpdmVycy9kbWEvc3VuNmktZG1hLmMKQEAgLTY5LDE0ICs2OSwxOSBAQAogCiAj
ZGVmaW5lIERNQV9DSEFOX0NVUl9DRkcJMHgwYwogI2RlZmluZSBETUFfQ0hBTl9NQVhfRFJRX0Ez
MQkJMHgxZgorI2RlZmluZSBETUFfQ0hBTl9NQVhfRFJRX0g2CQkweDNmCiAjZGVmaW5lIERNQV9D
SEFOX0NGR19TUkNfRFJRX0EzMSh4KQkoKHgpICYgRE1BX0NIQU5fTUFYX0RSUV9BMzEpCisjZGVm
aW5lIERNQV9DSEFOX0NGR19TUkNfRFJRX0g2KHgpCSgoeCkgJiBETUFfQ0hBTl9NQVhfRFJRX0g2
KQogI2RlZmluZSBETUFfQ0hBTl9DRkdfU1JDX01PREVfQTMxKHgpCSgoKHgpICYgMHgxKSA8PCA1
KQorI2RlZmluZSBETUFfQ0hBTl9DRkdfU1JDX01PREVfSDYoeCkJKCgoeCkgJiAweDEpIDw8IDgp
CiAjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfQlVSU1RfQTMxKHgpCSgoKHgpICYgMHgzKSA8PCA3
KQogI2RlZmluZSBETUFfQ0hBTl9DRkdfU1JDX0JVUlNUX0gzKHgpCSgoKHgpICYgMHgzKSA8PCA2
KQogI2RlZmluZSBETUFfQ0hBTl9DRkdfU1JDX1dJRFRIKHgpCSgoKHgpICYgMHgzKSA8PCA5KQog
CiAjZGVmaW5lIERNQV9DSEFOX0NGR19EU1RfRFJRX0EzMSh4KQkoRE1BX0NIQU5fQ0ZHX1NSQ19E
UlFfQTMxKHgpIDw8IDE2KQorI2RlZmluZSBETUFfQ0hBTl9DRkdfRFNUX0RSUV9INih4KQkoRE1B
X0NIQU5fQ0ZHX1NSQ19EUlFfSDYoeCkgPDwgMTYpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19EU1Rf
TU9ERV9BMzEoeCkJKERNQV9DSEFOX0NGR19TUkNfTU9ERV9BMzEoeCkgPDwgMTYpCisjZGVmaW5l
IERNQV9DSEFOX0NGR19EU1RfTU9ERV9INih4KQkoRE1BX0NIQU5fQ0ZHX1NSQ19NT0RFX0g2KHgp
IDw8IDE2KQogI2RlZmluZSBETUFfQ0hBTl9DRkdfRFNUX0JVUlNUX0EzMSh4KQkoRE1BX0NIQU5f
Q0ZHX1NSQ19CVVJTVF9BMzEoeCkgPDwgMTYpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19EU1RfQlVS
U1RfSDMoeCkJKERNQV9DSEFOX0NGR19TUkNfQlVSU1RfSDMoeCkgPDwgMTYpCiAjZGVmaW5lIERN
QV9DSEFOX0NGR19EU1RfV0lEVEgoeCkJKERNQV9DSEFOX0NGR19TUkNfV0lEVEgoeCkgPDwgMTYp
CkBAIC0zMTksMTIgKzMyNCwyNCBAQCBzdGF0aWMgdm9pZCBzdW42aV9zZXRfZHJxX2EzMSh1MzIg
KnBfY2ZnLCBzOCBzcmNfZHJxLCBzOCBkc3RfZHJxKQogCQkgIERNQV9DSEFOX0NGR19EU1RfRFJR
X0EzMShkc3RfZHJxKTsKIH0KIAorc3RhdGljIHZvaWQgc3VuNmlfc2V0X2RycV9oNih1MzIgKnBf
Y2ZnLCBzOCBzcmNfZHJxLCBzOCBkc3RfZHJxKQoreworCSpwX2NmZyB8PSBETUFfQ0hBTl9DRkdf
U1JDX0RSUV9INihzcmNfZHJxKSB8CisJCSAgRE1BX0NIQU5fQ0ZHX0RTVF9EUlFfSDYoZHN0X2Ry
cSk7Cit9CisKIHN0YXRpYyB2b2lkIHN1bjZpX3NldF9tb2RlX2EzMSh1MzIgKnBfY2ZnLCBzOCBz
cmNfbW9kZSwgczggZHN0X21vZGUpCiB7CiAJKnBfY2ZnIHw9IERNQV9DSEFOX0NGR19TUkNfTU9E
RV9BMzEoc3JjX21vZGUpIHwKIAkJICBETUFfQ0hBTl9DRkdfRFNUX01PREVfQTMxKGRzdF9tb2Rl
KTsKIH0KIAorc3RhdGljIHZvaWQgc3VuNmlfc2V0X21vZGVfaDYodTMyICpwX2NmZywgczggc3Jj
X21vZGUsIHM4IGRzdF9tb2RlKQoreworCSpwX2NmZyB8PSBETUFfQ0hBTl9DRkdfU1JDX01PREVf
SDYoc3JjX21vZGUpIHwKKwkJICBETUFfQ0hBTl9DRkdfRFNUX01PREVfSDYoZHN0X21vZGUpOwor
fQorCiBzdGF0aWMgc2l6ZV90IHN1bjZpX2dldF9jaGFuX3NpemUoc3RydWN0IHN1bjZpX3BjaGFu
ICpwY2hhbikKIHsKIAlzdHJ1Y3Qgc3VuNmlfZGVzYyAqdHhkID0gcGNoYW4tPmRlc2M7CkBAIC0x
MTYwLDYgKzExNzcsMjggQEAgc3RhdGljIHN0cnVjdCBzdW42aV9kbWFfY29uZmlnIHN1bjUwaV9h
NjRfZG1hX2NmZyA9IHsKIAkJCSAgICAgQklUKERNQV9TTEFWRV9CVVNXSURUSF84X0JZVEVTKSwK
IH07CiAKKy8qCisgKiBUaGUgSDYgYmluZGluZyB1c2VzIHRoZSBudW1iZXIgb2YgZG1hIGNoYW5u
ZWxzIGZyb20gdGhlCisgKiBkZXZpY2UgdHJlZSBub2RlLgorICovCitzdGF0aWMgc3RydWN0IHN1
bjZpX2RtYV9jb25maWcgc3VuNTBpX2g2X2RtYV9jZmcgPSB7CisJLmNsb2NrX2F1dG9nYXRlX2Vu
YWJsZSA9IHN1bjZpX2VuYWJsZV9jbG9ja19hdXRvZ2F0ZV9oMywKKwkuc2V0X2J1cnN0X2xlbmd0
aCA9IHN1bjZpX3NldF9idXJzdF9sZW5ndGhfaDMsCisJLnNldF9kcnEgICAgICAgICAgPSBzdW42
aV9zZXRfZHJxX2g2LAorCS5zZXRfbW9kZSAgICAgICAgID0gc3VuNmlfc2V0X21vZGVfaDYsCisJ
LnNyY19idXJzdF9sZW5ndGhzID0gQklUKDEpIHwgQklUKDQpIHwgQklUKDgpIHwgQklUKDE2KSwK
KwkuZHN0X2J1cnN0X2xlbmd0aHMgPSBCSVQoMSkgfCBCSVQoNCkgfCBCSVQoOCkgfCBCSVQoMTYp
LAorCS5zcmNfYWRkcl93aWR0aHMgICA9IEJJVChETUFfU0xBVkVfQlVTV0lEVEhfMV9CWVRFKSB8
CisJCQkgICAgIEJJVChETUFfU0xBVkVfQlVTV0lEVEhfMl9CWVRFUykgfAorCQkJICAgICBCSVQo
RE1BX1NMQVZFX0JVU1dJRFRIXzRfQllURVMpIHwKKwkJCSAgICAgQklUKERNQV9TTEFWRV9CVVNX
SURUSF84X0JZVEVTKSwKKwkuZHN0X2FkZHJfd2lkdGhzICAgPSBCSVQoRE1BX1NMQVZFX0JVU1dJ
RFRIXzFfQllURSkgfAorCQkJICAgICBCSVQoRE1BX1NMQVZFX0JVU1dJRFRIXzJfQllURVMpIHwK
KwkJCSAgICAgQklUKERNQV9TTEFWRV9CVVNXSURUSF80X0JZVEVTKSB8CisJCQkgICAgIEJJVChE
TUFfU0xBVkVfQlVTV0lEVEhfOF9CWVRFUyksCisJLmhhc19tYnVzX2NsayA9IHRydWUsCit9Owor
CiAvKgogICogVGhlIFYzcyBoYXZlIG9ubHkgOCBwaHlzaWNhbCBjaGFubmVscywgYSBtYXhpbXVt
IERSUSBwb3J0IGlkIG9mIDIzLAogICogYW5kIGEgdG90YWwgb2YgMjQgdXNhYmxlIHNvdXJjZSBh
bmQgZGVzdGluYXRpb24gZW5kcG9pbnRzLgpAQCAtMTE5MCw2ICsxMjI5LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNmlfZG1hX21hdGNoW10gPSB7CiAJeyAuY29tcGF0
aWJsZSA9ICJhbGx3aW5uZXIsc3VuOGktaDMtZG1hIiwgLmRhdGEgPSAmc3VuOGlfaDNfZG1hX2Nm
ZyB9LAogCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLXYzcy1kbWEiLCAuZGF0YSA9
ICZzdW44aV92M3NfZG1hX2NmZyB9LAogCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUw
aS1hNjQtZG1hIiwgLmRhdGEgPSAmc3VuNTBpX2E2NF9kbWFfY2ZnIH0sCisJeyAuY29tcGF0aWJs
ZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LWRtYSIsIC5kYXRhID0gJnN1bjUwaV9oNl9kbWFfY2Zn
IH0sCiAJeyAvKiBzZW50aW5lbCAqLyB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3Vu
NmlfZG1hX21hdGNoKTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
