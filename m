Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402921AF596
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MAieMu70H8Y6Sh6wC969Ev1ydnnPP21FjmoAGgiJcw=; b=PcD4bcNeY0ddv7
	UlzG4KooDDkomV0NhIm4h5wTIS+t7SQc4pK0ecnQh6fkTt1OPwVdosVMoilWxYkozlRKHxY1OsALy
	IyYhU47+7/tpK1dzGzM2C5XWHrB/iLNFKs5mKxJRnKKXxE37QHzJJ5crfV05JEIcuTP0SBXQTxa/K
	zDThUryrTEksHd1JZjynzbNEEQVFmcLjcMkqACHD2hveuPIWAsXrbEAg7ZTVV4lGqLJyvw2rOamZU
	PL7E85Txuoqxl81Pm5HEEZfc1P193PB/RREnLqy+dOBel3lJ0ahUGl2BSh6OYEwLpACe50GAZyX+I
	cvSDTmbChLxm2QyuelMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwDW-000209-JU; Sat, 18 Apr 2020 22:45:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwCY-0007Qt-Cv
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:44:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id t14so7368623wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 15:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0RLyOmcQjC6vn1XEI3ccjJ++FkYMXRfGQ9jNbYoBA2Y=;
 b=RxHYA8TscBFB44NiehmUfeeQ06VUO3DFs/wsLjmwVEtal9fdToV7SPpG8MiCJfBS3j
 SPZFa960dZe2EhROSESp9ye1krXTOZiDFANBH6AMkfka/8TvX7RyL6lngNgc7vKv1zqG
 I198UmThs8xPlBLubazE9FsVpVx2WTYFzsdMooOCmI18+G/iYGooaaF4U87+MaMTyrvZ
 KIkmBGLtfkorteZae8wDxddFnlezaLiCynZ0atvPQy4AZdjabbmKOxC4AY7MoFmQ7FHJ
 hXqWCY3ZY3ChScUcC79Eh5bqQ8aMKrLvcvokHvhOwHZN8CvaIAtZsQX7aKcBBvNQ0+U+
 4uCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0RLyOmcQjC6vn1XEI3ccjJ++FkYMXRfGQ9jNbYoBA2Y=;
 b=De/lYpd80fv4PMQWmRZ+r28zI/t3h5+gVktZV5CTnqT4yMpvxPtbFXSQYhQ1sWCma0
 Qb9bB4mKBd92sVt46ax79lR/mma8Lk3DpgcfCZXIsOh+RF64/kNYZN0nAWntE4JbKVy0
 n+E8Yi8cE6ZOlBcwdg0DbyBCRyz0mokYMGWr6evp5PPJXJ+A//aVIiXLdN099kg3HgQW
 MuaNgpKeawZ+CRo+yCUzc0c1S8VumW5PyQ75k85No0nRDv0eIBoWdxdX7qsMz+aOeBqh
 5J4UzVUaZmcQ+I88wDHjwfcjrJWMJ6pn+XY2cfFV5d2SnLzEx+N9WR1WlMsVjpYTzwgI
 IZMA==
X-Gm-Message-State: AGi0PuatTNLMJLsSAohLkiLjy3hUGgOAuMxQXv6PvMnPGn6zqwQdHzEI
 BVouTFsSagTXEl4pYFFTJuM=
X-Google-Smtp-Source: APiQypKVFCS52LWaQqMpRrBfL5zoWfUa0PpkSMSmggBTe57uDxcMbauy9YOkMjLXPaTEMf2xJWwU2w==
X-Received: by 2002:a5d:6584:: with SMTP id q4mr11851428wru.403.1587249881115; 
 Sat, 18 Apr 2020 15:44:41 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id t16sm13371559wmi.27.2020.04.18.15.44.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 15:44:40 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2 2/7] dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
Date: Sun, 19 Apr 2020 00:44:30 +0200
Message-Id: <20200418224435.23672-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418224435.23672-1-peron.clem@gmail.com>
References: <20200418224435.23672-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_154442_434287_79E75F62 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-kernel@vger.kernel.org,
 Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgSTJTIGlz
IHZlcnkgc2ltaWxhciB0byBIMywgZXhjZXB0IHRoYXQgaXQgc3VwcG9ydHMgdXAgdG8gMTYgY2hh
bm5lbHMKYW5kIHRodXMgZmV3IHJlZ2lzdGVycyBoYXZlIGZpZWxkcyBvbiBkaWZmZXJlbnQgcG9z
aXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lv
bC5uZXQ+ClNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgot
LS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL2FsbHdpbm5lcixzdW40aS1hMTAtaTJz
LnlhbWwgICAgICB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvYWxsd2lubmVy
LHN1bjRpLWExMC1pMnMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
b3VuZC9hbGx3aW5uZXIsc3VuNGktYTEwLWkycy55YW1sCmluZGV4IDExMmFlMDBkNjNjMS4uNjA2
YWQyZDg4NGE4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
c291bmQvYWxsd2lubmVyLHN1bjRpLWExMC1pMnMueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc291bmQvYWxsd2lubmVyLHN1bjRpLWExMC1pMnMueWFtbApAQCAt
MjQsNiArMjQsNyBAQCBwcm9wZXJ0aWVzOgogICAgICAgLSBpdGVtczoKICAgICAgICAgICAtIGNv
bnN0OiBhbGx3aW5uZXIsc3VuNTBpLWE2NC1pMnMKICAgICAgICAgICAtIGNvbnN0OiBhbGx3aW5u
ZXIsc3VuOGktaDMtaTJzCisgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuNTBpLWg2LWkycwog
CiAgIHJlZzoKICAgICBtYXhJdGVtczogMQpAQCAtNTksNiArNjAsNyBAQCBhbGxPZjoKICAgICAg
ICAgICAgICAgLSBhbGx3aW5uZXIsc3VuOGktYTgzdC1pMnMKICAgICAgICAgICAgICAgLSBhbGx3
aW5uZXIsc3VuOGktaDMtaTJzCiAgICAgICAgICAgICAgIC0gYWxsd2lubmVyLHN1bjUwaS1hNjQt
Y29kZWMtaTJzCisgICAgICAgICAgICAgIC0gYWxsd2lubmVyLHN1bjUwaS1oNi1pMnMKIAogICAg
IHRoZW46CiAgICAgICByZXF1aXJlZDoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
