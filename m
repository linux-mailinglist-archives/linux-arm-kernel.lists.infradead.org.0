Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E72FF863
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 08:22:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hMz8O5NSeptc0KFIAGkDd11J8eqkmnYAd+JfCu+S1v4=; b=BB2T0HcqoX+/bR
	WNmgaJ3HaczegQdJt/oqEIR0/1OCIlCV8CgdxBDZYKj3j90D3L1N1+tuJyYupJVCRUUvKRfBogUc/
	gTfr7/EyxXHLPdnkU8p9jCmpR/YCypCibQjYTNyNxrCoDUqYpTyEOrscWixiYmXflKLyc85oZ4K5N
	tITBrgOqKJsQJCukWsXBS4iVStIyME5mTEDtisq4V1saZVyZPFDW0rNhg2tcy08eMfguueLzBLOl/
	FjXp8J/WUu4idjKNi52QaktkAkh+dzNcdcwdUV9CjQOEVQiYvr5sm3u9kAIA70ep2quc+fTwMZfQt
	W/gJIsV7Dd6zGVt4r/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWEtR-0000fL-IG; Sun, 17 Nov 2019 07:22:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWEs7-00083V-6K; Sun, 17 Nov 2019 07:21:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 11345B221;
 Sun, 17 Nov 2019 07:21:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v3 0/8] ARM: Initial RTD1195 and MeLE X1000 support
Date: Sun, 17 Nov 2019 08:21:01 +0100
Message-Id: <20191117072109.20402-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_232123_392046_295B18B1 
X-CRM114-Status: GOOD (  10.24  )
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
Cc: Rob Herring <robh@kernel.org>, James Tai <james.tai@realtek.com>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIGluaXRpYWwgc3VwcG9ydCBmb3IgUmVhbHRlayBSVEQx
MTk1IFNvQwphbmQgYWRkcyBhIERldmljZSBUcmVlIGZvciB0aGUgTWVMRSBYMTAwMCBUViBzZXQt
dG9wLWJveC4KCnYzIGluY2x1ZGVzIHZhcmlvdXMgbWVtb3J5IHJhbmdlIHJlbGF0ZWQgY2xlYW51
cHMgYW5kCmNvbGxlY3RzIGZvbGxvdy11cCBwYXRjaGVzIGZyb20gbXVsdGlwbGUgb3RoZXIgc2Vy
aWVzLgoKVGhlIGZpbmFsIHBhdGNoIGlzIHN0aWxsIGluIG5lZWQgb2YgZmVlZGJhY2sgZnJvbSBS
ZWFsdGVrCmZvciBob3cgdG8gbmFtZSBhbmQgaGFuZGxlIHRoaXMgbWFnaWMgcmVnaXN0ZXIgYW5k
IGJpdChzKS4KClNNUCAoaS5lLiwgdGhlIHNlY29uZCBjb3JlKSBpcyBzdGlsbCBkZXBlbmRlbnQg
b24gdHdvIG5ldwpiaW5kaW5ncy9kcml2ZXJzLgoKTW9yZSBkZXRhaWxzIG9uIHRoZSBkZXZpY2Ug
YXQ6Cmh0dHBzOi8vZW4ub3BlbnN1c2Uub3JnL0hDTDpNZWxlX1gxMDAwCgpMYXRlc3QgZXhwZXJp
bWVudGFsIHBhdGNoZXMgYXQ6Cmh0dHBzOi8vZ2l0aHViLmNvbS9hZmFlcmJlci9saW51eC9jb21t
aXRzL3J0ZDEyOTUtbmV4dAoKSGF2ZSBhIGxvdCBvZiBmdW4hCgpDaGVlcnMsCkFuZHJlYXMKCnYy
IC0+IHYzOgoqIEluY29ycG9yYXRlIGNsZWFudXAgcGF0Y2hlcyBmcm9tIFJURDEzOTUgc2VyaWVz
CiogRml4ZWQgci1idXMgc2l6ZSAoSmFtZXMpCiogRml4ZWQgci1idXMgbm9kZSBuYW1lIChSb2Ip
CiogSW5jbHVkZSByZXNldCBwYXRjaGVzIGZyb20gUlREMTI5NSByZXNldCBzZXJpZXMsIHJlYmFz
ZWQgb250byByLWJ1cwoKdjEgLT4gdjI6CiogRG8gbm90IHJlZHVuZGFudGx5IHNlbGVjdCBDT01N
T05fQ0xLIChBcm5kKQoqIERyb3AgZnVydGhlciB1bm5lZWRlZCBzZWxlY3RzCiogQ2xlYW4gdXAg
bWVtb3J5IHJlc2VydmF0aW9ucyAoUm9iKQoqIEVuYWJsZSBhcmNoIHRpbWVyCgpDYzogZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkNj
OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlA
cmVhbHRlay5jb20+CgpBbmRyZWFzIEbDpHJiZXIgKDgpOgogIGR0LWJpbmRpbmdzOiBhcm06IHJl
YWx0ZWs6IEFkZCBSVEQxMTk1IGFuZCBNZUxFIFgxMDAwCiAgQVJNOiBQcmVwYXJlIFJlYWx0ZWsg
UlREMTE5NQogIEFSTTogZHRzOiBQcmVwYXJlIFJlYWx0ZWsgUlREMTE5NSBhbmQgTWVMRSBYMTAw
MAogIEFSTTogZHRzOiBydGQxMTk1OiBJbnRyb2R1Y2Ugci1idXMKICBkdC1iaW5kaW5nczogcmVz
ZXQ6IEFkZCBSZWFsdGVrIFJURDExOTUKICBBUk06IGR0czogcnRkMTE5NTogQWRkIHJlc2V0IG5v
ZGVzCiAgQVJNOiBkdHM6IHJ0ZDExOTU6IEFkZCBVQVJUIHJlc2V0cwogIEFSTTogcmVhbHRlazog
RW5hYmxlIFJURDExOTUgYXJjaCB0aW1lcgoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcmVhbHRlay55YW1sIHwgICA2ICsKIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIGFyY2gvYXJtL01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAzICsKIGFyY2gvYXJtL2Jvb3QvZHRzL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIGFyY2gvYXJtL2Jvb3QvZHRz
L3J0ZDExOTUtbWVsZS14MTAwMC5kdHMgICAgICAgICAgIHwgIDMxICsrKysKIGFyY2gvYXJtL2Jv
b3QvZHRzL3J0ZDExOTUuZHRzaSAgICAgICAgICAgICAgICAgICAgIHwgMTYyICsrKysrKysrKysr
KysrKysrKysrKwogYXJjaC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTEgKysKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9NYWtlZmlsZSAgICAgICAgICAg
ICAgICAgICAgIHwgICAyICsKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMgICAgICAg
ICAgICAgICAgICAgIHwgIDUzICsrKysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVh
bHRlayxydGQxMTk1LmggICAgICAgIHwgIDc0ICsrKysrKysrKysKIDEwIGZpbGVzIGNoYW5nZWQs
IDM0NiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMv
cnRkMTE5NS1tZWxlLXgxMDAwLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtcmVhbHRl
ay9LY29uZmlnCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL01ha2Vm
aWxlCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQx
MTk1LmgKCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
