Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D71F1AEEDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MAieMu70H8Y6Sh6wC969Ev1ydnnPP21FjmoAGgiJcw=; b=bwnqBWjkDDULq1
	AgMajVbbKHM69AVK/CM/LS8BunPqfnAcYrmlMiHZu1QYuejQjp4Uql6dqbir97SAG7I1dWxaILv9w
	qN8W22JL/2AjV1Gnn3a18WFFUz9CvIR9UEisHylBw67Fw5ZiIwIi7F3TOJa0KjHjK/SeUcXXr83dx
	5gKO53ykhnMDyN/cc3gA57x96T0z5hTI2GTqSWvsQIorQ+Ze7/FAZ9yIeD+IZAtbwui30dL7g84uh
	cDbtFALiqIs6KCTHCwjem7sfpfGbo1uvt5ZexuuMxj1v3Ykp1JdOx5rS5XBbNJ5aD+NNfNlOeC2sn
	yKWgFKV8aVtTfCe/J0aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoe3-0006ZS-DM; Sat, 18 Apr 2020 14:40:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPod1-0003UG-ED
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id z6so6021492wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 07:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0RLyOmcQjC6vn1XEI3ccjJ++FkYMXRfGQ9jNbYoBA2Y=;
 b=q5HNev90MzXTL/ywnewZwrnzuyIqxvWF/Kr5tUh24SzGbZFJmIRryOT5Cne5AqSmRv
 jdt5+JW2IUSB+CLsoguUYD27kcuJ7qzXbg4BFujwC79yB6hpHcW/nHeJez/eqLWKeGO+
 Ufn0Fz+U8dKq6Q6QJ0PFYKEJFK3dU26R30ikE296gF2mi2pO1sSLRw9c32lll9aa929C
 tb5Bn9Tv3SghyHF7ArFMxWm0OmVKUizia4vv+e3iRk7n0Li55z/HYKxbK1tDQ6NvEZRI
 JRFKzjVL61ilvfzUDvWmCtbaFM5de1FG0eShlLhI4TMw00HfqQrTY3ftWVGCILa3QXLQ
 4mqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0RLyOmcQjC6vn1XEI3ccjJ++FkYMXRfGQ9jNbYoBA2Y=;
 b=lgoveTOLXBSYs+4iBu0oMSq5xScedDrwmJfaLB5u4iG9kdK7jN5Xow750xlcGwuJBy
 NgQw+5S486cEqF6/e5WQbGdf016dTNMjQvuI2GpZvrjAr6hIXkzOLU32PwiZIBSF8wGA
 lA35OO227KBATkXATszf6rgkj4kvWD/oAkhT487Hqojynb/W1I3NN4VRPOby7sXvgBjA
 /9zG9cL4NMT/l46/sk6H7oTL55jOWBKj6KFdnTSVmWg25WphsAKhlHN3wkfGJpNUGG93
 W0jRLNYMwrHUvlF539b/FODmPRDU3xv5PBpK0mWxfgRWXBiFfBADb1Q59JgZhF1jhuk8
 JltQ==
X-Gm-Message-State: AGi0PubewfZcU0Z3VNFRqaDnnIPrUgobBFZHGnZ5rdQ1DXYcqmGyhzDe
 pYsRqZosATJu1OCkk8qQIn4=
X-Google-Smtp-Source: APiQypLxyXDor7+tKSZgFN2C/9biQv72swhCvNXp4GtJiTquiN8BtbiZEPJAKGuJ5Sp1vGD1nVcH8A==
X-Received: by 2002:a1c:8084:: with SMTP id b126mr8178036wmd.135.1587220769442; 
 Sat, 18 Apr 2020 07:39:29 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 s9sm25375322wrg.27.2020.04.18.07.39.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 07:39:28 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 2/7] dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
Date: Sat, 18 Apr 2020 16:39:18 +0200
Message-Id: <20200418143923.19608-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418143923.19608-1-peron.clem@gmail.com>
References: <20200418143923.19608-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073931_484007_F9183120 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
