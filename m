Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01661B8EF7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MAieMu70H8Y6Sh6wC969Ev1ydnnPP21FjmoAGgiJcw=; b=OrzjsLfXxGUuHl
	UvC/TP1vSFfgYhxpVUlNgPH/jq2pj+wgkwOimtybRgiSs4vYgbNyXiUJMfKkWp49Gz0h5rUY3Re5u
	gei7YKv+15D+fKQZ1JCeB9+ulGA/nMSxN1arPrDNbf9oqRhHCtGcRUuY5EbADXZfuRDw3D8CRtxBk
	dFEU22pyJgMZlPKUebfyVRfDjrQopds5B3OxRdPfDBDF41Iv6XILitqbI7+ETzTmR0crXDZB2Hos4
	h7n3/kCR//DixZx0lJh1LuBpo/mHLCfhY9N92B374ciLdubKAd9L/MOPAL/gj5gbgR3jzDQvt96He
	9tiPsxXxp8liUF8Ow9NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSejf-00038G-My; Sun, 26 Apr 2020 10:42:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSeix-0002vx-Fv
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:41:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so16971901wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0RLyOmcQjC6vn1XEI3ccjJ++FkYMXRfGQ9jNbYoBA2Y=;
 b=pEb5M+j33W1xdCZzu21ZGMF+y2nvgxguxmT+udwzHEM0LMxryFmKJ67rCuQP00C/u3
 A84XG/yMmH6KqcO1Rod12V7w7z0IX0KrPCjEi64ihqn5kCl8VDGl3eRovoBaJccpVE5e
 STzoypdReKUshsrOPPueZegajrpg9FuuzMGQqpq0X9VAvIq0DTHGeKOZhTb63TN7xuUo
 oTyXrW2bosLUdfpZpicvAYyDeJBQl9eb/dbk85F4wMVmTDnC+6bS8bJZ2HeMo5RApxXR
 fYou2YCU7/OMTscpr01z2q9MJpjb07ew1nDMxYQNMu19nLcROy1f9GGDjt07oVWWxCes
 98Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0RLyOmcQjC6vn1XEI3ccjJ++FkYMXRfGQ9jNbYoBA2Y=;
 b=RBUFxJuBNgOoNSV1CDwI6f5ilpL1rEVlOq7u0VeHxOyYRPWpnVxhyPziDyywEnpobE
 oK4SO0t3J+0dTeL9KdN9TLTBojYYX7B2TKykOttvQAERaX9ixPtktik508TGLUj3PWNZ
 ritbKLE1G/lyFQHQoIaR+N6MP8KMgfA1KXd/t3B1TI0qGjW2z53DPEXD4DEUrcx+2lYH
 XvqeTH3G8yM8mRtxTvxIxK3Ws804E09e0l6+SgR2PMrzY7vh/zcmOygcmU+2RSlGRNMR
 mUWEjDX3O62kZH4UE33IoAK0PDOi2aEiN+pPHonF8/e3HmwDkrqB/AWF3f4qycQjZxHX
 zTvQ==
X-Gm-Message-State: AGi0PuYL0jgvQglpZOYjE/MYJAA3p41EzBp/33+BAmTkWsNCLmP2dcbn
 RlOAB2VP4bzwsZQl7GD1hhs=
X-Google-Smtp-Source: APiQypIhe1kOoZzu4/c9rSC9Ti+Iwj5P6aeWjhvnEk5fJtGoRvCnoPEUiUPZECcqv9GEFT1eQS0ZiQ==
X-Received: by 2002:a5d:6847:: with SMTP id o7mr21795688wrw.83.1587897681018; 
 Sun, 26 Apr 2020 03:41:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 y10sm10491793wma.5.2020.04.26.03.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:41:20 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v3 2/7] dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
Date: Sun, 26 Apr 2020 12:41:10 +0200
Message-Id: <20200426104115.22630-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426104115.22630-1-peron.clem@gmail.com>
References: <20200426104115.22630-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_034123_536436_B61F04CF 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
