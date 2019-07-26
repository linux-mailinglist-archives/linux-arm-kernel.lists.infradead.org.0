Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D7E76474
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5IzGf51xnRAyo4wcQpW8KL0KqjquSS/cpJZyKtQhcns=; b=UvLpFeujyVSFB/
	PP/Q2xuHC9WNYZXRm62Z9cbm8yrSDzD1+7ecn33GvPXHI9DNt7ngYajLy6tHbu9+cfQPZQk/oEYlf
	8asagx48bl0xOhwX9PQPsAybLijOXMRaTYOZzCmtyToR66buEUwu+lQSoDH6j9Qd/U2PmMrD1pFsL
	AWuk436h4FlLn20wYlIwM4ONmWlowccPQZhk9sm9NeLEWvfySnv7frDqL7z3FPPD69Ln6qwJgfUV7
	u8wq6KOH5Q6dKqRlSwhNPSqCBBhV+ykFFh0SP5aIKZoLSMyNTXggQqKubRPxJe6LzSRmFfdXdELM5
	0lwVOhXoLj2JZg9FM7oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyOp-0002K1-CC; Fri, 26 Jul 2019 11:28:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyNi-0001fq-TA
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:27:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id x25so51208318ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mD75t+URGZsK68zObcoQDgfEcM4EggmUqFsamz8uvA8=;
 b=v/lqe97aY/6DKYSisz+Bh2DOxmrmfqzDS78mI5csTH9jAkHOsQf3u/nQHsbpw6wuAR
 bMIIYx1fPDpnl3RkTb4wAx50nibsu3pMG3MYUzUX1qaqyy5QzU784Z/rxIp2Hs3i7Z2/
 JGvxNlWagTD1QUHKl1n/cx6w1ei6w0SlS5IlDrMUXjfcqn0d9fhA+3gSJ33IQ4H6YSpW
 MDfW5F/MG4dpu8ozAK5L5RxmRx+lzrsoLICfH8V2EWH83o9rfP4uTHnxHp428YRXL0LL
 jP4u4B9D5If5HLU5D4h+FgCmFq4bEx7gwQ+OOIanHaMGdYIeCPvqox1hd4jukUHDmmG8
 7wSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mD75t+URGZsK68zObcoQDgfEcM4EggmUqFsamz8uvA8=;
 b=NMaKW8U6QYSDwIi3ZqD5ZyHjerrwsjPLb3P3sFvmu0gndBSS5QuGjh8FPdoxqN3SOK
 U1KktZq4A2AB8n/r2JvZcekYu4xKcyj19cUU/4F9PKGFlPHmnI/o8kdzNNQrmOKyXx/e
 cCFRObUh91sxxTPhqzAYwM+zDQHukiMJFPwCm7OQlkXLpFOI2jype9hKXbaUWKdU42F+
 vBY5oQxwvs1PVlX92mQMOlCDAqSkYEhr+QW1hLltDlU0SPWe7v3DFyHekL3MbVHVTtBx
 5c4x/yGPsw/KOzIp9XzBke89X16Nr7YHt1j0CcUwE32A9vZaiOSeBjx5EXiADtw3TOqn
 FamQ==
X-Gm-Message-State: APjAAAVCRLZgXmI6NkJYRRgQQWYw4Pa3UrFSz8qgKlgubGfHxYkfHnFA
 pxtWzA3sR72BHY0aFu1uHz5/X3KD+Zoh8w==
X-Google-Smtp-Source: APXvYqy1Iy6b2yOwjFSIa/VBUa/31LvNZNgxAzQlPOq9T/Kdpd5y1geOUuOJ4C07BdR6g4ervbZ1PQ==
X-Received: by 2002:a2e:8396:: with SMTP id x22mr50602259ljg.135.1564140445364; 
 Fri, 26 Jul 2019 04:27:25 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id i9sm8365620lfl.10.2019.07.26.04.27.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:27:24 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 2/3] arm64: module: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:27:21 +0200
Message-Id: <20190726112721.19154-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042727_137782_3AD848C2 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmdzCndhcyBzdGFydGluZyB0byBzaG93IHVwOgoKLi4vYXJjaC9hcm02NC9r
ZXJuZWwvbW9kdWxlLmM6IEluIGZ1bmN0aW9uIOKAmGFwcGx5X3JlbG9jYXRlX2FkZOKAmToKLi4v
YXJjaC9hcm02NC9rZXJuZWwvbW9kdWxlLmM6MzE2OjE5OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVu
dCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgICBvdmVyZmxv
d19jaGVjayA9IGZhbHNlOwogICAgfn5+fn5+fn5+fn5+fn5+Xn5+fn5+fgouLi9hcmNoL2FybTY0
L2tlcm5lbC9tb2R1bGUuYzozMTc6Mzogbm90ZTogaGVyZQogICBjYXNlIFJfQUFSQ0g2NF9NT1ZX
X1VBQlNfRzA6CiAgIF5+fn4KLi4vYXJjaC9hcm02NC9rZXJuZWwvbW9kdWxlLmM6MzIyOjE5OiB3
YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dCiAgICBvdmVyZmxvd19jaGVjayA9IGZhbHNlOwogICAgfn5+fn5+fn5+fn5+fn5+
Xn5+fn5+fgouLi9hcmNoL2FybTY0L2tlcm5lbC9tb2R1bGUuYzozMjM6Mzogbm90ZTogaGVyZQog
ICBjYXNlIFJfQUFSQ0g2NF9NT1ZXX1VBQlNfRzE6CiAgIF5+fn4KClJld29yayBzbyB0aGF0IHRo
ZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLgoKRml4ZXM6IGQ5MzUx
MmVmMGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmci
KQpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+
Ci0tLQogYXJjaC9hcm02NC9rZXJuZWwvbW9kdWxlLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9tb2R1bGUu
YyBiL2FyY2gvYXJtNjQva2VybmVsL21vZHVsZS5jCmluZGV4IDQ2ZTY0M2UzMDcwOC4uMDNmZjE1
YmZmYmI2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9tb2R1bGUuYworKysgYi9hcmNo
L2FybTY0L2tlcm5lbC9tb2R1bGUuYwpAQCAtMzE0LDE4ICszMTQsMjEgQEAgaW50IGFwcGx5X3Jl
bG9jYXRlX2FkZChFbGY2NF9TaGRyICpzZWNoZHJzLAogCQkvKiBNT1ZXIGluc3RydWN0aW9uIHJl
bG9jYXRpb25zLiAqLwogCQljYXNlIFJfQUFSQ0g2NF9NT1ZXX1VBQlNfRzBfTkM6CiAJCQlvdmVy
Zmxvd19jaGVjayA9IGZhbHNlOworCQkJLyogRmFsbCB0aHJvdWdoICovCiAJCWNhc2UgUl9BQVJD
SDY0X01PVldfVUFCU19HMDoKIAkJCW92ZiA9IHJlbG9jX2luc25fbW92dyhSRUxPQ19PUF9BQlMs
IGxvYywgdmFsLCAwLAogCQkJCQkgICAgICBBQVJDSDY0X0lOU05fSU1NX01PVktaKTsKIAkJCWJy
ZWFrOwogCQljYXNlIFJfQUFSQ0g2NF9NT1ZXX1VBQlNfRzFfTkM6CiAJCQlvdmVyZmxvd19jaGVj
ayA9IGZhbHNlOworCQkJLyogRmFsbCB0aHJvdWdoICovCiAJCWNhc2UgUl9BQVJDSDY0X01PVldf
VUFCU19HMToKIAkJCW92ZiA9IHJlbG9jX2luc25fbW92dyhSRUxPQ19PUF9BQlMsIGxvYywgdmFs
LCAxNiwKIAkJCQkJICAgICAgQUFSQ0g2NF9JTlNOX0lNTV9NT1ZLWik7CiAJCQlicmVhazsKIAkJ
Y2FzZSBSX0FBUkNINjRfTU9WV19VQUJTX0cyX05DOgogCQkJb3ZlcmZsb3dfY2hlY2sgPSBmYWxz
ZTsKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwogCQljYXNlIFJfQUFSQ0g2NF9NT1ZXX1VBQlNfRzI6
CiAJCQlvdmYgPSByZWxvY19pbnNuX21vdncoUkVMT0NfT1BfQUJTLCBsb2MsIHZhbCwgMzIsCiAJ
CQkJCSAgICAgIEFBUkNINjRfSU5TTl9JTU1fTU9WS1opOwpAQCAtMzkzLDYgKzM5Niw3IEBAIGlu
dCBhcHBseV9yZWxvY2F0ZV9hZGQoRWxmNjRfU2hkciAqc2VjaGRycywKIAkJCWJyZWFrOwogCQlj
YXNlIFJfQUFSQ0g2NF9BRFJfUFJFTF9QR19ISTIxX05DOgogCQkJb3ZlcmZsb3dfY2hlY2sgPSBm
YWxzZTsKKwkJCS8qIEZhbGwgdGhyb3VnaCAqLwogCQljYXNlIFJfQUFSQ0g2NF9BRFJfUFJFTF9Q
R19ISTIxOgogCQkJb3ZmID0gcmVsb2NfaW5zbl9hZHJwKG1lLCBzZWNoZHJzLCBsb2MsIHZhbCk7
CiAJCQlpZiAob3ZmICYmIG92ZiAhPSAtRVJBTkdFKQotLSAKMi4yMC4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
