Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4E6113D01
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=komIKujrXP5TeW15iB/vo+fZ6/4dULkYjT8IROYHyJE=; b=eMNP8iLbLus1ZT
	rPZujZj7IHHxUBYNfI8o+g3MFqAWkFvJoVTLq4Uh/sHXKReqPiTaX0Bx7qDDXetsE1XU5LgQK13id
	DTwVpokkCkNi46BRJ/s+SiUgt07ZJRu+UBq7c45zbjlyW8KIuvq6e5mZ2UjiqR2PCJ+J+8Uuxo1uU
	k9cGn12aD3hGMajonq6Za/w82SCqnMvOhdUZMx5dQzqC+BD7Whw865lyt+LQeRi9z5BzkMooQiQCH
	Nv1LFMt4y4vSzzjupBwdRWuUZ19Xp/fHuzEFETmRzmZ4riaCU/usiqjcR4v80/QDLyzMYU/dvNOec
	QvQWIT/j7y1zGLzwSaEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmT8-0006Xm-J8; Thu, 05 Dec 2019 08:26:38 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1icmSm-0006QE-Bl; Thu, 05 Dec 2019 08:26:18 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB58Q1t2024515,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB58Q1t2024515
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 5 Dec 2019 16:26:01 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Thu, 5 Dec 2019 16:26:00 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB support
Date: Thu, 5 Dec 2019 16:25:53 +0800
Message-ID: <20191205082555.22633-1-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_002616_655822_B849A88E 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKClRoaXMgc2VyaWVzIGFkZHMgRGV2aWNlIFRyZWVzIGZvciB0aGUgUmVhbHRl
ayBSVEQxMzE5IFNvQyBhbmQgUmVhbHRlaydzClB5bVBhcnRpY2xlIEVWQi4KCkNjOiBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZwpDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4K
Q2M6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KCkphbWVzIFRhaSAoMik6CiAg
ZHQtYmluZGluZ3M6IGFybTogcmVhbHRlazogRG9jdW1lbnQgUlREMTMxOSBhbmQgUmVhbHRlayBQ
eW1QYXJ0aWNsZQogICAgRVZCCiAgYXJtNjQ6IGR0czogcmVhbHRlazogQWRkIFJURDEzMTkgU29D
IGFuZCBSZWFsdGVrIFB5bVBhcnRpY2xlIEVWQgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yZWFsdGVrLnlhbWwgICAgICB8ICAgNiArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsv
TWFrZWZpbGUgICAgICAgICAgfCAgIDIgKwogLi4uL2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTMxOS1w
eW1wYXJ0aWNsZS5kdHMgIHwgIDQzICsrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEzMTkuZHRzaSAgICAgIHwgIDEyICsrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsv
cnRkMTN4eC5kdHNpICAgICAgfCAxMzcgKysrKysrKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5n
ZWQsIDIwMCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290
L2R0cy9yZWFsdGVrL3J0ZDEzMTktcHltcGFydGljbGUuZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzMTkuZHRzaQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxM3h4LmR0c2kKCi0tIAoyLjI0LjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
