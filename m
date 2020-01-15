Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCDD13B8DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:13:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=veGnt7uISljEDEFzDJaL3N49zqJ+yxLSK4gjgl8omCU=; b=Deh+kLsTnMMw1D
	FBTiDodlDM3xewblkI9gAuxZ980zCvbH6CB9vv+fmuReMHBt2L0/IcHHCCCSUR/ykdxb3cANgfemw
	xRxh0GlJbiaXvvHDPqHgeaoUDJ3MyBOlGrPxYfj0/hGIvP2sUIDRDONJo5OsL81S32gc7FPdan8gt
	3mfSvKJlcDY+irky9mrdKCI+1bNZNMq1NrphRe56GLjgrfVEOMxvOWZKBEJDCfBpZKZ04cW1ebFJI
	dezew8LhtsD6hecWP3lnHtMMn4CWoLFh6PLcagYmbhrAM7FNzM2EmrPaWIRByvrzlFqnNV9dXUjex
	MwCBEDTRNIyqAoOOZB8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irazN-0002UQ-2o; Wed, 15 Jan 2020 05:13:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irazC-0002T2-D6
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:12:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id d73so16382907wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n9NxWPcK/0Wvk5uOpnOHlNKUqHS48KY4vv65Up++8+w=;
 b=jsPbn0xE25CsviiaMCSLAgAvAN8wnluckOKmIIj5WK7PxnLBmR5FnoWrBi0jA8zQdI
 tP/++VyFja/lsKuYdRoK6So5Xf9jDd+Q7tbm/kK1IqM2nvRQCjIcbKB/5Kv6IXGNuG17
 jq+n/XlWsyB8Q5R1gmIpLAhHMwd3bRN8Mu5k817AoFKjwNjBKsAY/BWiYPyZ7fz0PxQA
 SR4+mshu8q8B9CJcOhHWo8oo2o1Wevdb3y27cgGgWXeE6ivXnPTVyozgv3XFcm1kRlPv
 SvxPZlJFzczo5oD9wlQiqm7iOJiFiRVpoK4VGrWBE2aOvrBvT3x90fLXfy4wuU1u+CnM
 r+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n9NxWPcK/0Wvk5uOpnOHlNKUqHS48KY4vv65Up++8+w=;
 b=XYqxCBXBMQRMZfqzrPaM3Ed1w8F1GXRUBZU0fLsqfedu0lgvkCXAe0ATmXQpGxLwLW
 hMdfPRDvns0PjllazBM8hinr0vT4D+85wmw3ZDW6qx/VxLU5BS6paYuhnYa5U64LTvdv
 GDmOzQOcGkL65ATFSKE3eDa6b8x7aIuWX2VBPuQUI0ncMWW6GqvYrWjYN7sJXfmnWD39
 E4fgmPB+0x2TAaj6jXm1nW7GLMv48UTpG/WwwrnJ4sEJUdDVoXi92bRXlJWb7WVd9z/Q
 etV2GpWUMwfUOWHq3BKuvrlPTVWEFkk288tpElKBH4rPRH5gOuhsC9E+vaF32a+1g7Cj
 ZcNQ==
X-Gm-Message-State: APjAAAUfgNvrVCc5E6zYBxAqU9zOHjzzs7VHciyMgEehqcP+p21yZG18
 yfPx1XbcbIaLfZ8eAbx5lza0GGkJBlQ=
X-Google-Smtp-Source: APXvYqxJwlTO95a0xARemiZJfDEj7XUZHZ68oYbHN+nMliDW8E8V2Xh+D42Qv4MEEPlT3mowYT7Ipg==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr30092745wmi.178.1579065175436; 
 Tue, 14 Jan 2020 21:12:55 -0800 (PST)
Received: from chi.lan (cst-prg-10-109.cust.vodafone.cz. [46.135.10.109])
 by smtp.gmail.com with ESMTPSA id z21sm20942156wml.5.2020.01.14.21.12.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 21:12:54 -0800 (PST)
From: marek.vasut@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] ARM: dts: renesas: Add missing ethernet PHY reset GPIO on
 Gen2 reference boards
Date: Wed, 15 Jan 2020 06:12:25 +0100
Message-Id: <20200115051225.7346-1-marek.vasut@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_211258_472118_661DE6C4 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyZWsgVmFzdXQgPG1hcmVrLnZhc3V0K3JlbmVzYXNAZ21haWwuY29tPgoKVGhlIGV0
aGVybmV0IFBIWSByZXNldCBHUElPIHdhcyBtaXNzaW5nIGFuZCB0aGUga2VybmVsIHdhcyBkZXBl
bmRpbmcKc29sZWx5IG9uIHRoZSBib290bG9hZGVyIHRvIGJyaW5nIHRoZSBQSFkgb3V0IG9mIHJl
c2V0LiBGaXggdGhpcyB0bwpnZXQgcmlkIG9mIHRoZSBkZXBlbmRlbmN5IG9uIGJvb3Rsb2FkZXIu
CgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZWsudmFzdXQrcmVuZXNhc0BnbWFpbC5j
b20+CkNjOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgpDYzog
V29sZnJhbSBTYW5nIDx3c2ErcmVuZXNhc0BzYW5nLWVuZ2luZWVyaW5nLmNvbT4KQ2M6IGxpbnV4
LXJlbmVzYXMtc29jQHZnZXIua2VybmVsLm9yZwpUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnClJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVz
YXNAZ2xpZGVyLmJlPgpUZXN0ZWQtYnk6IE5pa2xhcyBTw7ZkZXJsdW5kIDxuaWtsYXMuc29kZXJs
dW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPgotLS0KVjI6IC0gTW92ZSB0aGUgcmVzZXQtZ3Bpb3Mg
YXQgdGhlIGVuZCBvZiB0aGUgbGlzdCBvZiBub2RlcwogICAgLSBBZGQgVEIvUkIKLS0tCiBhcmNo
L2FybS9ib290L2R0cy9yOGE3NzkwLWxhZ2VyLmR0cyAgIHwgMSArCiBhcmNoL2FybS9ib290L2R0
cy9yOGE3NzkwLXN0b3V0LmR0cyAgIHwgMSArCiBhcmNoL2FybS9ib290L2R0cy9yOGE3NzkxLWtv
ZWxzY2guZHRzIHwgMSArCiBhcmNoL2FybS9ib290L2R0cy9yOGE3NzkxLXBvcnRlci5kdHMgIHwg
MSArCiBhcmNoL2FybS9ib290L2R0cy9yOGE3NzkzLWdvc2UuZHRzICAgIHwgMSArCiBhcmNoL2Fy
bS9ib290L2R0cy9yOGE3Nzk0LWFsdC5kdHMgICAgIHwgMSArCiBhcmNoL2FybS9ib290L2R0cy9y
OGE3Nzk0LXNpbGsuZHRzICAgIHwgMSArCiA3IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTAtbGFnZXIuZHRzIGIvYXJj
aC9hcm0vYm9vdC9kdHMvcjhhNzc5MC1sYWdlci5kdHMKaW5kZXggMDk3ZmQ5MzE3YzZlLi42OTc0
NWRlZjQ0ZDQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTAtbGFnZXIuZHRz
CisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTAtbGFnZXIuZHRzCkBAIC02NzQsNiArNjc0
LDcgQEAgcGh5MTogZXRoZXJuZXQtcGh5QDEgewogCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZpcnFj
MD47CiAJCWludGVycnVwdHMgPSA8MCBJUlFfVFlQRV9MRVZFTF9MT1c+OwogCQltaWNyZWwsbGVk
LW1vZGUgPSA8MT47CisJCXJlc2V0LWdwaW9zID0gPCZncGlvNSAzMSBHUElPX0FDVElWRV9MT1c+
OwogCX07CiB9OwogCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yOGE3NzkwLXN0b3V0
LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTAtc3RvdXQuZHRzCmluZGV4IGEzMTViYTc0
OWFhNC4uNDEzOGVmYjI3NjZkIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yOGE3Nzkw
LXN0b3V0LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9yOGE3NzkwLXN0b3V0LmR0cwpAQCAt
MjAzLDYgKzIwMyw3IEBAIHBoeTE6IGV0aGVybmV0LXBoeUAxIHsKIAkJaW50ZXJydXB0LXBhcmVu
dCA9IDwmaXJxYzA+OwogCQlpbnRlcnJ1cHRzID0gPDEgSVJRX1RZUEVfTEVWRUxfTE9XPjsKIAkJ
bWljcmVsLGxlZC1tb2RlID0gPDE+OworCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzMgMzEgR1BJT19B
Q1RJVkVfTE9XPjsKIAl9OwogfTsKIApkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcjhh
Nzc5MS1rb2Vsc2NoLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTEta29lbHNjaC5kdHMK
aW5kZXggMmIwOTZkNWUwNmZiLi42ODcxNjdiNzBjYjYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3I4YTc3OTEta29lbHNjaC5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcjhhNzc5
MS1rb2Vsc2NoLmR0cwpAQCAtNjMzLDYgKzYzMyw3IEBAIHBoeTE6IGV0aGVybmV0LXBoeUAxIHsK
IAkJaW50ZXJydXB0LXBhcmVudCA9IDwmaXJxYzA+OwogCQlpbnRlcnJ1cHRzID0gPDAgSVJRX1RZ
UEVfTEVWRUxfTE9XPjsKIAkJbWljcmVsLGxlZC1tb2RlID0gPDE+OworCQlyZXNldC1ncGlvcyA9
IDwmZ3BpbzUgMjIgR1BJT19BQ1RJVkVfTE9XPjsKIAl9OwogfTsKIApkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvcjhhNzc5MS1wb3J0ZXIuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcjhh
Nzc5MS1wb3J0ZXIuZHRzCmluZGV4IGY5ZWNlN2FiMjAxMC4uYThlMDMzNTE0OGE1IDEwMDY0NAot
LS0gYS9hcmNoL2FybS9ib290L2R0cy9yOGE3NzkxLXBvcnRlci5kdHMKKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcjhhNzc5MS1wb3J0ZXIuZHRzCkBAIC0zMDcsNiArMzA3LDcgQEAgcGh5MTogZXRo
ZXJuZXQtcGh5QDEgewogCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZpcnFjMD47CiAJCWludGVycnVw
dHMgPSA8MCBJUlFfVFlQRV9MRVZFTF9MT1c+OwogCQltaWNyZWwsbGVkLW1vZGUgPSA8MT47CisJ
CXJlc2V0LWdwaW9zID0gPCZncGlvNSAyMiBHUElPX0FDVElWRV9MT1c+OwogCX07CiB9OwogCmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yOGE3NzkzLWdvc2UuZHRzIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcjhhNzc5My1nb3NlLmR0cwppbmRleCAyMmNhN2NkMWU3ZDIuLmNmZTA2YTc0Y2U4
OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcjhhNzc5My1nb3NlLmR0cworKysgYi9h
cmNoL2FybS9ib290L2R0cy9yOGE3NzkzLWdvc2UuZHRzCkBAIC01OTEsNiArNTkxLDcgQEAgcGh5
MTogZXRoZXJuZXQtcGh5QDEgewogCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZpcnFjMD47CiAJCWlu
dGVycnVwdHMgPSA8MCBJUlFfVFlQRV9MRVZFTF9MT1c+OwogCQltaWNyZWwsbGVkLW1vZGUgPSA8
MT47CisJCXJlc2V0LWdwaW9zID0gPCZncGlvNSAyMiBHUElPX0FDVElWRV9MT1c+OwogCX07CiB9
OwogCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yOGE3Nzk0LWFsdC5kdHMgYi9hcmNo
L2FybS9ib290L2R0cy9yOGE3Nzk0LWFsdC5kdHMKaW5kZXggZjc5ZmNlNzRjZDljLi45MzU5MzVj
MWRiYWMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTQtYWx0LmR0cworKysg
Yi9hcmNoL2FybS9ib290L2R0cy9yOGE3Nzk0LWFsdC5kdHMKQEAgLTM0Myw2ICszNDMsNyBAQCBw
aHkxOiBldGhlcm5ldC1waHlAMSB7CiAJCWludGVycnVwdC1wYXJlbnQgPSA8JmlycWMwPjsKIAkJ
aW50ZXJydXB0cyA9IDw4IElSUV9UWVBFX0xFVkVMX0xPVz47CiAJCW1pY3JlbCxsZWQtbW9kZSA9
IDwxPjsKKwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIDI0IEdQSU9fQUNUSVZFX0xPVz47CiAJfTsK
IH07CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTQtc2lsay5kdHMgYi9h
cmNoL2FybS9ib290L2R0cy9yOGE3Nzk0LXNpbGsuZHRzCmluZGV4IDJjMTZhZDg1NDMwMC4uOWFh
YTk2ZWE5OTQzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yOGE3Nzk0LXNpbGsuZHRz
CisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTQtc2lsay5kdHMKQEAgLTM5NCw2ICszOTQs
NyBAQCBwaHkxOiBldGhlcm5ldC1waHlAMSB7CiAJCWludGVycnVwdC1wYXJlbnQgPSA8JmlycWMw
PjsKIAkJaW50ZXJydXB0cyA9IDw4IElSUV9UWVBFX0xFVkVMX0xPVz47CiAJCW1pY3JlbCxsZWQt
bW9kZSA9IDwxPjsKKwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIDI0IEdQSU9fQUNUSVZFX0xPVz47
CiAJfTsKIH07CiAKLS0gCjIuMjQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
