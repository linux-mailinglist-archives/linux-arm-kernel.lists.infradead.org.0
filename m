Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E891FCA26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bf8HeFZ+pNloHvfcckLtwmlVRL5omsB/kt+k2J2Q86Y=; b=pS2MvyeEHxm1XD
	n8bplDAziHEgK7CInUzPQEafaZqCjp+RNZ3WAJYZ+OnHhpKPPlShOILtp2HlaT2chAN1cYti1oYh0
	Ls4+dK1fL1Db0DhSgVnuYSjtxB1ZInTCidDY7bplzdToAuSLyKm5VHR6SD+HenBRVZjwrhS37b83D
	2lVVQyK8AjYZLhYMashN1KRzC0/uK15PwvP8ifhx1ooxIcPCginDFteDQSd6V+2R1W64aHx+UzWcW
	A7Tz1KzWlVYNcPDj4vw91KnRNyLvDO9lsC1uoyg23Ph/2w5DnfS21JIjFSCJKPKjhyDApBTc3T5ks
	6Y5biL5+gWRIr9HUshpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUfg-0000so-Ur; Wed, 17 Jun 2020 09:47:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUey-0000P5-Db
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:47:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id D0F832A3878
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 2/4] dt-bindings: display: ti, tfp410.yaml: Redefine ti,
 deskew property
Date: Wed, 17 Jun 2020 11:46:31 +0200
Message-Id: <20200617094633.19663-3-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
References: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024708_585326_31F5DEE2 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBjaGFuZ2VzIGhvdyB0aGUgJ3RpLGRlc2tldycgcHJvcGVydHkgaXMgZGVmaW5lZC4gSXQn
cyBub3cgYW4KdW5zaWduZWQgdmFsdWUgZnJvbSAwIHRvIDcgaW5zdGVhZCBvZiBhIHNpZ25lZCB2
YWx1ZSBmcm9tIC00IHRvIDMuClVudGlsIHRoZSBkdGMgY2FycmllcyB0aGUgaW50ZWdlciBzaWdu
IHRocm91Z2ggdG8gdGhlIHlhbWwgb3V0cHV0IGl0J3MKZWFzaWVyIHRvIGRlZmluZSBzaWduZWQg
dHlwZXMgYXMgdW5zaWduZWQuCgpTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNh
cmRvLmNhbnVlbG9AY29sbGFib3JhLmNvbT4KUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQg
PGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KLS0tCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L2JyaWRnZS90aSx0ZnA0MTAueWFtbCAgICB8IDkgKysrKystLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS90aSx0
ZnA0MTAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2Jy
aWRnZS90aSx0ZnA0MTAueWFtbAppbmRleCA1NTY5YTQ5MDc3NjUuLjYwNTgzMWMxZTgzNiAxMDA2
NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdl
L3RpLHRmcDQxMC55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L2JyaWRnZS90aSx0ZnA0MTAueWFtbApAQCAtMjMsMTEgKzIzLDEyIEBAIHByb3BlcnRp
ZXM6CiAKICAgdGksZGVza2V3OgogICAgIGRlc2NyaXB0aW9uOgotICAgICAgRGF0YSBkZS1za2V3
IGluIDM1MHBzIGluY3JlbWVudHMsIGZyb20gLTQgdG8gKzMsIGFzIGNvbmZpZ3VyZWQKLSAgICAg
IHRocm91Z2ggdGggREtbMzoxXSBwaW5zLiBUaGlzIHByb3BlcnR5IHNoYWxsIGJlIHByZXNlbnQg
b25seSBpZiB0aGUgVEZQNDEwCi0gICAgICBpcyBub3QgY29ubmVjdGVkIHRocm91Z2ggSTJDLgot
ICAgIG1heEl0ZW1zOiAxCisgICAgICBEYXRhIGRlLXNrZXcgdmFsdWUgaW4gMzUwcHMgaW5jcmVt
ZW50cywgZnJvbSAwIHRvIDcsIGFzIGNvbmZpZ3VyZWQKKyAgICAgIHRocm91Z2ggdGhlIERLWzM6
MV0gcGlucy4gVGhlIGRlLXNrZXcgbXVsdGlwbGllciBpcyBjb21wdXRlZCBhcworICAgICAgKERL
WzM6MV0gLSA0KSwgc28gaXQgcmFuZ2VzIGZyb20gLTQgdG8gMy4KICAgICAkcmVmOiAvc2NoZW1h
cy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKKyAgICBtaW5pbXVtOiAwCisgICAgbWF4
aW11bTogNwogCiAgIHBvcnRzOgogICAgIGRlc2NyaXB0aW9uOgotLSAKMi4xOC4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
