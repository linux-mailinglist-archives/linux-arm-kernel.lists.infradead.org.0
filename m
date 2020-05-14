Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEA11D332D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Ytef77wp+HKb5RPnDE/3SvdewGokhiAiCaqAwVQfWo=; b=Skm03vCaiC/N21
	wW5giZmHVngPRn7PUCAGcGVT4hzoEf173oV79Fu8I8Dk/DyIVqQoY5DhApRVeK1mbvVvW4yQjXfyv
	+d4Ae5XJAOzGj5eVzdfLqHbL3dcfv/bsA6y9203eHpz3vhiHETSI6XzOg8xmLCbr8TX8yYW7EIPe9
	9aF0UrsJH6azxOCaZUP3fBbXnYwaCYc5h1brsg73JWgH+g1LFMPm7weNI8VnU9+uyz5GLjYJoZh18
	lOeXxuwdXvurkTz+Qr6NspU0LCKvcpW5PXCqdy1NYVB5egzhp6WLRYd1BI13LyacMpiYpN68RTqOR
	NDAOnfZgWbL+W9Gzi94g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEzZ-0005Zi-DB; Thu, 14 May 2020 14:37:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEyR-0004pd-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:36:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 7C7962A2EDE
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 0/4] dt-bindings: display: ti,tfp410.txt: convert to yaml
Date: Thu, 14 May 2020 16:36:08 +0200
Message-Id: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073636_248565_6D80F091 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgY29udmVydHMgdGhlIERUIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhl
IFRJIFRGUDQxMApEUEktdG8tRFZJIGVuY29kZXIgdG8ganNvbi1zY2hlbWEuCgpTb21lIG1pbm9y
IGNoYW5nZXMgd2VyZSBtYWRlIHRvIHR3byBEVHMgaW4gb3JkZXIgdG8gbWFrZSB0aGVtIGNvbXBs
aWFudAp3aXRoIHRoZSBiaW5kaW5nLiBUaGVzZSBjaGFuZ2VzIHNob3VsZG4ndCBoYXZlIGFueSBm
dW5jdGlvbmFsIGVmZmVjdC4KClRoaXMgYWxzbyBmaXhlcyBhIG1pbm9yIGJ1ZyBpbiB0aGUgdGkt
dGZwNDEwIGRyaXZlciB0aGF0IHdvdWxkIGNhdXNlIGEKd3JvbmcgY2FsY3VsYXRpb24gb2YgdGhl
IHNldHVwIGFuZCBob2xkIHRpbWVzIHdoZW4gdGhlIGRlLXNrZXcgZmVhdHVyZQppcyBlbmFibGVk
LiBUaGUgcmV0cmlldmFsIG9mIHRoZSBkZS1za2V3IHZhbHVlIGZyb20gdGhlIERUIGhhcyBhbHNv
IGJlZW4KdXBkYXRlZCB0byByZWZsZWN0IHRoZSBiaW5kaW5nIGNoYW5nZXMuCgpDaGFuZ2VzIGlu
IHYyOgoKICAtIHRpLHRmcDQxMC55YW1sCiAgICAtIFNldCBsaWNlbnNlIGFzIEdQTC0yLjAtb25s
eSAoU2FtIFJhdm5ib3JnKQogICAgLSBDb21wbGV0ZSBwY2xrLXNhbXBsZSBhbmQgYnVzLXdpZHRo
IGNvbW1lbnRzIChTYW0pCiAgICAtIFJlbW92ZSBxdW90ZXMgZnJvbSBjb21wYXRpYmxlIHZhbHVl
IChTYW0pCiAgICAtIFJlbW92ZSB0aGUgYWxsT2Yga2V5d29yZCBmcm9tIHRoZSB0aSxkZXNrZXcg
ZGVmaW5pdGlvbiAoU2FtKQogICAgLSBTZXQgZW5kcG9pbnQgYXMgb3B0aW9uYWwgaW4gcG9ydCBk
ZWZpbml0aW9ucwogICAgLSBTZXQgYSByYW5nZSBmb3IgdGksZGVza2V3CgogIERUcyBmaXhlcyAo
YWRkZWQpOgogICAgLSBkb3ZlLXNiYy1hNTEwLmR0czogcy9wb3dlcmRvd24tZ3Bpby9wb3dlcmRv
d24tZ3Bpb3MgKFNhbSkKICAgIC0gZG92ZS1zYmMtYTUxMC5kdHM6IEFkZCBkdW1teSBwb3J0cyBu
b2RlCiAgICAtIGlteDUzLWN4OTAyMC5kdHM6IEdyb3VwIHRoZSBwb3J0cyBpbiBhIHBvcnRzIG5v
ZGUKCiAgdGktdGZwNDEwLmMgKGFkZGVkKToKICAgIC0gRml4IHNldHVwIHRpbWUgYW5kIGhvbGQg
dGltZSBjYWxjdWxhdGlvbiBiYXNlZCBvbiB0aGUgZGVza2V3IHZhbHVlCiAgICAgIChMYXVyZW50
IFBpbmNoYXJ0KQoKUmljYXJkbyBDYcOxdWVsbyAoNCk6CiAgQVJNOiBkdHM6IGRvdmU6IE1ha2Ug
dGhlIERUIGNvbXBsaWFudCB3aXRoIHRoZSB0aSx0ZnA0MTAgYmluZGluZwogIEFSTTogZHRzOiBp
bXM1MzogR3JvdXAgcG9ydCBkZWZpbml0aW9ucyBmb3IgdGhlIGR2aS1jb252ZXJ0ZXIKICBkdC1i
aW5kaW5nczogZGlzcGxheTogdGksdGZwNDEwLnR4dDogY29udmVydCB0byB5YW1sCiAgZHJtL2Jy
aWRnZTogdGZwNDEwOiBGaXggc2V0dXAgYW5kIGhvbGQgdGltZSBjYWxjdWxhdGlvbgoKIC4uLi9i
aW5kaW5ncy9kaXNwbGF5L2JyaWRnZS90aSx0ZnA0MTAudHh0ICAgICB8ICA2NiAtLS0tLS0tLS0t
CiAuLi4vYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvdGksdGZwNDEwLnlhbWwgICAgfCAxMjQgKysr
KysrKysrKysrKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9kb3ZlLXNiYy1hNTEwLmR0cyAgICAg
ICAgICAgfCAgMTMgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDUzLWN4OTAyMC5kdHMgICAgICAg
ICAgICB8ICAyNSArKy0tCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXRmcDQxMC5jICAgICAg
ICAgICAgfCAgMTAgKy0KIDUgZmlsZXMgY2hhbmdlZCwgMTU1IGluc2VydGlvbnMoKyksIDgzIGRl
bGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L2JyaWRnZS90aSx0ZnA0MTAudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL3RpLHRmcDQx
MC55YW1sCgotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
