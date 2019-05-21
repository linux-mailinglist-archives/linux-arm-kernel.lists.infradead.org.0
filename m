Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2048125502
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IQTXY/jrni39A9ubpEVKPNZHIPYOuaxBUhjY50P/SH4=; b=l7mD/T7wGiDWbT
	qPtGgyhjsO8xmBuE9cwZWt7ouaLWMCmoxmXaTDLAo9QqKUZy1VUDHFGdTSKNX2o0sPogz9Rsq/ZxZ
	te75CfQuAP33YnC2siN/JRqMTCQEVgqLQ5TdcfeoxKsG0B/PkQ9YFiXDvWHypTMb79o329lBE9Ly8
	EyP7YFsYpFQVYf1G57a622tGZRDQQAmLq7t2Yn/6JpbIQZDbTZqkvaNdEyqjw0rDr638DRzsBxDdI
	uA0imMFt1fG6gnY0aUFam742H4Q337c9YQpP0vO/fjLYziyb1ZuydA75Bvx+Bve/87i3w0+PF/EGI
	C0J0R/CvKJo2PjUykUjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7MN-0006YA-SJ; Tue, 21 May 2019 16:11:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7M5-0006LM-JV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:11:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id f204so3594833wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v1KBi6qqP9EGBxX48fTi6KulOfsUgVuB2MNi/ParILE=;
 b=dRVai1T8gwETI5/fzjSqe8AAgm5d+9JKj0lCvTp44DKAxqPXkAJsbnpAfkaDBrRrh4
 jn7VRBDyVr1x2rk+QTLGqyAkgq5Fqp3egFWKGlh+H+TEDRbyGYTlPws4+ex4/X4Cwqfm
 WqNC2UHEkv/CuIg5MphCgSUSEuY6Yv9sZ9qqR8yaqh02ooNXjkJg2iontuV71habufQ4
 DFT/XugmCdba/HZ1Vdm2tFIPxi+Ooz1kc1MUa/TDWI7D7vKh36ygoFk2wR0IyWnE5UBq
 ZGFxScYi4/1zfKL0PIG3bCbz3lk7F4a9PDxPm6ysFc3XwNYOXrMdzNA/Vd6v3f1FbRBb
 s60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v1KBi6qqP9EGBxX48fTi6KulOfsUgVuB2MNi/ParILE=;
 b=U/rAShfFrqhxUT8iw0nomr9rDfApndgjPjaHztxvixfLDWqcQufjtpnMNIvQ1lEqjs
 tqPhFk28L5Z+aQreXLk7h7L1sNKVyfBhEF6aWETjkxx2pvJIJ1nEeig732u+rYrNOYOF
 10Aw6OZdJ+xo0J3cmJ0wToKsJzi0vHbL1ZwfezJJJAb7dB4znkOjB77f1Z9w/FRErnT5
 WQRQTpIW02nwkbo/KKRqRVxJHCRJGnuVKKBeA3sTY5qwX2xcCF6fVC23rtg8AbwqYVJV
 Ap8FEo8coSub65tWXiltetHf3ZOBfi08SD3NV1u2REUfJrsnhW7HuSDa8/qNqWc2eYzR
 vzfg==
X-Gm-Message-State: APjAAAX1amesApIp0pYFaW55L9HwPj0JxxVl06fG881XsyDowJfMrcs0
 5QEM6enbfxEB+g+ZFaGqrSM=
X-Google-Smtp-Source: APXvYqxzJh2R7WO4N4CR6Z7NWsbiVf7u/9TEGUdJ5mcXxXr27xkPEERbRL7FqUk2kZM5+H2JkAx1RQ==
X-Received: by 2002:a1c:b3c3:: with SMTP id c186mr3968354wmf.93.1558455068018; 
 Tue, 21 May 2019 09:11:08 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id n63sm3891094wmn.38.2019.05.21.09.11.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:11:07 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v6 0/6] Allwinner H6 Mali GPU support
Date: Tue, 21 May 2019 18:10:56 +0200
Message-Id: <20190521161102.29620-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091109_639620_8ACCC1DE 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGUgQWxsd2lubmVyIEg2IGhhcyBhIE1hbGktVDcyMCBNUDIgd2hpY2ggc2hvdWxkIGJl
IHN1cHBvcnRlZCBieQp0aGUgbmV3IHBhbmZyb3N0IGRyaXZlci4gVGhpcyBzZXJpZXMgZml4IHR3
byBpc3N1ZXMgYW5kIGludHJvZHVjZSB0aGUKZHQtYmluZGluZ3MgYnV0IGEgc2ltcGxlIGJlbmNo
bWFyayBzaG93IHRoYXQgaXQncyBzdGlsbCBOT1QgV09SS0lORy4KCkknbSBwdXNoaW5nIGl0IGlu
IGNhc2Ugc29tZW9uZSB3YW50IHRvIGNvbnRpbnVlIHRoZSB3b3JrLgoKVGhpcyBoYXMgYmVlbiB0
ZXN0ZWQgd2l0aCBNZXNhM0QgMTkuMS4wLVJDMiBhbmQgYSBHUFUgYml0bmVzcyBwYXRjaFsxXS4K
Ck9uZSBwYXRjaCBpcyBmcm9tIEljZW5vd3kgWmhlbmcgd2hlcmUgSSBjaGFuZ2VkIHRoZSBvcmRl
ciBhcyByZXF1aXJlZApieSBSb2IgSGVycmluZ1syXS4KClRoYW5rcywKQ2xlbWVudAoKWzFdIGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9rc3phcS9tZXNhL3RyZWUvcGFuZnJvc3RfNjRf
MzIKWzJdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA2OTk4MjkvCgoKWyAg
MzQ1LjIwNDgxM10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKWyAgMzQ1
LjIwOTYxN10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFT
MCBhdCBWQQoweDAwMDAwMDAwMDI0MDA0MDAKWyAgMzQ1LjIwOTYxN10gUmVhc29uOiBUT0RPClsg
IDM0NS4yMDk2MTddIHJhdyBmYXVsdCBzdGF0dXM6IDB4ODAwMDAyQzEKWyAgMzQ1LjIwOTYxN10g
ZGVjb2RlZCBmYXVsdCBzdGF0dXM6IFNMQVZFIEZBVUxUClsgIDM0NS4yMDk2MTddIGV4Y2VwdGlv
biB0eXBlIDB4QzE6IFRSQU5TTEFUSU9OX0ZBVUxUX0xFVkVMMQpbICAzNDUuMjA5NjE3XSBhY2Nl
c3MgdHlwZSAweDI6IFJFQUQKWyAgMzQ1LjIwOTYxN10gc291cmNlIGlkIDB4ODAwMApbICAzNDUu
NzI5OTU3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTAsCnN0
YXR1cz0weDgsIGhlYWQ9MHgyNDAwNDAwLCB0YWlsPTB4MjQwMDQwMCwgc2NoZWRfam9iPTAwMDAw
MDAwOWUyMDRkZTkKWyAgMzQ2LjA1NTg3Nl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEg
c3RhdHVzPTEKWyAgMzQ2LjA2MDY4MF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQ
YWdlIGZhdWx0IGluIEFTMCBhdCBWQQoweDAwMDAwMDAwMDJDMDBBMDAKWyAgMzQ2LjA2MDY4MF0g
UmVhc29uOiBUT0RPClsgIDM0Ni4wNjA2ODBdIHJhdyBmYXVsdCBzdGF0dXM6IDB4ODEwMDAyQzEK
WyAgMzQ2LjA2MDY4MF0gZGVjb2RlZCBmYXVsdCBzdGF0dXM6IFNMQVZFIEZBVUxUClsgIDM0Ni4w
NjA2ODBdIGV4Y2VwdGlvbiB0eXBlIDB4QzE6IFRSQU5TTEFUSU9OX0ZBVUxUX0xFVkVMMQpbICAz
NDYuMDYwNjgwXSBhY2Nlc3MgdHlwZSAweDI6IFJFQUQKWyAgMzQ2LjA2MDY4MF0gc291cmNlIGlk
IDB4ODEwMApbICAzNDYuNTYxOTU1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogZ3B1IHNjaGVkIHRp
bWVvdXQsIGpzPTEsCnN0YXR1cz0weDgsIGhlYWQ9MHgyYzAwYTAwLCB0YWlsPTB4MmMwMGEwMCwg
c2NoZWRfam9iPTAwMDAwMDAwYjU1YTlhODUKWyAgMzQ2LjU3MzkxM10gcGFuZnJvc3QgMTgwMDAw
MC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEKWyAgMzQ2LjU3ODcwN10gcGFuZnJvc3QgMTgwMDAwMC5n
cHU6IFVuaGFuZGxlZCBQYWdlIGZhdWx0IGluIEFTMCBhdCBWQQoweDAwMDAwMDAwMDJDMDBCODAK
CkNoYW5nZSBpbiB2NToKIC0gUmVtb3ZlIGZpeCBpbmRlbnQKCkNoYW5nZXMgaW4gdjQ6CiAtIEFk
ZCBidXNfY2xvY2sgcHJvYmUKIC0gRml4IHNhbml0eSBjaGVjayBpbiBpby1wZ3RhYmxlCiAtIEFk
ZCB2cmFtcC1kZWxheQogLSBNZXJnZSBhbGwgYm9hcmRzIGludG8gb25lIHBhdGNoCiAtIFJlbW92
ZSB1cHN0cmVhbWVkIE5laWwgQS4gcGF0Y2gKCkNoYW5nZSBpbiB2MyAoVGhhbmtzIHRvIE1heGlt
ZSBSaXBhcmQpOgogLSBSZWF1dGhvciBJY2Vub3d5IGZvciBoZXIgcGF0aAoKQ2hhbmdlcyBpbiB2
MiAoVGhhbmtzIHRvIE1heGltZSBSaXBhcmQpOgogLSBEcm9wIEdQVSBPUFAgVGFibGUKIC0gQWRk
IGNsb2NrcyBhbmQgY2xvY2stbmFtZXMgaW4gcmVxdWlyZWQKCkNsw6ltZW50IFDDqXJvbiAoNSk6
CiAgZHJtOiBwYW5mcm9zdDogYWRkIG9wdGlvbmFsIGJ1c19jbG9jawogIGlvbW11OiBpby1wZ3Rh
YmxlOiBmaXggc2FuaXR5IGNoZWNrIGZvciBub24gNDgtYml0IG1hbGkgaW9tbXUKICBkdC1iaW5k
aW5nczogZ3B1OiBtYWxpLW1pZGdhcmQ6IEFkZCBINiBtYWxpIGdwdSBjb21wYXRpYmxlCiAgYXJt
NjQ6IGR0czogYWxsd2lubmVyOiBBZGQgQVJNIE1hbGkgR1BVIG5vZGUgZm9yIEg2CiAgYXJtNjQ6
IGR0czogYWxsd2lubmVyOiBBZGQgbWFsaSBHUFUgc3VwcGx5IGZvciBINiBib2FyZHMKCkljZW5v
d3kgWmhlbmcgKDEpOgogIGR0LWJpbmRpbmdzOiBncHU6IGFkZCBidXMgY2xvY2sgZm9yIE1hbGkg
TWlkZ2FyZCBHUFVzCgogLi4uL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnR4dCAgICAg
ICAgIHwgMTUgKysrKysrKysrKysrLQogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxp
bmstZ3MxLmR0cyAgIHwgIDYgKysrKysKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFu
Z2VwaS0zLmR0cyAgICB8ICA2ICsrKysrCiAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3Jh
bmdlcGkuZHRzaSAgICAgfCAgNiArKysrKwogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtcGluZS1oNjQuZHRzIHwgIDYgKysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpICB8IDE0ICsrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL3BhbmZy
b3N0L3BhbmZyb3N0X2RldmljZS5jICAgIHwgMjIgKysrKysrKysrKysrKysrKysrKwogZHJpdmVy
cy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5oICAgIHwgIDEgKwogZHJpdmVycy9p
b21tdS9pby1wZ3RhYmxlLWFybS5jICAgICAgICAgICAgICAgIHwgIDIgKy0KIDkgZmlsZXMgY2hh
bmdlZCwgNzYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
