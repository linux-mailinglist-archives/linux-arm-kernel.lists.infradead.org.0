Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1103A12C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 20:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqMj6Ebr2mOdUZE2tJ49nGZgrvogY+dKSSf7Hrpv5uA=; b=Iz3+slDUarDU2G
	Sy0MToT7dAG88wNeias823Y0i9l9nvaFWDcT3HcPZ+3cPYPBTdUF+VIP2huuSmDqSEXFeZvFehLAQ
	K78AxDTwajixtHv+bFgx6RXQ15OdKjPSDSBXs2DtvGTHjyZlkbtA/8l/Ss6NSMRYP6vJrIiJ8jPT+
	0TGBef09pkSj/4Oh6RWiWBY+P+Tn3WwmbDkWs5ZMAc/zRDIBtGF9+gwWwxD5g7UW2FpI4l8w9syAG
	75qhjsrXDBVfUF8jHVE+P+/2+hXUEGjWowBjAvF5dH0wDuA2Ld+FZZGaL/UjSqyZoAmfBVtWFkxNL
	EjPYmp7byq7geX3xHk0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfn7-0003jc-Fx; Sat, 08 Jun 2019 18:10:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfjp-0000rX-WE; Sat, 08 Jun 2019 18:06:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id x15so4939656wmj.3;
 Sat, 08 Jun 2019 11:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2ePKIZM3a5wh4lPG0Ppb3tJa/t/8p/W8m/D9X1owsTQ=;
 b=Y9O92NwlXSOI90yGc6Bd2VwrxCy+i9xulc3WGCWS5CXL4GS0LKERZF0PokmHXIIdfG
 i2h2CvJGMU6NZpGh1zhBEt9UUAAmiuHgf6Io9ckto9M13xLIJbZLoHXI2d6hCq4fh31v
 GygElivXyhYuClQ259oZce3CvWnpI75rkDcfYN+xfDnLBeejcKF6rd2nNBQUDHFfYZfN
 13zqIvODOVRkMLtgwYRbKb4rnjWjDjIRCIL7z2J/KHljxBRAzUqnQGtiIrJIJDr5jyMg
 HbqMBLz9SEZZqVUBA4WmxnS5CmhEM6GXBRsFot/ijZj+XG1wZKLpjTGpSARp9sf7ibhW
 9v/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2ePKIZM3a5wh4lPG0Ppb3tJa/t/8p/W8m/D9X1owsTQ=;
 b=FCBVhWVTziwofG54+8P+19Jdqds4S5tZE0RoIsDhotTVIlaBRqUzIvQ7qQTzzdDo6i
 incTqY/1In6l9DqYTtD2zIDdPZL8lL5ENIqAQY5wT3+wtVtOjaKPZ/6zaYa6c2RXCbtY
 o1kzJAHdvdh6QSutj9xo7YBd8QIj3zKM2iumpsnz6V2l/P8ck8U2tgpONPSHsjYUUxsE
 CB9rK8ynOg12H5Z5NRxTHSR9/U+Wmz6ymtdbvLUbrixwJ838BF6i4zlBjX5u17t4yn+w
 QUnqO8BVa2E3Pkpn2P2FY9yythb3vpdiysWe/iqM9OvOtxPtvwgWfAB6djseFwc9Orom
 7uKA==
X-Gm-Message-State: APjAAAVNRME12U/vwK3KbKQJKokbrySISuHfevsPcl9at0uJit+k8EoC
 pZ5PmP3hFnnhDb+QOquuERAlOgCQ
X-Google-Smtp-Source: APXvYqxbv/NeCKxrR0YfqhHFUUkHcwGnY64PiWza/hkJzJEYbBvx+QBL4fvOmg2j8osIXtSlnNKi1Q==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr7641358wmi.15.1560017204346;
 Sat, 08 Jun 2019 11:06:44 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id c7sm5143345wrp.57.2019.06.08.11.06.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 11:06:43 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v2 10/14] pwm: meson: simplify the calculation of the
 pre-divider and count
Date: Sat,  8 Jun 2019 20:06:22 +0200
Message-Id: <20190608180626.30589-11-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110646_130306_D838E4B8 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVwbGFjZSB0aGUgbG9vcCB0byBjYWxjdWxhdGUgdGhlIHByZS1kaXZpZGVyIGFuZCBjb3VudCB3
aXRoIHR3bwpzZXBhcmF0ZSBkaXY2NF91NjQoKSBjYWxjdWxhdGlvbnMuIFRoaXMgbWFrZXMgdGhl
IGNvZGUgZWFzaWVyIHRvIHJlYWQKYW5kIGltcHJvdmVzIHRoZSBwcmVjaXNpb24uCgpUaHJlZSBl
eGFtcGxlIGNhc2VzOgoxKSAzMi43NjhrSHogTFBPIGNsb2NrIGZvciB0aGUgU0RJTyB3aWZpIGNo
aXAgb24gS2hhZGFzIFZJTQogICBjbG9jayBpbnB1dDogNTAwTUh6IChGQ0xLX0RJVjQpCiAgIHBl
cmlvZDogMzA1MThucwogICBkdXR5IGN5Y2xlOiAxNTI1OW5zCm9sZCBhbGdvcml0aG06IHByZV9k
aXY9MCwgY250PTE1MjU5Cm5ldyBhbGdvcml0aG06IHByZV9kaXY9MCwgY250PTE1MjU5CihubyBk
aWZmZXJlbmNlIGluIGNhbGN1bGF0ZWQgdmFsdWVzKQoKMikgUFdNIExFRCBvbiBLaGFkYXMgVklN
CiAgIGNsb2NrIGlucHV0OiAyNE1IeiAoWFRBTCkKICAgcGVyaW9kOiA3ODEyNTAwbnMKICAgZHV0
eSBjeWNsZTogNzgxMjUwMG5zCm9sZCBhbGdvcml0aG06IHByZV9kaXY9MiwgY250PTYyMDA0Cm5l
dyBhbGdvcml0aG06IHByZV9kaXY9MiwgY250PTYyNTAwClVzaW5nIGEgc2NvcGUgKDI0TUh6IHNh
bXBsaW5nIHJhdGUpIHNob3dzIHRoZSBhY3R1YWwgZGlmZmVyZW5jZToKLSBvbGQ6IDc3NTMwMDBu
cywgb2ZmIGJ5IC01OTUwMG5zICgwLjc2MTYlKQotIG5ldzogNzgxNTAwMG5zLCBvZmYgYnkgKzI1
MDBucyAoMC4wMzIlKQoKMykgVGhlb3JldGljYWwgY2FzZSB3aGVyZSBwcmVfZGl2IGlzIGRpZmZl
cmVudAogICBjbG9jayBpbnB1dDogMjRNSHogKFhUQUwpCiAgIHBlcmlvZDogMjczMDYyNG5zCiAg
IGR1dHkgY3ljbGU6IDEzNjUzMTJucwpvbGQgYWxnb3JpdGhtOiBwcmVfZGl2PTEsIGNudD0zMjc2
OApuZXcgYWxnb3JpdGhtOiBwcmVfZGl2PTAsIGNudD02NTUzNApVc2luZyBhIHNjb3BlICgyNE1I
eiBzYW1wbGluZyByYXRlKSBzaG93cyB0aGUgYWN0dWFsIGRpZmZlcmVuY2U6Ci0gb2xkOiAyNzMx
MDAwbnMKLSBuZXc6IDI3MzEwMDBucwoobXkgc2NvcGUgaXMgbm90IHByZWNpc2UgZW5vdWdoIHRv
IG1lYXN1cmUgdGhlIGRpZmZlcmVuY2UgaWYgdGhlcmUncwphbnkpCgpTdWdnZXN0ZWQtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1v
ZmYtYnk6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFp
bC5jb20+CkFja2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1
dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGli
cmUuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1tZXNvbi5jIHwgMjUgKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jIGIvZHJpdmVycy9wd20v
cHdtLW1lc29uLmMKaW5kZXggMjc5MTVkNjQ3NWUzLi45YWZhMWU1YWFlYmYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1tZXNvbi5jCkBA
IC0xMiw2ICsxMiw3IEBACiAjaW5jbHVkZSA8bGludXgvZXJyLmg+CiAjaW5jbHVkZSA8bGludXgv
aW8uaD4KICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KKyNpbmNsdWRlIDxsaW51eC9tYXRoNjQu
aD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDxsaW51eC9vZi5oPgogI2lu
Y2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgpAQCAtMTQ1LDcgKzE0Niw2IEBAIHN0YXRpYyBpbnQg
bWVzb25fcHdtX2NhbGMoc3RydWN0IG1lc29uX3B3bSAqbWVzb24sIHN0cnVjdCBwd21fZGV2aWNl
ICpwd20sCiAJc3RydWN0IG1lc29uX3B3bV9jaGFubmVsICpjaGFubmVsID0gcHdtX2dldF9jaGlw
X2RhdGEocHdtKTsKIAl1bnNpZ25lZCBpbnQgZHV0eSwgcGVyaW9kLCBwcmVfZGl2LCBjbnQsIGR1
dHlfY250OwogCXVuc2lnbmVkIGxvbmcgZmluX2ZyZXEgPSAtMTsKLQl1NjQgZmluX3BzOwogCiAJ
ZHV0eSA9IHN0YXRlLT5kdXR5X2N5Y2xlOwogCXBlcmlvZCA9IHN0YXRlLT5wZXJpb2Q7CkBAIC0x
NjQsMjQgKzE2NCwxOSBAQCBzdGF0aWMgaW50IG1lc29uX3B3bV9jYWxjKHN0cnVjdCBtZXNvbl9w
d20gKm1lc29uLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCX0KIAogCWRldl9kYmcobWVzb24t
PmNoaXAuZGV2LCAiZmluX2ZyZXE6ICVsdSBIelxuIiwgZmluX2ZyZXEpOwotCWZpbl9wcyA9ICh1
NjQpTlNFQ19QRVJfU0VDICogMTAwMDsKLQlkb19kaXYoZmluX3BzLCBmaW5fZnJlcSk7Ci0KLQkv
KiBDYWxjIHByZV9kaXYgd2l0aCB0aGUgcGVyaW9kICovCi0JZm9yIChwcmVfZGl2ID0gMDsgcHJl
X2RpdiA8PSBNSVNDX0NMS19ESVZfTUFTSzsgcHJlX2RpdisrKSB7Ci0JCWNudCA9IERJVl9ST1VO
RF9DTE9TRVNUX1VMTCgodTY0KXBlcmlvZCAqIDEwMDAsCi0JCQkJCSAgICBmaW5fcHMgKiAocHJl
X2RpdiArIDEpKTsKLQkJZGV2X2RiZyhtZXNvbi0+Y2hpcC5kZXYsICJmaW5fcHM9JWxsdSBwcmVf
ZGl2PSV1IGNudD0ldVxuIiwKLQkJCWZpbl9wcywgcHJlX2RpdiwgY250KTsKLQkJaWYgKGNudCA8
PSAweGZmZmYpCi0JCQlicmVhazsKLQl9CiAKKwlwcmVfZGl2ID0gZGl2NjRfdTY0KGZpbl9mcmVx
ICogKHU2NClwZXJpb2QsIE5TRUNfUEVSX1NFQyAqIDB4ZmZmZkxMKTsKIAlpZiAocHJlX2RpdiA+
IE1JU0NfQ0xLX0RJVl9NQVNLKSB7CiAJCWRldl9lcnIobWVzb24tPmNoaXAuZGV2LCAidW5hYmxl
IHRvIGdldCBwZXJpb2QgcHJlX2RpdlxuIik7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KIAorCWNu
dCA9IGRpdjY0X3U2NChmaW5fZnJlcSAqICh1NjQpcGVyaW9kLCBOU0VDX1BFUl9TRUMgKiAocHJl
X2RpdiArIDEpKTsKKwlpZiAoY250ID4gMHhmZmZmKSB7CisJCWRldl9lcnIobWVzb24tPmNoaXAu
ZGV2LCAidW5hYmxlIHRvIGdldCBwZXJpb2QgY250XG4iKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJ
fQorCiAJZGV2X2RiZyhtZXNvbi0+Y2hpcC5kZXYsICJwZXJpb2Q9JXUgcHJlX2Rpdj0ldSBjbnQ9
JXVcbiIsIHBlcmlvZCwKIAkJcHJlX2RpdiwgY250KTsKIApAQCAtMTk1LDggKzE5MCw4IEBAIHN0
YXRpYyBpbnQgbWVzb25fcHdtX2NhbGMoc3RydWN0IG1lc29uX3B3bSAqbWVzb24sIHN0cnVjdCBw
d21fZGV2aWNlICpwd20sCiAJCWNoYW5uZWwtPmxvID0gY250OwogCX0gZWxzZSB7CiAJCS8qIFRo
ZW4gY2hlY2sgaXMgd2UgY2FuIGhhdmUgdGhlIGR1dHkgd2l0aCB0aGUgc2FtZSBwcmVfZGl2ICov
Ci0JCWR1dHlfY250ID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKCh1NjQpZHV0eSAqIDEwMDAsCi0J
CQkJCQkgZmluX3BzICogKHByZV9kaXYgKyAxKSk7CisJCWR1dHlfY250ID0gZGl2NjRfdTY0KGZp
bl9mcmVxICogKHU2NClkdXR5LAorCQkJCSAgICAgTlNFQ19QRVJfU0VDICogKHByZV9kaXYgKyAx
KSk7CiAJCWlmIChkdXR5X2NudCA+IDB4ZmZmZikgewogCQkJZGV2X2VycihtZXNvbi0+Y2hpcC5k
ZXYsICJ1bmFibGUgdG8gZ2V0IGR1dHkgY3ljbGVcbiIpOwogCQkJcmV0dXJuIC1FSU5WQUw7Ci0t
IAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
