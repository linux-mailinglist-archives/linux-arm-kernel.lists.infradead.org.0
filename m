Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791B11FDC30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cddPiPsoJ9SXnB1rQPGD1Y7kmmY8nCb4srYlWOpKW+s=; b=bBexbHB/qA0bRt
	6L8RNPVyPVUPC/WAjgfExI2pKECEM08xLFtAqVKHmEGvOwtla+SSBGxSmf/q/pXTz7fcb1vqYy8bL
	Ea7SCPSS/yhoBq7oQ4uc8p0nMrTNPBvIUH9uVWk+I0tc3ftywTUhP0Ek+A4crDPW+pO1NnBmlcwd3
	lwA5ONWswECHVYJYBmCmVdTloH4ygSB9YmsVEEDVDUyt1Na6JJO/JpC8DtiNnbfChddtLNYEYiyMz
	j7q8PtMOJGPqcaJFILKB85B3a0h20JFFtiV1Dtu4VdpKkvKlQty7NZgZe00d9CIBjMPbmTUpPZCVK
	tHjZ56l85n6/t7JN12sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljBQ-0007yw-EJ; Thu, 18 Jun 2020 01:17:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj4i-0000Tc-GI; Thu, 18 Jun 2020 01:10:42 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 588E921924;
 Thu, 18 Jun 2020 01:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442640;
 bh=PAdD7kghUO96P8C/+xHGK6WZnHxci/xvKvwN8bHF4cg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mLc5w3+yDpQAL+KGPxE7ggQNKTgObHywR4xeebhOMC8hhaZirFwG0wadLuvVxaDYc
 M1Gza333BkZQuEmwXcR6rlTtqKAichzRaQ11yIbiJoTjlKA1bj92iINELPuYX5+g4O
 zuNq9icmvcQSpNjciUoz6XlpA/oQZ6AYSbOMQOdk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 115/388] arm64: dts: realtek: rtd129x: Fix GIC CPU
 masks for RTD1293
Date: Wed, 17 Jun 2020 21:03:32 -0400
Message-Id: <20200618010805.600873-115-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181040_603204_4F63E617 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgoKWyBVcHN0cmVhbSBjb21t
aXQgMzE4ODhjOGJlMTQ4NmRhZjJjMzRiYTZjNTgxMjk2MzVlNDlkNTY0YSBdCgpDb252ZXJ0IGZy
b20gR0lDX0NQVV9NQVNLX1JBVygpIHRvIEdJQ19DUFVfTUFTS19TSU1QTEUoKS4KCkluIGNhc2Ug
b2YgUlREMTI5MyBhZGp1c3QgdGhlIGFyY2ggdGltZXIgYW5kIFZHSUMgaW50ZXJydXB0cycKQ1BV
IG1hc2tzIHRvIGl0cyBzbWFsbGVyIG51bWJlciBvZiBDUFVzLgoKRml4ZXM6IGNmOTc2ZjY2MGVl
OCAoImFybTY0OiBkdHM6IHJlYWx0ZWs6IEFkZCBSVEQxMjkzIGFuZCBTeW5vbG9neSBEUzQxOGoi
KQpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+ClNpZ25l
ZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My5kdHNpIHwgMTIgKysrKysrKystLS0tCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpIHwgIDggKysrKy0tLS0KIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk2LmR0c2kgfCAgOCArKysrLS0tLQogMyBmaWxlcyBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaQppbmRleCBiZDRlMjI3MjNmN2IuLjJkOTJiNTZhYzk0
ZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My5kdHNpCkBAIC0zNiwxNiAr
MzYsMjAgQEAgbDI6IGwyLWNhY2hlIHsKIAl0aW1lciB7CiAJCWNvbXBhdGlibGUgPSAiYXJtLGFy
bXY4LXRpbWVyIjsKIAkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDEzCi0JCQkoR0lDX0NQVV9NQVNL
X1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkoR0lDX0NQVV9NQVNLX1NJTVBM
RSgyKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAgICA8R0lDX1BQSSAxNAotCQkJKEdJ
Q19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJKEdJQ19DUFVf
TUFTS19TSU1QTEUoMikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKIAkJCSAgICAgPEdJQ19QUEkg
MTEKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKKwkJ
CShHSUNfQ1BVX01BU0tfU0lNUExFKDIpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCiAJCQkgICAg
IDxHSUNfUFBJIDEwCi0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxf
TE9XKT47CisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSgyKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+
OwogCX07CiB9OwogCiAmYXJtX3BtdSB7CiAJaW50ZXJydXB0LWFmZmluaXR5ID0gPCZjcHUwPiwg
PCZjcHUxPjsKIH07CisKKyZnaWMgeworCWludGVycnVwdHMgPSA8R0lDX1BQSSA5IChHSUNfQ1BV
X01BU0tfU0lNUExFKDIpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT47Cit9OwpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUuZHRzaSBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kKaW5kZXggOTNmMGUxZDk3NzIxLi4zNGY2Y2M2ZjE2
ZmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kK
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUuZHRzaQpAQCAtNjEsMTMg
KzYxLDEzIEBAIHRlZUAxMDEwMDAwMCB7CiAJdGltZXIgewogCQljb21wYXRpYmxlID0gImFybSxh
cm12OC10aW1lciI7CiAJCWludGVycnVwdHMgPSA8R0lDX1BQSSAxMwotCQkJKEdJQ19DUFVfTUFT
S19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAorCQkJKEdJQ19DUFVfTUFTS19TSU1Q
TEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKIAkJCSAgICAgPEdJQ19QUEkgMTQKLQkJCShH
SUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwKKwkJCShHSUNfQ1BV
X01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCiAJCQkgICAgIDxHSUNfUFBJ
IDExCi0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYpIHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJ
CQkoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAg
ICA8R0lDX1BQSSAxMAotCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVM
X0xPVyk+OworCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9MT1cp
PjsKIAl9OwogfTsKIApkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOTYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk2LmR0c2kKaW5k
ZXggMGY5ZTU5Y2FjMDg2Li5mYjg2NGExMzljOTcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcmVhbHRlay9ydGQxMjk2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFs
dGVrL3J0ZDEyOTYuZHRzaQpAQCAtNTAsMTMgKzUwLDEzIEBAIGwyOiBsMi1jYWNoZSB7CiAJdGlt
ZXIgewogCQljb21wYXRpYmxlID0gImFybSxhcm12OC10aW1lciI7CiAJCWludGVycnVwdHMgPSA8
R0lDX1BQSSAxMwotCQkJKEdJQ19DUFVfTUFTS19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xP
Vyk+LAorCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPiwK
IAkJCSAgICAgPEdJQ19QUEkgMTQKLQkJCShHSUNfQ1BVX01BU0tfUkFXKDB4ZikgfCBJUlFfVFlQ
RV9MRVZFTF9MT1cpPiwKKwkJCShHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgSVJRX1RZUEVfTEVW
RUxfTE9XKT4sCiAJCQkgICAgIDxHSUNfUFBJIDExCi0JCQkoR0lDX0NQVV9NQVNLX1JBVygweGYp
IHwgSVJRX1RZUEVfTEVWRUxfTE9XKT4sCisJCQkoR0lDX0NQVV9NQVNLX1NJTVBMRSg0KSB8IElS
UV9UWVBFX0xFVkVMX0xPVyk+LAogCQkJICAgICA8R0lDX1BQSSAxMAotCQkJKEdJQ19DUFVfTUFT
S19SQVcoMHhmKSB8IElSUV9UWVBFX0xFVkVMX0xPVyk+OworCQkJKEdJQ19DUFVfTUFTS19TSU1Q
TEUoNCkgfCBJUlFfVFlQRV9MRVZFTF9MT1cpPjsKIAl9OwogfTsKIAotLSAKMi4yNS4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
