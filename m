Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531DDED4B4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:35:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4GOGIV93+eoPNK7eG5g+WdFL421P8Qa1e6J1nL1cGKs=; b=gqzaZ6ndHT6O54
	zS4U8WEQvcnArk4PWhSPCog0Yn5iDQzkhpGFNLzF9sdoJFvzgB1V9BMPUzDEg1JngS/FcjcAyTeBs
	2JyOmmTPzzvZykqPcwORLCZfZielqR8a3q7Mrl0qLA3jwm5VMebRf1MXgw5hsg5mpqYSeDpZN9yOt
	r/MncgK1iUXQStbZMEa63WXbCOP54EPEJVLc+yTilB3c1YVFyiwHjUmxSViw0hz+0Kx+OK98rRaXa
	UxsA4syXwc/Kit3gr3Mu4Ms/isGK8mTGIFqj7FqI4R1lZ6YqXfxYjKpARDye87UWt6IbZMNn2mUKA
	UbzKmupKX9P8o04kom3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMah-0007BA-1p; Sun, 03 Nov 2019 20:35:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMZK-0006F4-RO
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:33:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id a15so14772308wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ml4/ldXuaRQFs9xTSFQLPpar7FuQY3/SbLZ03W92l0I=;
 b=m2CnugqT3ACAYmgD1Cjtv8ShPg2gnHMeL6ADrw+IxJXZnXvs+2YvxvraUH+x+ChuPw
 cD9xXN/XJOv4kSDXQ5A2dC+a/MpxBWnGYZvtmycVaMj7HtzNIQpNKdWlBcHRYBo7V6Is
 qscC1rtUfdz8citmpet4A1MxLR6PAgnXYG7uxtJOoQqcP+pD6L7XEZe0XOiVMgEjpapl
 zn4sDcEMULw9v+M2tBEFGkZGYFg1VhhYCLzDOUNxYMT25/XLf4/5q5VI+NeyoK+8CCMa
 IbEO1BoYBJpkYYbTPtZkeYa6o6GK6tmmFn5wm6W20NSV2VVLjxoVuz+x9lClnSUqlzCo
 zlBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ml4/ldXuaRQFs9xTSFQLPpar7FuQY3/SbLZ03W92l0I=;
 b=d3KvIatLWGNJ05eKVdy7ALNG7ZfT+NNQrC/IShx3wbcxpd+OHuuiRDyYjn37tiol/V
 RMS9OUrRB49w9wKzLXbzwpI4Fs5pJ/rnumZIexKmuxp1qRCXV30S8WAaD6wcgAnt0vde
 9jxvmCXqMFyfqF1TR8W0SD1JAAVZpZj3AsrCKD9VJPYzFj4CyEDLku7OjRS5Thi6i2M6
 83QZUzD14os7wt4IUKv1nY5vxbW2vQx7SnEmlGL6SUgFmajHhDrzTmbEgig940kBkI6Z
 9+soGGKp5L4zMllcWcN6ddBm+TXsbNsY+w/bDLuZTVcFjgPFc7BS902Cc55SY//oHce5
 sEQw==
X-Gm-Message-State: APjAAAUaQVS4EoXe/Eqlzaj4LNGOb7cZuujlAKrNTrCsKcoP7umr1IhA
 Gd5ZIqPRmxtHlARXZyqTDSE=
X-Google-Smtp-Source: APXvYqx+wOrdNP6iaYemu5Ag6rWAskgEk1/DDlhAjLULO3ca3go6P9wmGnBOY6scWrhWi34887aI3Q==
X-Received: by 2002:a5d:4446:: with SMTP id x6mr20834900wrr.103.1572813225276; 
 Sun, 03 Nov 2019 12:33:45 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id x16sm13644026wrp.91.2019.11.03.12.33.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 12:33:44 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 0/7] Add support for H6 PWM
Date: Sun,  3 Nov 2019 21:33:27 +0100
Message-Id: <20191103203334.10539-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_123350_907468_6C1C8870 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: linux-pwm@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIGEgcmV3b3JrIG9mIEplcm5laidzIHByZXZpb3VzIHdvcmtbMV0gdGFraW5n
IGFjY291bnQgYWxsIHRoZQpwcmV2aW91cyByZW1hcmtzLgoKQmluZGluZ3MgaXMgc3RpbGwgc3Ry
aWN0IGJ1dCBwcm9iZSBpbiB0aGUgZHJpdmVyIGFyZSBub3cgb3B0aW9ubmFscy4KCklmIHNvbWVv
bmUgY291bGQgY29uZmlybSB0aGF0IHRoZSBQV00gaXMgbm90IGJyb2tlbiwgYXMgbXkgYm9hcmQK
ZG9lc24ndCBvdXRwdXQgaXQuCgpJIGRpZG4ndCBhZGQgdGhlIGFja2VkLXRhZ3MgYXMgdGhlcmUg
YXJlIGJpZyBjaGFuZ2VzLgoKVGhhbmtzLApDbMOpbWVudAoKSmVybmVqJ3MgY292ZXI6CkFsbHdp
bm5lciBINiBTb0MgaGFzIFBXTSBjb3JlIHdoaWNoIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyB0
aGF0IGZvdW5kCmluIEEyMCwgaXQncyBqdXN0IGRlcGVuZHMgb24gYWRkaXRpb25hbCBidXMgY2xv
Y2sgYW5kIHJlc2V0IGxpbmUuCgpUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGl0IGFuZCBl
eHRlbmRzIFBXTSBkcml2ZXIgZnVuY3Rpb25hbGl0eSBpbgphIHdheSB0aGF0IGl0J3Mgbm93IHBv
c3NpYmxlIHRvIGJ5cGFzcyB3aG9sZSBjb3JlIGFuZCBvdXRwdXQgUFdNIHNvdXJjZQpjbG9jayBk
aXJlY3RseSBhcyBhIFBXTSBzaWduYWwuIFRoaXMgZnVuY3Rpb25hbGl0eSBpcyBuZWVkZWQgYnkg
QUMyMDAKY2hpcCwgd2hpY2ggaXMgYnVuZGxlZCBpbiBzYW1lIHBoeXNpY2FsIHBhY2thZ2UgYXMg
SDYgU29DLCB0byBzZXJ2ZSBhcyBhCmNsb2NrIHNvdXJjZSBvZiAyNCBNSHouIEFDMjAwIGNsb2Nr
IGlucHV0IHBpbiBpcyBib25kZWQgaW50ZXJuYWxseSB0bwp0aGUgc2Vjb25kIFBXTSBjaGFubmVs
LgoKSSB3b3VsZCBiZSBncmF0ZWZ1bCBpZiBhbnlvbmUgY2FuIHRlc3QgdGhpcyBwYXRjaCBzZXJp
ZXMgZm9yIGFueSBraW5kIG9mCnJlZ3Jlc3Npb24gb24gb3RoZXIgU29Dcy4KClsxXTogaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA2MTczNy8KCkNoYW5nZXMgaW4gdjI6CiAt
IFJlbW92ZSBhbGxPZiBpbiBEb2N1bWVudGF0aW9uCiAtIEFkZCBINiBleGFtcGxlIGluIERvY3Vt
ZW50YXRpb24KIC0gQ2hhbmdlIGNsb2NrIG5hbWUgZnJvbSAicHdtIiB0byAibW9kIgogLSBDaGFu
Z2UgcmVzZXQgcXVpcmsgdG8gb3B0aW9uYWwgcHJvYmUKIC0gQ2hhbmdlIGJ1c19jbG9jayBxdWly
ayB0byBvcHRpb25hbCBwcm9iZQogLSBBZGQgbGltaXRhdGlvbiBjb21tZW50IGFib3V0IG1vZF9j
bGtfb3V0cHV0CiAtIEFkZCBxdWlyayBmb3IgbW9kX2Nsa19vdXRwdXQKIC0gQ2hhbmdlIGJ5cGFz
cyBmb3JtdWxhCgpDbMOpbWVudCBQw6lyb24gKDEpOgogIFtETyBOT1QgTUVSR0VdIGFybTY0OiBh
bGx3aW5uZXI6IGg2OiBlbmFibGUgQmVlbGluayBHUzEgUFdNCgpKZXJuZWogU2tyYWJlYyAoNik6
CiAgZHQtYmluZGluZ3M6IHB3bTogYWxsd2lubmVyOiBBZGQgSDYgUFdNIGRlc2NyaXB0aW9uCiAg
cHdtOiBzdW40aTogQWRkIGFuIG9wdGlvbmFsIHByb2JlIGZvciByZXNldCBsaW5lCiAgcHdtOiBz
dW40aTogQWRkIGFuIG9wdGlvbmFsIHByb2JlIGZvciBidXMgY2xvY2sKICBwd206IHN1bjRpOiBB
ZGQgc3VwcG9ydCB0byBvdXRwdXQgc291cmNlIGNsb2NrIGRpcmVjdGx5CiAgcHdtOiBzdW40aTog
QWRkIHN1cHBvcnQgZm9yIEg2IFBXTQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCBQ
V00gbm9kZQoKIC4uLi9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbCB8
ICA0NSArKysrKystCiAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRz
ICAgfCAgIDQgKwogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kg
IHwgIDEwICsrCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyAgICAgICAgICAgICAgICAgICAgICAg
fCAxMTYgKysrKysrKysrKysrKysrKystCiA0IGZpbGVzIGNoYW5nZWQsIDE3MSBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
