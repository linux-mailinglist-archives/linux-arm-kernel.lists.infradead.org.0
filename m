Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E8710E8CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kloEYKRXXKaqU9ZgsJ4Kp3e+sFEVtx3P4yCEiKFL+40=; b=RsrDE2APEH3RSd
	KEP7B7OwAsJkMbhzPQzGt6uPBvY0Bfb/oXrJNbz3KUjY07V710evCGH2dT+9ncyuJV5eVe+0RMUm/
	PUvACxaD50a+b9tYPeErngPUOHaLdU2ZcTCzBOYF7pKjvxGP7vaC/8z5Gr+LFhNL3XODCaIBoGnjJ
	x+mGpKnINyQ90K/hwRLvkhkh1OyQvYKyc4oT9CCtG9xqAjVNSZivHjlg8Wav0Tfc6AIIZM1leXd4n
	BjLYtOmXv7uZO8XTyQrd9fW+yzK1/qbOf6/E7f2r4n9QRIFYzQKrtGq4x9UtTQuE3K6C6qfAoy8m6
	17QMPfUcmaIiMmPvuGEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibixh-0005Nj-4N; Mon, 02 Dec 2019 10:29:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibixE-0005Ay-Cz; Mon, 02 Dec 2019 10:29:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BAD3EB220;
 Mon,  2 Dec 2019 10:29:18 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 0/9] arm64: dts: realtek: Initial RTD1395 and BPi-M4 / Lion
 Skin support
Date: Mon,  2 Dec 2019 11:29:01 +0100
Message-Id: <20191202102910.26916-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_022920_590636_EA1DEE11 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, James Tai <james.tai@realtek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHBhdGNoIHNlcmllcyBhZGRzIGluaXRpYWwgRGV2aWNlIFRyZWVzIGZvciBS
ZWFsdGVrIFJURDEzOTUgU29DIGFuZApCYW5hbmEgUGkgQlBJLU00IFNCQyBhbmQgKG5ldyBpbiB2
MikgUmVhbHRlayBMaW9uIFNraW4gRVZCLgoKSXQgaXMgYmFzZWQgb24gbXkgUlREMTE5NSBzZXJp
ZXMgYW5kIEphbWVzJyBSVEQxNjE5IHNlcmllcy4KCkl0IHN0YXJ0cyB3aXRoIHNvbWUgcmVmYWN0
b3JpbmdzIHRvIGFsaWduIHRoZSB2YXJpb3VzIFNvQ3MgYW5kIHRoZW4KaW50cm9kdWNlcyBhbiBy
LWJ1cyBub2RlIGFuZCBnb2VzIG9uIHRvIHByb3Blcmx5IHNoYWRvdyBSQU0gYXJlYXMuCgpSVEQx
Mzk1IGZhbWlseSBzZWVtcyBwcmV0dHkgc2ltaWxhciB0byBSVEQxMjk1IGZhbWlseSwgYnV0IGFs
bG93cyBmb3IgbW9yZSBSQU0sCmFuZCBpdCB1c2VzIGEgZGlmZmVyZW50IHJlc2VydmVkIG1lbW9y
eSByZWdpb24gZm9yIFJQQy4KUlREMTI5NSByZXNldHMgYXBwZWFyIHN1ZmZpY2llbnRseSBjb21w
YXRpYmxlIGZvciBub3cgKG5vIGRvY3VtZW50YXRpb24geWV0KS4KCk1vcmUgZGV0YWlscyBhdDoK
aHR0cHM6Ly9lbi5vcGVuc3VzZS5vcmcvSENMOkJhbmFuYVBpX000CgpMYXRlc3QgZXhwZXJpbWVu
dGFsIHBhdGNoZXMgYXQ6Cmh0dHBzOi8vZ2l0aHViLmNvbS9hZmFlcmJlci9saW51eC9jb21taXRz
L3J0ZDEyOTUtbmV4dAoKSGF2ZSBhIGxvdCBvZiBmdW4hCgpDaGVlcnMsCkFuZHJlYXMKCnYxIC0+
IHYyOgoqIFJURDExOTUgcGF0Y2hlcyBzcXVhc2hlZC9tb3ZlZCBpbnRvIFJURDExOTUgdjMgc2Vy
aWVzCiogRml4ZWQgUlREMTI5NSByLWJ1cyBzaXplIChKYW1lcykKKiBVc2UgI2FkZHJlc3MtY2Vs
bHMvI3NpemUtY2VsbHMgb2YgMSAoSmFtZXMpCiogQWRkL3VwZGF0ZSBwYXRjaGVzIHRvIGNhcnZl
IG91dCBib290IFJPTSBmcm9tIFJBTSAoUm9iL0phbWVzKQoqIEFkZCBwYXRjaGVzIGFkZGluZyBS
VEQxMzk1IExpb24gU2tpbiBFVkIKCkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDYzog
Um9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IEphbWVzIFRhaSA8amFtZXMudGFp
QHJlYWx0ZWsuY29tPgoKQW5kcmVhcyBGw6RyYmVyICg5KToKICBhcm02NDogZHRzOiByZWFsdGVr
OiBydGQxMjl4OiBGaXggR0lDIENQVSBtYXNrcyBmb3IgUlREMTI5MwogIGFybTY0OiBkdHM6IHJl
YWx0ZWs6IHJ0ZDEyOXg6IFVzZSByZXNlcnZlZC1tZW1vcnkgZm9yIFJQQyByZWdpb25zCiAgYXJt
NjQ6IGR0czogcmVhbHRlazogcnRkMTI5eDogSW50cm9kdWNlIHItYnVzCiAgYXJtNjQ6IGR0czog
cmVhbHRlazogcnRkMTI5eDogQ2FydmUgb3V0IGJvb3QgUk9NIGZyb20gbWVtb3J5CiAgYXJtNjQ6
IGR0czogcmVhbHRlazogcnRkMTZ4eDogQ2FydmUgb3V0IGJvb3QgUk9NIGZyb20gbWVtb3J5CiAg
ZHQtYmluZGluZ3M6IGFybTogcmVhbHRlazogQWRkIFJURDEzOTUgYW5kIEJhbmFuYSBQaSBCUEkt
TTQKICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgUlREMTM5NSBhbmQgQlBpLU00CiAgZHQtYmlu
ZGluZ3M6IGFybTogcmVhbHRlazogQWRkIFJlYWx0ZWsgTGlvbiBTa2luIEVWQgogIGFybTY0OiBk
dHM6IHJlYWx0ZWs6IHJ0ZDEzOTU6IEFkZCBSZWFsdGVrIExpb24gU2tpbiBFVkIKCiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCB8ICAgNyArCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMyArCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My1kczQxOGouZHRzICAgICB8ICAgNiAr
LQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMuZHRzaSAgICAgICAgICAgfCAg
MTIgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LW1lbGUtdjkuZHRzICAg
IHwgICA2ICstCiAuLi4vYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXByb2JveDItYXZh
LmR0cyB8ICAgNiArLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTUtemlkb28t
eDlzLmR0cyAgfCAgIDQgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0
c2kgICAgICAgICAgIHwgIDIxICstLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEy
OTYtZHM0MTguZHRzICAgICAgfCAgIDQgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9y
dGQxMjk2LmR0c2kgICAgICAgICAgIHwgICA4ICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0
ZWsvcnRkMTI5eC5kdHNpICAgICAgICAgICB8IDE3MCArKysrKysrKysrKystLS0tLS0tLS0KIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzk1LWJwaS1tNC5kdHMgICAgIHwgIDMwICsr
KysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzk1LWxpb25za2luLmR0cyAgIHwg
IDM2ICsrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5NS5kdHNpICAgICAg
ICAgICB8ICA2NSArKysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOXgu
ZHRzaSAgICAgICAgICAgfCAxNDIgKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxNjE5LW1qb2xuaXIuZHRzICAgIHwgICA1ICstCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JlYWx0ZWsvcnRkMTZ4eC5kdHNpICAgICAgICAgICB8ICAgNCArLQogMTcgZmlsZXMg
Y2hhbmdlZCwgNDE3IGluc2VydGlvbnMoKyksIDExMiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5NS1icGktbTQuZHRzCiBj
cmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEzOTUtbGlv
bnNraW4uZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEzOTUuZHRzaQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMzl4LmR0c2kKCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
