Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D756B1CD73A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqsHumUqdAPijSmkpV58peZpvW9Y0jHCZiB7Gh9jfEA=; b=M0L7/PZH2jvy0C
	xtO1G+qcDJhipkTSzSw/Mi6M1+ZNcYosOPXtdJ/Pt9xBWlXKOLJqbPMGNjqam1xxNKo1Ff6V1Emci
	IioUK2ZUgLP0aI6WU6qT/hDBuMVyQgRTy9gI9mNKf8+BmUecsi4mcLKGFDXwbGWVT8ligegykW9rw
	vDv7uSsrGT2F1CrWdAGbgZKOBxwnt56vo/FvycGF+afAVF+x/DzxeGgOkR6tgWgDnIMpCfkfPiazT
	Ltuc87cCmB+Wc7SAdB883lllHYHPgV97ewCx8Flv6QZVcF5GMVNSFzBmosBB3kj6laBEQboSG7UTG
	bO7XXuvTGG/Jukz2Ae5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6I1-0004Gk-Cu; Mon, 11 May 2020 11:08:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Gd-00038K-GG
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:06:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id E9C742A0C53
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 5/6] ARM: dts: iwg20d-q7-dbcm-ca: remove unneeded
 properties in hdmi@39
Date: Mon, 11 May 2020 13:06:10 +0200
Message-Id: <20200511110611.3142-6-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040639_671071_6E9C9440 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmVtb3ZlIHRoZSBhZGksaW5wdXQtc3R5bGUgYW5kIGFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uIHBy
b3BlcnRpZXMgb2YKaGRtaUAzOSB0byBtYWtlIGl0IGNvbXBsaWFudCB3aXRoIHRoZSAiYWRpLGFk
djc1MTF3IiBEVCBiaW5kaW5nLgoKU2lnbmVkLW9mZi1ieTogUmljYXJkbyBDYcOxdWVsbyA8cmlj
YXJkby5jYW51ZWxvQGNvbGxhYm9yYS5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaXdnMjBk
LXE3LWRiY20tY2EuZHRzaSB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2l3ZzIwZC1xNy1kYmNtLWNhLmR0c2kgYi9h
cmNoL2FybS9ib290L2R0cy9pd2cyMGQtcTctZGJjbS1jYS5kdHNpCmluZGV4IGVkZTJlMGM5OTli
MS4uZTEwZjk5Mjc4Yzc3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pd2cyMGQtcTct
ZGJjbS1jYS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2l3ZzIwZC1xNy1kYmNtLWNhLmR0
c2kKQEAgLTcyLDggKzcyLDYgQEAKIAkJYWRpLGlucHV0LWRlcHRoID0gPDg+OwogCQlhZGksaW5w
dXQtY29sb3JzcGFjZSA9ICJyZ2IiOwogCQlhZGksaW5wdXQtY2xvY2sgPSAiMXgiOwotCQlhZGks
aW5wdXQtc3R5bGUgPSA8MT47Ci0JCWFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uID0gImV2ZW5seSI7
CiAKIAkJcG9ydHMgewogCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Ci0tIAoyLjE4LjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
