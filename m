Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815CC19EA93
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R30jA7T//C3Ymphysj6kMv3WKsd0Bvf1EHkq0eedXR8=; b=ZyROIbZOgCVotl
	4roQWxb8lUNzHNGNkfI0g5/FNBpAnKy7N/Z504kTtnVP/bWer7uv/HbyTtG02c6wD7bjvy086eT9x
	KcnEtHB7aOpYcQVp215gAnBBexd0Dp02pYh89fyptJ5vMi9u8f0XWE5uC+9PNPRHmdRJQSt9xPn9u
	1JFv5t3GfCYf6YORHNH+auXYyNRCT4+2tPta61ynxQ/Ou4Unpirm2tJUPZMYLa3+7Gmh66TCD2Xnh
	U2w1+NErB/dSXLZ4zXZiH3dBaM5A0O19ThdH8aza1z3T/k521cdHi3HYK8Y5AAyE6qcAxZCt2qpuF
	lgp+V/57Uu9KC43kzobA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2qV-0005B4-99; Sun, 05 Apr 2020 10:49:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2q6-00050i-Om
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so7624447wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yv9/IWXnJ1yoMpi3TirvEFglVe/Qk5su9GHmZ1S9fvw=;
 b=mjExk6h0SjDMiFmot3d7kbacUhaCJ2rJUaHjRag6KYbL1sKo310SOL1FvgVioCuMJE
 AfN74pbWGyQdoV9kbee/HsesCoTxJnVudn9an0lEC0jBKQRMT65byzkYEtchI8d1Ugy+
 HDwJuMA0zHQUj4MxS9mTyxLmo9tNRGgJ0gpxcVIwcXxHPhlAP+0Qxjs3oy2mRdL0X8MT
 MLt8AGq1PeoqPZeewzypXrFFgS1iOPhmUY0e7qobHLIEZ+d40UhKTuAhjX4o6Yr3oSyo
 T7P+ZUavVbah3wm95NhoNRcYQylcqXoZZpNkjiYRIndGsw8iLsilqRcQ9faMcbfmV8la
 uq8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yv9/IWXnJ1yoMpi3TirvEFglVe/Qk5su9GHmZ1S9fvw=;
 b=q0iteseQX/ebVi7mdJhiU84CM3svA1TU69XeTjH3Ne4tIqvqecJCOFFgzHgHqc7abO
 8EVGFFYrAYlE7pwslMHaAnjlAiQCae7Rp4Czmq9xoQDXSdNKOTbloHa8UExvhIqZcpfv
 ImH3YbvSbBjDxldU827ox1px160QQVCebM59ufhXz1fMeydxLrUAYFGCfqAcXo6/Zwiu
 ebepobvAYFxhR1fjknlg5Milyri8Lvru4d5s/Uly7BWjwT07YuIucSH58h1viDFaxlnt
 eBVvMh1d5B2YdQzvC1mXCY1SPjK52mAaAfEsxxtZl3h0tiXPOWgTraf5xSbdi41mpXyq
 dy7g==
X-Gm-Message-State: AGi0PuZ5gN8RIen5HJ/stAzn3KIfBv2VjvkQ2G/2JKEEjEeBHPf8d58d
 Ozt5K72C9L8uB2VZPptQQZA=
X-Google-Smtp-Source: APiQypI5EMi4kSaqvdloUF+bXudrs3VbGb3tMM6vkimF6JXmXh9exzeuX4ABGCQELzS/I9fiEaAo0w==
X-Received: by 2002:a05:6000:4:: with SMTP id
 h4mr18068000wrx.236.1586083756474; 
 Sun, 05 Apr 2020 03:49:16 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:15 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/7] Add support for Allwinner H6 DVFS
Date: Sun,  5 Apr 2020 12:49:06 +0200
Message-Id: <20200405104913.22806-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034918_857605_7A9D3BF4 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3VueGkgbWFpbnRhaW5lcnMgYW5kIG1lbWJlcnMsCgpOb3cgdGhhdCByZXF1aXJlZCBkcml2
ZXJzIGFyZSBtZXJnZWQgd2UgY2FuIGNvbnRpYnV0ZSBvbiBEVkZTIHN1cHBvcnQgZm9yCkFsbHdp
bm5lciBINi4KClRoaXMgc2VyaWUgaXMgYmFzZWQgb24gWWFuZ3RhbyBMaSBzZXJpZVswXSBhbmQg
TWVnb3VzIHdvcmtzWzFdLgoKTW9zdCBvZiB0aGUgT1BQIHRhYmxlcyBhcmUgdGFrZW4gZnJvbSBv
cmlnaW5hbCB2ZW5kb3Iga2VybmVsWzJdLgpQbHVzIHRoZXJlIGlzIGEgbmV3IENQVSBmcmVxdWVu
Y3kgQDEuOEdIei4KCkkgd3JvdGUgYSBzaW1wbGUgc2NyaXB0IHRvIHJhbmRvbWx5IHNldCBhIGZy
ZXF1ZW5jeSBkdXJpbmcgYSByYW5kb20gdGltZVszXS4KV2l0aCB0aGlzIHNjcmlwdCBhbmQgdXNp
bmcgc3RyZXNzLW5nIGR1cmluZyBhIGRheSBJIGRpZG4ndCBzZWUgYW55IGlzc3VlLgpNb3Jlb3Zl
ciBJIGhhdmUgdGVzdGVkIHNwZWNpZmljYWxseSB0aGUgMS44R0h6IG9uIG15IEJlZWxpbmsgR1Mx
LCBtYXggdGhlcm1hbAo4MMKwQyBpcyByZWFjaGVkIGFmdGVyIH4xMG1pbiBhbmQgdGhlbiB0aGUg
U29DIG9zY2lsbGF0ZXMgcXVpY2tseSBiZXR3ZWVuIDEuNQphbmQgMS44R0h6LgoKSSBhbHNvIHRl
c3QgdGhhdCB0aGF0IG9mZmxpbmluZyBDUFUwIGFuZCBkb2luZyBEVkZTIG9uIG90aGVyIENQVXMg
d29ya3MuCkFzIENQVSByZWd1bGF0b3IgaXMgb25seSBzZXQgZm9yIENQVTAuCgpCdXQgbWF5YmUg
aXQgZG9lc24ndCBjb3N0IG11Y2ggdG8gc2V0IHRoZSByZWd1bGF0b3IgZm9yIGFsbCB0aGUgQ1BV
cz8KCkplcm5laiB0ZXN0IHRoZSBHUFUgZGV2ZnJlcSBvbiBzZXZlcmFsIEg2IGJvYXJkIHBhcnRp
Y3VsYXJ5IHRoZSBUYW5peCBUWDYgd2hpY2gKZG9lc24ndCBoYXZlIGEgcHJvcGVyIGRlZGljYXRl
ZCBQTUlDIGFuZCBkb2Vzbid0IGhhZCBhbnkgdHJvdWJsZSB3aXRoIGl0LgoKRG8geW91IHRoaW5r
IEkgY2FuIGVuYWJsZSBHUFUgT1BQIGZvciBhbGwgSDYgQm9hcmRzPwoKQWxzbyBZYW5ndGFvIExp
IGVuYWJsZSBEVkZTIGZvciBPcmFuZ2VQaSBhbmQgUGluZTY0LCBhcyBJIGNhbid0IHRlc3QgdGhl
bSBJCmRpZG4ndCByZWVuYWJsZSB0aGVzZSBib2FyZHMuIFBsZWFzZSwgbGV0IG1lIGtub3cgaWYg
eW91IHdhbnQgbWUgdG8gYWRkIHRoZXNlCmJvYXJkcyBpbiB0aGlzIHNlcmllLgoKVGhhbmtzLApD
bMOpbWVudAoKMDogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMDgxNTExNy8K
MTogaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC9sb2cvP2g9dGhzLTUuNwoyOiBodHRwczov
L2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9PcmFuZ2VQaUg2X0xpbnV4NF85L2Jsb2IvbWFz
dGVyL2FyY2gvYXJtNjQvYm9vdC9kdHMvc3VueGkvc3VuNTBpdzZwMS5kdHNpI0wzNDUtTDUxNwoz
OiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9jbGVtZW50cGVyb24vNTVhMDU1ZGFlM2YxM2JiZDE0
ZmIzOWMwMDY5ZmUyZTIKCkNsw6ltZW50IFDDqXJvbiAoNCk6CiAgYXJtNjQ6IGR0czogYWxsd2lu
bmVyOiBoNjogc2V0IHRoZXJtYWwgcG9sbGluZyB0aW1lCiAgYXJtNjQ6IGR0czogYWxsd2lubmVy
OiBoNjogQWRkIEdQVSBPcGVyYXRpbmcgUGVyZm9ybWFuY2UgUG9pbnRzIHRhYmxlCiAgYXJtNjQ6
IGNvbmZpZ3M6IEVuYWJsZSBzdW41MGkgY3B1ZnJlcSBudm1lbQogIGFybTY0OiBkdHM6IGFsbHdp
bm5lcjogaDY6IEVuYWJsZSBDUFUgYW5kIEdQVSBvcHAgdGFibGVzIGZvciBCZWVsaW5rCiAgICBH
UzEKCk9uZHJlaiBKaXJtYW4gKDIpOgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCB0
aGVybWFsIHRyaXAgcG9pbnRzL2Nvb2xpbmcgbWFwCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBo
NjogQWRkIENQVSBPcGVyYXRpbmcgUGVyZm9ybWFuY2UgUG9pbnRzIHRhYmxlCgpZYW5ndGFvIExp
ICgxKToKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBBZGQgY2xvY2sgdG8gQ1BVIGNvcmVz
CgogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgIDEwICst
CiAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0c2kgfCAxMDMgKysr
KysrKysrKysrKysrKysrCiAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1ncHUtb3Bw
LmR0c2kgfCAgNzQgKysrKysrKysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LmR0c2kgIHwgIDQ0ICsrKysrKystCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnICAgICAgICAgICAgICAgICAgfCAgIDEgKwogNSBmaWxlcyBjaGFuZ2VkLCAyMjYgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWdwdS1vcHAuZHRzaQoK
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
