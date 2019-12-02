Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C7D10F2AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2glyl1jhQKhb20uxupHqWkyQMXGzEmd698MtzkC4r8=; b=ZhIbtiB50A4DgD
	VyfsccZY3M8yD51g40ODMXJv7pI0GUXUc/5zo5z6b2YjdGWAlEGzwnugvg+KE7t6yuYg47G3Re4/V
	VGDhR4tjuCM372GV7kaL0twSZgDghl6jY3fEI46L/4vbM5JXUvn7V7juY2FVAYgq8WzND5S8l1Ivy
	PiBXvS8oywc2i2RUxQ72Pud1rZa3tyX082OUxgYBwenQe3naW3TMLwS7NR5MLPdk2sDfzacnq4qwZ
	OgI88zsErxeOSZKbnI9H9TwGBoJS8Yw0ARFFgdSskNl0zQpyllETkOCXGQ4cZSPrg4bEhjF++5DhL
	Gd1yY4Hsszz28nPxIHQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibtqK-0000PY-8h; Mon, 02 Dec 2019 22:06:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibtpD-0007tW-0I; Mon, 02 Dec 2019 22:05:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B9492B2ED;
 Mon,  2 Dec 2019 22:05:45 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 2/5] hwspinlock: Add Realtek RTD1195 SB2
Date: Mon,  2 Dec 2019 23:05:32 +0100
Message-Id: <20191202220535.6208-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191202220535.6208-1-afaerber@suse.de>
References: <20191202220535.6208-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_140547_335637_3393958F 
X-CRM114-Status: GOOD (  13.91  )
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Cheng-Yu Lee <cylee12@realtek.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW1wbGVtZW50IGEgZHJpdmVyIGZvciBoYXJkd2FyZSBzZW1hcGhvcmVzIGZvdW5kIGluIFJURDEx
OTUgU29DLgpJdCBhbGxvd3MgZm9yIGJvdGggcGVyLXJlZ2lzdGVyIGluc3RhbmNlcyAoU0IyX0hE
X1NFTSkgYXMgd2VsbCBhcwpjb250aWd1b3VzIHJlZ2lzdGVyIHJhbmdlcyAoU0IyX0hEX1NFTV9O
RVdbMC03XSkuCgpXaGlsZSB0aGVzZSByZWdpc3RlcnMgYXJlIHBhcnQgb2YgdGhlIFNCMiBzeXNj
b24sIHRoaXMgaW1wbGVtZW50YXRpb24KZG9lcyBub3QgdXNlIHN5c2NvbiwgdG8gYWxsb3cgYXNz
aWduaW5nIG9uZSBhcyBTQjIgc3lzY29uJ3MgaHdsb2NrLgoKQ2M6IENoZW5nLVl1IExlZSA8Y3ls
ZWUxMkByZWFsdGVrLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPgotLS0KIGRyaXZlcnMvaHdzcGlubG9jay9LY29uZmlnICAgICAgICAgICB8ICAx
MSArKysrCiBkcml2ZXJzL2h3c3BpbmxvY2svTWFrZWZpbGUgICAgICAgICAgfCAgIDEgKwogZHJp
dmVycy9od3NwaW5sb2NrL3J0ZDExOTVfc2IyX3NlbS5jIHwgMTAxICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDExMyBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9od3NwaW5sb2NrL3J0ZDExOTVfc2IyX3NlbS5jCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9od3NwaW5sb2NrL0tjb25maWcgYi9kcml2ZXJzL2h3c3Bpbmxv
Y2svS2NvbmZpZwppbmRleCAzNzc0MGU5OTJjZmEuLjljMjZjNDM2ZDM5OSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9od3NwaW5sb2NrL0tjb25maWcKKysrIGIvZHJpdmVycy9od3NwaW5sb2NrL0tjb25m
aWcKQEAgLTI4LDYgKzI4LDE3IEBAIGNvbmZpZyBIV1NQSU5MT0NLX1FDT00KIAogCSAgSWYgdW5z
dXJlLCBzYXkgTi4KIAorY29uZmlnIEhXU1BJTkxPQ0tfUlREMTE5NV9TQjIKKwl0cmlzdGF0ZSAi
UmVhbHRlayBSVEQxMTk1IFNCMiBIYXJkd2FyZSBTcGlubG9jayBkZXZpY2UiCisJZGVwZW5kcyBv
biBIV1NQSU5MT0NLCisJZGVwZW5kcyBvbiBBUkNIX1JFQUxURUsgfHwgQ09NUElMRV9URVNUCisJ
ZGVmYXVsdCBBUkNIX1JFQUxURUsKKwloZWxwCisJICBTYXkgeSBoZXJlIHRvIHN1cHBvcnQgdGhl
IFJlYWx0ZWsgSGFyZHdhcmUgU2VtYXBob3JlIGZ1bmN0aW9uYWxpdHksCisJICBmb3VuZCBvbiB0
aGUgUlREMTE5NSBhbmQgbGF0ZXIgU29DIGZhbWlsaWVzLgorCisJICBJZiB1bnN1cmUsIHNheSBO
LgorCiBjb25maWcgSFdTUElOTE9DS19TSVJGCiAJdHJpc3RhdGUgIlNJUkYgSGFyZHdhcmUgU3Bp
bmxvY2sgZGV2aWNlIgogCWRlcGVuZHMgb24gSFdTUElOTE9DSwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9od3NwaW5sb2NrL01ha2VmaWxlIGIvZHJpdmVycy9od3NwaW5sb2NrL01ha2VmaWxlCmluZGV4
IGVkMDUzZTNmMDJiZS4uZDViZDU5NDEyNDY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2h3c3Bpbmxv
Y2svTWFrZWZpbGUKKysrIGIvZHJpdmVycy9od3NwaW5sb2NrL01ha2VmaWxlCkBAIC02LDYgKzYs
NyBAQAogb2JqLSQoQ09ORklHX0hXU1BJTkxPQ0spCQkrPSBod3NwaW5sb2NrX2NvcmUubwogb2Jq
LSQoQ09ORklHX0hXU1BJTkxPQ0tfT01BUCkJCSs9IG9tYXBfaHdzcGlubG9jay5vCiBvYmotJChD
T05GSUdfSFdTUElOTE9DS19RQ09NKQkJKz0gcWNvbV9od3NwaW5sb2NrLm8KK29iai0kKENPTkZJ
R19IV1NQSU5MT0NLX1JURDExOTVfU0IyKQkrPSBydGQxMTk1X3NiMl9zZW0ubwogb2JqLSQoQ09O
RklHX0hXU1BJTkxPQ0tfU0lSRikJCSs9IHNpcmZfaHdzcGlubG9jay5vCiBvYmotJChDT05GSUdf
SFdTUElOTE9DS19TUFJEKQkJKz0gc3ByZF9od3NwaW5sb2NrLm8KIG9iai0kKENPTkZJR19IV1NQ
SU5MT0NLX1NUTTMyKQkJKz0gc3RtMzJfaHdzcGlubG9jay5vCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2h3c3BpbmxvY2svcnRkMTE5NV9zYjJfc2VtLmMgYi9kcml2ZXJzL2h3c3BpbmxvY2svcnRkMTE5
NV9zYjJfc2VtLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5hZTky
NWQwNTc4NzQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2h3c3BpbmxvY2svcnRkMTE5NV9z
YjJfc2VtLmMKQEAgLTAsMCArMSwxMDEgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9yLWxhdGVyCisvKgorICogUlREMTE5NSBTQjIgaGFyZHdhcmUgc2VtYXBob3JlCisg
KgorICogQ29weXJpZ2h0IChjKSAyMDE5IEFuZHJlYXMgRsOkcmJlcgorICovCisKKyNpbmNsdWRl
IDxsaW51eC9iaXRvcHMuaD4KKyNpbmNsdWRlIDxsaW51eC9od3NwaW5sb2NrLmg+CisjaW5jbHVk
ZSA8bGludXgvaWRyLmg+CisjaW5jbHVkZSA8bGludXgvaW8uaD4KKyNpbmNsdWRlIDxsaW51eC9t
b2R1bGUuaD4KKyNpbmNsdWRlIDxsaW51eC9vZi5oPgorI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJl
c3MuaD4KKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KKworI2luY2x1ZGUgImh3
c3BpbmxvY2tfaW50ZXJuYWwuaCIKKworc3RydWN0IHJ0ZDExOTVfc2IyX3NlbSB7CisJc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldjsKKwl2b2lkIF9faW9tZW0gKmJhc2U7CisJaW50IGJhc2Vf
aWQ7CisJc3RydWN0IGh3c3BpbmxvY2tfZGV2aWNlIGxvY2tkZXY7Cit9OworCitzdGF0aWMgREVG
SU5FX0lEUihydGQxMTk1X3NiMl9zZW1faWRyKTsKKworc3RhdGljIGludCBydGQxMTk1X3NiMl9z
ZW1fdHJ5bG9jayhzdHJ1Y3QgaHdzcGlubG9jayAqbG9jaykKK3sKKwl2b2lkIF9faW9tZW0gKnJl
ZyA9ICh2b2lkIF9faW9tZW0gKilsb2NrLT5wcml2OworCisJcmV0dXJuIHJlYWRsX3JlbGF4ZWQo
cmVnKSAmIEJJVCgwKTsKK30KKworc3RhdGljIHZvaWQgcnRkMTE5NV9zYjJfc2VtX3VubG9jayhz
dHJ1Y3QgaHdzcGlubG9jayAqbG9jaykKK3sKKwl2b2lkIF9faW9tZW0gKnJlZyA9ICh2b2lkIF9f
aW9tZW0gKilsb2NrLT5wcml2OworCisJd3JpdGVsX3JlbGF4ZWQoMCwgcmVnKTsKK30KKworc3Rh
dGljIGNvbnN0IHN0cnVjdCBod3NwaW5sb2NrX29wcyBydGQxMTk1X3NiMl9zZW1faHdzcGlubG9j
a19vcHMgPSB7CisJLnRyeWxvY2sJPSBydGQxMTk1X3NiMl9zZW1fdHJ5bG9jaywKKwkudW5sb2Nr
CQk9IHJ0ZDExOTVfc2IyX3NlbV91bmxvY2ssCit9OworCitzdGF0aWMgaW50IHJ0ZDExOTVfc2Iy
X3NlbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQoreworCXN0cnVjdCBydGQx
MTk1X3NiMl9zZW0gKnNlbTsKKwlzdHJ1Y3QgaHdzcGlubG9jayAqbG9jazsKKwlzdHJ1Y3QgcmVz
b3VyY2UgKnJlczsKKwlpbnQgaSwgbnVtOworCisJcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNl
KHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKKwlpZiAoIXJlcykKKwkJcmV0dXJuIC1FTk9NRU07
CisKKwludW0gPSByZXNvdXJjZV9zaXplKHJlcykgLyA0OworCisJc2VtID0gZGV2bV9remFsbG9j
KCZwZGV2LT5kZXYsIHNpemVvZigqc2VtKSArIG51bSAqIHNpemVvZigqbG9jayksCisJCQkgICBH
RlBfS0VSTkVMKTsKKwlpZiAoIXNlbSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlzZW0tPnBkZXYg
PSBwZGV2OworCisJc2VtLT5iYXNlID0gb2ZfaW9tYXAocGRldi0+ZGV2Lm9mX25vZGUsIDApOwor
CWlmICghc2VtLT5iYXNlKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWZvciAoaSA9IDA7IGkgPCBu
dW07IGkrKykgeworCQlsb2NrID0gJnNlbS0+bG9ja2Rldi5sb2NrW2ldOworCQlsb2NrLT5wcml2
ID0gc2VtLT5iYXNlICsgaSAqIDQ7CisJfQorCisJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwg
c2VtKTsKKworCXNlbS0+YmFzZV9pZCA9IGlkcl9hbGxvYygmcnRkMTE5NV9zYjJfc2VtX2lkciwg
c2VtLCAwLCAwLCBHRlBfS0VSTkVMKTsKKworCXJldHVybiBkZXZtX2h3c3Bpbl9sb2NrX3JlZ2lz
dGVyKCZwZGV2LT5kZXYsICZzZW0tPmxvY2tkZXYsCisJCSZydGQxMTk1X3NiMl9zZW1faHdzcGlu
bG9ja19vcHMsIHNlbS0+YmFzZV9pZCwgbnVtKTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgcnRkMTE5NV9zYjJfc2VtX2R0X2lkc1tdID0geworCXsgLmNvbXBhdGlibGUg
PSAicmVhbHRlayxydGQxMTk1LXNiMi1zZW0iIH0sCisJeyB9Cit9OworTU9EVUxFX0RFVklDRV9U
QUJMRShvZiwgcnRkMTE5NV9zYjJfc2VtX2R0X2lkcyk7CisKK3N0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIHJ0ZDExOTVfc2IyX3NlbV9wbGF0Zm9ybV9kcml2ZXIgPSB7CisJLmRyaXZlciA9
IHsKKwkJLm5hbWUgPSAicnRkMTE5NS1zYjItc2VtIiwKKwkJLm9mX21hdGNoX3RhYmxlID0gcnRk
MTE5NV9zYjJfc2VtX2R0X2lkcywKKwl9LAorCS5wcm9iZSA9IHJ0ZDExOTVfc2IyX3NlbV9wcm9i
ZSwKK307Cittb2R1bGVfcGxhdGZvcm1fZHJpdmVyKHJ0ZDExOTVfc2IyX3NlbV9wbGF0Zm9ybV9k
cml2ZXIpOworCitNT0RVTEVfTElDRU5TRSgiR1BMIik7CitNT0RVTEVfREVTQ1JJUFRJT04oIkhh
cmR3YXJlIHNwaW5sb2NrIGRyaXZlciBmb3IgUmVhbHRlayBSVEQxMTk1IFNCMiIpOworTU9EVUxF
X0FVVEhPUigiQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPiIpOwotLSAKMi4xNi40
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
