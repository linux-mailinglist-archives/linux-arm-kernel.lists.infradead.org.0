Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAB8DDF36
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 17:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtnUuk9pAAemiPhjengWFhiy1/gEn05twVjeI/HSs/o=; b=rmDcL3/5TSusbP
	CqkByIaKyk1ma5Udc+SI7V32YaQ/cOk9eHQ0kiClmxTIwT692FIURrbzNUE66qy25/Y2pz0ycaR86
	dFW5h9iTYXzG0bjM2CJceK5jl5b/Bpusmo3LuSub79EvYW1DB3ot6CRN7rKufl6YjoWN/oWixUk43
	BhJ++LaGjpeMiQW846vNByfNl2Ukx4XhLRne/QVLXkCqDBtOySAvghiT5dU21ae9cnRQkBDPqcmmh
	RUlxuP1H0k3UbFCVRo2qxi/6N8/aHT5t3Qn0tMKgabUI4KWq3vG0IDnv4Z2v3m09k3+RXgAbzpyae
	CsSzfD2J1je5X+WTX+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMDGt-0005sS-Es; Sun, 20 Oct 2019 15:37:31 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMDFq-0003Dy-58; Sun, 20 Oct 2019 15:36:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B5D2BAD7B;
 Sun, 20 Oct 2019 15:36:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 2/2] arm64: dts: realtek: Add watchdog node for RTD129x
Date: Sun, 20 Oct 2019 17:36:12 +0200
Message-Id: <20191020153612.29889-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020153612.29889-1-afaerber@suse.de>
References: <20191020153612.29889-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_083626_363371_8FD7B28F 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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

QWRkIHRoZSB3YXRjaGRvZyBub2RlIHRvIHRoZSBSVEQxMjl4IERldmljZSBUcmVlLgoKQWNrZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkFja2VkLWJ5OiBHdWVudGVyIFJvZWNr
IDxsaW51eEByb2Vjay11cy5uZXQ+CltBRjogTW92ZWQgZnJvbSBSVEQxMjk1IHRvIG5ldyBSVEQx
Mjl4XQpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0t
LQogdjIgLT4gdjM6CiAqIHJ0ZDEyOXguZHRzaSB3YXMgZmFjdG9yZWQgb3V0IG9mIHJ0ZDEyOTUu
ZHRzaSwgYWRkIGl0IHRoZXJlCiAKIHYxIC0+IHYyOiBVbmNoYW5nZWQKIAogYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEyOXguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kK
aW5kZXggNGZiMTY2MTExNTliLi4wYjJhYzBjMzNiOGIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
ZWFsdGVrL3J0ZDEyOXguZHRzaQpAQCAtMzcsNiArMzcsMTIgQEAKIAkJLyogRXhjbHVkZSB1cCB0
byAyIEdpQiBvZiBSQU0gKi8KIAkJcmFuZ2VzID0gPDB4ODAwMDAwMDAgMHg4MDAwMDAwMCAweDgw
MDAwMDAwPjsKIAorCQl3ZHQ6IHdhdGNoZG9nQDk4MDA3NjgwIHsKKwkJCWNvbXBhdGlibGUgPSAi
cmVhbHRlayxydGQxMjk1LXdhdGNoZG9nIjsKKwkJCXJlZyA9IDwweDk4MDA3NjgwIDB4MTAwPjsK
KwkJCWNsb2NrcyA9IDwmb3NjMjdNPjsKKwkJfTsKKwogCQl1YXJ0MDogc2VyaWFsQDk4MDA3ODAw
IHsKIAkJCWNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7CiAJCQlyZWcgPSA8MHg5ODAw
NzgwMCAweDQwMD47Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
