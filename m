Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EEF1C0F91
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ckf7mkSt7drfpoV4kvU/O0PbyMLoyKbuAEXSqznACDw=; b=H8+/JPB5JqDVvR
	r4WKIIw1ve1M/p11OnMofzUGO8Fzmz4sUZnkGTUhCaN7htMgzeGCZ6l/k3PEcanU0UlZdWf6pIgZ+
	wrfTG1v+ziFxs3T2jCYVuafdeo4HrhM5MNb3Q0JhufqKyLcJZrFj4N3S7X0D86JanJiNV2YESMLcB
	sOhzAfF5c+Y38tSxUA1ZY0m+/kbxzs34gD+jdcb5ugBhVhTO1eAzIsXiimH5jLUxmgsRNvqTAHS5G
	tmdgenUIk5okkZ7XnwgWcdQDtrpT5lxQ1AWKyQLTMGr5weEsU46vrx32GMX1VsjYEskL4gQxDBiM3
	N0pIFpE8/ZY93dhFZFsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUR6s-0007bd-5h; Fri, 01 May 2020 08:33:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUR6k-0007a6-E7
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:33:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 0D90E2A2C9F
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [RFT PATCH 0/5] Convert adi,adv7511.txt DT bindings to yaml
Date: Fri,  1 May 2020 10:32:22 +0200
Message-Id: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_013318_603511_02B65AD0 
X-CRM114-Status: GOOD (  11.37  )
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIHNlcmllcyBjb252ZXJ0IHRoZSBhZGksYWR2NzUxMS50eHQgRFQgYmluZGluZ3Mg
dG8ganNvbi1zY2hlbWEuIEFzIGEKcmVzdWx0IG9mIHRoZSBjb252ZXJzaW9uIHNvbWUgZHRzIGZp
bGVzIG5lZWRlZCB0byBiZSB1cGRhdGVkLgoKVGhlIGNoYW5nZXMgdG8gdGhlIGR0cyBmaWxlcyBh
cmUgb2YgdHdvIHR5cGVzOgoKICAtIFJlb3JkZXJpbmcgb2YgdGhlIEkyQyBzbGF2ZSBhZGRyZXNz
ZXMgbGlzdCBvZiB0aGUgQURWNzV4eCBub2RlLiBUaGUKICAgIGFkZHJlc3NlcyBpbiB0aGUgJ3Jl
ZycgcHJvcGVydHkgYW5kIHRoZSBtYXRjaGluZyBuYW1lcyBpbgogICAgJ3JlZy1uYW1lcycgZm9y
IGFuIEkyQyBzbGF2ZSBkb24ndCBuZWVkIHRvIGJlIGluIGFueSBwYXJ0aWN1bGFyCiAgICBvcmRl
ciwgYnV0IHRoZSBEVCBzY2hlbWEgZGVmaW5lcyB0aGVzZSBwcm9wZXJ0aWVzIGFzIGEgY2VsbCBh
cnJheQogICAgYW5kIGEgc3RyaW5nIGFycmF5IHJlc3BlY3RpdmVseSwgd2hpY2ggYXJlIG9yZGVy
ZWQsIHNvIHRoZQogICAgZGVmaW5pdGlvbnMgaW4gdGhlIGR0cyBmaWxlcyBtdXN0IG1hdGNoIHRo
ZSBvcmRlciBpbiB0aGUgYmluZGluZy4KCiAgLSBGaWxsaW5nIHRoZSBtaW5pbXVtIGJpbmRpbmcg
cmVxdWlyZW1lbnRzLiBNb3N0IG9mIHRoZSB0aW1lIHRoaXMKICAgIG1lYW5zIGNyZWF0aW5nIGEg
J3BvcnRzJyBub2RlIGluIHRoZSBib2FyZHMgdGhhdCBkb24ndCBkZWZpbmUKICAgIHRoZW0uIE5v
dGUsIGhvd2V2ZXIsIHRoYXQgdGhlIHB1cnBvc2Ugb2YgdGhpcyBpcyBzaW1wbHkgdG8gbWFrZSB0
aGUKICAgIGRlZmluaXRpb24gY29tcGxpYW50IHdpdGggdGhlIGJpbmRpbmcuIEkgZGlkbid0IGRl
ZmluZSBhbnkgZW5kcG9pbnRzCiAgICBmb3IgdGhlIHBvcnRzLgoKQWJvdXQgdGhlIGJpbmRpbmcg
Y29udmVyc2lvbjoKCiAgLSBUaGUgZGVwZW5kZW5jaWVzIGJldHdlZW4gcHJvcGVydGllcyBhcmUg
cHJvcGVybHkgbW9kZWxsZWQgYnV0IHRoZQogICAgcmVzdWx0IG1pZ2h0IGxvb2sgY2x1dHRlcmVk
LiBJZiB5b3UgZmluZCBpdCBoYXJkIHRvIHJlYWQgb3IKICAgIG1haW50YWluLCBhbm90aGVyIG9w
dGlvbiBpcyB0byBzcGxpdCB0aGUgYmluZGluZyBpbiB0d286IG9uZSBmb3IgdGhlCiAgICBBRFY3
NTExLzExdy8xMyBhbmQgYW5vdGhlciBvbmUgZm9yIHRoZSBBRFY3NTMzLzM1LgoKUGF0Y2hlcyAx
LzUgdG8gNC81IGNvbnRhaW4gdGhlIGR0cyBjaGFuZ2VzLiBQYXRjaCA1LzUgY29udGFpbnMgdGhl
CmJpbmRpbmcgY29udmVyc2lvbi4KCk5PVEU6IHRoZSBiaW5kaW5ncyBoYXZlIGJlZW4gdGVzdGVk
IHdpdGg6CgogIG1ha2UgZHRfYmluZGluZ19jaGVjayBBUkNIPTxhcmNoPiBEVF9TQ0hFTUFfRklM
RVM9PC4uLmFkaSxhZHY3NTExLnlhbWw+CiAgbWFrZSBkdGJzX2NoZWNrIEFSQ0g9PGFyY2g+IERU
X1NDSEVNQV9GSUxFUz08Li4uYWRpLGFkdjc1MTEueWFtbD4KCmZvciA8YXJjaD4gPSBhcm0gYW5k
IGFybTY0LiBkdHMgY2hhbmdlcyBoYXZlbid0IGJlZW4gdGVzdGVkIGluIGhhcmR3YXJlLgoKS2lu
ZCByZWdhcmRzLApSaWNhcmRvCgpSaWNhcmRvIENhw7F1ZWxvICg1KToKICBhcm02NDogZHRzOiBk
cmFhazogUmVvcmRlciBoZG1pLWVuY29kZXJAMzkgcmVnIGFuZCByZWctbmFtZXMKICAgIHByb3Bl
cnRpZXMKICBBUk06IGR0czogd2hlYXQ6IHJlb3JkZXIgcmVnIGFuZCByZWctbmFtZXMgcHJvcGVy
dGllcyBpbiBoZG1pIGJyaWRnZXMKICBBUk06IGR0czogenlucTogYWRkIHBvcnQgZGVmaW5pdGlv
bnMgdG8gaGRtaS10eEAzOQogIGFybTY0OiBkdHM6IGhpc2lsaWNvbjogaGlrZXk5NjA6IGFkZCBt
aXNzaW5nIGhkbWkgYnJpZGdlIHByb3BlcnRpZXMKICBkdC1iaW5kaW5nczogZHJtOiBicmlkZ2U6
IGFkaSxhZHY3NTExLnR4dDogY29udmVydCB0byB5YW1sCgogLi4uL2JpbmRpbmdzL2Rpc3BsYXkv
YnJpZGdlL2FkaSxhZHY3NTExLnR4dCAgIHwgMTQzIC0tLS0tLS0tLQogLi4uL2JpbmRpbmdzL2Rp
c3BsYXkvYnJpZGdlL2FkaSxhZHY3NTExLnlhbWwgIHwgMjk1ICsrKysrKysrKysrKysrKysrKwog
YXJjaC9hcm0vYm9vdC9kdHMvcjhhNzc5Mi13aGVhdC5kdHMgICAgICAgICAgIHwgICA4ICstCiBh
cmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cyAgICAgICAgICAgICAgfCAgMTAgKwogYXJj
aC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMgICAgICAgICAgICAgIHwgIDEwICsKIC4uLi9i
b290L2R0cy9oaXNpbGljb24vaGkzNjYwLWhpa2V5OTYwLmR0cyAgICB8ICAxMSArCiAuLi4vYXJt
NjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5NS1kcmFhay5kdHMgfCAgIDQgKy0KIDcgZmlsZXMg
Y2hhbmdlZCwgMzMyIGluc2VydGlvbnMoKyksIDE0OSBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2Uv
YWRpLGFkdjc1MTEudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL2FkaSxhZHY3NTExLnlhbWwKCi0tIAoyLjE4LjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
