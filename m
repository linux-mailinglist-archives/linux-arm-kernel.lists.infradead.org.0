Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B6D10EF27
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 19:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kttg5INjCRdFbo0h7EYolggODzsVQUZSY28iveI3LRY=; b=n3hFTU/F/sT3Yi
	YGdNlBA0MPSUU0qLU618wzRw7sDwQImGmanUo7xnt+6pGhSuMbMh1b5lGeq3YF6g7Da6Ppl5X1ULj
	qGx88y4/M2WeOdk9lGjslUYi+J+xpjuu06pUfHFjFLXO2zwAl3HybmMRsLBLBMT0kIMtk3qCwOKkX
	7uyo43UIekIygaZuee0OAdvoU5L5kVrhiVjci7ujElk6r8cQ1YRVnteLX3vsyLgQEm3U9HvjGwkuC
	jIlvNhoSPsjLFOX3VNMdycT64EKcirogc2EAbmLLTiMfnKYBClLtrIpWyQk45fWzKOlQRZunlg+24
	bYOhNQSAZZ9RTucpYSvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqLL-0004WI-Ok; Mon, 02 Dec 2019 18:22:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqKt-0004El-SG; Mon, 02 Dec 2019 18:22:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 98844AD98;
 Mon,  2 Dec 2019 18:22:13 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 00/14] ARM: dts: realtek: Introduce syscon
Date: Mon,  2 Dec 2019 19:21:50 +0100
Message-Id: <20191202182205.14629-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_102216_062260_9B038515 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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

SGVsbG8sCgpUaGlzIHBhdGNoIHNlcmllcyBmYWN0b3JzIG91dCBzeXN0ZW0gY29udHJvbGxlciBt
dWx0aS1mdW5jdGlvbiBkZXZpY2Ugbm9kZXMKZm9yIENSVCwgSXNvLCBNaXNjLCBTQjIgYW5kIFND
UFUgV3JhcHBlciBJUCBibG9ja3MuCgpJdCB3YXMgaW5zcGlyZWQgYnkgbXkgU29DIGluZm8gUkZD
LCBhcyBkaXNjdXNzZWQgaW4gaXRzIGNvdmVyIGxldHRlciBbMV0uCgpHb2FsIG9mIERUIGlzIHRv
IGRlc2NyaWJlIHRoZSBoYXJkd2FyZSwgYW5kIGluIHByZXZpb3VzIHBhdGNoZXMgd2UndmUgYWxy
ZWFkeQppbnRyb2R1Y2VkIFJlYWx0ZWsncyByLWJ1cyBhcyBub2RlIGxheWVyLiBUaGUgbmV4dCBz
dGVwIGhlcmUgaXMgdG8gbW9kZWwKbXVsdGktZnVuY3Rpb24gYmxvY2tzIGFzIG5vZGVzLiBJbiBv
cmRlciB0byBjb3BlIHdpdGggODAtY2hhcmFjdGVyIGxpbmUgbGltaXQsCmNoaWxkIG5vZGVzIGFy
ZSBhZGRlZCB2aWEgcmVmZXJlbmNlIHJhdGhlciB0aGFuIGluLXBsYWNlLgoKQWxzbyBpbmNsdWRl
ZCBpcyBhIHBhdGNoIGFkZGluZyBhIHJlc2V0IGNvbnN0YW50IGZvciB0aGUgU0IyIGJsb2NrIGFk
ZGVkLgpXZSBtYXkgbmVlZCB0byBmb2xsb3cgdXAgd2l0aCBiaW5kaW5ncyBhZGRpbmcgY29tcGF0
aWJsZXMsIGNsb2NrcyBhbmQgcmVzZXRzLgoKVGhpcyBzZXJpZXMgaXMgYmFzZWQgb24gbXkgUlRE
MTE5NSB2NCBbMl0gKGV4Y2VwdCBmb3IgcmVzZXQsIHJlYmFzZWQgaGVyZSksCm15IFJURDEzOTUg
djIgWzNdIGFuZCBKYW1lcycgbW9kaWZpZWQgUlREMTYxOSB2MyBbNF0uCgpUaGUgaXJxIG11eCBz
ZXJpZXMgdjUgWzVdIGhhcyBiZWVuIHJlYmFzZWQgb250byB0aGlzIHNlcmllcywgdjYgdG8gYmUg
c2VudC4KVGhlIFNvQyBpbmZvIFJGQyBzZXJpZXMgWzFdIGlzIHN0aWxsIGJlaW5nIHVwZGF0ZWQs
IHYyIHRvIGJlIHBvc3RlZCBsYXRlci4KCkxhdGVzdCBleHBlcmltZW50YWwgcGF0Y2hlcyBhdDoK
aHR0cHM6Ly9naXRodWIuY29tL2FmYWVyYmVyL2xpbnV4L2NvbW1pdHMvcnRkMTI5NS1uZXh0CgpI
YXZlIGEgbG90IG9mIGZ1biEKCkNoZWVycywKQW5kcmVhcwoKWzFdIGh0dHBzOi8vcGF0Y2h3b3Jr
Lmtlcm5lbC5vcmcvY292ZXIvMTEyMjQyNjEvClsyXSBodHRwczovL3BhdGNod29yay5rZXJuZWwu
b3JnL2NvdmVyLzExMjU4OTQ5LwpbM10gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zl
ci8xMTI2ODk1NS8KWzRdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEyMzk2
OTcvCls1XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMjU1MjkxLwoKQ2M6
IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJu
ZWwub3JnPgpDYzogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+CgpBbmRyZWFzIEbD
pHJiZXIgKDE0KToKICBBUk06IGR0czogcnRkMTE5NTogSW50cm9kdWNlIGlzbyBhbmQgbWlzYyBz
eXNjb24KICBhcm02NDogZHRzOiByZWFsdGVrOiBydGQxMjl4OiBJbnRyb2R1Y2UgQ1JULCBpc28g
YW5kIG1pc2Mgc3lzY29uCiAgYXJtNjQ6IGR0czogcmVhbHRlazogcnRkMTM5eDogSW50cm9kdWNl
IENSVCwgaXNvIGFuZCBtaXNjIHN5c2NvbgogIGFybTY0OiBkdHM6IHJlYWx0ZWs6IHJ0ZDE2eHg6
IEludHJvZHVjZSBpc28gYW5kIG1pc2Mgc3lzY29uCiAgQVJNOiBkdHM6IHJ0ZDExOTU6IEFkZCBD
UlQgc3lzY29uIG5vZGUKICBkdC1iaW5kaW5nczogcmVzZXQ6IEFkZCBSZWFsdGVrIFJURDExOTUK
ICBBUk06IGR0czogcnRkMTE5NTogQWRkIHJlc2V0IG5vZGVzCiAgQVJNOiBkdHM6IHJ0ZDExOTU6
IEFkZCBVQVJUIHJlc2V0cwogIGFybTY0OiBkdHM6IHJlYWx0ZWs6IHJ0ZDE2eHg6IEFkZCBDUlQg
c3lzY29uIG5vZGUKICBBUk06IGR0czogcnRkMTE5NTogQWRkIFNCMiBhbmQgU0NQVSBXcmFwcGVy
IHN5c2NvbiBub2RlcwogIGFybTY0OiBkdHM6IHJlYWx0ZWs6IHJ0ZDEyOXg6IEFkZCBTQjIgYW5k
IFNDUFUgV3JhcHBlciBzeXNjb24gbm9kZXMKICBhcm02NDogZHRzOiByZWFsdGVrOiBydGQxMzl4
OiBBZGQgU0IyIGFuZCBTQ1BVIFdyYXBwZXIgc3lzY29uIG5vZGVzCiAgYXJtNjQ6IGR0czogcmVh
bHRlazogcnRkMTZ4eDogQWRkIFNCMiBhbmQgU0NQVSBXcmFwcGVyIHN5c2NvbiBub2RlcwogIGR0
LWJpbmRpbmdzOiByZXNldDogcnRkMTI5NTogQWRkIFNCMiByZXNldAoKIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3J0ZDExOTUuZHRzaSAgICAgICAgICAgICAgfCAxMTAgKysrKysrKysrKysrKysrKy0tLQog
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSAgICB8IDE1NyArKysrKysr
KysrKysrKysrKystLS0tLS0tLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTM5
eC5kdHNpICAgIHwgMTU3ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxNnh4LmR0c2kgICAgfCAgOTEgKysrKysrKysrKysrLS0tLQog
aW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUuaCB8ICA3NCArKysrKysr
KysrKysrCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRkMTI5NS5oIHwgICAz
ICsKIDYgZmlsZXMgY2hhbmdlZCwgNDQ5IGluc2VydGlvbnMoKyksIDE0MyBkZWxldGlvbnMoLSkK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRk
MTE5NS5oCgotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
