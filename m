Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB8619ED02
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fDI6vE+Bdqf/5aNNrY8n0HsONaetftmyVXVEvBvRR7U=; b=RKMgMFFH+kx8P4
	RONGQK7TB3D8RifHvEU/BgS/2Uc39FfkEZuwbtG5hOJe68x7b+EYyfX+3pN2cSnWOsh9FZ/YD/5vO
	hSUw07Uil8Ztl31FPIp5fDYyoDDeRgia4SBqNG9Er77yFBMmvAdc4WiILXUkiqygUd6Tr+jdhEPMu
	80UgLfe+VWYgjECujyHsEgzM7U2EiA8i/4vMJw7K3i/xwXH/ICiychNXxko/FvIUwKUdeBoQEXdqe
	ajI6xR78oGfeVlAddK2fEvy3oGlXET+qEu78e8GtvZNf10MeUL7Iiyct+W6ARCOpABZ579AJzm2G9
	Tdub332mp8Q9BrxCbGQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9Bz-0001aR-Lp; Sun, 05 Apr 2020 17:36:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Bp-0001Xe-QP
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:36:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id c195so6165085wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SRF6N8cRuZvvVCXMCOyMNsHazept9Ws44rtULXoUZv0=;
 b=tTY8TD7uDnvBkw/UoC8Tk43vS+8cikFxHyF9Om2gvwsmg+ktlq4rr31JyEUUafawmX
 bNfBrHvRqtWcuOfPacBJGOLPkY9/GHptKl1Wg4VeTcSodNXbjhEX5cxwZDqGouCSyqFO
 5bsfr1Otud+9TNhTCn6Z1FPh4CNm5kStnSBksV2D006oWRzsOOUwR/u+YJ/iZxFvD1C7
 5XcxfksQYbjLpzX8WGaoVNhfj6fiB4z6VGv4xVLO3ttinhEVh7+33e/tbm5BqC0ECApm
 PItcxqN3sN4j7Ck9f0BCkWTlsfTrf8uOA5D/PXrJeg/wZ3Y7JTauiqMzZdtjr4bjPELg
 ClkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SRF6N8cRuZvvVCXMCOyMNsHazept9Ws44rtULXoUZv0=;
 b=BDVgxAOGdhkeZclF3qQaI0HtKgr0qvyTJv0eahS3jTLUCJ3aDJcbcbp4vKdFWBeaPP
 sHXVcFLB/Oo0x/tjYai2OJrHIzXAKiXyHD/T95IT05Dzn2W7Ojcpl6OdWe/dSxqVP3fV
 6xWF7LHpB6rqnWkPzBCFSRl8s6rBH2VQK5hgDhkDKDs7p4ZdW1+Z8xY0AKM0u7LjXabf
 1R9jhyvI7r2QRLtrM2c8ACNv5chNnFnuWiuhBHg9NoeNIOiMg7qsXFnnbCUkN73ti2eu
 iHe+jdzR6sEaYpV5MCgYZs+ar1ybvnRWhjHbWS68FH1tICKj2fHrPSTi6fPTGjy2KJPP
 07aw==
X-Gm-Message-State: AGi0PuZS3qhjjBnqCm8RBhDCS1zr8W57+AoBdSB+2qVe0wDvBxX3CEef
 E1ycC4lsBFluraRFYqgRZDk=
X-Google-Smtp-Source: APiQypJEdQdYeNEp0+y3WDmC4ooJao1v/Bv+H68S8EDXP68odyUR9G3QLytTafla8bD+dMOGZ5fhcQ==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr9998785wmg.58.1586108165177;
 Sun, 05 Apr 2020 10:36:05 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id s13sm6031669wrw.20.2020.04.05.10.36.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:36:04 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/7] Add support for Allwinner H6 DVFS
Date: Sun,  5 Apr 2020 19:35:54 +0200
Message-Id: <20200405173601.24331-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103609_857982_DA75298D 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
ZXJzIGFyZSBtZXJnZWQgd2UgY2FuIGNvbnRpYnV0ZSBvbiBEVkZTCnN1cHBvcnQgZm9yIEFsbHdp
bm5lciBINi4KClRoaXMgc2VyaWUgaXMgYmFzZWQgb24gWWFuZ3RhbyBMaSBzZXJpZVswXSBhbmQg
T25kxZllaiBKaXJtYW4gd29ya1sxXS4KCk1vc3Qgb2YgdGhlIE9QUCB0YWJsZXMgYXJlIHRha2Vu
IGZyb20gb3JpZ2luYWwgdmVuZG9yIGtlcm5lbFsyXS4KUGx1cyB0aGVyZSBpcyBhIG5ldyBDUFUg
ZnJlcXVlbmNpZXMgYXQgMS42R0h6LCAxLjdHSHogYW5kIDEuOEdIei4KCkkgd3JvdGUgYSBzaW1w
bGUgc2NyaXB0IHRvIHJhbmRvbWx5IHNldCBhIGZyZXF1ZW5jeSBkdXJpbmcKYSByYW5kb20gdGlt
ZVszXS4KV2l0aCB0aGlzIHNjcmlwdCBhbmQgdXNpbmcgc3RyZXNzLW5nIGR1cmluZyBzZXZlcmFs
IGhvdXJzLCBJIGRpZG4ndApzZWUgYW55IGlzc3VlLiBNb3Jlb3ZlciBJIGhhdmUgdGVzdGVkIHNw
ZWNpZmljYWxseSB0aGUgMS44R0h6IG9uIG15CkJlZWxpbmsgR1MxLCBtYXggdGhlcm1hbCA4NcKw
QyBpcyByZWFjaGVkIHZlcnkgcXVpY2tseSBhbmQgdGhlbiB0aGUKU29DIG9zY2lsbGF0ZXMgcXVp
Y2tseSBiZXR3ZWVuIDEuNSBhbmQgMS44R0h6LiBTbyBpIGhhdmUgYWRkZWQKMS42R0h6IGFuZCAx
LjdHSHogbXkgYm9hcmQgbm93IG9zY2lsbGF0ZSBzbG93ZXIgYmV0d2VlbiAxLjVHSHogYW5kCjEu
NkdIeiBzd2FwcGluZyBldmVyeSBzZWNvbmQgYW5kIHRlbXBlcmF0dXJlIGlzIGFsc28gbW9yZXN0
YWJsZS4KCkkgYWxzbyB0ZXN0IHRoYXQgdGhhdCBvZmZsaW5pbmcgQ1BVMCBhbmQgZG9pbmcgRFZG
UyBvbiBvdGhlciBDUFVzCndvcmtzLiBBcyBDUFUgcmVndWxhdG9yIGlzIG9ubHkgc2V0IGZvciBD
UFUwLgoKQnV0IG1heWJlIGl0IGRvZXNuJ3QgY29zdCBtdWNoIHRvIHNldCB0aGUgcmVndWxhdG9y
IGZvciBhbGwgdGhlIENQVXM/CgpKZXJuZWogdGVzdCB0aGUgR1BVIGRldmZyZXEgb24gc2V2ZXJh
bCBINiBib2FyZCBwYXJ0aWN1bGFyeSB0aGUKVGFuaXggVFg2IHdoaWNoIGRvZXNuJ3QgaGF2ZSBh
IHByb3BlciBkZWRpY2F0ZWQgUE1JQyBhbmQgZG9lc24ndApoYWQgYW55IHRyb3VibGUgd2l0aCBp
dC4KCkRvIHlvdSB0aGluayBJIGNhbiBlbmFibGUgR1BVIE9QUCBmb3IgYWxsIEg2IEJvYXJkcz8K
CkFsc28gWWFuZ3RhbyBMaSBlbmFibGUgRFZGUyBmb3IgUGluZTY0LCBhcyBJIGNhbid0IHRlc3Qg
aXQuCkknbSB3YWl0aW5nIGZvciBoaXMgYWNrIG9yIHNvbWVvbmUgd2hvIGhhcyBhIFBpbmU2NCBh
bmQgY2FuIHRlc3QgdGhpcwpzZXJpZSBiZWZvcmUgcmVlbmFibGluZyB0aGlzIGJvYXJkLgoKVGhh
bmtzLApDbMOpbWVudAoKMDogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMDgx
NTExNy8KMTogaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC9sb2cvP2g9dGhzLTUuNwoyOiBo
dHRwczovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9PcmFuZ2VQaUg2X0xpbnV4NF85L2Js
b2IvbWFzdGVyL2FyY2gvYXJtNjQvYm9vdC9kdHMvc3VueGkvc3VuNTBpdzZwMS5kdHNpI0wzNDUt
TDUxNwozOiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9jbGVtZW50cGVyb24vNTVhMDU1ZGFlM2Yx
M2JiZDE0ZmIzOWMwMDY5ZmUyZTIKCkNoYW5nZXMgc2luY2UgdjEgKHRoYW5rcyB0byBPbmTFmWVq
IEppcm1hbik6CiAgLSBSZW1vdmUgUG9sbGluZyB0aGVybWFsCiAgLSBBZGQgT3JhbmdlIFBpIGJv
YXJkcwogIC0gUmVtb3ZlIG1pbmltYWwgdm9sdGFnZSBjaGFuZ2UgZm9yIEJlZWxpbmsgR1MxCiAg
LSBBZGQgcmFtcC1kZXBsYXkgZm9yIEdQVSBhbmQgQ1BVIHJlZ3VsYXRvcnMKICAtIFB1c2ggdG8g
dGhlcm1hbCBwb2ludCB0byA4NcKwQyAoQWxsd2lubmVyIHNldCB0aGVtIHRvIDEwMMKwQyBhbmQg
MTE1wrBDKQogIC0gQWRkZWQgMS42R0h6IGFuZCAxLjdHSHogdG8gT1BQIHRhYmxlLiAKCkNsw6lt
ZW50IFDDqXJvbiAoNCk6CiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogQWRkIEdQVSBPcGVy
YXRpbmcgUGVyZm9ybWFuY2UgUG9pbnRzIHRhYmxlCiAgYXJtNjQ6IGNvbmZpZ3M6IEVuYWJsZSBz
dW41MGkgY3B1ZnJlcSBudm1lbQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBD
UFUgYW5kIEdQVSBvcHAgdGFibGVzIGZvciBCZWVsaW5rCiAgICBHUzEKICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIGFuZCBHUFUgb3BwIHRhYmxlcyBmb3IgT3JhbmdlIFBp
CiAgICBib2FyZHMKCk9uZHJlaiBKaXJtYW4gKDIpOgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjog
aDY6IEFkZCB0aGVybWFsIHRyaXAgcG9pbnRzL2Nvb2xpbmcgbWFwCiAgYXJtNjQ6IGR0czogYWxs
d2lubmVyOiBoNjogQWRkIENQVSBPcGVyYXRpbmcgUGVyZm9ybWFuY2UgUG9pbnRzIHRhYmxlCgpZ
YW5ndGFvIExpICgxKToKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBBZGQgY2xvY2sgdG8g
Q1BVIGNvcmVzCgogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAg
IHwgIDEwICstCiAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0c2kg
fCAxMjEgKysrKysrKysrKysrKysrKysrCiAuLi4vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1ncHUtb3BwLmR0c2kgfCAgNzQgKysrKysrKysrKysKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICAxMCArLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgIDM2ICsrKysrKwogYXJjaC9hcm02NC9jb25maWdzL2Rl
ZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgICAxICsKIDYgZmlsZXMgY2hhbmdlZCwgMjUwIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWNwdS1vcHAuZHRzaQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1ncHUtb3BwLmR0
c2kKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
