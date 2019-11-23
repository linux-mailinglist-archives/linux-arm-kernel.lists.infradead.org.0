Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE1D108077
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oQPET73f0/E0l9ouwK0g0+QTt6OOc1q9qtRAYc2J0Ic=; b=LJL9xXgGyb/gad
	qBSAFh0/iamCwYL8R85njT2dVfHviQUOsdQJWf/HHNJfR035CkgXIbBWxOPZKCEHkMMD8+9QIkXUP
	TXHxknEmgbCXTp35Vki2aoSsOHDhRC0i05lVULKDULTa2VXBcUd/H+dykEwin5PtU6ZA2C8q0n97+
	kySR6w62pR5Spn2zaJfsDMk79tjLTDy2j/QE0p0ncgy+3XnsFgO1EQiX+POXIExBLMceiIKTcbVWF
	VNI2RRf4YgkbEErj1QwX20OjjmISgIbWeHWR6Zmvkqe1sfNw3hMxDpPsopAZnPEr0m5jElqSTYwP6
	Wog0uP4CYVT2KNrLLZiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYcB6-0004jf-TG; Sat, 23 Nov 2019 20:38:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYcAW-0004WS-0c; Sat, 23 Nov 2019 20:38:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A8DD3ADB3;
 Sat, 23 Nov 2019 20:38:08 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 0/8] ARM: Initial RTD1195 and MeLE X1000 & Horseradish
 support
Date: Sat, 23 Nov 2019 21:37:51 +0100
Message-Id: <20191123203759.20708-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_123812_204266_4A191FC8 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
dG9wLWJveC4KCnY0IGluY2x1ZGVzIG1vcmUgbWVtb3J5IHJhbmdlIHJlbGF0ZWQgY2xlYW51cHMs
IGFkZHMgYSBEVAphbmQgZHJvcHMgdGhlIHJlc2V0IHBhdGNoZXMgYWdhaW4gZm9yIGEgZm9sbG93
LXVwIHNlcmllcy4KClRoZSBmaW5hbCBwYXRjaCBpcyBzdGlsbCBpbiBuZWVkIG9mIGZlZWRiYWNr
IGZyb20gUmVhbHRlawpmb3IgaG93IHRvIG5hbWUgYW5kIGhhbmRsZSB0aGlzIG1hZ2ljIHJlZ2lz
dGVyIGFuZCBiaXQocykuCgpTTVAgKGkuZS4sIHRoZSBzZWNvbmQgY29yZSkgaXMgc3RpbGwgZGVw
ZW5kZW50IG9uIHR3byBuZXcKYmluZGluZ3MvZHJpdmVycy4KCk1vcmUgZGV0YWlscyBvbiB0aGUg
ZGV2aWNlIGF0OgpodHRwczovL2VuLm9wZW5zdXNlLm9yZy9IQ0w6TWVsZV9YMTAwMAoKTGF0ZXN0
IGV4cGVyaW1lbnRhbCBwYXRjaGVzIGF0OgpodHRwczovL2dpdGh1Yi5jb20vYWZhZXJiZXIvbGlu
dXgvY29tbWl0cy9ydGQxMjk1LW5leHQKCkhhdmUgYSBsb3Qgb2YgZnVuIQoKQ2hlZXJzLApBbmRy
ZWFzCgp2MyAtPiB2NDoKKiBJbnNlcnQgbWVtb3J5IHJhbmdlIGJldHdlZW4gci1idXMgYW5kIE5P
UiBmbGFzaAoqIEV4Y2x1ZGUgYm9vdCBST00gZnJvbSBtZW1vcnkgcmFuZ2VzCiogQWRkIEhvcnNl
cmFkaXNoIEVWQgoqIERyb3AgcmVzZXQgcGF0Y2hlcyAoSmFtZXMpCgp2MiAtPiB2MzoKKiBJbmNv
cnBvcmF0ZSBjbGVhbnVwIHBhdGNoZXMgZnJvbSBSVEQxMzk1IHNlcmllcwoqIEZpeGVkIHItYnVz
IHNpemUgKEphbWVzKQoqIEZpeGVkIHItYnVzIG5vZGUgbmFtZSAoUm9iKQoqIEluY2x1ZGUgcmVz
ZXQgcGF0Y2hlcyBmcm9tIFJURDEyOTUgcmVzZXQgc2VyaWVzLCByZWJhc2VkIG9udG8gci1idXMK
CnYxIC0+IHYyOgoqIERvIG5vdCByZWR1bmRhbnRseSBzZWxlY3QgQ09NTU9OX0NMSyAoQXJuZCkK
KiBEcm9wIGZ1cnRoZXIgdW5uZWVkZWQgc2VsZWN0cwoqIENsZWFuIHVwIG1lbW9yeSByZXNlcnZh
dGlvbnMgKFJvYikKKiBFbmFibGUgYXJjaCB0aW1lcgoKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnCkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpDYzogQXJuZCBCZXJnbWFu
biA8YXJuZEBhcm5kYi5kZT4KQ2M6IEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPgoK
QW5kcmVhcyBGw6RyYmVyICg4KToKICBkdC1iaW5kaW5nczogYXJtOiByZWFsdGVrOiBBZGQgUlRE
MTE5NSBhbmQgTWVMRSBYMTAwMAogIEFSTTogUHJlcGFyZSBSZWFsdGVrIFJURDExOTUKICBBUk06
IGR0czogUHJlcGFyZSBSZWFsdGVrIFJURDExOTUgYW5kIE1lTEUgWDEwMDAKICBBUk06IGR0czog
cnRkMTE5NTogRXhjbHVkZSBib290IFJPTSBmcm9tIG1lbW9yeSByYW5nZXMKICBBUk06IGR0czog
cnRkMTE5NTogSW50cm9kdWNlIHItYnVzCiAgZHQtYmluZGluZ3M6IGFybTogcmVhbHRlazogQWRk
IFJlYWx0ZWsgSG9yc2VyYWRpc2ggRVZCCiAgQVJNOiBkdHM6IHJ0ZDExOTU6IEFkZCBSZWFsdGVr
IEhvcnNlcmFkaXNoIEVWQgogIEFSTTogcmVhbHRlazogRW5hYmxlIFJURDExOTUgYXJjaCB0aW1l
cgoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIHwg
ICA3ICsrCiBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgMiArCiBhcmNoL2FybS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgMyArCiBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMyArCiBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LWhvcnNlcmFkaXNoLmR0
cyAgICAgICAgICB8ICAzMiArKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS1tZWxlLXgx
MDAwLmR0cyAgICAgICAgICAgfCAgMzIgKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUu
ZHRzaSAgICAgICAgICAgICAgICAgICAgIHwgMTM5ICsrKysrKysrKysrKysrKysrKysrKwogYXJj
aC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgfCAgMTEgKysK
IGFyY2gvYXJtL21hY2gtcmVhbHRlay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgIHwgICAy
ICsKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMgICAgICAgICAgICAgICAgICAgIHwg
IDU2ICsrKysrKysrKwogMTAgZmlsZXMgY2hhbmdlZCwgMjg3IGluc2VydGlvbnMoKykKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LWhvcnNlcmFkaXNoLmR0cwog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUtbWVsZS14MTAwMC5k
dHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LmR0c2kKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvS2NvbmZpZwogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtcmVhbHRlay9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtL21hY2gtcmVhbHRlay9ydGQxMTk1LmMKCi0tIAoyLjE2LjQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
