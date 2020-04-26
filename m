Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9CC1B8FAB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MZAxqqQswTnF97SZ6aY2z9tMSlFDnxwY/Z/E04IvZcw=; b=c+uz+/+nY/V+DW
	ifbHaOaWPN/kw7i0zERPfes8ivF3U28VTAJbolqoPj+o0SBoNPOECb3i1RfraGT4mE+MO6ZPIlQvN
	pxAnFj73wQbUPL9K33FzBl6mqE+Ra3PYUhWV2gIzoTKYG9HP8ksGvbNJBbH6iZWbji3CTApA7ChMS
	lzsTPWKXciizGY+U3p8bDZS6UmMgpRfUkXKgzHfTHXqcYtwcIXTpF55Ci7elWTCVxPwgfOk/roFBd
	f2flPvOZKgulZ6QPjPlESnSSmDiZxypcPn4pL8EWKnwU5Pkv/UVpPWbxwL6uC3tXXJv7g+IOZ0Dlg
	Vd+O1gb4b74kxh793IVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg1t-0001te-4s; Sun, 26 Apr 2020 12:05:01 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1h-0001s6-Om
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so17089931wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DJJgAhfk7oMElKUFRIFXFOYn/qywwEUjFDBuFThEtAQ=;
 b=sfuva1sxBAzZHPvMiK3XuIgAyvFBdMlVYiBHcD57MfQ6+50qw2HX4NmbS1P1I8eKKZ
 /aMgB6u6q36iOGdnSL+BiS0R0gtIYIwuTng8Aqz8O66NHAfRaTAdCEAg01mQBr9SrKWf
 0OckZWSg/C0ujFHCTQzzYIZ1NB/kinnelZK9nPLzlowzGZLn/qqnhxYB9MEWY5L5boJW
 a3BnY5WcUie1SWiCN40liJeF42CZR3g0F/J76siR9kwYFzvaeYOzbaGtU2JyeBT8VG/T
 B1JCreV3F0iK4bHSFNsHtrSCEzoe2s3Ub/em30d6/p3ZKWec8gpRhsGuit6HksSHc9Ub
 C+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DJJgAhfk7oMElKUFRIFXFOYn/qywwEUjFDBuFThEtAQ=;
 b=qzYxY0UxWwl3NnNjayAxjkaT12BqbPZGuhk5XLH3m1OOY5IeI6gPmg/uYWMoxYHhSO
 5l82BolHspjdGp7dgOyoQd81uZ0BK+FakUHC8CTu01ydV2sR40jkmfhF/u8vCXYaRxjZ
 n6SkjCJ/EtHpvGAZ3FLpcPUp65jPQ24F1+ClDZoSr6927mrCJOPGXw426sRconYvFnjb
 6lKDxjDCIRmJ/NyrHQhhPr6UA0Gff2wmxCHZztTUjVylLCO80nZOaPmecE7ETYnx9GR/
 YiGD+nAqx4qdiU6Nw+eODq3sEoTea/6E0oruLXUPjVnb0Y3FhofPEQEL3UWqRkyJVtuq
 cE3A==
X-Gm-Message-State: AGi0PubD0jaM+7Sq53+kGIoYxKBDm9JyhPdBt36YxorpzuD10VmPEWyF
 FqOiKWi7C0Mp8Pa/8HACvN8=
X-Google-Smtp-Source: APiQypJpOD8D5Q3WlZ2OFG6gGKUKug+LlEpJrzk93HqNzrSsg2E8ZE0xp0/y6N/oThQlA3vs6r+5eA==
X-Received: by 2002:a1c:1985:: with SMTP id 127mr22090541wmz.13.1587902686745; 
 Sun, 26 Apr 2020 05:04:46 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:45 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [RFT PATCH 0/7] Add Allwinner H3/H5/A64 HDMI audio
Date: Sun, 26 Apr 2020 14:04:35 +0200
Message-Id: <20200426120442.11560-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050449_829151_1E847717 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIGlzIHNvbWUgd29yayBkb25lIGJ5IE1hcmN1cyBDb29wZXIgYW5kIEplcm5laiDF
oGtyYWJlYy4KVGhlc2UgcGF0Y2hlcyBhcmUgcHJlc2VudCBpbiBMaWJyZUVsZWMga2VybmVsIGFu
ZCBoYXZlIGJlZW4KdGVzdGVkIGJ5IExFIHVzZXJzLgoKSSBoYXZlIHJld29yayB0aGVtIHRvIGZv
bGxvdyBrZXJuZWwgcnVsZXMgYnV0IEkgY2FuJ3QgdGVzdAp0aGVtIGFzIEkgZG9uJ3QgaGF2ZSBI
MywgSDUgb3IgQTY0IGJvYXJkcy4KCklmIHNvbWUgc3VueGkgdXNlcnMgY291bGQgY29uZmlybSB0
aGV5IHdvcmtlZCBhcyBleHBlY3RlZCEKClRoaXMgc2VyaWUgZ29lcyBpbiB0b3Agb2ZmICJBZGQg
SDYgSTJTIHN1cHBvcnQiWzBdLgpZb3UgY2FuIGZpbmQgYSBicmFuY2ggZm9yIHRlc3RpbmcgaGVy
ZVsxXS4KClRoYW5rcywKQ2xlbWVudAoKMDogaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzgxNzkx
NC8KMTogaHR0cHM6Ly9naXRodWIuY29tL2NsZW1lbnRwZXJvbi9saW51eC90cmVlL2FsbHdpbm5l
cl9oZG1pCgpNYXJjdXMgQ29vcGVyICg3KToKICBhcm06IGR0czogc3VueGk6IGgzL2g1OiBBZGQg
REFJIG5vZGUgZm9yIEhETUkKICBhcm06IGR0czogc3VueGk6IGgzL2g1OiBBZGQgSERNSSBhdWRp
bwogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBBZGQgREFJIG5vZGUgZm9yIEhETUkKICBh
cm02NDogZHRzOiBhbGx3aW5uZXI6IGE2NDogQWRkIEhETUkgYXVkaW8KICBhcm06IHN1bjhpOiBo
MzogQWRkIEhETUkgYXVkaW8gdG8gT3JhbmdlIFBpIDIKICBhcm06IHN1bjhpOiBoMzogQWRkIEhE
TUkgYXVkaW8gdG8gQmVlbGluayBYMgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBBZGQg
SERNSSBhdWRpbyB0byBQaW5lNjQKCiBhcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy1iZWVsaW5r
LXgyLmR0cyAgICAgfCAgOCArKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktaDMtb3Jhbmdl
cGktMi5kdHMgICAgIHwgIDggKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0
c2kgICAgICAgICAgICB8IDM0ICsrKysrKysrKysrKysrKysrKwogLi4uL2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktYTY0LXBpbmU2NC5kdHMgIHwgIDggKysrKysKIGFyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDM1ICsrKysrKysrKysrKysrKysrKysKIDUg
ZmlsZXMgY2hhbmdlZCwgOTMgaW5zZXJ0aW9ucygrKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
