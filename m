Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C52F14DAE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 13:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzkfkAIg8IUPnHMWOlXIjjrgwaoR5OvGDPqRCh9Jgt0=; b=Mr1KauNGgTIHnp
	o8Xyq8dDN1uuYfKLlRM/kUeEHYHRr5BAjohUUD9/UP5mN6MSX0NIIcK/lRuZIdqqORT7ZpHkEDUFg
	+d63YsJElnuoaNlbdGSqKiOUT0Z6z66KIz71+cv/XIO/5icuvB5q0y8YAMcj2yPLYjcW+paRGQoBu
	Msgh7JEtyOLsGLav6ZmUZrZ7PzV9718iH4Z95JKOTl0hLz062GLWITpMsr4raFZM0djJfiXSXWYEW
	bV11rNwbnNgqG/cFeQct/iHcfREC3BwOCqDxM8n/mxzaT373IwHTCkAUo1Rm2q+VlKYbUn6CkSVL5
	bNsrfUSecXvz7+cuBCOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9Ax-00040J-7n; Thu, 30 Jan 2020 12:44:03 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9AE-0003cK-6z
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 12:43:24 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200130124316euoutp01c0ea3333e3ef63ffc8dd3bd53ae3377c~uqrDrHlmt2932129321euoutp014
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 12:43:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200130124316euoutp01c0ea3333e3ef63ffc8dd3bd53ae3377c~uqrDrHlmt2932129321euoutp014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1580388196;
 bh=lT1I19NYIZKRT4a1vnKJnFS8PvPg81U0RYirnuIE4as=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GxjEgzKJINoygEsVV6sN0v/n9E/krYy9QvIo0DqaZiS30WfdjX2NxFcpva+7r3bH9
 WlOexxyGAlk9cVfO4g/MS0dUXNftPiQtnJfWtUnzrIJXWExgqBhFtTr8xLgpaRv/HA
 ERQs3Cr+0tYTE6GcsCpkhOcmgdSDHE72pYraK68w=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200130124315eucas1p195c03b5901c94e88a3a5ebb207e6a12c~uqrDfR3sX1976019760eucas1p1C;
 Thu, 30 Jan 2020 12:43:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 27.BA.60698.36FC23E5; Thu, 30
 Jan 2020 12:43:15 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200130124315eucas1p12d5380c44b68d08ae96849056303e175~uqrDPNpNZ0696206962eucas1p1m;
 Thu, 30 Jan 2020 12:43:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200130124315eusmtrp1b7fee25bcd3170c976aa8c63f9fa3529~uqrDOnwd22256122561eusmtrp1E;
 Thu, 30 Jan 2020 12:43:15 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-76-5e32cf638755
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 54.6D.07950.36FC23E5; Thu, 30
 Jan 2020 12:43:15 +0000 (GMT)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200130124315eusmtip2bad2ce430c110ffce79aaf6e8db206ad~uqrDBgM2d1616616166eusmtip2L;
 Thu, 30 Jan 2020 12:43:15 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFC PATCH 4/4] boot/loader: Enable building bootloader replacement
 for Odroid XU4
Date: Thu, 30 Jan 2020 13:42:33 +0100
Message-Id: <20200130124233.4006-4-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130124233.4006-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphleLIzCtJLcpLzFFi42LZduzned3k80ZxBq8eGlvcPLSC0WLT42us
 Fpd3zWGzmHF+H5MDi8fmJfUefVtWMXp83iQXwBzFZZOSmpNZllqkb5fAlbHt6lr2gk8TGSse
 N79kbmBcU9nFyMkhIWAiseX0JJYuRi4OIYEVjBKndr1khnC+MEpcb1zOCOF8ZpQ4OnMBUIYD
 rGXyKx+I+HJGiTNzZ0J1PGeU6D7xnQ1kLpuAo0T/0hOsILaIQLbE5I9fmEBsZgF7iYmz/oPV
 CAvESnw+uAqshkVAVeLyqlYWEJtXwEpiwb7ZTBD3yUuc713HDmJzClhLfFz9mxWiRlDi5Mwn
 YPX8AloSa5qus0DMl5do3job7CAJgW52iTMXjrNBDHKRuHf6DDOELSzx6vgWdghbRuL05B4W
 iM/qJSZPMoPo7WGU2DbnBwtEjbXEnXO/2EBqmAU0Jdbv0ocIO0pMPzePHaKVT+LGW0GIE/gk
 Jm2bDg0rXomONiGIahWJdf17oAZKSfS+WsE4gVFpFpJnZiF5YBbCrgWMzKsYxVNLi3PTU4uN
 81LL9YoTc4tL89L1kvNzNzEC08bpf8e/7mDc9yfpEKMAB6MSD++Cc0ZxQqyJZcWVuYcYJTiY
 lUR4RV0N44R4UxIrq1KL8uOLSnNSiw8xSnOwKInzGi96GSskkJ5YkpqdmlqQWgSTZeLglGpg
 lNXzWuFZURfPtVP0Lk+BxdfjHYwmAh1Mb6KXf/c8pqgt+KPENPSLQqNY23n+M41KBouO8/x5
 6Ssm3vImzUHmaiPnnN7DnQ3uJvvdrU/8uGBWyFF180982a4lJrnHxPNnpiesuzLxpVbL+ae5
 X9fZOvnFzHI8fzmK22xTc9iOKWUFs+smGh5QYinOSDTUYi4qTgQA8oUO6hcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xe7rJ543iDN6vlre4eWgFo8Wmx9dY
 LS7vmsNmMeP8PiYHFo/NS+o9+rasYvT4vEkugDlKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/I
 xFLP0Ng81srIVEnfziYlNSezLLVI3y5BL2Pb1bXsBZ8mMlY8bn7J3MC4prKLkYNDQsBEYvIr
 ny5GLg4hgaWMEo//PmSBiEtJrJyb3sXICWQKS/y51sUGUfOUUaJhz0I2kASbgKNE/9ITrCC2
 iECuxLVDR9lBbGYBe4mJs/6D1QgLREvcudYLFmcRUJW4vKqVBcTmFbCSWLBvNhPEAnmJ873r
 wGo4BawlPq7+DTZTSCBbomvPK0aIekGJkzOfgN3GLKAusX6eEEiYX0BLYk3TdRaItfISzVtn
 M09gFJqFpGMWQscsJFULGJlXMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbItmM/t+xg7HoX
 fIhRgINRiYfX44xRnBBrYllxZe4hRgkOZiURXlFXwzgh3pTEyqrUovz4otKc1OJDjKZAb05k
 lhJNzgfGb15JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsaTkh/S
 kmoiPjyzeavk5x39/Okk9/2/q1yvKhy/uv7YUzbnk9UF2WvUZZpUF+4VUTp+NZDD/2Ja/OIZ
 lhNuMPYoB97cavRibe6dpY55yU3Vl2+IV0d8uqviZHd4bY9222Yv3tiJp9omNnEqvG2KVDPZ
 /HPa4n7h99oH79TqlmhfT2VhTOMJ5VBiKc5INNRiLipOBAAsOc8cpwIAAA==
X-CMS-MailID: 20200130124315eucas1p12d5380c44b68d08ae96849056303e175
X-Msg-Generator: CA
X-RootMTR: 20200130124315eucas1p12d5380c44b68d08ae96849056303e175
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200130124315eucas1p12d5380c44b68d08ae96849056303e175
References: <20200130123934.3900-1-l.stelmach@samsung.com>
 <20200130124233.4006-1-l.stelmach@samsung.com>
 <CGME20200130124315eucas1p12d5380c44b68d08ae96849056303e175@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_044318_585425_71DA2259 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBjb2RlIGVuYWJsZXMgYm9vdGluZyBvZiBMaW51eCBrZXJuZWwgb24gT2Ryb2lkIFhVNCB3
aXRob3V0IHUtYm9vdAoKU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFj
aEBzYW1zdW5nLmNvbT4KLS0tCiBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDggKysKIGFyY2gvYXJtL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgOCArLQogYXJjaC9hcm0vYm9vdC9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDE3ICsrKwogYXJjaC9hcm0vYm9vdC9sb2FkZXIvS2NvbmZpZyAgICAgICAgICAg
ICAgICAgIHwgIDIzICsrKwogYXJjaC9hcm0vYm9vdC9sb2FkZXIvTWFrZWZpbGUgICAgICAgICAg
ICAgICAgIHwgIDQyICsrKysrKwogYXJjaC9hcm0vYm9vdC9sb2FkZXIvb2Ryb2lkLWNvbnNvbGUu
YyAgICAgICAgIHwgMTM2ICsrKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9sb2FkZXIv
b2Ryb2lkLWNydDAuUyAgICAgICAgICAgIHwgIDQwICsrKysrKwogYXJjaC9hcm0vYm9vdC9sb2Fk
ZXIvcGlnZ3kuUyAgICAgICAgICAgICAgICAgIHwgIDE0ICsrCiBhcmNoL2FybS9ib290L2xvYWRl
ci92ZWN0b3JzLlMgICAgICAgICAgICAgICAgfCAxMTIgKysrKysrKysrKysrKysrCiBhcmNoL2Fy
bS9ib290L2xvYWRlci92bWxpbnV4LmxkcyAgICAgICAgICAgICAgfCAgMTcgKysrCiAuLi4vY29u
Zmlncy9vZHJvaWR4dTRfYm9vdGxvYWRlcl9kZWZjb25maWcgICAgfCAxMjcgKysrKysrKysrKysr
KysrKwogMTEgZmlsZXMgY2hhbmdlZCwgNTQzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2xvYWRlci9LY29uZmlnCiBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9sb2FkZXIvTWFrZWZpbGUKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybS9ib290L2xvYWRlci9vZHJvaWQtY29uc29sZS5jCiBjcmVhdGUgbW9kZSAx
MDA2NDQgYXJjaC9hcm0vYm9vdC9sb2FkZXIvb2Ryb2lkLWNydDAuUwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtL2Jvb3QvbG9hZGVyL3BpZ2d5LlMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybS9ib290L2xvYWRlci92ZWN0b3JzLlMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9i
b290L2xvYWRlci92bWxpbnV4LmxkcwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2NvbmZp
Z3Mvb2Ryb2lkeHU0X2Jvb3Rsb2FkZXJfZGVmY29uZmlnCgpkaWZmIC0tZ2l0IGFyY2gvYXJtL0tj
b25maWcgYXJjaC9hcm0vS2NvbmZpZwppbmRleCA5NmRhYjc2ZGEzYjMuLjU3NmQ5MDA3MWJhNSAx
MDA2NDQKLS0tIGFyY2gvYXJtL0tjb25maWcKKysrIGFyY2gvYXJtL0tjb25maWcKQEAgLTE3MTUs
NiArMTcxNSwxMyBAQCBlbmRtZW51CiAKIG1lbnUgIkJvb3Qgb3B0aW9ucyIKIAorbWVudSAiQm9v
dGxvYWRlciIKKwlkZXBlbmRzIG9uIEJMS19ERVZfSU5JVFJECisKK3NvdXJjZSAiYXJjaC9hcm0v
Ym9vdC9sb2FkZXIvS2NvbmZpZyIKKworZW5kbWVudQorCiBjb25maWcgVVNFX09GCiAJYm9vbCAi
RmxhdHRlbmVkIERldmljZSBUcmVlIHN1cHBvcnQiCiAJc2VsZWN0IElSUV9ET01BSU4KQEAgLTE5
ODIsNiArMTk4OSw3IEBAIGNvbmZpZyBETUkKIAkgIGZpcm13YXJlIG5lZWQgdG8gYmUgZW5hYmxl
ZC4gVGhpcyB3b3VsZCByZXF1aXJlIHRoZSBETUkgc3Vic3lzdGVtCiAJICB0byBiZSBlbmFibGVk
IG11Y2ggZWFybGllciB0aGFuIHdlIGRvIG9uIEFSTSwgd2hpY2ggaXMgbm9uLXRyaXZpYWwuCiAK
KwogZW5kbWVudQogCiBtZW51ICJDUFUgUG93ZXIgTWFuYWdlbWVudCIKZGlmZiAtLWdpdCBhcmNo
L2FybS9NYWtlZmlsZSBhcmNoL2FybS9NYWtlZmlsZQppbmRleCBkYjg1N2QwNzExNGYuLjBjMmMz
ZDAwMzllYyAxMDA2NDQKLS0tIGFyY2gvYXJtL01ha2VmaWxlCisrKyBhcmNoL2FybS9NYWtlZmls
ZQpAQCAtMzI4LDExICszMjgsMTcgQEAgYXJjaHByZXBhcmU6CiAjIENvbnZlcnQgYnpJbWFnZSB0
byB6SW1hZ2UKIGJ6SW1hZ2U6IHpJbWFnZQogCi1CT09UX1RBUkdFVFMJPSB6SW1hZ2UgSW1hZ2Ug
eGlwSW1hZ2UgYm9vdHBJbWFnZSB1SW1hZ2UKK0JPT1RfVEFSR0VUUwk9IHpJbWFnZSBJbWFnZSB4
aXBJbWFnZSBib290SW1hZ2UgYm9vdHBJbWFnZSB1SW1hZ2UKIElOU1RBTExfVEFSR0VUUwk9IHpp
bnN0YWxsIHVpbnN0YWxsIGluc3RhbGwKIAogUEhPTlkgKz0gYnpJbWFnZSAkKEJPT1RfVEFSR0VU
UykgJChJTlNUQUxMX1RBUkdFVFMpCiAKK2lmZXEgKCQoY29tcHJlc3MteSksKQorYm9vdEltYWdl
OiBJbWFnZQorZWxzZQorYm9vdEltYWdlOiB6SW1hZ2UKK2VuZGlmCisKIGJvb3RwSW1hZ2UgdUlt
YWdlOiB6SW1hZ2UKIHpJbWFnZTogSW1hZ2UKIApkaWZmIC0tZ2l0IGFyY2gvYXJtL2Jvb3QvTWFr
ZWZpbGUgYXJjaC9hcm0vYm9vdC9NYWtlZmlsZQppbmRleCAwYjNjZDdhMzNhMjYuLjIwZmM1Y2Nj
YWExZSAxMDA2NDQKLS0tIGFyY2gvYXJtL2Jvb3QvTWFrZWZpbGUKKysrIGFyY2gvYXJtL2Jvb3Qv
TWFrZWZpbGUKQEAgLTY2LDggKzY2LDI1IEBAICQob2JqKS9jb21wcmVzc2VkL3ZtbGludXg6ICQo
b2JqKS9JbWFnZSBGT1JDRQogJChvYmopL3pJbWFnZToJJChvYmopL2NvbXByZXNzZWQvdm1saW51
eCBGT1JDRQogCSQoY2FsbCBpZl9jaGFuZ2VkLG9iamNvcHkpCiAKK2NvbXByZXNzLSQoQ09ORklH
X0tFUk5FTF9HWklQKSA9IGd6aXAKK2NvbXByZXNzLSQoQ09ORklHX0tFUk5FTF9MWk8pICA9IGx6
bworY29tcHJlc3MtJChDT05GSUdfS0VSTkVMX0xaTUEpID0gbHptYQorY29tcHJlc3MtJChDT05G
SUdfS0VSTkVMX1haKSAgID0geHprZXJuCitjb21wcmVzcy0kKENPTkZJR19LRVJORUxfTFo0KSAg
PSBsejQKKworaWZlcSAoJChjb21wcmVzcy15KSwpCiskKG9iaikvbG9hZGVyL3ZtbGludXg6ICQo
b2JqKS9JbWFnZSBkdGJzIEZPUkNFCisJJChRKSQoTUFLRSkgJChidWlsZCk9JChvYmopL2xvYWRl
ciAkQAorZWxzZQorJChvYmopL2xvYWRlci92bWxpbnV4OiAkKG9iaikvekltYWdlIEZPUkNFCisJ
JChRKSQoTUFLRSkgJChidWlsZCk9JChvYmopL2xvYWRlciAkQAorZW5kaWYKKwogZW5kaWYKIAor
JChvYmopL2Jvb3RJbWFnZTogJChvYmopL2xvYWRlci92bWxpbnV4IEZPUkNFCisJJChjYWxsIGlm
X2NoYW5nZWQsb2JqY29weSkKKwogaWZuZXEgKCQoTE9BREFERFIpLCkKICAgVUlNQUdFX0xPQURB
RERSPSQoTE9BREFERFIpCiBlbHNlCmRpZmYgLS1naXQgYXJjaC9hcm0vYm9vdC9sb2FkZXIvS2Nv
bmZpZyBhcmNoL2FybS9ib290L2xvYWRlci9LY29uZmlnCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uYmM2OWJmNTkyNDFhCi0tLSAvZGV2L251bGwKKysrIGFyY2gvYXJt
L2Jvb3QvbG9hZGVyL0tjb25maWcKQEAgLTAsMCArMSwyMyBAQAorY2hvaWNlCisgIHByb21wdCAi
U2VsZWN0IHBsYXRmb3JtIHRvIGJvb3QiCisKKyAgY29uZmlnIEJPT1RfTE9BREVSX1hVNAorICAg
IGJvb2wgIk9kcm9pZCBYVTQiCisgICAgZGVwZW5kcyBvbiBBUkNIX0VYWU5PUzUKKyAgICBoZWxw
CisgICAgICBCdWlsZCBhIGtlcm5lbCBsb2FkYWJsZSBieSBYVTQgZmlybXdhcmUKKworICBjb25m
aWcgQk9PVF9MT0FERVJfWFUzCisgICAgYm9vbCAiT2Ryb2lkIFhVMyIKKyAgICBkZXBlbmRzIG9u
IEFSQ0hfRVhZTk9TNQorICAgIGhlbHAKKyAgICAgIEJ1aWxkIGEga2VybmVsIGxvYWRhYmxlIGJ5
IFhVMyBmaXJtd2FyZQorZW5kY2hvaWNlCisKK2NvbmZpZyBCT09UX0xPQURFUl9QTEFURk9STQor
ICBzdHJpbmcKKyAgZGVmYXVsdCBleHlub3M1NDIyLW9kcm9pZHh1NCBpZiBCT09UX0xPQURFUl9Y
VTQKKyAgZGVmYXVsdCBleHlub3M1NDIyLW9kcm9pZHh1MyBpZiBCT09UX0xPQURFUl9YVTMKKyAg
ZGVmYXVsdCAiIgorCisKZGlmZiAtLWdpdCBhcmNoL2FybS9ib290L2xvYWRlci9NYWtlZmlsZSBh
cmNoL2FybS9ib290L2xvYWRlci9NYWtlZmlsZQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjAxNGNjYmY2ODg1YQotLS0gL2Rldi9udWxsCisrKyBhcmNoL2FybS9ib290
L2xvYWRlci9NYWtlZmlsZQpAQCAtMCwwICsxLDQyIEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wCisjCisjIGxpbnV4L2FyY2gvYXJtL2Jvb3QvbG9hZGVyL01ha2VmaWxlCisj
CisjIGNyZWF0ZSBhIGJvb3RhYmxlIGltYWdlIGZvciBzZWxlY3RlZCBwbGF0Zm9ybQorIworCisK
K0RUQiAgOj0gJChzdWJzdCAkKHF1b3RlKSwsJChvYmopLy4uL2R0cy8kKENPTkZJR19CT09UX0xP
QURFUl9QTEFURk9STSkuZHRiKQorT0JKUyA9CisKK2xvYWRlci0kKENPTkZJR19CT09UX0xPQURF
Ul9YVTMpID0gb2Ryb2lkLWNvbnNvbGUubyBvZHJvaWQtY3J0MC5vCitsb2FkZXItJChDT05GSUdf
Qk9PVF9MT0FERVJfWFU0KSA9IG9kcm9pZC1jb25zb2xlLm8gb2Ryb2lkLWNydDAubworCitjb21w
cmVzcy0kKENPTkZJR19LRVJORUxfR1pJUCkgPSBnemlwCitjb21wcmVzcy0kKENPTkZJR19LRVJO
RUxfTFpPKSAgPSBsem8KK2NvbXByZXNzLSQoQ09ORklHX0tFUk5FTF9MWk1BKSA9IGx6bWEKK2Nv
bXByZXNzLSQoQ09ORklHX0tFUk5FTF9YWikgICA9IHh6a2VybgorY29tcHJlc3MtJChDT05GSUdf
S0VSTkVMX0xaNCkgID0gbHo0CisKK2lmZXEgKCQoY29tcHJlc3MteSksKQorSU1BR0UgPSAkKG9i
aikvLi4vSW1hZ2UKK2Vsc2UKK0lNQUdFID0gJChvYmopLy4uL3pJbWFnZQorZW5kaWYKK0FGTEFH
U19waWdneS5vCT0gLURJTUFHRT1cIiQoSU1BR0UpXCIgLURGRFQ9XCIkKERUQilcIgorCiskKG9i
aikvcGlnZ3kubzogJChJTUFHRSkgJChEVEIpCisKK0NGTEFHU19vZHJvaWQtY29uc29sZS5vID0g
LURfX1VBUlRfQkFTRT0kKHNoZWxsICQoc3JjdHJlZSkvc2NyaXB0cy9nZXRfY29uc29sZV9iYXNl
LnBsICQob2JqKS8uLi9kdHMvJChDT05GSUdfQk9PVF9MT0FERVJfUExBVEZPUk0pLmR0YikKKwor
dGFyZ2V0cwkJOj0gdm1saW51eAorCitMREZMQUdTX3ZtbGludXggPQorIyBOZXh0IGFyZ3VtZW50
IGlzIGEgbGlua2VyIHNjcmlwdAorTERGTEFHU192bWxpbnV4ICs9IC1UdGV4dCAweDQzRTAwMDAw
IC1UCisKK3RhcmdldHMJCTo9IHZtbGludXggdmVjdG9ycy5vIHBpZ2d5Lm8gJChsb2FkZXIteSkK
KworJChvYmopL3ZtbGludXg6ICQob2JqKS92bWxpbnV4LmxkcyAkKG9iaikvdmVjdG9ycy5vICQo
YWRkcHJlZml4ICQob2JqKS8sICQobG9hZGVyLXkpKSBcCisJCSQob2JqKS9waWdneS5vIEZPUkNF
CisJJChjYWxsIGlmX2NoYW5nZWQsbGQpCmRpZmYgLS1naXQgYXJjaC9hcm0vYm9vdC9sb2FkZXIv
b2Ryb2lkLWNvbnNvbGUuYyBhcmNoL2FybS9ib290L2xvYWRlci9vZHJvaWQtY29uc29sZS5jCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNDBkZWM3N2ZkMGVkCi0tLSAv
ZGV2L251bGwKKysrIGFyY2gvYXJtL2Jvb3QvbG9hZGVyL29kcm9pZC1jb25zb2xlLmMKQEAgLTAs
MCArMSwxMzYgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovCisvKiBD
b3B5cmlnaHQgKGMpIDIwMjAgU2Ftc3VuZyBFbGVjdHJvbmljcywgQ28uIEx0ZC4gKi8KKworI2lu
Y2x1ZGUgPGFzbS9pby5oPgorCisvKiBEdW1teSBmdW5jdGlvbnMgdG8gYXZvaWQgbGlua2VyIGNv
bXBsYWludHMgKi8KK3ZvaWQgX19hZWFiaV91bndpbmRfY3BwX3ByMCh2b2lkKQoreworfTsKKyNk
ZWZpbmUgYXJtX2hlYXZ5X21iKCkKKworI2RlZmluZSBHUElPX0JBU0UJKCh2b2lkKikweDE0MDEw
MDAwKQorI2RlZmluZSBHUEExQ09OCShHUElPX0JBU0UgKyAweDIwKQorI2RlZmluZSBHUEExREFU
CShHUElPX0JBU0UgKyAweDI0KQorI2RlZmluZSBHUEExUFVECShHUElPX0JBU0UgKyAweDI4KQor
I2RlZmluZSBHUEExRFJWX1NSCShHUElPX0JBU0UgKyAweDJjKQorI2RlZmluZSBHUEExQ09OUERO
CShHUElPX0JBU0UgKyAweDIwKQorI2RlZmluZSBHUEExUFVEUEROCShHUElPX0JBU0UgKyAweDI0
KQorCisjZGVmaW5lIEdQQTFDT04wX1VBUlQyUlgJKDB4MiA8PCAwKQorI2RlZmluZSBHUEExQ09O
MV9VQVJUMlRYCSgweDIgPDwgNCkKKyNkZWZpbmUgR1BBMUNPTjJfVUFSVDJDVFMJKDB4MiA8PCA4
KQorI2RlZmluZSBHUEExQ09OM19VQVJUMlJUUwkoMHgyIDw8IDEyKQorCisjZGVmaW5lIEdQQTFf
VUFSVDJNQVNLCQkoMHhmZmZmKQorI2RlZmluZSBHUEExUFVEX1VBUlQyTUFTSwkoMHhmZikKKwor
I2lmbmRlZiBfX1VBUlRfQkFTRQorI2Vycm9yIF9fVUFSVF9CQVNFIG5vdCBkZWZpbmVkCisjZWxz
ZQorI2RlZmluZSBVQVJUX0JBU0UgKCh2b2lkKilfX1VBUlRfQkFTRSkKKyNlbmRpZgorCisjZGVm
aW5lIFMzQzI0MTBfVUxDT04JCSgweDAwKQorI2RlZmluZSBTM0MyNDEwX1VDT04JCSgweDA0KQor
I2RlZmluZSBTM0MyNDEwX1VGQ09OCQkoMHgwOCkKKyNkZWZpbmUgUzNDMjQxMF9VTUNPTgkJKDB4
MEMpCisjZGVmaW5lIFMzQzI0MTBfVUJSRElWCQkoMHgyOCkKKyNkZWZpbmUgUzNDMjQxMF9GUkFD
VkFMCSgweDJDKQorCisjZGVmaW5lIFVBUlRfVUxDT04JKFVBUlRfQkFTRSArIFMzQzI0MTBfVUxD
T04pCisjZGVmaW5lIFVBUlRfVUNPTgkoVUFSVF9CQVNFICsgUzNDMjQxMF9VQ09OKQorI2RlZmlu
ZSBVQVJUX1VGQ09OCShVQVJUX0JBU0UgKyBTM0MyNDEwX1VGQ09OKQorI2RlZmluZSBVQVJUX1VN
Q09OCShVQVJUX0JBU0UgKyBTM0MyNDEwX1VNQ09OKQorI2RlZmluZSBVQVJUX1VCUkRJVgkoVUFS
VF9CQVNFICsgUzNDMjQxMF9VQlJESVYpCisjZGVmaW5lIFVBUlRfVUZSQUNWQUwJKFVBUlRfQkFT
RSArIFMzQzI0MTBfRlJBQ1ZBTCkKKworI2RlZmluZSBTNVBWMjEwX1VMQ09OX0NTNQkoMCkKKyNk
ZWZpbmUgUzVQVjIxMF9VTENPTl9DUzYJKDEpCisjZGVmaW5lIFM1UFYyMTBfVUxDT05fQ1M3CSgy
KQorI2RlZmluZSBTNVBWMjEwX1VMQ09OX0NTOAkoMykKKyNkZWZpbmUgUzVQVjIxMF9VTENPTl9D
U1RPUEIJKDEgPDwgMikgLyogdHdvIHN0b3AgYml0cyAqLworI2RlZmluZSBTNVBWMjEwX1VMQ09O
X1BBUk9ERAkoNCA8PCAzKSAvKiBwYXJpdHkgY2hlY2s6IG9kZCAqLworI2RlZmluZSBTNVBWMjEw
X1VMQ09OX1BBUkVWTgkoNSA8PCAzKSAvKiBwYXJpdHkgY2hlY2s6IGV2ZW4gKi8KKyNkZWZpbmUg
UzVQVjIxMF9VTENPTl9JUkRBCSgxIDw8IDYpIC8qIEluZnJhcmVkIE1vZGUgKi8KKyNkZWZpbmUg
UzVQVjIxMF9VTENPTl9ERUZBVUxUCShTNVBWMjEwX1VMQ09OX0NTOCkgLyogOE4xICovCisKKyNk
ZWZpbmUgUzNDMjQxMF9VQ09OX1JYSVJRTU9ERQkJKDE8PDApCisjZGVmaW5lIFMzQzI0MTBfVUNP
Tl9UWElSUU1PREUJCSgxPDwyKQorI2RlZmluZSBTM0MyNDEwX1VDT05fU0JSRUFLCQkoMTw8NCkK
KyNkZWZpbmUgUzNDMjQ0M19VQ09OX0xPT1BCQUNLCQkoMTw8NSkKKyNkZWZpbmUgUzNDMjQ0M19V
Q09OX1JYRVJSX0lSUUVOCSgxPDw2KQorI2RlZmluZSBTM0MyNDEwX1VDT05fUlhGSUZPX1RPSQko
MTw8NykKKyNkZWZpbmUgUzNDMjQxMF9VQ09OX1JYSUxFVkVMCQkoMTw8OCkKKyNkZWZpbmUgUzND
MjQxMF9VQ09OX1RYSUxFVkVMCQkoMTw8OSkKKyNkZWZpbmUgUzVQVjIxMF9VQ09OX0RFRkFVTFQJ
CSggXAorCQkJCQkgUzNDMjQxMF9VQ09OX1JYSVJRTU9ERSB8CVwKKwkJCQkJIFMzQzI0MTBfVUNP
Tl9UWElSUU1PREUgfCAgIFwKKwkJCQkJIFMzQzI0NDNfVUNPTl9SWEVSUl9JUlFFTiB8IDApCisK
KyNkZWZpbmUgUzNDMjQxMF9VRkNPTl9GSUZPTU9ERQkJKDE8PDApCisjZGVmaW5lIFMzQzI0MTBf
VUZDT05fUkVTRVRSWAkJKDE8PDEpCisjZGVmaW5lIFMzQzI0MTBfVUZDT05fUkVTRVRUWAkJKDE8
PDIpCisjZGVmaW5lIFMzQzI0MTBfVUZDT05fUkVTRVRCT1RICSgzPDwxKQorCisjZGVmaW5lIFM1
UFYyMTBfVUZDT05fREVGQVVMVAkoUzNDMjQxMF9VRkNPTl9GSUZPTU9ERSB8CVwKKwkJCQkgUzND
MjQxMF9VRkNPTl9SRVNFVEJPVEgpCisKKworLyogQ0xLX1NSQ19QRVJJQzAgKi8KKyNkZWZpbmUg
UFdNX1NFTAk2CisjZGVmaW5lIFVBUlQzX1NFTAk2CisjZGVmaW5lIFVBUlQyX1NFTAk2CisjZGVm
aW5lIFVBUlQxX1NFTAk2CisjZGVmaW5lIFVBUlQwX1NFTAk2CisvKiBTUkNfQ0xPQ0sgPSBTQ0xL
X01QTEwgKi8KKyNkZWZpbmUgQ0xLX1NSQ19QRVJJQzBfVkFMCSgoUFdNX1NFTCA8PCAyNCkJXAor
CQkJCXwgKFVBUlQzX1NFTCA8PCAxMikJXAorCQkJCXwgKFVBUlQyX1NFTCA8PCA4KQkgXAorCQkJ
CXwgKFVBUlQxX1NFTCA8PCA0KQlcCisJCQkJfCAoVUFSVDBfU0VMKSkKKworCisjZGVmaW5lIFVB
UlQ1X1JBVElPCTcKKyNkZWZpbmUgVUFSVDRfUkFUSU8JNworI2RlZmluZSBVQVJUM19SQVRJTwk3
CisjZGVmaW5lIFVBUlQyX1JBVElPCTcKKyNkZWZpbmUgVUFSVDFfUkFUSU8JNworI2RlZmluZSBV
QVJUMF9SQVRJTwk3CisKKyNkZWZpbmUgQ0xLX0RJVl9QRVJJQzBfVkFMCSgoVUFSVDNfUkFUSU8g
PDwgMTIpCVwKKwkJCQl8IChVQVJUMl9SQVRJTyA8PCA4KQlcCisJCQkJfCAoVUFSVDFfUkFUSU8g
PDwgNCkJXAorCQkJCXwgKFVBUlQwX1JBVElPKSkKKworCisjZGVmaW5lIENMS19TUkNfUEVSSUMw
ICgweDEwMDIwMjUwKQorI2RlZmluZSBDTEtfRElWX1BFUklDMCAoMHgxMDAyMDU1OCkKKwordm9p
ZCBjb25zb2xlX29uKHZvaWQpIHsKKwlpbnQgYTsKKwlhID0gcmVhZGwoR1BBMUNPTik7CisJYSA9
IChhICYgfkdQQTFfVUFSVDJNQVNLKSB8CisJCUdQQTFDT04wX1VBUlQyUlggfAorCQlHUEExQ09O
MV9VQVJUMlRYIHwKKwkJR1BBMUNPTjJfVUFSVDJDVFMgfAorCQlHUEExQ09OM19VQVJUMlJUUzsK
Kwl3cml0ZWwoYSwgR1BBMUNPTik7CisKKwlhID0gcmVhZGwoR1BBMVBVRCkgJiB+R1BBMVBVRF9V
QVJUMk1BU0s7CisJd3JpdGVsKGEsIEdQQTFQVUQpOworCisJLyogVUFSVDJfU0VMOiBTQ0xLX01Q
TEwgKDMpKi8KKwkvKiBNUExMX006IDI2NiAqLworCS8qIE1QTExfUDogMyAqLworCS8qIE1QTExf
UzogMiAqLworCS8qIFVBUlQyX1JBVElPOiA5ICovCisKKwl3cml0ZWwoUzVQVjIxMF9VRkNPTl9E
RUZBVUxULCBVQVJUX1VGQ09OKTsKKwl3cml0ZWwoMCwgVUFSVF9VTUNPTik7CisJd3JpdGVsKFM1
UFYyMTBfVUxDT05fREVGQVVMVCwgVUFSVF9VTENPTik7CisJd3JpdGVsKFM1UFYyMTBfVUNPTl9E
RUZBVUxULCBVQVJUX1VDT04pOworCisJd3JpdGVsKDB4MWIsIFVBUlRfVUJSRElWKTsKKwl3cml0
ZWwoMHgwZCwgVUFSVF9VRlJBQ1ZBTCk7Cit9CmRpZmYgLS1naXQgYXJjaC9hcm0vYm9vdC9sb2Fk
ZXIvb2Ryb2lkLWNydDAuUyBhcmNoL2FybS9ib290L2xvYWRlci9vZHJvaWQtY3J0MC5TCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTg2YmI4ZTE4ZDc4Ci0tLSAvZGV2
L251bGwKKysrIGFyY2gvYXJtL2Jvb3QvbG9hZGVyL29kcm9pZC1jcnQwLlMKQEAgLTAsMCArMSw0
MCBAQAorLyoKKyAqICBjcnQwIC0gQy1ydW50aW1lIHN0YXJ0dXAgQ29kZSBmb3IgQVJNCisgKgor
ICogIENvcHlyaWdodCAoYykgMjAxMiAgQWxiZXJ0IEFSSUJBVUQgPGFsYmVydC51LmJvb3RAYXJp
YmF1ZC5uZXQ+CisgKiAgQ29weXJpZ2h0IChjKSAyMDIwICBTYW1zdW5nIEVsZWN0cm9uaWNzLCBD
by4gTHRkLgorICoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOglHUEwtMi4wCisgKi8KKwor
I2luY2x1ZGUgPGxpbnV4L2xpbmthZ2UuaD4KKworc3BsYXNoOgkuYXNjaXogImJvb3QvbG9hZGVy
XHJcblw3IgorLyoKKyAqIGVudHJ5IHBvaW50IG9mIGNydDAgc2VxdWVuY2UKKyAqLworCS5hcm0K
K0VOVFJZKF9tYWluKQorCWxkcglzcCwgPXVzZXJfc3RhY2tfZW5kCisJYmwJY29uc29sZV9vbgor
CW1vdglyMCwgICMweDEyQzAwMDAwCisJYWRkCXIwLCByMCwgIzB4MjAwMDAKKwlhZHIJcjIsIHNw
bGFzaAorX3B1dGM6CWxkcmIJcjEsIFtyMl0KKwl0ZXEJcjEsICMwCisJYmVxCV9kb25lCisJc3Ry
YglyMSwgW3IwLCAjMHgyMF0gLyogVVRYSCAqLworCWFkZAlyMiwgcjIsICMxCisJYglfcHV0Ywor
X2RvbmU6CisJbW92CXIwLCAjMAorCW1vdiAgICAgcjEsICN+MAorCWxkcglyMiwgPWR0X2Jsb2Jf
c3RhcnQKKyAJYgl6SW1hZ2UKK0VORFBST0MoX21haW4pCisKKworCS5hbGlnbiAyCisJLnNlY3Rp
b24gIi5zdGFjayIsICJhdyIsICVub2JpdHMKK3VzZXJfc3RhY2s6CS5zcGFjZSAgNjQKK3VzZXJf
c3RhY2tfZW5kOgpkaWZmIC0tZ2l0IGFyY2gvYXJtL2Jvb3QvbG9hZGVyL3BpZ2d5LlMgYXJjaC9h
cm0vYm9vdC9sb2FkZXIvcGlnZ3kuUwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
MDAwMDAuLmFlMGM5Zjc3MDc0MQotLS0gL2Rldi9udWxsCisrKyBhcmNoL2FybS9ib290L2xvYWRl
ci9waWdneS5TCkBAIC0wLDAgKzEsMTQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wICovCisJLnNlY3Rpb24gLnBpZ2d5ZGF0YSwjYWxsb2MKKwkuYWxpZ24gIDEyCisJLmds
b2JsICBkdF9ibG9iX3N0YXJ0CitkdF9ibG9iX3N0YXJ0OgorCS5pbmNiaW4gRkRUCisJLmdsb2Js
IGR0X2Jsb2JfZW5kCitkdF9ibG9iX2VuZDoKKwkuYWxpZ24gMTIKKwkuZ2xvYmwJekltYWdlCit6
SW1hZ2U6CisgICAgICAgIC5pbmNiaW4gSU1BR0UKKwkuZ2xvYmwJekltYWdlX2VuZAorekltYWdl
X2VuZDoKZGlmZiAtLWdpdCBhcmNoL2FybS9ib290L2xvYWRlci92ZWN0b3JzLlMgYXJjaC9hcm0v
Ym9vdC9sb2FkZXIvdmVjdG9ycy5TCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAw
MDAwMC4uNzQ0ZWU0NjI1YjZlCi0tLSAvZGV2L251bGwKKysrIGFyY2gvYXJtL2Jvb3QvbG9hZGVy
L3ZlY3RvcnMuUwpAQCAtMCwwICsxLDExMiBAQAorLyoKKyAqICB2ZWN0b3JzIC0gR2VuZXJpYyBB
Uk0gZXhjZXB0aW9uIHRhYmxlIGNvZGUKKyAqCisgKiAgQ29weXJpZ2h0IChjKSAxOTk4CURhbiBN
YWxlayA8ZG1hbGVrQGpsYy5uZXQ+CisgKiAgQ29weXJpZ2h0IChjKSAxOTk5CU1hZ251cyBEYW1t
IDxraWVyYXlwYzAxLnAueS5raWUuZXJhLmVyaWNzc29uLnNlPgorICogIENvcHlyaWdodCAoYykg
MjAwMAlXb2xmZ2FuZyBEZW5rIDx3ZEBkZW54LmRlPgorICogIENvcHlyaWdodCAoYykgMjAwMQlB
bGV4IFrDvHBrZSA8YXp1QHN5c2dvLmRlPgorICogIENvcHlyaWdodCAoYykgMjAwMQlNYXJpdXMg
R3LDtmdlciA8bWFnQHN5c2dvLmRlPgorICogIENvcHlyaWdodCAoYykgMjAwMglBbGV4IFrDvHBr
ZSA8YXp1QHN5c2dvLmRlPgorICogIENvcHlyaWdodCAoYykgMjAwMglHYXJ5IEplbm5lam9obiA8
Z2FyeWpAZGVueC5kZT4KKyAqICBDb3B5cmlnaHQgKGMpIDIwMDIJS3lsZSBIYXJyaXMgPGtoYXJy
aXNAbmV4dXMtdGVjaC5uZXQ+CisgKiAgQ29weXJpZ2h0IChjKSAyMDIwICBTYW1zdW5nIEVsZWN0
cm9uaWNzLCBDby4gTHRkLgorICoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOglHUEwtMi4w
CisgKi8KKworLyogRnJvbSBoZWFkLlMgKi8KKyBBUl9DTEFTUyggICAgICAuYXJjaCAgIGFybXY3
LWEgKQorIE1fQ0xBU1MoICAgICAgIC5hcmNoICAgYXJtdjctbSApCisKKy8qCisgKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKgorICoKKyAqIFN5bWJvbCBfc3RhcnQgaXMgcmVmZXJlbmNlZCBlbHNld2hlcmUsIHNv
IG1ha2UgaXQgZ2xvYmFsCisgKgorICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKKyAqLworCisuZ2xvYmwgX3N0
YXJ0CisKKy8qCisgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKgorICoKKyAqIFZlY3RvcnMgaGF2ZSB0aGVpciBv
d24gc2VjdGlvbiBzbyBsaW5rZXIgc2NyaXB0IGNhbiBtYXAgdGhlbSBlYXNpbHkKKyAqCisgKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKgorICovCisKKwkuc2VjdGlvbiAiLnZlY3RvcnMiLCAiYXgiCisJLmFybQor
CisvKgorICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioKKyAqCisgKiBFeGNlcHRpb24gdmVjdG9ycyBhcyBkZXNj
cmliZWQgaW4gQVJNIHJlZmVyZW5jZSBtYW51YWxzCisgKgorICogVXNlcyBpbmRpcmVjdCBicmFu
Y2ggdG8gYWxsb3cgcmVhY2hpbmcgaGFuZGxlcnMgYW55d2hlcmUgaW4gbWVtb3J5LgorICoKKyAq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqCisgKi8KKworX3N0YXJ0OgorCWIJX21haW4KKwlsZHIJcGMsIF91bmRl
ZmluZWRfaW5zdHJ1Y3Rpb24KKwlsZHIJcGMsIF9zb2Z0d2FyZV9pbnRlcnJ1cHQKKwlsZHIJcGMs
IF9wcmVmZXRjaF9hYm9ydAorCWxkcglwYywgX2RhdGFfYWJvcnQKKwlsZHIJcGMsIF9ub3RfdXNl
ZAorCWxkcglwYywgX2lycQorCWxkcglwYywgX2ZpcQorCisvKgorICoqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioK
KyAqCisgKiBJbmRpcmVjdCB2ZWN0b3JzIHRhYmxlCisgKgorICogU3ltYm9scyByZWZlcmVuY2Vk
IGhlcmUgbXVzdCBiZSBkZWZpbmVkIHNvbWV3aGVyZSBlbHNlCisgKgorICoqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioKKyAqLworCisJLmdsb2JsCV91bmRlZmluZWRfaW5zdHJ1Y3Rpb24KKwkuZ2xvYmwJX3NvZnR3
YXJlX2ludGVycnVwdAorCS5nbG9ibAlfcHJlZmV0Y2hfYWJvcnQKKwkuZ2xvYmwJX2RhdGFfYWJv
cnQKKwkuZ2xvYmwJX25vdF91c2VkCisJLmdsb2JsCV9pcnEKKwkuZ2xvYmwJX2ZpcQorCitfdW5k
ZWZpbmVkX2luc3RydWN0aW9uOgkud29yZCB1bmRlZmluZWRfaW5zdHJ1Y3Rpb24KK19zb2Z0d2Fy
ZV9pbnRlcnJ1cHQ6CS53b3JkIHNvZnR3YXJlX2ludGVycnVwdAorX3ByZWZldGNoX2Fib3J0Ogku
d29yZCBwcmVmZXRjaF9hYm9ydAorX2RhdGFfYWJvcnQ6CQkud29yZCBkYXRhX2Fib3J0Citfbm90
X3VzZWQ6CQkud29yZCBub3RfdXNlZAorX2lycToJCQkud29yZCBpcnEKK19maXE6CQkJLndvcmQg
ZmlxCisKKwkuYmFsaWdubCAxNiwweGRlYWRiZWVmCisKKy8qCisgKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgor
ICoKKyAqIEludGVycnVwdCBoYW5kbGluZworICoKKyAqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCisgKi8KKwor
LyogU1BMIGludGVycnVwdCBoYW5kbGluZzoganVzdCBoYW5nICovCisKKwkuYWxpZ24JNQordW5k
ZWZpbmVkX2luc3RydWN0aW9uOgorc29mdHdhcmVfaW50ZXJydXB0OgorcHJlZmV0Y2hfYWJvcnQ6
CitkYXRhX2Fib3J0Ogorbm90X3VzZWQ6CitpcnE6CitmaXE6CisKKzE6CisJYmwJMWIJCQkvKiBo
YW5nIGFuZCBuZXZlciByZXR1cm4gKi8KKworCmRpZmYgLS1naXQgYXJjaC9hcm0vYm9vdC9sb2Fk
ZXIvdm1saW51eC5sZHMgYXJjaC9hcm0vYm9vdC9sb2FkZXIvdm1saW51eC5sZHMKbmV3IGZpbGUg
bW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5iYmQ0NWRlZjU2YTIKLS0tIC9kZXYvbnVs
bAorKysgYXJjaC9hcm0vYm9vdC9sb2FkZXIvdm1saW51eC5sZHMKQEAgLTAsMCArMSwxNyBAQAor
T1VUUFVUX0ZPUk1BVCgiZWxmMzItbGl0dGxlYXJtIiwgImVsZjMyLWxpdHRsZWFybSIsICJlbGYz
Mi1saXR0bGVhcm0iKQorT1VUUFVUX0FSQ0goYXJtKQorRU5UUlkoX3N0YXJ0KQorU0VDVElPTlMK
K3sKKyAuID0gMHgwMDAwMDAwMDsKKyAuID0gQUxJR04oNCk7CisgLnRleHQgOgorIHsKKyAgKigu
dmVjdG9ycykKKyAgKigudGV4dCopCisgfQorIC4gPSBBTElHTig0MDk2KTsKKyAucGlnZ3lkYXRh
IDogeyAqKC5waWdneWRhdGEpIH0KKyAuID0gQUxJR04oOCk7CisgLnN0YWNrIDogeyAqKC5zdGFj
aykgfQorfQpkaWZmIC0tZ2l0IGFyY2gvYXJtL2NvbmZpZ3Mvb2Ryb2lkeHU0X2Jvb3Rsb2FkZXJf
ZGVmY29uZmlnIGFyY2gvYXJtL2NvbmZpZ3Mvb2Ryb2lkeHU0X2Jvb3Rsb2FkZXJfZGVmY29uZmln
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uODg5NjFkOTUyNjEzCi0t
LSAvZGV2L251bGwKKysrIGFyY2gvYXJtL2NvbmZpZ3Mvb2Ryb2lkeHU0X2Jvb3Rsb2FkZXJfZGVm
Y29uZmlnCkBAIC0wLDAgKzEsMTI3IEBACitDT05GSUdfQk9PVF9MT0FERVJfWFU0PXkKK0NPTkZJ
R19MT0NBTFZFUlNJT049Ii1ib290LWxvYWRlciIKK0NPTkZJR19LRVJORUxfWFo9eQorQ09ORklH
X0RFRkFVTFRfSE9TVE5BTUU9ImJvb3QtbG9hZGVyIgorIyBDT05GSUdfU1dBUCBpcyBub3Qgc2V0
CisjIENPTkZJR19DUk9TU19NRU1PUllfQVRUQUNIIGlzIG5vdCBzZXQKK0NPTkZJR19OT19IWj15
CitDT05GSUdfSElHSF9SRVNfVElNRVJTPXkKK0NPTkZJR19CTEtfREVWX0lOSVRSRD15CitDT05G
SUdfSU5JVFJBTUZTX1NPVVJDRT0idG9vbHMvaHNpbml0L2luaXRyYW1mcy5jcGlvIgorIyBDT05G
SUdfUkRfR1pJUCBpcyBub3Qgc2V0CisjIENPTkZJR19SRF9CWklQMiBpcyBub3Qgc2V0CisjIENP
TkZJR19SRF9MWk1BIGlzIG5vdCBzZXQKKyMgQ09ORklHX1JEX0xaTyBpcyBub3Qgc2V0CisjIENP
TkZJR19SRF9MWjQgaXMgbm90IHNldAorQ09ORklHX0NDX09QVElNSVpFX0ZPUl9TSVpFPXkKKyMg
Q09ORklHX01VTFRJVVNFUiBpcyBub3Qgc2V0CisjIENPTkZJR19TWVNGU19TWVNDQUxMIGlzIG5v
dCBzZXQKKyMgQ09ORklHX0ZIQU5ETEUgaXMgbm90IHNldAorIyBDT05GSUdfQlVHIGlzIG5vdCBz
ZXQKKyMgQ09ORklHX0JBU0VfRlVMTCBpcyBub3Qgc2V0CisjIENPTkZJR19TSE1FTSBpcyBub3Qg
c2V0CisjIENPTkZJR19BSU8gaXMgbm90IHNldAorIyBDT05GSUdfSU9fVVJJTkcgaXMgbm90IHNl
dAorIyBDT05GSUdfQURWSVNFX1NZU0NBTExTIGlzIG5vdCBzZXQKKyMgQ09ORklHX01FTUJBUlJJ
RVIgaXMgbm90IHNldAorIyBDT05GSUdfS0FMTFNZTVMgaXMgbm90IHNldAorIyBDT05GSUdfUlNF
USBpcyBub3Qgc2V0CitDT05GSUdfRU1CRURERUQ9eQorIyBDT05GSUdfVk1fRVZFTlRfQ09VTlRF
UlMgaXMgbm90IHNldAorQ09ORklHX1NMT0I9eQorQ09ORklHX0FSQ0hfRVhZTk9TPXkKKyMgQ09O
RklHX0FSQ0hfRVhZTk9TMyBpcyBub3Qgc2V0CisjIENPTkZJR19BUkNIX0VYWU5PUzQgaXMgbm90
IHNldAorIyBDT05GSUdfU09DX0VYWU5PUzUyNTAgaXMgbm90IHNldAorIyBDT05GSUdfU09DX0VY
WU5PUzUyNjAgaXMgbm90IHNldAorIyBDT05GSUdfU09DX0VYWU5PUzU0MTAgaXMgbm90IHNldAor
IyBDT05GSUdfU09DX0VYWU5PUzU4MDAgaXMgbm90IHNldAorQ09ORklHX0hBVkVfQVJNX0FSQ0hf
VElNRVI9eQorQ09ORklHX1RIVU1CMl9LRVJORUw9eQorQ09ORklHX0hJR0hNRU09eQorQ09ORklH
X1NFQ0NPTVA9eQorIyBDT05GSUdfQVRBR1MgaXMgbm90IHNldAorQ09ORklHX1pCT09UX1JPTV9U
RVhUPTB4MAorQ09ORklHX1pCT09UX1JPTV9CU1M9MHgwCitDT05GSUdfQVJNX0FQUEVOREVEX0RU
Qj15CitDT05GSUdfQ01ETElORT0iZWFybHljb24gZGVidWcgY29uc29sZT10dHlTQUMyLDExNTIw
MG44IGNsa19pZ25vcmVfdW51c2VkIGhzPS9kZXYvbW1jYmxrMXA2OnVyb290LmNwaW8uZ3oiCitD
T05GSUdfS0VYRUM9eQorQ09ORklHX1ZGUD15CisjIENPTkZJR19TVVNQRU5EIGlzIG5vdCBzZXQK
K0NPTkZJR19QTT15CisjIENPTkZJR19CTEtfREVWX0JTRyBpcyBub3Qgc2V0CitDT05GSUdfUEFS
VElUSU9OX0FEVkFOQ0VEPXkKKyMgQ09ORklHX01RX0lPU0NIRURfREVBRExJTkUgaXMgbm90IHNl
dAorIyBDT05GSUdfTVFfSU9TQ0hFRF9LWUJFUiBpcyBub3Qgc2V0CisjIENPTkZJR19DT1JFRFVN
UCBpcyBub3Qgc2V0CisjIENPTkZJR19DT01QQUNUSU9OIGlzIG5vdCBzZXQKK0NPTkZJR19ERVZU
TVBGUz15CitDT05GSUdfREVWVE1QRlNfTU9VTlQ9eQorQ09ORklHX1NDU0k9eQorQ09ORklHX0JM
S19ERVZfU0Q9eQorQ09ORklHX0NIUl9ERVZfU0c9eQorIyBDT05GSUdfSU5QVVQgaXMgbm90IHNl
dAorIyBDT05GSUdfU0VSSU8gaXMgbm90IHNldAorIyBDT05GSUdfVlQgaXMgbm90IHNldAorIyBD
T05GSUdfTEVHQUNZX1BUWVMgaXMgbm90IHNldAorIyBDT05GSUdfREVWTUVNIGlzIG5vdCBzZXQK
K0NPTkZJR19TRVJJQUxfU0FNU1VORz15CitDT05GSUdfU0VSSUFMX1NBTVNVTkdfQ09OU09MRT15
CisjIENPTkZJR19IV19SQU5ET00gaXMgbm90IHNldAorQ09ORklHX0kyQz15CitDT05GSUdfSTJD
X0NIQVJERVY9eQorQ09ORklHX0kyQ19NVVg9eQorQ09ORklHX0kyQ19BUkJfR1BJT19DSEFMTEVO
R0U9eQorQ09ORklHX0kyQ19HUElPPXkKK0NPTkZJR19JMkNfUzNDMjQxMD15CitDT05GSUdfU0VO
U09SU19QV01fRkFOPXkKK0NPTkZJR19USEVSTUFMX0VNVUxBVElPTj15CitDT05GSUdfTUZEX1NF
Q19DT1JFPXkKK0NPTkZJR19SRUdVTEFUT1I9eQorQ09ORklHX1JFR1VMQVRPUl9GSVhFRF9WT0xU
QUdFPXkKK0NPTkZJR19SRUdVTEFUT1JfR1BJTz15CitDT05GSUdfUkVHVUxBVE9SX1MyTVBTMTE9
eQorIyBDT05GSUdfVVNCX1NVUFBPUlQgaXMgbm90IHNldAorQ09ORklHX01NQz15CisjIENPTkZJ
R19QV1JTRVFfU0lNUExFIGlzIG5vdCBzZXQKK0NPTkZJR19NTUNfQkxPQ0tfTUlOT1JTPTE2CitD
T05GSUdfTU1DX1NESENJPXkKK0NPTkZJR19NTUNfU0RIQ0lfUzNDPXkKK0NPTkZJR19NTUNfU0RI
Q0lfUzNDX0RNQT15CitDT05GSUdfTU1DX0RXPXkKK0NPTkZJR19NTUNfRFdfRVhZTk9TPXkKK0NP
TkZJR19ORVdfTEVEUz15CitDT05GSUdfTEVEU19DTEFTUz15CitDT05GSUdfTEVEU19DTEFTU19G
TEFTSD15CitDT05GSUdfTEVEU19HUElPPXkKK0NPTkZJR19MRURTX1BXTT15CitDT05GSUdfTEVE
U19UUklHR0VSUz15CitDT05GSUdfTEVEU19UUklHR0VSX0hFQVJUQkVBVD15CisjIENPTkZJR19W
SVJUSU9fTUVOVSBpcyBub3Qgc2V0CitDT05GSUdfQ09NTU9OX0NMS19TMk1QUzExPXkKKyMgQ09O
RklHX0VYWU5PU19BVURTU19DTEtfQ09OIGlzIG5vdCBzZXQKKyMgQ09ORklHX0lPTU1VX1NVUFBP
UlQgaXMgbm90IHNldAorQ09ORklHX1BXTT15CitDT05GSUdfUFdNX1NBTVNVTkc9eQorIyBDT05G
SUdfUEhZX0VYWU5PU19EUF9WSURFTyBpcyBub3Qgc2V0CisjIENPTkZJR19QSFlfRVhZTk9TX01J
UElfVklERU8gaXMgbm90IHNldAorQ09ORklHX05WTUVNPXkKKyMgQ09ORklHX0ZJTEVfTE9DS0lO
RyBpcyBub3Qgc2V0CisjIENPTkZJR19ETk9USUZZIGlzIG5vdCBzZXQKKyMgQ09ORklHX0lOT1RJ
RllfVVNFUiBpcyBub3Qgc2V0CitDT05GSUdfVkZBVF9GUz15CisjIENPTkZJR19QUk9DX1NZU0NU
TCBpcyBub3Qgc2V0CisjIENPTkZJR19QUk9DX1BBR0VfTU9OSVRPUiBpcyBub3Qgc2V0CisjIENP
TkZJR19NSVNDX0ZJTEVTWVNURU1TIGlzIG5vdCBzZXQKK0NPTkZJR19OTFNfQ09ERVBBR0VfNDM3
PXkKK0NPTkZJR19OTFNfSVNPODg1OV8xPXkKK0NPTkZJR19QUklOVEtfVElNRT15CisjIENPTkZJ
R19TRUNUSU9OX01JU01BVENIX1dBUk5fT05MWSBpcyBub3Qgc2V0CitDT05GSUdfTUFHSUNfU1lT
UlE9eQorIyBDT05GSUdfREVCVUdfTUlTQyBpcyBub3Qgc2V0CisjIENPTkZJR19TQ0hFRF9ERUJV
RyBpcyBub3Qgc2V0CisjIENPTkZJR19GVFJBQ0UgaXMgbm90IHNldAorQ09ORklHX0RFQlVHX0xM
PXkKK0NPTkZJR19ERUJVR19TM0NfVUFSVDI9eQorQ09ORklHX0RFQlVHX1VOQ09NUFJFU1M9eQor
IyBDT05GSUdfUlVOVElNRV9URVNUSU5HX01FTlUgaXMgbm90IHNldAotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
