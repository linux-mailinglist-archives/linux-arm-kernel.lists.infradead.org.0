Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B25151C9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 15:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GFq0aoRdAIbUsQeBFDY0/dy4HMKhN57fZCBfydzPg7A=; b=GOpWVH+rFozj/L
	MkHG/r92vyTuux8cRWh0Vaooc7oMafqQ1Ruiomw9pRFTk2H+lPpuehujIMtVvCzHExwLA58XWjSff
	Zf1rvcOkHMe8VS+F/f6LmBPrLhn4MxTmdufTl0++M/33pUCh7WruJUVf/a85pnEF/pjnFcNxmeLNG
	KskFLFm100c2ib3AbosMgve4UJT9RUkc62/T336m4TKaI1BK/zlZhaZems6q8S50dtMEOTH/4nVjp
	5fNgv3U+kp2uHDdhW2SEAKp3i4KTcuvrgzxetv2zEydLu+QIRGl+8USmu9UMcoo+rPg1la4prxiZd
	hWG2ocGYoy8/rqMegoyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzZI-0007ZA-Hr; Tue, 04 Feb 2020 14:52:48 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iyzYw-0007Qk-Cc; Tue, 04 Feb 2020 14:52:28 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 014EqC8b008030,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTEXMB06.realtek.com.tw[172.21.6.99])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 014EqC8b008030
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 4 Feb 2020 22:52:13 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 4 Feb 2020 22:52:12 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 4 Feb 2020 22:52:12 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTEXMB01.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server id
 15.1.1779.2 via Frontend Transport; Tue, 4 Feb 2020 22:52:12 +0800
From: James Tai <james.tai@realtek.com>
To: <linux-realtek-soc@lists.infradead.org>
Subject: [PATCH v3 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB support
Date: Tue, 4 Feb 2020 22:52:05 +0800
Message-ID: <20200204145207.28622-1-james.tai@realtek.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_065226_557797_8BF4EAA5 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKClRoaXMgc2VyaWVzIGFkZHMgRGV2aWNlIFRyZWVzIGZvciB0aGUgUmVhbHRl
ayBSVEQxMzE5IFNvQyBhbmQgUmVhbHRlaydzClB5bVBhcnRpY2xlIEVWQi4KClRoZSB2MyBjb3Jy
ZWN0IHRoZSBHSUMgcmVkaXN0cmlidXRvciBhZGRyZXNzIHJhbmdlIGFuZCBhZGRpbmcgdGhlIHZp
cnR1YWwKbWFpbnRlbmFuY2UgaW50ZXJydXB0IGZvciBhcmNoaXRlY3R1cmUgdGltZXIuCgp2MiAt
PiB2MzoKKiBBZGQgdmlydHVhbCBtYWludGVuYW5jZSBpbnRlcnJ1cHQgZm9yIGFyY2hpdGVjdHVy
ZSB0aW1lcgoqIENvcnJlY3QgdGhlIEdJQyByZWRpc3RyaWJ1dG9yIGFkZHJlc3MgcmFuZ2UKCnYx
IC0+IHYyOgoqIFJlc2VydmUgdGhlIGJvb3QgUk9NIGFkZHJlc3MKKiBSZXNlcnZlIGJvb3QgbG9h
ZGVyIGFkZHJlc3MKKiBSZXNlcnZlIGF1ZGlvL3ZpZGVvIEZXIGFkZHJlc3MKKiBSZXNlcnZlIFJQ
QyBhbmQgcmluZyBidWZmZXIgYWRkcmVzcwoqIFJlc2VydmUgVEVFIGFkZHJlc3MKKiBTdXBwb3J0
IDEgR2lCIFJBTSBieSBkZWZhdWx0CiogUmVkdWNlIHJidXMgcmFuZ2UgdG8gMiBNaUIKKiBBcHBs
eSB0aGUgc3lzY29uIGZvciBJU08sTUlTQyxDUlQsU0IyLFNDUFVfV1JBUFBFUgoqIEFkanVzdCBj
b21wYXRpYmxlIHN0cmluZ3Mgb3JkZXIgaW4gZG9jdW1lbnQKCkNjOiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZwpDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IEFuZHJl
YXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KCkphbWVzIFRhaSAoMik6CiAgZHQtYmluZGlu
Z3M6IGFybTogcmVhbHRlazogRG9jdW1lbnQgUlREMTMxOSBhbmQgUmVhbHRlayBQeW1QYXJ0aWNs
ZQogICAgRVZCCiAgYXJtNjQ6IGR0czogcmVhbHRlazogQWRkIFJURDEzMTkgU29DIGFuZCBSZWFs
dGVrIFB5bVBhcnRpY2xlIEVWQgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yZWFsdGVr
LnlhbWwgICAgICB8ICAgNiArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUg
ICAgICAgICAgfCAgIDIgKwogLi4uL2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTMxOS1weW1wYXJ0aWNs
ZS5kdHMgIHwgIDQzICsrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzE5LmR0
c2kgICAgICB8ICAxMiArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTN4eC5kdHNp
ICAgICAgfCAyMTMgKysrKysrKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDI3NiBpbnNl
cnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEzMTktcHltcGFydGljbGUuZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEzMTkuZHRzaQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
NjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxM3h4LmR0c2kKCi0tIAoyLjI1LjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
