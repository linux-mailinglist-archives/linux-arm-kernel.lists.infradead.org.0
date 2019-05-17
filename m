Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F42521DA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 20:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y5qVeIT8TPZAC944AywPBEuX6/WiMugPdPeqINs442U=; b=RwS9sAbcd2aghx
	vb7iOxYwhcC3O+8649w/pKM719iE1MyfmsaTZeyMbnEQxbgQBnVuQQnXxJg+Dy/UN8gOGVIQhLb3y
	Y51rhHPf5hxVnlCQ7w6NhePHGclNrf3t63UgQWZyHrsaG7PYFw979tledGBafhCRPNr1uDyV40P2H
	UgXKY8Wzlhbtzig96iWfWSMZdeJNmsUn0Uvk+pCKjwDhMlsVWFHabSR7OKfETgHJISNzEQzFpAT3L
	r9JV5F6JQ5atu5cjzsaf8oiUPl0EL3/GGj17MlblvJXZdD8eE0bL10o2OtuNiBhF36A/m3fg0ZGA7
	nPCd6Y6gxsRmhG0rSjYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhsy-0004wi-Ba; Fri, 17 May 2019 18:47:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhsq-0004vj-CF
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 18:47:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so8141248wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 11:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vDNkiLJjFXCawT5EirH0tC0q56cBKU4m+h7W3OArVyU=;
 b=ShU59QoSeaAR7MM+7sLznlllmGxphdG2LuoN/mvYJ3l7U35bfVO6bm+wBNKyK4OK6G
 93tikl9UxFB8ch6DwSy+eEwqbtuSTlHHqZCd8ZGqc5GTQAS/tc5WYIm01LGqQvgVv1U9
 Lil/TzFLIcxEtTDgAseMVGvAvVP7oFojlYTEr4hxASIS4sgS9UXbPfpL8hPC/kmUEYHF
 V4B9dQ60bm2eHS4EzoS24pHXg9ruZd5qWimFlVpKtk7B8MK6Nu/buXaGX3VhCT2HTllm
 ELDB1+fDfOkSX2Du3QxSDgcADYM00WisukoewX9/rIxEnyKMLbSi2oO43DoEWTeyu/Su
 vQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vDNkiLJjFXCawT5EirH0tC0q56cBKU4m+h7W3OArVyU=;
 b=EaJRcey9laP3+fqkPXw1AHlER9+Gk17NQTFy1kxLm/ELwlW4Ff8YGYTJBqovMNS3/7
 WsGs8H995ULCsZbB6hcma+JXOlvPhsRDOu4Hog8N0eVwvxDsqA07LcAjHujet6Q0h3mU
 Bexpzh0RmbctW1faaLiCPdt67ugGMpYWnnzUbqhnq0wVLG3w6dgimNVgYG4IVdZJixm6
 h64oupIQ6fjrIzoOYgdeUHY78ycbACAJWdJYG5XC5YzL7IQmFd84vhEC/AG7nv3sfhtX
 YDxmYWJW1MPIdlWKTMe3FlkPH6EQPVsw4OTXTw5j0sE6uPBbCy2hUn/+PRpiwb6jYr9h
 Tb4w==
X-Gm-Message-State: APjAAAVXHaLf5Hu90lw+wwGw06B/+OsnX9IIrULSVLX0/zhK3HmqX8gm
 /JZ1vjT694RlcPaoBVw9has=
X-Google-Smtp-Source: APXvYqwLBIK/ntjqXde729LnM1cq3YTMK/Br76X9joaZ7paAbpaKGQLbTHmzFx5IuUlAJiCxrcBC4A==
X-Received: by 2002:adf:f208:: with SMTP id p8mr16535297wro.160.1558118826182; 
 Fri, 17 May 2019 11:47:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id v20sm5801112wmj.10.2019.05.17.11.47.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 11:47:05 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v5 0/6] Allwinner H6 Mali GPU support
Date: Fri, 17 May 2019 20:46:53 +0200
Message-Id: <20190517184659.18828-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114708_421816_1326288E 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
ciBoYXMgcmVxdWlyZWQKYnkgUm9iIEhlcnJpbmdbMl0uCgpUaGFua3MsCkNsZW1lbnQKClsxXSBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcva3N6YXEvbWVzYS90cmVlL3BhbmZyb3N0XzY0
XzMyClsyXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwNjk5ODI5LwoKWyAg
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
CkNoYW5nZXMgaW4gdjQ6CiAtIEFkZCBidXNfY2xvY2sgcHJvYmUKIC0gRml4IHNhbml0eSBjaGVj
ayBpbiBpby1wZ3RhYmxlCiAtIEFkZCB2cmFtcC1kZWxheQogLSBNZXJnZSBhbGwgYm9hcmRzIGlu
dG8gb25lIHBhdGNoCiAtIFJlbW92ZSB1cHN0cmVhbWVkIE5laWwgQS4gcGF0Y2gKCkNoYW5nZXMg
aW4gdjMgKFRoYW5rcyB0byBNYXhpbWUgUmlwYXJkKToKIC0gUmVhdXRob3IgSWNlbm93eSBmb3Ig
aGVyIHBhdGgKCkNoYW5nZXMgaW4gdjIgKFRoYW5rcyB0byBNYXhpbWUgUmlwYXJkKToKIC0gRHJv
cCBHUFUgT1BQIFRhYmxlCiAtIEFkZCBjbG9ja3MgYW5kIGNsb2NrLW5hbWVzIGluIHJlcXVpcmVk
CgpDbMOpbWVudCBQw6lyb24gKDUpOgogIGRybTogcGFuZnJvc3Q6IGFkZCBvcHRpb25hbCBidXNf
Y2xvY2sKICBpb21tdTogaW8tcGd0YWJsZTogZml4IHNhbml0eSBjaGVjayBmb3Igbm9uIDQ4LWJp
dCBtYWxpIGlvbW11CiAgZHQtYmluZGluZ3M6IGdwdTogbWFsaS1taWRnYXJkOiBBZGQgSDYgbWFs
aSBncHUgY29tcGF0aWJsZQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRkIEFSTSBNYWxpIEdQ
VSBub2RlIGZvciBINgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogQWRkIG1hbGkgR1BVIHN1cHBs
eSBmb3IgSDYgYm9hcmRzCgpJY2Vub3d5IFpoZW5nICgxKToKICBkdC1iaW5kaW5nczogZ3B1OiBh
ZGQgYnVzIGNsb2NrIGZvciBNYWxpIE1pZGdhcmQgR1BVcwoKIC4uLi9iaW5kaW5ncy9ncHUvYXJt
LG1hbGktbWlkZ2FyZC50eHQgICAgICAgICB8IDE1ICsrKysrKysrKystCiAuLi4vZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzICAgfCAgNiArKysrKwogLi4uL2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLTMuZHRzICAgIHwgIDYgKysrKysKIC4uLi9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA2ICsrKysrCiAuLi4vYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgfCAgNiArKysrKwogYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgMTQgKysrKysrKysrKysKIGRy
aXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuYyAgICB8IDI1ICsrKysrKysr
KysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kZXZpY2UuaCAg
ICB8ICAxICsKIGRyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYyAgICAgICAgICAgICAgICB8
ICAyICstCiA5IGZpbGVzIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
CgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
