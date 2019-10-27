Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B8AE6548
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 21:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=weux9NRKZaWKKkSrDQEJIypnII1Q8gyP7BGElQpb8SU=; b=reu+6hVAHhSmKq
	Q3yVDc0KXLNapSH8LwCjLEiB8hR1PL7LYt6BL5peUEI4HBF0EiYYoJt5278ky6NiQdtVYVxRoFjoi
	iyc5W972js5ABHemokAsyX797bFUGYv/PgKnjQNwsDRuYGkt/xHBOgBGLmopkNfe7iWImpYjL/aF3
	grGZ86bAEcPJ9GEANZvw7ScNjyCKHjeSA6A3hY5WKV64AWdGkI/HPhqFEp2yrAai3vnhjkeNkvosD
	zWEoNwArkNxs1smBiXhK7dbHNgiwINBkeXeqwA+owYhzPpFcaAXGfaQV3L9OFFP8MEfs9eoJPz40x
	QfLyQBbx4TDqmwspxDiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOoqF-0002EJ-Tp; Sun, 27 Oct 2019 20:08:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOopm-00026F-0E
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 20:08:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id l10so7730094wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 13:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JHjDVXlYQwiAoE4cglFinqNu/fI+itGzM4QPPTRFWo4=;
 b=cuMhl+y55PcWVBj2ZHyOxom1igexqesx9kTqIJhKtJmv3uuwRL+HpvzQaGaAi8NdzT
 gUlxVTVav/TtS6qSkYbA1Pwyx2sVGSTvKn9/1t5Rv7Z8jiwVld9zRt66ZFC51NOfiH18
 L+koAKB3f51wK4UTk3kp7qQx7vf2bL/jUQZhZAg9E+McoCydYu7Fo5fHxjRS5/ONOaZy
 6TUmAm5ffe/zM/mEmOpgmR6/h1aYadqzpTzPCVtfLG9kHzWocfxtnYRVDVTD1tA9jm3p
 drTBCo3NpRkrI/0Gne/+XEQXahJbKCPZ6OHsKD0cZkudAwft6NPiO84X645fxZuQFzBl
 tPhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JHjDVXlYQwiAoE4cglFinqNu/fI+itGzM4QPPTRFWo4=;
 b=WyeaOjokfF8xMco8FmX7aSOur3hpIfKH5kqECrtkWIrbEr17OXXj2d5s+azY9E8Dyk
 k1odTRRbUmHDzQwv/h0Gxubm3fO0eZcU4/6Xk3IUMIOmJvyu8k++6fiLiacEE8XKvfTe
 9joE5mLjJQJ4EhYLonBGWUawzvcwBw7QVekKjakhYM2NeZwJKWpK3JpZHfxsydYFC4wG
 VpcCEwo9uwQPyjPI7GoElmrd8S/wZu6dyhfMDQcd5jjNsmc7UVVa0lNdDTCotZuBRXZK
 ZmPOpHQdW9ZgkxPs1UcMv1V8zd2MyKNPHNn1UbX7Mr8HyC3rA0X1sqmKqI6xfhISm8p8
 iR/g==
X-Gm-Message-State: APjAAAX8fOv0jpc/cMJfklu0Gexs5SIY+/X7ROf4xvp7OFT5wNkn4PD7
 YF5NDctE6YCZtqjFdJ5Bmrhgggm4SqM=
X-Google-Smtp-Source: APXvYqwgPBWIxa4P7QHII4JbTrHsXiMvgd3gfQ3jNcNJrOx2CLIPOBo3FeNpmRirLkIIvwu0LVnAaA==
X-Received: by 2002:adf:a4cf:: with SMTP id h15mr11978115wrb.222.1572206893835; 
 Sun, 27 Oct 2019 13:08:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o11sm8539538wmh.28.2019.10.27.13.08.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 13:08:12 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sean Young <sean@mess.org>, Christian Hewitt <christianshewitt@gmail.com>
Subject: [PATCH 1/2] media: rc: add keymap for Beelink GS1 remote control
Date: Sun, 27 Oct 2019 21:07:37 +0100
Message-Id: <20191027200738.24802-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_130818_040046_C93F4F59 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEgQW5kb2lkIFRWIEJveCBzaGlwcyB3aXRoIGEgc2ltcGxlIE5FQyByZW1vdGUu
CgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgot
LS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JjLnlhbWwgICAgICAgICB8ICAxICsK
IGRyaXZlcnMvbWVkaWEvcmMva2V5bWFwcy9NYWtlZmlsZSAgICAgICAgICAgICB8ICAxICsKIGRy
aXZlcnMvbWVkaWEvcmMva2V5bWFwcy9yYy1iZWVsaW5rLWdzMS5jICAgICB8IDg0ICsrKysrKysr
KysrKysrKysrKysKIGluY2x1ZGUvbWVkaWEvcmMtbWFwLmggICAgICAgICAgICAgICAgICAgICAg
ICB8ICAxICsKIDQgZmlsZXMgY2hhbmdlZCwgODcgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvbWVkaWEvcmMva2V5bWFwcy9yYy1iZWVsaW5rLWdzMS5jCgpkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JjLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcmMueWFtbAppbmRleCAzZDVj
MTU0ZmQyMzAuLmNlYjI4M2Y3ODg4YSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21lZGlhL3JjLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lZGlhL3JjLnlhbWwKQEAgLTM5LDYgKzM5LDcgQEAgcHJvcGVydGllczoKICAg
ICAgICAgICAtIHJjLWF2ZXJtZWRpYS1ybS1rcwogICAgICAgICAgIC0gcmMtYXZlcnR2LTMwMwog
ICAgICAgICAgIC0gcmMtYXp1cmV3YXZlLWFkLXR1NzAwCisgICAgICAgICAgLSByYy1iZWVsaW5r
LWdzMQogICAgICAgICAgIC0gcmMtYmVob2xkCiAgICAgICAgICAgLSByYy1iZWhvbGQtY29sdW1i
dXMKICAgICAgICAgICAtIHJjLWJ1ZGdldC1jaS1vbGQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcmMva2V5bWFwcy9NYWtlZmlsZSBiL2RyaXZlcnMvbWVkaWEvcmMva2V5bWFwcy9NYWtlZmls
ZQppbmRleCA0YWI0YWYwNjJhYmYuLjYzMjYxZWY2MzgwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9t
ZWRpYS9yYy9rZXltYXBzL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvbWVkaWEvcmMva2V5bWFwcy9N
YWtlZmlsZQpAQCAtMTcsNiArMTcsNyBAQCBvYmotJChDT05GSUdfUkNfTUFQKSArPSByYy1hZHN0
ZWNoLWR2Yi10LXBjaS5vIFwKIAkJCXJjLWF2ZXJtZWRpYS1ybS1rcy5vIFwKIAkJCXJjLWF2ZXJ0
di0zMDMubyBcCiAJCQlyYy1henVyZXdhdmUtYWQtdHU3MDAubyBcCisJCQlyYy1iZWVsaW5rLWdz
MS5vIFwKIAkJCXJjLWJlaG9sZC5vIFwKIAkJCXJjLWJlaG9sZC1jb2x1bWJ1cy5vIFwKIAkJCXJj
LWJ1ZGdldC1jaS1vbGQubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3JjL2tleW1hcHMv
cmMtYmVlbGluay1nczEuYyBiL2RyaXZlcnMvbWVkaWEvcmMva2V5bWFwcy9yYy1iZWVsaW5rLWdz
MS5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uY2VkYmQ1ZDIwYmM3
Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9tZWRpYS9yYy9rZXltYXBzL3JjLWJlZWxpbmst
Z3MxLmMKQEAgLTAsMCArMSw4NCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjArCisvLyBDb3B5cmlnaHQgKGMpIDIwMTkgQ2zDqW1lbnQgUMOpcm9uCisKKyNpbmNsdWRlIDxt
ZWRpYS9yYy1tYXAuaD4KKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKworLyoKKyAqIEtleW1h
cCBmb3IgdGhlIEJlZWxpbmsgR1MxIHJlbW90ZSBjb250cm9sCisgKi8KKworc3RhdGljIHN0cnVj
dCByY19tYXBfdGFibGUgYmVlbGlua19nczFfdGFibGVbXSA9IHsKKwkvKgorCSAqIFRWIEtleXMg
KFBvd2VyLCBMZWFybiBhbmQgVm9sdW1lKQorCSAqIHsgMHg0MDQwMGQsIEtFWV9UViB9LAorCSAq
IHsgMHg4MGYxLCBLRVlfVFYgfSwKKwkgKiB7IDB4ODBmMywgS0VZX1RWIH0sCisJICogeyAweDgw
ZjQsIEtFWV9UViB9LAorCSAqLworCisJeyAweDgwNTEsIEtFWV9QT1dFUiB9LAorCXsgMHg4MDRk
LCBLRVlfTVVURSB9LAorCXsgMHg4MDQwLCBLRVlfQ09ORklHIH0sCisKKwl7IDB4ODAyNiwgS0VZ
X1VQIH0sCisJeyAweDgwMjgsIEtFWV9ET1dOIH0sCisJeyAweDgwMjUsIEtFWV9MRUZUIH0sCisJ
eyAweDgwMjcsIEtFWV9SSUdIVCB9LAorCXsgMHg4MDBkLCBLRVlfT0sgfSwKKworCXsgMHg4MDUz
LCBLRVlfSE9NRSB9LAorCXsgMHg4MGJjLCBLRVlfTUVESUEgfSwKKwl7IDB4ODAxYiwgS0VZX0JB
Q0sgfSwKKwl7IDB4ODA0OSwgS0VZX01FTlUgfSwKKworCXsgMHg4MDRlLCBLRVlfVk9MVU1FVVAg
fSwKKwl7IDB4ODA1NiwgS0VZX1ZPTFVNRURPV04gfSwKKworCXsgMHg4MDU0LCBLRVlfU1VCVElU
TEUgfSwgLyogV2ViICovCisJeyAweDgwNTIsIEtFWV9FUEcgfSwgLyogTWVkaWEgKi8KKworCXsg
MHg4MDQxLCBLRVlfQ0hBTk5FTFVQIH0sCisJeyAweDgwNDIsIEtFWV9DSEFOTkVMRE9XTiB9LAor
CisJeyAweDgwMzEsIEtFWV8xIH0sCisJeyAweDgwMzIsIEtFWV8yIH0sCisJeyAweDgwMzMsIEtF
WV8zIH0sCisKKwl7IDB4ODAzNCwgS0VZXzQgfSwKKwl7IDB4ODAzNSwgS0VZXzUgfSwKKwl7IDB4
ODAzNiwgS0VZXzYgfSwKKworCXsgMHg4MDM3LCBLRVlfNyB9LAorCXsgMHg4MDM4LCBLRVlfOCB9
LAorCXsgMHg4MDM5LCBLRVlfOSB9LAorCisJeyAweDgwNDQsIEtFWV9ERUxFVEUgfSwKKwl7IDB4
ODAzMCwgS0VZXzAgfSwKKwl7IDB4ODA1OCwgS0VZX01PREUgfSwgLyogIyBJbnB1dCBNZXRob2Qg
Ki8KK307CisKK3N0YXRpYyBzdHJ1Y3QgcmNfbWFwX2xpc3QgYmVlbGlua19nczFfbWFwID0gewor
CS5tYXAgPSB7CisJCS5zY2FuICAgICA9IGJlZWxpbmtfZ3MxX3RhYmxlLAorCQkuc2l6ZSAgICAg
PSBBUlJBWV9TSVpFKGJlZWxpbmtfZ3MxX3RhYmxlKSwKKwkJLnJjX3Byb3RvID0gUkNfUFJPVE9f
TkVDLAorCQkubmFtZSAgICAgPSBSQ19NQVBfQkVFTElOS19HUzEsCisJfQorfTsKKworc3RhdGlj
IGludCBfX2luaXQgaW5pdF9yY19tYXBfYmVlbGlua19nczEodm9pZCkKK3sKKwlyZXR1cm4gcmNf
bWFwX3JlZ2lzdGVyKCZiZWVsaW5rX2dzMV9tYXApOworfQorCitzdGF0aWMgdm9pZCBfX2V4aXQg
ZXhpdF9yY19tYXBfYmVlbGlua19nczEodm9pZCkKK3sKKwlyY19tYXBfdW5yZWdpc3RlcigmYmVl
bGlua19nczFfbWFwKTsKK30KKworbW9kdWxlX2luaXQoaW5pdF9yY19tYXBfYmVlbGlua19nczEp
Cittb2R1bGVfZXhpdChleGl0X3JjX21hcF9iZWVsaW5rX2dzMSkKKworTU9EVUxFX0xJQ0VOU0Uo
IkdQTCIpOworTU9EVUxFX0FVVEhPUigiQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWls
LmNvbT4iKTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvcmMtbWFwLmggYi9pbmNsdWRlL21l
ZGlhL3JjLW1hcC5oCmluZGV4IDBhODY2OWRhZWFhYS4uZjk5NTc1YTBkMjljIDEwMDY0NAotLS0g
YS9pbmNsdWRlL21lZGlhL3JjLW1hcC5oCisrKyBiL2luY2x1ZGUvbWVkaWEvcmMtbWFwLmgKQEAg
LTE2OCw2ICsxNjgsNyBAQCBzdHJ1Y3QgcmNfbWFwICpyY19tYXBfZ2V0KGNvbnN0IGNoYXIgKm5h
bWUpOwogI2RlZmluZSBSQ19NQVBfQVZFUk1FRElBX1JNX0tTICAgICAgICAgICAicmMtYXZlcm1l
ZGlhLXJtLWtzIgogI2RlZmluZSBSQ19NQVBfQVZFUlRWXzMwMyAgICAgICAgICAgICAgICAicmMt
YXZlcnR2LTMwMyIKICNkZWZpbmUgUkNfTUFQX0FaVVJFV0FWRV9BRF9UVTcwMCAgICAgICAgInJj
LWF6dXJld2F2ZS1hZC10dTcwMCIKKyNkZWZpbmUgUkNfTUFQX0JFRUxJTktfR1MxICAgICAgICAg
ICAgICAgInJjLWJlZWxpbmstZ3MxIgogI2RlZmluZSBSQ19NQVBfQkVIT0xEICAgICAgICAgICAg
ICAgICAgICAicmMtYmVob2xkIgogI2RlZmluZSBSQ19NQVBfQkVIT0xEX0NPTFVNQlVTICAgICAg
ICAgICAicmMtYmVob2xkLWNvbHVtYnVzIgogI2RlZmluZSBSQ19NQVBfQlVER0VUX0NJX09MRCAg
ICAgICAgICAgICAicmMtYnVkZ2V0LWNpLW9sZCIKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
