Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8B7F4281
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+7z0v+DEG+IeBFMZZ5trfxwV549xR2HHFxWhYWEP6w=; b=XzPcIukUqBzPK3
	1k4HUHjehxpDUYr05V+XQ3TQWLet0xKwqDlolDZnNNAwu6d8tk3OJ0vn/mVVoi/Q26xRREbesPJPo
	6ztQvAWZ/cdLp/z+8ctU0xh9xKNzf1ldanwDdVodg3nNMwWSq0lO0bRw36zfGYLrbJZzhgQqCJiOo
	JC08XFCjnS9z4IuQCTAZdGQ1ZQaOrDduSlwt3/MUZk45iQfjO13KgfmKDPuLs7tJMq9oDhS2MAV/g
	7ZGnteFqKgN2KN+iJl20Dkwt0chE0tKgt7uX5qtx/P368u9Mk4WliSGSk6bZ+OR44QJordzTK2Pl+
	NSUu9XoBTwKtrooP/SHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzvU-0007FX-9f; Fri, 08 Nov 2019 08:47:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSztd-0005Ks-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id b11so5247945wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0fXA0HzdVYuMz+Yhj3TQjNmtcRgY2Ng0Cfj0PwkXk0=;
 b=D1qm1SPDt8A+Vradbdz+NjuzHC3n4lBb5MQIo2TILRUGKh3ZesXy/5dY+ojmZZlJMA
 HEC7oYdHVO5tzy9/xg3R/T8rNfSdAE0gsnMXQ0RRXbVfyCv2ndh5STSSlPaQnPVpB8RD
 L6RCBuhRtjIC8SY8CrI7BoeSjlUS8EY9z0wDzYBNe0fTVqQpOPNZkmHsNuGIUTrdvPED
 IlHnB++2WeruWNFQHdwtEI90y55KjFmKidqYkPeBMtFdDgbm2WInoaioHeK8KAPPXVYz
 eCHENLiXN1Bj9ASqFoUtAZ7OjxSgbUd9QE756mC6/LRhS2FdfuqqlP7sfUjgF3Gi484j
 H7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0fXA0HzdVYuMz+Yhj3TQjNmtcRgY2Ng0Cfj0PwkXk0=;
 b=ZrrFs0LcUjHncbeHOQK6jwl4S9/Ay9LQgNIHnvRs02VtbH0V/Vji2kuL+giwscy/Ph
 Jq3COnHIJ2o7R49ukls2e2z5GhyMNCzQ3trvy4sxMBYZiJDlBJvxzSYW//BDpiIwRia+
 YpPQgmerfK/DCvq04YShot0VJjxh4xi30prMObQC6MmJuHJ1QqpivRRn9Oj9XamQAsYr
 jn+LsW5LKx8LqTeWlIn1uFOWQI8vffTue78bNvW4pGDb6yQfk9a7tl+q4VeED0P0W/cJ
 dXvYYvPUiwwPrvK2U2ChZDezifa3boc2ILgsi03ktUrZpNNn63vyyqE7mahtKP01Ztee
 w4ww==
X-Gm-Message-State: APjAAAWb14PSRO5OxEkyDu4Ny9DJROa/IfhDHsXJB8DG/RZoEnhrSXNh
 YcEs+Tkk8kXuh/XCBWckuvc=
X-Google-Smtp-Source: APXvYqw6E/M1y7UeZTduVCL8358877o3jME7J6MDaZJII3rFx5yNJyEOeWFuDlIotS5YQXzjenELiw==
X-Received: by 2002:a1c:ab0a:: with SMTP id u10mr7503819wme.0.1573202731003;
 Fri, 08 Nov 2019 00:45:31 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:30 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 6/7] arm64: dts: allwinner: h6: Add PWM node
Date: Fri,  8 Nov 2019 09:45:16 +0100
Message-Id: <20191108084517.21617-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108084517.21617-1-peron.clem@gmail.com>
References: <20191108084517.21617-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004533_443280_208BC7FB 
X-CRM114-Status: GOOD (  14.39  )
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
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKQWxsd2lubmVy
IEg2IFBXTSBpcyBzaW1pbGFyIHRvIHRoYXQgaW4gQTIwIGV4Y2VwdCB0aGF0IGl0IGhhcyBhZGRp
dGlvbmFsCmJ1cyBjbG9jayBhbmQgcmVzZXQgbGluZS4KCk5vdGUgdGhhdCBmaXJzdCBQV00gY2hh
bm5lbCBpcyBjb25uZWN0ZWQgdG8gb3V0cHV0IHBpbiBhbmQgc2Vjb25kCmNoYW5uZWwgaXMgdXNl
ZCBpbnRlcm5hbGx5LCBhcyBhIGNsb2NrIHNvdXJjZSB0byBBQzIwMCBjby1wYWNrYWdlZCBjaGlw
LgpUaGlzIG1lYW5zIHRoYXQgYW55IGNvbWJpbmF0aW9uIG9mIHRoZXNlIHR3byBjaGFubmVscyBj
YW4gYmUgdXNlZCBhbmQKdGh1cyBpdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gYWRkIHBpbmN0cmwg
bm9kZXMgYXQgdGhpcyBwb2ludC4KClNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJu
ZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJv
bi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYuZHRzaSB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRl
eCAwZDVlYTE5MzM2YTEuLmIwZDllZTFlYWQxMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTIyMiw2ICsyMjIsMTYgQEAKIAkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJcHdtOiBwd21AMzAwYTAwMCB7CisJCQljb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtcHdtIjsKKwkJCXJlZyA9IDwweDAzMDBhMDAwIDB4NDAw
PjsKKwkJCWNsb2NrcyA9IDwmb3NjMjRNPiwgPCZjY3UgQ0xLX0JVU19QV00+OworCQkJY2xvY2st
bmFtZXMgPSAibW9kIiwgImJ1cyI7CisJCQlyZXNldHMgPSA8JmNjdSBSU1RfQlVTX1BXTT47CisJ
CQkjcHdtLWNlbGxzID0gPDM+OworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsKKwogCQlw
aW86IHBpbmN0cmxAMzAwYjAwMCB7CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGkt
aDYtcGluY3RybCI7CiAJCQlyZWcgPSA8MHgwMzAwYjAwMCAweDQwMD47Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
