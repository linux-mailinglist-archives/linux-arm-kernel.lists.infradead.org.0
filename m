Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D515E1E9E57
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PS4Q7/HHZOS9Bnl9qxu0TxHItPZEn/FiJeBoDVo3or4=; b=mWU88gRaHjqtnU
	V6/xoiops9ukf/3ff1e3zgCp+AGzHhx2QH9FqCtl+vHu7N6FGwfSrnYYX+MGsdZfjd/hJ0yzt/jBr
	fQ9RbJq6CyDs4YCnRsVqr4WeT08/vAWLvIrko0kACCzMleMfSCD4bI28ic1IgdIARRpJBREENiPAq
	DrAmysG6a7dcJP02Ier5dkOWGqTXqqIi06quG5F+Yqaj8JDrAtSULI8hcU/QMS4IH35PgNrTf4IZy
	TWvno7taIN1D4jAtKboQFSePGNAE3MsL771kXU7Ak1zuhYr6hFXosdbrqeBSW+0jg8Lgqn52TGau+
	q2F2w0pe1xAWZt5mlFbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfe1f-0008Kz-Ip; Mon, 01 Jun 2020 06:34:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfe19-0008AO-Gq
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 06:33:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id A70C82A050B
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 0/4] Convert adi,adv7511.txt DT bindings to yaml
Date: Mon,  1 Jun 2020 08:33:04 +0200
Message-Id: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_233351_686811_261D59DA 
X-CRM114-Status: GOOD (  14.23  )
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
Cc: marex@denx.de, devicetree@vger.kernel.org, michal.simek@xilinx.com,
 xuwei5@hisilicon.com, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGlzIHNlcmllcyBjb252ZXJ0IHRoZSBhZGksYWR2NzUxMS50eHQgRFQgYmluZGluZ3Mg
dG8ganNvbi1zY2hlbWEuIEFzIGEKcmVzdWx0IG9mIHRoZSBjb252ZXJzaW9uIHNvbWUgZHRzIGZp
bGVzIG5lZWRlZCB0byBiZSB1cGRhdGVkLgoKVGhlIGNoYW5nZXMgdG8gdGhlIGR0cyBmaWxlcyBh
cmUgb2YgdGhyZWUgdHlwZXM6CgogIC0gUmVvcmRlcmluZyBvZiB0aGUgSTJDIHNsYXZlIGFkZHJl
c3NlcyBsaXN0IG9mIHRoZSBBRFY3NXh4IG5vZGUuIFRoZQogICAgYWRkcmVzc2VzIGluIHRoZSAn
cmVnJyBwcm9wZXJ0eSBhbmQgdGhlIG1hdGNoaW5nIG5hbWVzIGluCiAgICAncmVnLW5hbWVzJyBm
b3IgYW4gSTJDIHNsYXZlIGRvbid0IG5lZWQgdG8gYmUgaW4gYW55IHBhcnRpY3VsYXIKICAgIG9y
ZGVyLCBidXQgdGhlIERUIHNjaGVtYSBkZWZpbmVzIHRoZXNlIHByb3BlcnRpZXMgYXMgYSBjZWxs
IGFycmF5CiAgICBhbmQgYSBzdHJpbmcgYXJyYXkgcmVzcGVjdGl2ZWx5LCB3aGljaCBhcmUgb3Jk
ZXJlZCwgc28gdGhlCiAgICBkZWZpbml0aW9ucyBpbiB0aGUgZHRzIGZpbGVzIG11c3QgbWF0Y2gg
dGhlIG9yZGVyIGluIHRoZSBiaW5kaW5nLgoKICAtIEZpbGxpbmcgdGhlIG1pbmltdW0gYmluZGlu
ZyByZXF1aXJlbWVudHMuIE1vc3Qgb2YgdGhlIHRpbWUgdGhpcwogICAgbWVhbnMgY3JlYXRpbmcg
YSAncG9ydHMnIG5vZGUgaW4gdGhlIGJvYXJkcyB0aGF0IGRvbid0IGRlZmluZQogICAgdGhlbS4g
Tm90ZSwgaG93ZXZlciwgdGhhdCB0aGUgcHVycG9zZSBvZiB0aGlzIGlzIHNpbXBseSB0byBtYWtl
IHRoZQogICAgZGVmaW5pdGlvbiBjb21wbGlhbnQgd2l0aCB0aGUgYmluZGluZy4gSSBkaWRuJ3Qg
ZGVmaW5lIGFueSBlbmRwb2ludHMKICAgIGZvciB0aGUgcG9ydHMuCgogIC0gUmVtb3ZpbmcgdW5u
ZWVkZWQgcHJvcGVydGllcy4KCkFib3V0IHRoZSBiaW5kaW5nIGNvbnZlcnNpb246CgogIC0gVGhl
IG9yaWdpbmFsIGJpbmRpbmcgY292ZXJlZCBmaXZlIGRpZmZlcmVudCBkZXZpY2VzOiBBRFY3NTEx
LAogICAgQURWNzUxMVcsIEFEVjc1MTMsIEFEVjc1MzMgYW5kIEFEVjc1MzUuIFRoZXkgYWxsIHNo
YXJlIGEgY29tbW9uIHNldAogICAgb2YgcHJvcGVydGllcyBidXQgQURWNzUzMyBhbmQgQURWNzUz
NSBoYXZlIGVub3VnaCBkaWZmZXJlbmNlcyBmcm9tCiAgICB0aGUgcmVzdCB0byB3YXJyYW50IHRo
ZWlyIG93biBiaW5kaW5nIGZpbGUuIEluIHYxIEkgbW9kZWxsZWQgYWxsIHRoZQogICAgcHJvcGVy
dGllcyBjb25zdHJhaW50cyBmb3IgYWxsIGZpdmUgZGV2aWNlcyBpbiBhIHNpbmdsZSBmaWxlIGJ1
dCBpdAogICAgdHVybmVkIG91dCBhIGJpdCB0b28gY29tcGxleC4gU3BsaXR0aW5nIHRoZSBiaW5k
aW5nIGludG8gb25lIGZvcgogICAgQURWNzUxMS8xMVcvMTMgYW5kIGFub3RoZXIgZm9yIEFEVjc1
MzMvMzUgbWFrZXMgdGhlbSBtdWNoIGVhc2llciB0bwogICAgcmVhZCBhbmQgbWFpbnRhaW4uCgpQ
YXRjaGVzIDEvNCB0byAzLzQgY29udGFpbiB0aGUgZHRzIGNoYW5nZXMuIFBhdGNoIDQvNCBjb250
YWlucyB0aGUKYmluZGluZyBjb252ZXJzaW9uLgoKTk9URTogdGhlIGJpbmRpbmdzIGhhdmUgYmVl
biB0ZXN0ZWQgd2l0aDoKCiAgbWFrZSBkdF9iaW5kaW5nX2NoZWNrIEFSQ0g9PGFyY2g+IERUX1ND
SEVNQV9GSUxFUz08Li4uYWRpLGFkdjc1MTEueWFtbD4KICBtYWtlIGR0X2JpbmRpbmdfY2hlY2sg
QVJDSD08YXJjaD4gRFRfU0NIRU1BX0ZJTEVTPTwuLi5hZGksYWR2NzUzMy55YW1sPgogIG1ha2Ug
ZHRic19jaGVjayBBUkNIPTxhcmNoPiBEVF9TQ0hFTUFfRklMRVM9PC4uLmFkaSxhZHY3NTExLnlh
bWw+CiAgbWFrZSBkdGJzX2NoZWNrIEFSQ0g9PGFyY2g+IERUX1NDSEVNQV9GSUxFUz08Li4uYWRp
LGFkdjc1MzMueWFtbD4KCmZvciA8YXJjaD4gPSBhcm0gYW5kIGFybTY0LiBkdHMgY2hhbmdlcyBo
YXZlbid0IGJlZW4gdGVzdGVkIGluIGhhcmR3YXJlLgoKU29tZSBleGlzdGluZyBEVHMgYXJlIGV4
cGVjdGVkIHRvIGZhaWwgYWZ0ZXIgdGhpcyBjb252ZXJzaW9uLgoKQ2hhbmdlcyBpbiB2MzoKCiAg
LSBSZW1vdmVkIGZyb20gdGhlIHBhdGNoIHNlcmllcyAoYWxyZWFkeSBpbiBtYWlubGluZSk6CiAg
ICAtIGFybTY0OiBkdHM6IHJlbmVzYXM6IG1ha2UgaGRtaSBlbmNvZGVyIG5vZGVzIGNvbXBsaWFu
dCB3aXRoIERUIGJpbmRpbmdzCiAgICAtIEFSTTogZHRzOiByZW5lc2FzOiBtYWtlIGhkbWkgZW5j
b2RlciBub2RlcyBjb21wbGlhbnQgd2l0aCBEVCBiaW5kaW5ncwogICAgLSBBUk06IGR0czogaXdn
MjBkLXE3LWRiY20tY2E6IHJlbW92ZSB1bm5lZWRlZCBwcm9wZXJ0aWVzIGluIGhkbWlAMzkKCiAg
LSBBZGRpdGlvbmFsIERUcyBmaXhlczoKICAgIC0gYm9vdC9kdHMvc3RtMzJtcDE1eHgtZGhjb3It
YXZlbmdlcjk2LmR0c2kuCgogIC0gW0xhdXJlbnRdIGFkaSxhZHY3NTExLnlhbWwgYW5kIGFkaSxh
ZHY3NTMzLnlhbWwuCiAgICAtIERvY3VtZW50YXRpb24gZml4ZXMgYW5kIHR5cG9zLgogICAgLSBS
ZW1vdmVkIHVubmVjZXNzYXJ5IGFsbE9mJ3MuCiAgICAtIGFkaSxlbWJlZGRlZC1zeW5jIGRhdGEg
dHlwZSBjaGFuZ2VkIHRvIGJvb2xlYW4uCiAgICAtIFBvd2VyIHN1cHBsaWVzIGRlZmluZWQgYXMg
cmVxdWlyZWQuCiAgICAtIEV4YW1wbGVzIHVwZGF0ZWQuCgpSaWNhcmRvIENhw7F1ZWxvICg0KToK
ICBBUk06IGR0czogenlucTogYWRkIHBvcnQgZGVmaW5pdGlvbnMgdG8gaGRtaS10eEAzOQogIGFy
bTY0OiBkdHM6IGhpc2lsaWNvbjogaGlrZXk6IGZpeGVzIHRvIGNvbXBseSB3aXRoIGFkaSxhZHY3
NTMzIERUCiAgICBiaW5kaW5nCiAgQVJNOiBkdHM6IHN0bTMyOiBtYWtlIGhkbWktdHJhbnNtaXR0
ZXIgbm9kZSBjb21wbGlhbnQgd2l0aCBEVCBiaW5kaW5ncwogIGR0LWJpbmRpbmdzOiBkcm06IGJy
aWRnZTogYWRpLGFkdjc1MTEudHh0OiBjb252ZXJ0IHRvIHlhbWwKCiAuLi4vYmluZGluZ3MvZGlz
cGxheS9icmlkZ2UvYWRpLGFkdjc1MTEudHh0ICAgfCAxNDMgLS0tLS0tLS0tLS0KIC4uLi9iaW5k
aW5ncy9kaXNwbGF5L2JyaWRnZS9hZGksYWR2NzUxMS55YW1sICB8IDIzMSArKysrKysrKysrKysr
KysrKysKIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9hZGksYWR2NzUzMy55YW1sICB8IDE3
NSArKysrKysrKysrKysrCiAuLi4vYm9vdC9kdHMvc3RtMzJtcDE1eHgtZGhjb3ItYXZlbmdlcjk2
LmR0c2kgfCAgIDYgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDIuZHRzICAgICAgICAg
ICAgICB8ICAxMCArCiBhcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzA2LmR0cyAgICAgICAgICAg
ICAgfCAgMTAgKwogLi4uL2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTM2NjAtaGlrZXk5NjAuZHRzICAg
IHwgIDExICsKIC4uLi9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGk2MjIwLWhpa2V5LmR0cyB8
ICAgMiArLQogOCBmaWxlcyBjaGFuZ2VkLCA0NDAgaW5zZXJ0aW9ucygrKSwgMTQ4IGRlbGV0aW9u
cygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L2JyaWRnZS9hZGksYWR2NzUxMS50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlkZ2UvYWRpLGFkdjc1MTEu
eWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L2JyaWRnZS9hZGksYWR2NzUzMy55YW1sCgotLSAKMi4xOC4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
