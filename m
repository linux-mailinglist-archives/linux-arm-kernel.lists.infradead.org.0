Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA9A2A576
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpAC6sFrcYU5Zot490ce2YBO4tREvYlj8XxF9eGdDfc=; b=leyPYzdYeMvxRp
	AGHAHwI/KCWjuXQZrEcavr3peWzbCE7TZTLRy7DDiVRTr3G+RLvD4pvpakqlpboiPw9yYlXC/hXBQ
	tkim+pSI9gBzh3atJAkWfrLG+Uscy5dk+yNMINXM7wYRXkjoKy9d2FSnhgIqSzaNZpgALcn5yC2pd
	t87O5KTXKzeBtsPsDyyK7E6/GjD6nA1mRmmItfl5NSPrYQGdbqy1F09ZT+QeAwba66YveGRmewtZI
	6UpHk0s1UZR/TXTp4kbHs4nIvgSIh4yFsAp6k+WgNDyqmZrgmADYiT3UFKltYucTaUxFYFR2mfXAk
	uyyzb05mDJm8wlkB2CSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZhc-0004WA-R0; Sat, 25 May 2019 16:39:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZgm-0003c7-Gv
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:38:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id w13so4463831wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=07+2U0H+IBjlhuGrjcqPkQ09B1GGgjfSq3SMD7jPmPk=;
 b=klPyfvEI/cinBZjUx/j9WztCqHYARfQARCJH1q6MDnkpugFwTZS3mXWJOPhY2kGm9X
 xvh8y4d29cRIP/haRLAjSm/wPDvhHSowZ9b+BTaxE25Wj94v3Hbhj8NY4kMrQgFFqArj
 Sdim6YOIeNCEs+B8n78T0DnM3lLO72mOaiTq79RuFx0s/A3FKGT0JMJkoUXlNDNHZkN6
 Cz2lzFORDCEjpKz2uQtW61g0f9z1ljIwrqsZZJGWZVQLIxTSlcUFdn3VmkCWavKq473z
 KIUSwRdjoE66O0i8n7CjJFSoIXC4TKqNnsPlYOj9J9errHJfOr344EHHAnZHXAF3vdEm
 k+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=07+2U0H+IBjlhuGrjcqPkQ09B1GGgjfSq3SMD7jPmPk=;
 b=JDNNFrx1C2jySP9CMwyqgBScYrmWbTmO3NdUBMFDS7A5e8YiDvjOmJMfDArZZk0FIe
 blIEk3KQ8BT2NqdlcwtWlP6DORlc6F6ax2EnfgqmcJz1SNGf1gYcjcvasT8EtfsT8G6m
 W+poqw0+tBOM5KpxLifmSH9AOcOUAi/2ndeiUCs0NH/mJsl6q9hxwV0GaRoqLrS8I2EJ
 CevEqkUFzcgX/UfRbl46X+HNr1sgNmoKO8mSkc9OkcJZEiSF++w9L0SS7zsb24P6Ju5d
 pVnTenLF2rosTy1bOg95z0o2K/MGFuNctMbUDUPNx6J9vUodVD/xlgmCH4kTU27Qv4L8
 3xig==
X-Gm-Message-State: APjAAAWMV04nmpHPsNQii519YUiNKDPWzCEpERM+TPw/J6xpaqDXHynw
 BHYXd5M8cuT/P/UZYH0rnSI=
X-Google-Smtp-Source: APXvYqzm/wYeHMQ/bMWtYde+sUwDQUn/a6MwN3kmijYbXweILvEJLFoIryLiSzFlzR9HON9LpbyEqA==
X-Received: by 2002:adf:db89:: with SMTP id u9mr30158479wri.294.1558802311115; 
 Sat, 25 May 2019 09:38:31 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id f65sm9306498wmg.45.2019.05.25.09.38.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:38:30 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 5/7] dmaengine: sun6i: Add support for H6 DMA
Date: Sat, 25 May 2019 18:38:17 +0200
Message-Id: <20190525163819.21055-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525163819.21055-1-peron.clem@gmail.com>
References: <20190525163819.21055-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093832_806417_F36013D8 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
L2RtYS9zdW42aS1kbWEuYyB8IDQ0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYyBiL2RyaXZlcnMvZG1hL3N1bjZp
LWRtYS5jCmluZGV4IGY1Y2I1ZTg5YmY3Yi4uOGQ0NGRkYWU5MjZhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2RtYS9zdW42aS1kbWEuYworKysgYi9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYwpAQCAtNjks
MTQgKzY5LDE5IEBACiAKICNkZWZpbmUgRE1BX0NIQU5fQ1VSX0NGRwkweDBjCiAjZGVmaW5lIERN
QV9DSEFOX01BWF9EUlFfQTMxCQkweDFmCisjZGVmaW5lIERNQV9DSEFOX01BWF9EUlFfSDYJCTB4
M2YKICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX1NSQ19EUlFfQTMxKHgpCSgoeCkgJiBETUFfQ0hBTl9N
QVhfRFJRX0EzMSkKKyNkZWZpbmUgRE1BX0NIQU5fQ0ZHX1NSQ19EUlFfSDYoeCkJKCh4KSAmIERN
QV9DSEFOX01BWF9EUlFfSDYpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfTU9ERV9BMzEoeCkJ
KCgoeCkgJiAweDEpIDw8IDUpCisjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfTU9ERV9INih4KQko
KCh4KSAmIDB4MSkgPDwgOCkKICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX1NSQ19CVVJTVF9BMzEoeCkJ
KCgoeCkgJiAweDMpIDw8IDcpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfQlVSU1RfSDMoeCkJ
KCgoeCkgJiAweDMpIDw8IDYpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfV0lEVEgoeCkJKCgo
eCkgJiAweDMpIDw8IDkpCiAKICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX0RTVF9EUlFfQTMxKHgpCShE
TUFfQ0hBTl9DRkdfU1JDX0RSUV9BMzEoeCkgPDwgMTYpCisjZGVmaW5lIERNQV9DSEFOX0NGR19E
U1RfRFJRX0g2KHgpCShETUFfQ0hBTl9DRkdfU1JDX0RSUV9INih4KSA8PCAxNikKICNkZWZpbmUg
RE1BX0NIQU5fQ0ZHX0RTVF9NT0RFX0EzMSh4KQkoRE1BX0NIQU5fQ0ZHX1NSQ19NT0RFX0EzMSh4
KSA8PCAxNikKKyNkZWZpbmUgRE1BX0NIQU5fQ0ZHX0RTVF9NT0RFX0g2KHgpCShETUFfQ0hBTl9D
RkdfU1JDX01PREVfSDYoeCkgPDwgMTYpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19EU1RfQlVSU1Rf
QTMxKHgpCShETUFfQ0hBTl9DRkdfU1JDX0JVUlNUX0EzMSh4KSA8PCAxNikKICNkZWZpbmUgRE1B
X0NIQU5fQ0ZHX0RTVF9CVVJTVF9IMyh4KQkoRE1BX0NIQU5fQ0ZHX1NSQ19CVVJTVF9IMyh4KSA8
PCAxNikKICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX0RTVF9XSURUSCh4KQkoRE1BX0NIQU5fQ0ZHX1NS
Q19XSURUSCh4KSA8PCAxNikKQEAgLTMxOSwxMiArMzI0LDI0IEBAIHN0YXRpYyB2b2lkIHN1bjZp
X3NldF9kcnFfYTMxKHUzMiAqcF9jZmcsIHM4IHNyY19kcnEsIHM4IGRzdF9kcnEpCiAJCSAgRE1B
X0NIQU5fQ0ZHX0RTVF9EUlFfQTMxKGRzdF9kcnEpOwogfQogCitzdGF0aWMgdm9pZCBzdW42aV9z
ZXRfZHJxX2g2KHUzMiAqcF9jZmcsIHM4IHNyY19kcnEsIHM4IGRzdF9kcnEpCit7CisJKnBfY2Zn
IHw9IERNQV9DSEFOX0NGR19TUkNfRFJRX0g2KHNyY19kcnEpIHwKKwkJICBETUFfQ0hBTl9DRkdf
RFNUX0RSUV9INihkc3RfZHJxKTsKK30KKwogc3RhdGljIHZvaWQgc3VuNmlfc2V0X21vZGVfYTMx
KHUzMiAqcF9jZmcsIHM4IHNyY19tb2RlLCBzOCBkc3RfbW9kZSkKIHsKIAkqcF9jZmcgfD0gRE1B
X0NIQU5fQ0ZHX1NSQ19NT0RFX0EzMShzcmNfbW9kZSkgfAogCQkgIERNQV9DSEFOX0NGR19EU1Rf
TU9ERV9BMzEoZHN0X21vZGUpOwogfQogCitzdGF0aWMgdm9pZCBzdW42aV9zZXRfbW9kZV9oNih1
MzIgKnBfY2ZnLCBzOCBzcmNfbW9kZSwgczggZHN0X21vZGUpCit7CisJKnBfY2ZnIHw9IERNQV9D
SEFOX0NGR19TUkNfTU9ERV9INihzcmNfbW9kZSkgfAorCQkgIERNQV9DSEFOX0NGR19EU1RfTU9E
RV9INihkc3RfbW9kZSk7Cit9CisKIHN0YXRpYyBzaXplX3Qgc3VuNmlfZ2V0X2NoYW5fc2l6ZShz
dHJ1Y3Qgc3VuNmlfcGNoYW4gKnBjaGFuKQogewogCXN0cnVjdCBzdW42aV9kZXNjICp0eGQgPSBw
Y2hhbi0+ZGVzYzsKQEAgLTExNjAsNiArMTE3NywyOCBAQCBzdGF0aWMgc3RydWN0IHN1bjZpX2Rt
YV9jb25maWcgc3VuNTBpX2E2NF9kbWFfY2ZnID0gewogCQkJICAgICBCSVQoRE1BX1NMQVZFX0JV
U1dJRFRIXzhfQllURVMpLAogfTsKIAorLyoKKyAqIFRoZSBINiBiaW5kaW5nIHVzZXMgdGhlIG51
bWJlciBvZiBkbWEgY2hhbm5lbHMgZnJvbSB0aGUKKyAqIGRldmljZSB0cmVlIG5vZGUuCisgKi8K
K3N0YXRpYyBzdHJ1Y3Qgc3VuNmlfZG1hX2NvbmZpZyBzdW41MGlfaDZfZG1hX2NmZyA9IHsKKwku
Y2xvY2tfYXV0b2dhdGVfZW5hYmxlID0gc3VuNmlfZW5hYmxlX2Nsb2NrX2F1dG9nYXRlX2gzLAor
CS5zZXRfYnVyc3RfbGVuZ3RoID0gc3VuNmlfc2V0X2J1cnN0X2xlbmd0aF9oMywKKwkuc2V0X2Ry
cSAgICAgICAgICA9IHN1bjZpX3NldF9kcnFfaDYsCisJLnNldF9tb2RlICAgICAgICAgPSBzdW42
aV9zZXRfbW9kZV9oNiwKKwkuc3JjX2J1cnN0X2xlbmd0aHMgPSBCSVQoMSkgfCBCSVQoNCkgfCBC
SVQoOCkgfCBCSVQoMTYpLAorCS5kc3RfYnVyc3RfbGVuZ3RocyA9IEJJVCgxKSB8IEJJVCg0KSB8
IEJJVCg4KSB8IEJJVCgxNiksCisJLnNyY19hZGRyX3dpZHRocyAgID0gQklUKERNQV9TTEFWRV9C
VVNXSURUSF8xX0JZVEUpIHwKKwkJCSAgICAgQklUKERNQV9TTEFWRV9CVVNXSURUSF8yX0JZVEVT
KSB8CisJCQkgICAgIEJJVChETUFfU0xBVkVfQlVTV0lEVEhfNF9CWVRFUykgfAorCQkJICAgICBC
SVQoRE1BX1NMQVZFX0JVU1dJRFRIXzhfQllURVMpLAorCS5kc3RfYWRkcl93aWR0aHMgICA9IEJJ
VChETUFfU0xBVkVfQlVTV0lEVEhfMV9CWVRFKSB8CisJCQkgICAgIEJJVChETUFfU0xBVkVfQlVT
V0lEVEhfMl9CWVRFUykgfAorCQkJICAgICBCSVQoRE1BX1NMQVZFX0JVU1dJRFRIXzRfQllURVMp
IHwKKwkJCSAgICAgQklUKERNQV9TTEFWRV9CVVNXSURUSF84X0JZVEVTKSwKKwkuaGFzX21idXNf
Y2xrID0gdHJ1ZSwKK307CisKIC8qCiAgKiBUaGUgVjNzIGhhdmUgb25seSA4IHBoeXNpY2FsIGNo
YW5uZWxzLCBhIG1heGltdW0gRFJRIHBvcnQgaWQgb2YgMjMsCiAgKiBhbmQgYSB0b3RhbCBvZiAy
NCB1c2FibGUgc291cmNlIGFuZCBkZXN0aW5hdGlvbiBlbmRwb2ludHMuCkBAIC0xMTkwLDYgKzEy
MjksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW42aV9kbWFfbWF0Y2hb
XSA9IHsKIAl7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1kbWEiLCAuZGF0YSA9
ICZzdW44aV9oM19kbWFfY2ZnIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuOGkt
djNzLWRtYSIsIC5kYXRhID0gJnN1bjhpX3Yzc19kbWFfY2ZnIH0sCiAJeyAuY29tcGF0aWJsZSA9
ICJhbGx3aW5uZXIsc3VuNTBpLWE2NC1kbWEiLCAuZGF0YSA9ICZzdW41MGlfYTY0X2RtYV9jZmcg
fSwKKwl7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtZG1hIiwgLmRhdGEgPSAm
c3VuNTBpX2g2X2RtYV9jZmcgfSwKIAl7IC8qIHNlbnRpbmVsICovIH0KIH07CiBNT0RVTEVfREVW
SUNFX1RBQkxFKG9mLCBzdW42aV9kbWFfbWF0Y2gpOwpAQCAtMTI4OCw4ICsxMzI4LDggQEAgc3Rh
dGljIGludCBzdW42aV9kbWFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAly
ZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihucCwgImRtYS1yZXF1ZXN0cyIsICZzZGMtPm1heF9y
ZXF1ZXN0KTsKIAlpZiAocmV0ICYmICFzZGMtPm1heF9yZXF1ZXN0KSB7CiAJCWRldl9pbmZvKCZw
ZGV2LT5kZXYsICJNaXNzaW5nIGRtYS1yZXF1ZXN0cywgdXNpbmcgJXUuXG4iLAotCQkJIERNQV9D
SEFOX01BWF9EUlFfQTMxKTsKLQkJc2RjLT5tYXhfcmVxdWVzdCA9IERNQV9DSEFOX01BWF9EUlFf
QTMxOworCQkJIERNQV9DSEFOX01BWF9EUlFfSDYpOworCQlzZGMtPm1heF9yZXF1ZXN0ID0gRE1B
X0NIQU5fTUFYX0RSUV9INjsKIAl9CiAKIAkvKgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
