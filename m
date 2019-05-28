Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911432CB6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dRNdUbgA1p1s8wrkojmIpR1O0wfaXKqecryH9O71sxk=; b=IWP3PGwyMSxXaP
	dgWFqqeQhGidgrPQ+LHUrSGnEQY5TtgV1yaBWWkMRzE7IIuImDsTdXeS+yczww23uiLw8yJSiZNe7
	ZnWhAV8otHg7wCbgio0jhVdpQvxpjtd/JS8sjrAd94A/S067nJGmttpVBnnNYmm64/rp5YqVZIyhB
	kCx240KG8S0GWQOpCLd1+zaCtCeWdwb/++csYiHCu0V8NbY4Qq0SUnGNF0uANgRdzBzVoF+BpDIS6
	nTpZVaDLz2cRdR2m7rdcLV7WniOqVx9DISgqDAvydxChGtzNofZjx6dOmZUdbdoVSbLjMbuy2bneo
	rHnqia2emXIysVRfuBWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVelC-0001Vw-To; Tue, 28 May 2019 16:15:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekd-0008Jb-I8
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id h1so6757443wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t4fNuHNyNd5YWtEhF5ffcGp/LQDSV+yF804x4uNxMPE=;
 b=dpSBRvHt0/ewBa230CkxQ60kS10EXTbLJLifOiTz4RZTmmVQM2vRxd8unWYqDmUSp1
 EWsPKepGFokj30p8xyfx9N5JbPdIdmzXmtwJ5yCZzrVMUzKYIAwT/jiF01HS8hw4eLWr
 d0NGjVfDfY4kil+Qc6Fdv1HRNLbyoU3Pq6Pi9O1CbkrNKQnOdbhOmnP5dkgmvqh/nsQV
 /JnIjF9xrxK7zJogasjEBQQLi/HcVDwlhtzjYOKAL3boLxE9eQHAtEKwMZboHXbe9ceT
 J2KmGaSgXRZDu6/jnLSjhSkwUmHBOYmKcAkK/mj9QzazUi0O6ts7tYwxfYK6ge5prHq5
 dlnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t4fNuHNyNd5YWtEhF5ffcGp/LQDSV+yF804x4uNxMPE=;
 b=DYbq0MNnevk6h8jEprGqdHtuZtxVvMqdCqB2R3KiY+wZ7UL0nf70NwKiGiO6whye8n
 WBHHjT53MavlfcIpfs7VYgVx4TfYX79pyHoINSMqD1ggLnl6xFIAwQVaDkHR+f2LWWuC
 zF1yYxBKz419lMiyKtBuG4N10vuoj06hLnz1Jes8BXf3CG27aKs/N/6aJLev6+N96tf7
 CEyhi7VxThd30Gvt8/5xIjp07W6P1pXbfXb5i7Fsu/2pnwM+5E3yNnojQZzJIKxjwfM4
 JNFvLalOatshg1MRrmpJudfQMwpyqv0e12wJDbIJZDlpE+u2w+iy7XdQW7EkELZkEQ+/
 zc3w==
X-Gm-Message-State: APjAAAXFLgxQzpM0lL2N/qGcJJFkqxphVoF2XFLDg6LqB42LWY2ufcSH
 ekTNWhii1GFReDrGlFaCLSM=
X-Google-Smtp-Source: APXvYqwz2aW7Eu9zLK7jrGuM0szO6rQV52q6NbuzpwC4zNuAynJd1LRd/HFIVRILdoCmMC8bYpqUyA==
X-Received: by 2002:a05:6000:1285:: with SMTP id
 f5mr9066145wrx.112.1559060094876; 
 Tue, 28 May 2019 09:14:54 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.14.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:14:54 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 00/12] Allwinner A64/H6 IR support
Date: Tue, 28 May 2019 18:14:28 +0200
Message-Id: <20190528161440.27172-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091459_604334_00535547 
X-CRM114-Status: GOOD (  13.92  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBNjQgSVIgc3VwcG9ydCBzZXJpZXNbMV0gcG9pbnRlZCBvdXQgdGhhdCBhbiBBMzEgYmlu
ZGluZ3Mgc2hvdWxkIGJlCmludHJvZHVjZWQuCgpUaGlzIHNlcmllcyBpbnRyb2R1Y2UgdGhlIEEz
MSBjb21wYXRpYmxlIGJpbmRpbmdzLCB0aGVuIHN3aXRjaCBpdCBvbgp0aGUgYWxyZWFkeSBleGlz
dGluZyBib2FyZC4KCkZpbmFsbHkgaW50cm9kdWNlIEE2NCBhbmQgSDYgc3VwcG9ydC4KCkkgZGlk
bid0IGVuYWJsZSB0aGUgSVIgb24gb3RoZXIgSDYgYm9hcmRzIGFzIE9uZHJlaiByZXBvcnRlZCBh
biBpc3N1ZQpvbiBoaXMgYm9hcmRbMl0uCgpSZWdhcmRzLApDbMOpbWVudAoKWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMDMxMzkwLyMxMjIxNDY0ClsyXSBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAxOS81LzI3LzMyMQoKQ2hhbmdlcyBzaW5jZSB2MjoKIC0gRGlz
YWJsZSBJUiBmb3Igb3RoZXIgSDYgYm9hcmRzCiAtIFNwbGl0IERUUyBwYXRjaCBmb3IgSDMvSDUK
IC0gSW50cm9kdWNlIElSIHF1aXJrcwoKQ2hhbmdlcyBzaW5jZSB2MToKIC0gRG9jdW1lbnQgcmVz
ZXQgbGluZXMgYXMgcmVxdWlyZWQgc2luY2UgQTMxCiAtIEV4cGxhaW4gdGhlIG1lbW9yeSBtYXBw
aW5nIGRpZmZlcmVuY2UgaW4gY29tbWl0IGxvZwogLSBGaXggbWlzc3BlbGxpbmcgIkFsbHdpbmVy
IiB0byAiQWxsd2lubmVyIgoKQ2zDqW1lbnQgUMOpcm9uICgxMCk6CiAgZHQtYmluZGluZ3M6IG1l
ZGlhOiBzdW54aS1pcjogYWRkIEEzMSBjb21wYXRpYmxlCiAgbWVkaWE6IHJjOiBJbnRyb2R1Y2Ug
c3VueGlfaXJfcXVpcmtzCiAgbWVkaWE6IHJjOiBzdW54aTogQWRkIEEzMSBjb21wYXRpYmxlCiAg
QVJNOiBkdHM6IHN1bnhpOiBQcmVmZXIgQTMxIGJpbmRpbmdzIGZvciBJUgogIEFSTTogZHRzOiBz
dW54aTogUHJlZmVyIEEzMSBiaW5kaW5ncyBmb3IgSVIKICBkdC1iaW5kaW5nczogbWVkaWE6IHN1
bnhpLWlyOiBBZGQgQTY0IGNvbXBhdGlibGUKICBkdC1iaW5kaW5nczogbWVkaWE6IHN1bnhpLWly
OiBBZGQgSDYgY29tcGF0aWJsZQogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCBJUiBy
ZWNlaXZlciBub2RlCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogRW5hYmxlIElSIG9uIEJl
ZWxpbmsgR1MxCiAgYXJtNjQ6IGRlZmNvbmZpZzogZW5hYmxlIElSIFNVTlhJIG9wdGlvbgoKSWdv
cnMgTWFrZWpldnMgKDEpOgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBBZGQgSVIgbm9k
ZQoKSmVybmVqIFNrcmFiZWMgKDEpOgogIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogYTY0OiBFbmFi
bGUgSVIgb24gT3JhbmdlIFBpIFdpbgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1
bnhpLWlyLnR4dCAgICB8IDExICsrLQogYXJjaC9hcm0vYm9vdC9kdHMvc3VuNmktYTMxLmR0c2kg
ICAgICAgICAgICAgIHwgIDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaSAg
ICAgICAgICAgICB8ICAyICstCiBhcmNoL2FybS9ib290L2R0cy9zdW45aS1hODAuZHRzaSAgICAg
ICAgICAgICAgfCAgMiArLQogYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSAgICAg
ICAgICAgIHwgIDIgKy0KIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtb3JhbmdlcGktd2lu
LmR0cyB8ICA0ICsrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0
c2kgfCAxOCArKysrKwogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0
cyAgIHwgIDQgKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
ICB8IDE5ICsrKysrCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAg
ICAgfCAgMSArCiBkcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jICAgICAgICAgICAgICAgICAg
fCA3MCArKysrKysrKysrKysrKystLS0tCiAxMSBmaWxlcyBjaGFuZ2VkLCAxMTUgaW5zZXJ0aW9u
cygrKSwgMjAgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
