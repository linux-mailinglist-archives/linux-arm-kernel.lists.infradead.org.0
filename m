Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439CD19AED7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 17:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b2JzO1y9226qJqsEuXxbyq69WdlNCGr3t4sO9UsLwWg=; b=NtWpBphGcQ3yW1
	GSP9VPAu7RAOjVi17Zpmn2LAwRvBPfylb4dgTBGr8y3Lcbo2WWWgmD+94Z2g8IcsjKTXH4tIzCwpI
	0FoWPlxsxeIut/uLNxkJKklF19aR6lGlVW35s0jNTSTBkxOaHOc4Qn2fckPNNRebU36M1lJl5Gb2b
	NliETjFyrnQn3I14kIbmJajQ0oj1ke4NZ9s3KOa9gF2r4zjY/4skWQBAAZtPjIypWqlvnboY3/ll2
	0p8mNVlAo/p9Lz8RRBmLiXHu2tcC0msDG/rZEFb/PGO2u8jBG/++j8wiXsr/Jjphzv8GXZBczO3Dj
	U7nyHiAQiofEZvB81pww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJfP6-0003bB-JF; Wed, 01 Apr 2020 15:35:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJfOz-0003a7-Hj; Wed, 01 Apr 2020 15:35:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id 7831A283D19
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 0/2] ARM: Add Rockchip rk3288w support
Date: Wed,  1 Apr 2020 17:35:11 +0200
Message-Id: <20200401153513.423683-1-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_083537_753636_BF51B00F 
X-CRM114-Status: GOOD (  14.67  )
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
Cc: mylene.josserand@collabora.com, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gZXZlcnlvbmUsCgpIZXJlIGlzIG15IFYyIG9mIG15IHBhdGNoZXMgdGhhdCBhZGQgdGhl
IHN1cHBvcnQgZm9yIHRoZSBSb2NrY2hpcApSSzMyODh3IHdoaWNoIGlzIGEgcmV2aXNpb24gb2Yg
dGhlIFJLMzI4OC4gSXQgaXMgbW9zdGx5IHRoZSBzYW1lIFNPQwpleGNlcHQgZm9yLCBhdCBsZWFz
dCwgb25lIGNsb2NrIHRyZWUgd2hpY2ggaXMgZGlmZmVyZW50LgpUaGlzIGRpZmZlcmVuY2UgaXMg
b25seSBrbm93biBieSBsb29raW5nIGF0IHRoZSBCU1Aga2VybmVsIFsxXS4KCkN1cnJlbnRseSwg
dGhlIG1haW5saW5lIGtlcm5lbCB3aWxsIG5vdCBoYW5nIG9uIHJrMzI4OHcgYnV0IGl0IGlzCnBy
b2JhYmx5IGJ5ICJjaGFuY2UiIGJlY2F1c2Ugd2UgZ290IGFuIGlzc3VlIG9uIGEgbG93ZXIga2Vy
bmVsIHZlcnNpb24uCgpBY2NvcmRpbmcgdG8gUm9ja2NoaXAncyBVLUJvb3QgWzJdLCB0aGUgcmsz
Mjg4dyBjYW4gYmUgZGV0ZWN0ZWQgdXNpbmcKdGhlIEhETUkgcmV2aXNpb24gbnVtYmVyICg9IDB4
MUEpIGluIHRoaXMgdmVyc2lvbiBvZiB0aGUgU09DLgpOb3QgdG8gcmVseSBvbiBVLUJvb3QgYWJv
dXQgdGhlIGNvbXBhdGlibGUsIHRoZSBwYXRjaCAwMSB3aWxsIGhhbmRsZQp0aGUgZGV0ZWN0aW9u
IG9mIHRoZSBIRE1JIHZlcnNpb24uCgpJbiB0aGlzIFYyLCB0aGUgcmV2aXNpb24ncyBkZXRlY3Rp
b24gaXMgZG9uZSB1c2luZyBzb2NfZGV2aWNlCnJlZ2lzdHJhdGlvbi4gVGhhbmtzIHRvIHRoYXQs
IGluIGNhc2Ugb2Ygb3RoZXIgZGlmZmVyZW5jZXMgdGhhbiB0aGUgY2xvY2sKdHJlZSwgaXQgd2ls
bCBiZSBwb3NzaWJsZSB0byBkZXRlY3QgcmszMjg4L3JrMzI4OHcgdXNpbmcgdGhlICdzb2NfZGV2
aWNlX21hdGNoJwpmdW5jdGlvbi4KVGhlIG1haW4gaXNzdWUgd2FzIGFuIG9yZGVyaW5nIGlzc3Vl
OiBteSByazMyODggZHJpdmVyIHdhcwpyZWdpc3RlcmVkIHRvbyBsYXRlIHRvIGJlIGFibGUgdG8g
YWN0IG9uIHRoZSBjbG9jayB0cmVlLiBUaGlzIGlzIGZpeGVkCmJ5IHVzaW5nIGFuIGluaXRjYWxs
IGluIHRoZSBjbG9jayBkcml2ZXIuIE9uZSBwb3NzaWJsZSB3YXkgd291bGQgYmUgdG8KY29udmVy
dCB0aGUgY2xvY2sgZHJpdmVyIGludG8gcGxhdGZvcm1fZHJpdmVyIGJ1dCwgYXMgaXQgaXMgdXNp
bmcKc29tZSBjb21tb24gZnVuY3Rpb25zIHRvIGFsbCBSb2NrY2hpcCdzIGRyaXZlcnMsIGl0IHdv
dWxkIGhhdmUgYmVlbgpuZWNlc3NhcnkgdG8gdXBkYXRlIGFsbCBvdGhlcnMuIEluc3RlYWQsIHVz
aW5nIGFuIGluaXRjYWxsIHRvIHBvc3QtcG9uZQpoY2xrdmlvIGNsb2NrJ3MgcmVnaXN0cmF0aW9u
IGlzIGVub3VnaCB0byBtYWtlIGV2ZXJ5dGhpbmcgd29yayBjb3JyZWN0bHkKd2l0aG91dCBhIGJp
ZyBjaGFuZ2Ugb24gdGhlIGNsb2NrIGRyaXZlci4KCkNoYW5nZXMgc2luY2UgdjE6CiAgIC0gQXMg
c3VnZ2VzdGVkIGJ5IEdlZXJ0LCB1cGRhdGUgdGhlIEhETUkgZGV0ZWN0aW9uIGJ5IHVzaW5nIGFs
bAogICAnc29jX2RldmljZScgZnVuY3Rpb25zCiAgIC0gVXNlICdzb2NfZGV2aWNlX21hdGNoJyBm
dW5jdGlvbiB0byBkZXRlY3QgdGhlIHJldmlzaW9uIGluIHRoZQogICBjbG9jayBkcml2ZXIKICAg
LSBDcmVhdGUgYSBmdW5jdGlvbiB0aGF0IHJlZ2lzdGVycyBoY2xrdmlvIGNsb2NrcyBsYXRlciB0
aGFuIG90aGVycwogICB0byBiZSBzdXJlIHRoYXQgUkszMjg4IHJldmlzaW9uIGlzIHJlYWQuCgpC
ZXN0IHJlZ2FyZHMsCk15bMOobmUgSm9zc2VyYW5kCgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3Jv
Y2tjaGlwLWxpbnV4L2tlcm5lbC9ibG9iL2RldmVsb3AtNC40L2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1yazMyODguYyNMOTYwLi5MOTY0ClsyXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAt
bGludXgvdS1ib290L2Jsb2IvbmV4dC1kZXYvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgv
cmszMjg4LmMjTDM3OC4uTDM4OAoKTXlsw6huZSBKb3NzZXJhbmQgKDIpOgogIHNvYzogcm9ja2No
aXA6IFJlZ2lzdGVyIGEgc29jX2RldmljZSB0byByZXRyaWV2ZSByZXZpc2lvbgogIGNsazogcm9j
a2NoaXA6IHJrMzI4ODogSGFuZGxlIGNsb2NrIHRyZWUgZm9yIHJrMzI4OHcKCiBkcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGstcmszMjg4LmMgfCAgMzYgKysrKysrKystCiBkcml2ZXJzL3NvYy9yb2Nr
Y2hpcC9NYWtlZmlsZSAgICAgfCAgIDEgKwogZHJpdmVycy9zb2Mvcm9ja2NoaXAvcmszMjg4LmMg
ICAgIHwgMTI1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2Vk
LCAxNTggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3NvYy9yb2NrY2hpcC9yazMyODguYwoKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
