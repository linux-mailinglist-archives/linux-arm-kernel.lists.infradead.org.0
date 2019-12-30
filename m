Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5742212D470
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 21:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2HsZVV6MpJlXQSoYv5CVEV9vRJyO4KkiPyWz7pxyVDM=; b=Ha3WQNhEmNOQM6
	riTZ8OUXcEz8qAOB8WWR5RDuY246d2I7/LNR+5BB+myd740XpZfXF6MgUVvSpyV3iB7f5v59pr53l
	xGALqCVOhc2VtKbMzIZXymMKYQOfHmdpwDZkW9BNVmm6tF/mnjv5z6pG9gPxToNKrxQkDyHcMuwuk
	r9JQaSRv99G/YpONYUxUdZRdSR6EcisRtys5hladUFLuSNGB7JHJ6eHuwH7gw1TJcl5y5G70/Q1Ba
	+YOql7idWeICodteq2XqwkyytthkdjA8iKHO58wXohUx8pzE+kHQP/u7JxFcQv42NShCpJ62YM/uY
	copIILFgGRyLed5imdNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im1Xb-0000Yj-8U; Mon, 30 Dec 2019 20:21:27 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im1XR-0000X1-Ix
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 20:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577737267;
 s=strato-dkim-0002; d=dawncrow.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=1fEvtm3yODCntar2DrEwrxk34L4DYJSOx40B0uTFp9g=;
 b=EwOLKt057yN9U0tw1YEg9bGd1D8gvH4Si5KPCQ4AWjmOiaaI6WxHR6voXoaxmS++W7
 CVxyEm/nFQEAtt5GW5qt5up28/SPQuzzuY0uCkYgF20hZylLcBc9SxokO6J4RqzsYZjK
 /cRzi63kHEXRxm7TbG5KZfPQAUXQKXej4iJ16lGuods1+FYC8aXLS9Ow+BurH7kRpGjd
 tca5vfYpa8F3ZEWxVMT6tZACoy2WPPuqqaYnSljYTHfWoAUmAhM4B3/Be4QVfybvpqsQ
 2VFv8pgLdj8zQDfYnSE+WDQBtCzrtonNXQLchSoobce0glOYuVZwNHhwJHIVtEm9w9+o
 h9EA==
X-RZG-AUTH: ":ImkWY2CseuihIZy6ZWWciR6unPhpN+aXzZGGjY6ptdusOaLnXzn3ovD+FrFdXyk="
X-RZG-CLASS-ID: mo00
Received: from tesla.fritz.box by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id I099d1vBUKL4G7z
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Mon, 30 Dec 2019 21:21:04 +0100 (CET)
From: =?UTF-8?q?Andr=C3=A9=20Hentschel?= <nerv@dawncrow.de>
To: linux@arm.linux.org.uk, robh+dt@kernel.org, mark.rutland@arm.com,
 bcousson@baylibre.com, tony@atomide.com, linux-omap@vger.kernel.org
Subject: [PATCH v2 1/2] ARM: dts: Move interconnect target module for omap3
 sgx to separate dtsi files
Date: Mon, 30 Dec 2019 21:20:36 +0100
Message-Id: <20191230202037.28836-1-nerv@dawncrow.de>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_122118_227765_F35319BF 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T25seSBkbTM3MzAgYW5kIGFtMzcxNSBjb21lIHdpdGggU0dYIHN1cHBvcnQKClNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBIZW50c2NoZWwgPG5lcnZAZGF3bmNyb3cuZGU+Ci0tLQoKSSBjaGFuZ2VkIHNv
bWUgZHRzaSBmaWxlcyB3aGVyZSBJIGNvdWxkIGJlIHN1cmUgaXQncyBkbTM3MzAKCiBhcmNoL2Fy
bS9ib290L2R0cy9hbTM3MTUuZHRzaSAgICAgICAgICAgIHwgMzggKysrKysrKysrKysrKysrKysr
KysrKysrCiBhcmNoL2FybS9ib290L2R0cy9kbTM3MzAuZHRzaSAgICAgICAgICAgIHwgIDYgKysr
KwogYXJjaC9hcm0vYm9vdC9kdHMvb21hcDMtZ3RhMDQuZHRzaSAgICAgICB8ICAyICstCiBhcmNo
L2FybS9ib290L2R0cy9vbWFwMy1saWxseS1hODN4LmR0c2kgIHwgIDIgKy0KIGFyY2gvYXJtL2Jv
b3QvZHRzL29tYXAzLXBhbmRvcmEtMWdoei5kdHMgfCAgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMv
b21hcDM2eHguZHRzaSAgICAgICAgICB8IDI4IC0tLS0tLS0tLS0tLS0tLS0tCiA2IGZpbGVzIGNo
YW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL2FtMzcxNS5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm0vYm9vdC9kdHMvZG0zNzMwLmR0c2kKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9hbTM3MTUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FtMzcxNS5kdHNpCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZjUzZDFmMjRkYzUzCi0tLSAvZGV2L251bGwK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYW0zNzE1LmR0c2kKQEAgLTAsMCArMSwzOCBAQAorLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQorLyoKKyAqIENvcHlyaWdodCAo
QykgMjAxOSBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPgorICovCisKKyNpbmNs
dWRlICJvbWFwMzZ4eC5kdHNpIgorCisvIHsKKwlvY3BANjgwMDAwMDAgeworCQkvKgorCQkgKiBO
b3RlIHRoYXQgdGhlIHN5c2NvbmZpZyByZWdpc3RlciBsYXlvdXQgaXMgYSBzdWJzZXQgb2YgdGhl
CisJCSAqICJ0aSxzeXNjLW9tYXA0IiB0eXBlIHJlZ2lzdGVyIHdpdGgganVzdCBzaWRsZSBhbmQg
bWlkbGUgYml0cworCQkgKiBhdmFpbGFibGUgd2hpbGUgb21hcDM0eHggaGFzICJ0aSxzeXNjLW9t
YXAyIiB0eXBlIHN5c2NvbmZpZy4KKwkJICovCisJCXNneF9tb2R1bGU6IHRhcmdldC1tb2R1bGVA
NTAwMDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ0aSxzeXNjLW9tYXA0IiwgInRpLHN5c2MiOwor
CQkJcmVnID0gPDB4NTAwMGZlMDAgMHg0PiwKKwkJCSAgICAgIDwweDUwMDBmZTEwIDB4ND47CisJ
CQlyZWctbmFtZXMgPSAicmV2IiwgInN5c2MiOworCQkJdGksc3lzYy1taWRsZSA9IDxTWVNDX0lE
TEVfRk9SQ0U+LAorCQkJCQk8U1lTQ19JRExFX05PPiwKKwkJCQkJPFNZU0NfSURMRV9TTUFSVD47
CisJCQl0aSxzeXNjLXNpZGxlID0gPFNZU0NfSURMRV9GT1JDRT4sCisJCQkJCTxTWVNDX0lETEVf
Tk8+LAorCQkJCQk8U1lTQ19JRExFX1NNQVJUPjsKKwkJCWNsb2NrcyA9IDwmc2d4X2Zjaz4sIDwm
c2d4X2ljaz47CisJCQljbG9jay1uYW1lcyA9ICJmY2siLCAiaWNrIjsKKwkJCSNhZGRyZXNzLWNl
bGxzID0gPDE+OworCQkJI3NpemUtY2VsbHMgPSA8MT47CisJCQlyYW5nZXMgPSA8MCAweDUwMDAw
MDAwIDB4MjAwMDAwMD47CisKKwkJCS8qCisJCQkgKiBDbG9zZWQgc291cmNlIFBvd2VyVlIgZHJp
dmVyLCBubyBjaGlsZCBkZXZpY2UKKwkJCSAqIGJpbmRpbmcgb3IgZHJpdmVyIGluIG1haW5saW5l
CisJCQkgKi8KKwkJfTsKKwl9OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2Rt
MzczMC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZG0zNzMwLmR0c2kKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi44ZDI3ODQ5OTk2NWIKLS0tIC9kZXYvbnVsbAorKysg
Yi9hcmNoL2FybS9ib290L2R0cy9kbTM3MzAuZHRzaQpAQCAtMCwwICsxLDYgQEAKKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8qCisgKiBDb3B5cmlnaHQgKEMpIDIw
MTkgQW5kcsOpIEhlbnRzY2hlbCA8bmVydkBkYXduY3Jvdy5kZT4KKyAqLworCisjaW5jbHVkZSAi
YW0zNzE1LmR0c2kiCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9vbWFwMy1ndGEwNC5k
dHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDMtZ3RhMDQuZHRzaQppbmRleCBiNmVmMWE3YWM4
YTQuLjU2NGJjZTkxNjRmOSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDMtZ3Rh
MDQuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9vbWFwMy1ndGEwNC5kdHNpCkBAIC02LDcg
KzYsNyBAQAogICovCiAvZHRzLXYxLzsKIAotI2luY2x1ZGUgIm9tYXAzNnh4LmR0c2kiCisjaW5j
bHVkZSAiZG0zNzMwLmR0c2kiCiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQuaD4K
IAogLyB7CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9vbWFwMy1saWxseS1hODN4LmR0
c2kgYi9hcmNoL2FybS9ib290L2R0cy9vbWFwMy1saWxseS1hODN4LmR0c2kKaW5kZXggYzIyODMz
ZDRlNTY4Li4xMDg2Y2RlMjRiYTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL29tYXAz
LWxpbGx5LWE4M3guZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9vbWFwMy1saWxseS1hODN4
LmR0c2kKQEAgLTMsNyArMyw3IEBACiAgKiBDb3B5cmlnaHQgKEMpIDIwMTQgQ2hyaXN0b3BoIEZy
aXR6IDxjaGYuZnJpdHpjQGdvb2dsZW1haWwuY29tPgogICovCiAKLSNpbmNsdWRlICJvbWFwMzZ4
eC5kdHNpIgorI2luY2x1ZGUgImRtMzczMC5kdHNpIgogCiAvIHsKIAltb2RlbCA9ICJJTkNPc3Rh
cnRlYyBMSUxMWS1BODNYIG1vZHVsZSAoRE0zNzMwKSI7CmRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9vbWFwMy1wYW5kb3JhLTFnaHouZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDMt
cGFuZG9yYS0xZ2h6LmR0cwppbmRleCA4MWI5NTdmMzNjOWYuLmRhNzFkZDY4YTg0YSAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDMtcGFuZG9yYS0xZ2h6LmR0cworKysgYi9hcmNo
L2FybS9ib290L2R0cy9vbWFwMy1wYW5kb3JhLTFnaHouZHRzCkBAIC0xMCw3ICsxMCw3IEBACiAK
IC9kdHMtdjEvOwogCi0jaW5jbHVkZSAib21hcDM2eHguZHRzaSIKKyNpbmNsdWRlICJkbTM3MzAu
ZHRzaSIKICNpbmNsdWRlICJvbWFwMy1wYW5kb3JhLWNvbW1vbi5kdHNpIgogCiAvIHsKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL29tYXAzNnh4LmR0c2kgYi9hcmNoL2FybS9ib290L2R0
cy9vbWFwMzZ4eC5kdHNpCmluZGV4IDFlNTUyZjA4ZjEyMC4uNmZiMjNhZGExZjY0IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9vbWFwMzZ4eC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL29tYXAzNnh4LmR0c2kKQEAgLTEzOSwzNCArMTM5LDYgQEAKIAkJCQlpbnRlcnJ1cHRzID0g
PDE4PjsKIAkJCX07CiAJCX07Ci0KLQkJLyoKLQkJICogTm90ZSB0aGF0IHRoZSBzeXNjb25maWcg
cmVnaXN0ZXIgbGF5b3V0IGlzIGEgc3Vic2V0IG9mIHRoZQotCQkgKiAidGksc3lzYy1vbWFwNCIg
dHlwZSByZWdpc3RlciB3aXRoIGp1c3Qgc2lkbGUgYW5kIG1pZGxlIGJpdHMKLQkJICogYXZhaWxh
YmxlIHdoaWxlIG9tYXAzNHh4IGhhcyAidGksc3lzYy1vbWFwMiIgdHlwZSBzeXNjb25maWcuCi0J
CSAqLwotCQlzZ3hfbW9kdWxlOiB0YXJnZXQtbW9kdWxlQDUwMDAwMDAwIHsKLQkJCWNvbXBhdGli
bGUgPSAidGksc3lzYy1vbWFwNCIsICJ0aSxzeXNjIjsKLQkJCXJlZyA9IDwweDUwMDBmZTAwIDB4
ND4sCi0JCQkgICAgICA8MHg1MDAwZmUxMCAweDQ+OwotCQkJcmVnLW5hbWVzID0gInJldiIsICJz
eXNjIjsKLQkJCXRpLHN5c2MtbWlkbGUgPSA8U1lTQ19JRExFX0ZPUkNFPiwKLQkJCQkJPFNZU0Nf
SURMRV9OTz4sCi0JCQkJCTxTWVNDX0lETEVfU01BUlQ+OwotCQkJdGksc3lzYy1zaWRsZSA9IDxT
WVNDX0lETEVfRk9SQ0U+LAotCQkJCQk8U1lTQ19JRExFX05PPiwKLQkJCQkJPFNZU0NfSURMRV9T
TUFSVD47Ci0JCQljbG9ja3MgPSA8JnNneF9mY2s+LCA8JnNneF9pY2s+OwotCQkJY2xvY2stbmFt
ZXMgPSAiZmNrIiwgImljayI7Ci0JCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKLQkJCSNzaXplLWNl
bGxzID0gPDE+OwotCQkJcmFuZ2VzID0gPDAgMHg1MDAwMDAwMCAweDIwMDAwMDA+OwotCi0JCQkv
KgotCQkJICogQ2xvc2VkIHNvdXJjZSBQb3dlclZSIGRyaXZlciwgbm8gY2hpbGQgZGV2aWNlCi0J
CQkgKiBiaW5kaW5nIG9yIGRyaXZlciBpbiBtYWlubGluZQotCQkJICovCi0JCX07CiAJfTsKIAog
CXRoZXJtYWxfem9uZXM6IHRoZXJtYWwtem9uZXMgewotLSAKMi4xNy4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
