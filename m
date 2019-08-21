Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9869B97D83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=buJWbLOD9fSjtppNDP/RxyiRA9+/BnSzld9tXPQFPNQ=; b=ZpH4k3dkLHX4lQ
	yF+PfLf+SCm5csZbfjMOm9m5QQuaMK9o50f1+h1s+G0GXeflTBywANI/ZrvG6yKXyI0Hy2aciOfOe
	RQF/Sz2W+d7Yi9OS73fO2+DJXaMI1gCXv781ykwBwtd97zPPP1XWCsrIJf7217+Bk4Mk6NebP/5Ap
	gVuNjyEtFHSsbJuuqJo4xkj5/6pI5CSXKhCMs48feS08YB/jt3/svGzUz+GdZT7gUD4w3cLckb19K
	MaigdfR28zdFVijpUq2GCML33ZKVxQ+p6pXxju89GGhwg4PkxSP/q+Eg+soLejaeAMzw5EKsux/AE
	09dh/E8IweDcUu7JSv6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Rsh-00085l-R8; Wed, 21 Aug 2019 14:46:35 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Rs4-0007kz-C0; Wed, 21 Aug 2019 14:45:58 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 8F4CD5FB50;
 Wed, 21 Aug 2019 16:45:55 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="E9uTpccz"; dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id 5C1FA1D8290C;
 Wed, 21 Aug 2019 16:45:55 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 5C1FA1D8290C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566398755;
 bh=0kUa5Ungc7V6E1VFo+fYEYf+NT1SqygGndKdc6r86I4=;
 h=From:To:Cc:Subject:Date:From;
 b=E9uTpcczXg7cXVtzCEz8w79LhJCZuxEZSeYDhgxEZG+UKATbL1KNKHo9D4Qb7IR1k
 fNQHFH9OLGJMRp/z+DXzHLmxP+hZBGEfVgq5Xk2vtOnPhxeaNEqlirnMi2S8RhGqkw
 G2ig+n6Omaxn6l6x35EQcxNVlUTl7+Kx3kTBLuwjqBqP+gMvwFFGnUuZkYiq4+nxa9
 klgKKAX9LEjaqDQHqoilX6HDQRKcNklHzHOwnWiN57uloC1MsGarJ8wYaxEGmjDayU
 0lukPqULmqZRaHM7x6byj1vGiB7FJBT2V4wndidMQVfC5ZPWQ4M97pwuc4SLcbIr8b
 /CyhDaoa+uVKw==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: Sean Wang <sean.wang@mediatek.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK and add
 support for port 5
Date: Wed, 21 Aug 2019 16:45:44 +0200
Message-Id: <20190821144547.15113-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_074556_867199_68C647D6 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MS4gbmV0OiBkc2E6IG10NzUzMDogQ29udmVydCB0byBQSFlMSU5LIEFQSQogICBUaGlzIHBhdGNo
IGNvbnZlcnRzIG10NzUzMCB0byBQSFlMSU5LIEFQSS4KMi4gZHQtYmluZGluZ3M6IG5ldDogZHNh
OiBtdDc1MzA6IEFkZCBzdXBwb3J0IGZvciBwb3J0IDUKMy4gbmV0OiBkc2E6IG10NzUzMDogQWRk
IHN1cHBvcnQgZm9yIHBvcnQgNQogICBUaGVzZSAyIHBhdGNoZXMgYWRkaW5nIHN1cHBvcnQgZm9y
IHBvcnQgNSBvZiB0aGUgc3dpdGNoLgoKdjEtPnYyOgogKiBNb3N0bHkgcGh5bGluayBpbXByb3Zl
bWVudHMgYWZ0ZXIgcmV2aWV3LgpyZmMgLT4gdjE6CiAqIE1vc3RseSBwaHlsaW5rIGltcHJvdmVt
ZW50cyBhZnRlciByZXZpZXcuCiAqIERyb3AgcGh5IGlzb2xhdGlvbiBwYXRjaGVzLiBBZGRzIG5v
IHZhbHVlIGZvciBub3cuClJlbsOpIHZhbiBEb3JzdCAoMyk6CiAgbmV0OiBkc2E6IG10NzUzMDog
Q29udmVydCB0byBQSFlMSU5LIEFQSQogIGR0LWJpbmRpbmdzOiBuZXQ6IGRzYTogbXQ3NTMwOiBB
ZGQgc3VwcG9ydCBmb3IgcG9ydCA1CiAgbmV0OiBkc2E6IG10NzUzMDogQWRkIHN1cHBvcnQgZm9y
IHBvcnQgNQoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvbXQ3NTMwLnR4dCAgICB8
IDIxOCArKysrKysrKysrCiBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMgICAgICAgICAgICAgICAg
ICAgICAgfCAzNzEgKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmgg
ICAgICAgICAgICAgICAgICAgICAgfCAgNjEgKystCiAzIGZpbGVzIGNoYW5nZWQsIDU3NyBpbnNl
cnRpb25zKCspLCA3MyBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
