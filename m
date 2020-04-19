Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AD71AFAEA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rXoIzT9WTOI4ZpIGHuG2ZSE/iNadZSUFg0+PBHcki2U=; b=Te0UWdvMImFxKA
	jYffwh8R90GOe6zJBkPTqK/sMs/gpALa4ZrgT+BxxQ7ydl7I3PT4wE43TBvMGU3K+yUrJTgVem7kP
	z82PddZo2fS1vwTNo4HVUQDIkPUtzitG3aYekk2IgDVLT+J2MIhp0hkhYJSELG3T/bXMfh+p9Sb2s
	6PIrAVhjcvcBqjXaWm+RhxUivJwjg1Nam27mPqC10SvK2AcinWnqR/JyxdXkiYPqsOq2gx1DHihez
	CAsugadd5zw+aOZKVFhYdjtJ/EXnjKuyhIilehzM/BBg9wdR7vOwkEjwXc9xiQKQVBmDKHF99VjcX
	+gPgjDiZlMTO3WX1gsAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAL5-0000JZ-Aw; Sun, 19 Apr 2020 13:50:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAKt-0000I7-6X
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:50:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id y24so8180332wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ywX5jmEdgUGdYZJoKeCHIfxzoctUJK2EGaT9uQR5yUI=;
 b=Ric5TG71Fc9oUWNkk1jXMM2unUeX9InPu5dQ8r6RkQ81f0chX+LchTMRA3QXtuVUJM
 3G2s3NKPHIDwzmZ7er1u6lYFHiJO5hD5mXnlhgMb6EgDtGHbndCaApZ2+Mj/GXFYNCJV
 G/LIlfmuBcp47y4RI8OzZeSKEsCV/qEhMbvDRO1KtTxWIWYpMHVVIHZHz9dXV59rAaML
 vNorgGbnoFj0E42KJhc67WmfylKni1S6RobeJ35bbaFXeuNKVKvWVrJTr6alINB6mcPz
 gsYdR73896v/7xAajRvvV0G5vWwadWcmj2hn3CT5Z+kmBoM068c3fHgFhxXlDKVTmquR
 Vzeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ywX5jmEdgUGdYZJoKeCHIfxzoctUJK2EGaT9uQR5yUI=;
 b=UeUYu7hxu+uuKRlJ2JMeHRqei0thyXv6JE6KqIH149Vr/NMpNdAVfCIRRfQvXDfMg2
 Z/0BYm4E8XHW95/+pL6fgPKaB/QB+4NFFEQ8klRH3Gr4qanYaxxMV/3eP0eD2DxJov8J
 yLR/BgzUyDFiCucyny8qN2Bq/UW8IlCYu4qMVh4ZHeIw8pNLDRSdpXhChwcG69DrU85z
 2x1/t/uOggjgBPI1M28EvJSzOZyfuLOxLvX6FW5f6+IxBDcMFaf8IbD/8D18bKMO7Eeq
 yYl5rA0IbOjoTfnj6hgnkSA/g+vZulXSzBMTVigf6z/gsEvaAV32MUHMt1d5mPdLtq9B
 vJpg==
X-Gm-Message-State: AGi0PuYtkd171kCqQk8cjmcFIhoy/yJjILclem18ygyGykRrPEY9ObXE
 lsT9d0DlxLVpv4S6Pybi5Vs=
X-Google-Smtp-Source: APiQypIZkJhJRdyWTJqDq+zn7KccNN0bDpj0/VApnNkzRCZzgzG+PBt1t00uywmzxJhZsiOS1j8KwQ==
X-Received: by 2002:a1c:e284:: with SMTP id z126mr13421207wmg.32.1587304213635; 
 Sun, 19 Apr 2020 06:50:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 z8sm20183940wrr.40.2020.04.19.06.50.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:50:13 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/7] Add support for Allwinner H6 DVFS
Date: Sun, 19 Apr 2020 15:50:04 +0200
Message-Id: <20200419135011.18010-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_065015_282407_1BD8255E 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
IGZyb20gb3JpZ2luYWwgdmVuZG9yIGtlcm5lbFsyXS4KUGx1cyB0aGVyZSBhcmUgbmV3IENQVSBm
cmVxdWVuY2llcyBhdCAxLjZHSHosIDEuN0dIeiBhbmQgMS44R0h6LgoKSSB3cm90ZSBhIHNpbXBs
ZSBzY3JpcHQgdG8gcmFuZG9tbHkgc2V0IGEgZnJlcXVlbmN5IGR1cmluZwphIHJhbmRvbSB0aW1l
WzNdLiBUaGlzIHNjcmlwdCBpcyBxdWl0ZSBzdHJlc3NmdWxsIGFuZCBzZXQgc29tZSBoaWdoCmZy
ZXF1ZW5jeSB3aXRob3V0IGNoZWNraW5nIHRlbXBlcmF0dXJlLiBUaGlzIGNhbiByZXN1bHQgb24g
YmVoYXZpb3IKdGhhdCB3aG91bGQgbm90IG9jY3VycyB3aXRoIHRoZSByZWFsIGNwdWZyZXEgZnJh
bWV3b3JrLgpBcyBNYXhpbWUgcG9pbnQgb3V0IEkgYWxzbyB0ZXN0ZWQgd2l0aCBjcHVmcmVxLWxq
dC1zdHJlc3MtdGVzdAooZm91bmQgaGVyZSBodHRwczovL2dpdGh1Yi5jb20vc3N2Yi9jcHVidXJu
LWFybSkuClRoaXMgc2NyaXB0IGRvZXNuJ3QgdHJpZ2dlciBhbnkgaXNzdWUuCkkgYWxzbyB0ZXN0
IHRoYXQgdGhhdCBvZmZsaW5pbmcgQ1BVMCBhbmQgZG9pbmcgRFZGUyBvbiBvdGhlciBDUFVzCndv
cmtzLiBBcyBDUFUgcmVndWxhdG9yIGlzIG9ubHkgc2V0IGZvciBDUFUwLgoKVGhlIEdQVSBkZXZm
cmVxIHdhcyBkcm9wIGFzIHRoZSByZWd1bGF0b3IgaXMgc3RpbGwgbm90IHByb3Blcmx5CmRyaXZl
IGJ5IHBhbmZyb3N0IGRyaXZlcls0XS4KSSB3aWxsIHJlLWludHJvZHVjZSBpdCBsYXRlci4KCk9u
ZMWZZWogSmlybWFuIGhhcyBhbiBPcmFuZ2UgUGkgMywgSmVybmVqIGhhcyBhIFBpbmVINjQgYW5k
IGEgVGFuaXgKVFg2IGJvYXJkcyBhbmQgSSBoYXZlIGEgQmVlbGluayBHUzEgYm9hcmQgc28gSSBo
YXZlIGVuYWJsZSB0aGVzZQpib2FyZHMuIEJ1dCBDUFUgRGV2ZnJlcSBpcyByZWFsbHkgdG91Y2h5
IGhhcyBpdCBkZXBlbmRzIG9uOgpib2FyZCBkZXNpZ24sIFNvQyBzcGVlZF9ncmFkZSBhbmQgZW52
aXJvbmVtZW50IHdoaWNoIGNhbiBhZmZlY3QKdGhlcm1hbCBjb29saW5nIGFuZCBoYXZlIGRpZmZl
cmVudCBiZWhhdmlvciBmb3IgZGlmZmVyZW50IHVzZXIuCgpJZiBwZW9wbGUgY2FuIHRlc3QgdGhp
cyBzZXJpZSBhbmQgZ2l2ZSBmZWVkYmFjaywgSSB3aWxsIHRyeSB0bwppbnRyb2R1Y2UgdGhpcyBp
biBMaWJyZUVsZWMgdHJlZSwgc28gTEUgY29tbXVuaXR5IGNhbiB0ZXN0IGl0LgoKVGhhbmtzLApD
bMOpbWVudAoKMDogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMDgxNTExNy8K
MTogaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC9sb2cvP2g9dGhzLTUuNwoyOiBodHRwczov
L2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9PcmFuZ2VQaUg2X0xpbnV4NF85L2Jsb2IvbWFz
dGVyL2FyY2gvYXJtNjQvYm9vdC9kdHMvc3VueGkvc3VuNTBpdzZwMS5kdHNpI0wzNDUtTDUxNwoz
OiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9jbGVtZW50cGVyb24vNTVhMDU1ZGFlM2YxM2JiZDE0
ZmIzOWMwMDY5ZmUyZTIKNDogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTQ4
Njg5My8KCkNoYW5nZXMgc2luY2UgdjIgKHRoYW5rcyB0byBNYXhpbWUgUmlwYXJkKToKICAtIENo
YW5nZSBPcmFuZ2UgUGkgYm9hcmRzIHRvIE9yYW5nZSBQaSAzCiAgLSBDaGFuZ2Ugc29jIHNwZWVk
IG52bWVtIG5vZGUgbmFtZQogIC0gRml4IGRldmljZSB0cmVlIHdhcm5pbmdzCiAgLSBEcm9wIEdQ
VSBvcHAgdGFibGVzCgpDaGFuZ2VzIHNpbmNlIHYxICh0aGFua3MgdG8gT25kxZllaiBKaXJtYW4p
OgogIC0gUmVtb3ZlIFBvbGxpbmcgdGhlcm1hbAogIC0gQWRkIE9yYW5nZSBQaSBib2FyZHMKICAt
IFJlbW92ZSBtaW5pbWFsIHZvbHRhZ2UgY2hhbmdlIGZvciBCZWVsaW5rIEdTMQogIC0gQWRkIHJh
bXAtZGVwbGF5IGZvciBHUFUgYW5kIENQVSByZWd1bGF0b3JzCiAgLSBQdXNoIHRvIHRoZXJtYWwg
cG9pbnQgdG8gODXCsEMgKEFsbHdpbm5lciBzZXQgdGhlbSB0byAxMDDCsEMgYW5kIDExNcKwQykK
ICAtIEFkZGVkIDEuNkdIeiBhbmQgMS43R0h6IHRvIE9QUCB0YWJsZS4KCkNsw6ltZW50IFDDqXJv
biAoNik6CiAgYXJtNjQ6IGNvbmZpZ3M6IEVuYWJsZSBzdW41MGkgY3B1ZnJlcSBudm1lbQogIGFy
bTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBDUFUgb3BwIHRhYmxlcyBmb3IgQmVlbGlu
ayBHUzEKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIG9wcCB0YWJsZXMg
Zm9yIE9yYW5nZSBQaSAzCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogRW5hYmxlIENQVSBv
cHAgdGFibGVzIGZvciBUYW5peCBUWDYKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IFNvcnQgUGlu
ZSBINjQgZGV2aWNlLXRyZWUgbm9kZXMKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFi
bGUgQ1BVIGFuZCBHUFUgb3BwIHRhYmxlcyBmb3IgUGluZSBINjQKCk9uZHJlaiBKaXJtYW4gKDEp
OgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCBDUFUgT3BlcmF0aW5nIFBlcmZvcm1h
bmNlIFBvaW50cyB0YWJsZQoKIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgICB8ICAgOSArLQogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9w
cC5kdHNpIHwgMTIxICsrKysrKysrKysrKysrKysrKwogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LW9yYW5nZXBpLTMuZHRzICAgIHwgICAzICsKIC4uLi9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0cyB8ICA0MSArKystLS0KIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi10YW5peC10eDYuZHRzICAgICB8ICAxMyArKwogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgICA0ICsKIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25m
aWcgICAgICAgICAgICAgICAgICB8ICAgMSArCiA3IGZpbGVzIGNoYW5nZWQsIDE3NCBpbnNlcnRp
b25zKCspLCAxOCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCgotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
