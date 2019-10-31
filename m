Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267FCEB575
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IozuTFwE18qpjC03cshtnis0ggqo0DYECmKTAYB6v+Q=; b=J6PtTinvg3dyOM
	ey5ZGz4ZkUvKdLCW5IBOE/gCodLpo7ikKXpPOcT9vzu7PiHM0DS7aWyK4HaqrifzKmOmVqInAdTyW
	FWJfPXPtfVjoVOaheauqjgJ4SIRXearuo/1pl94+HmIbn/qTXJoZvws/YuvL/VZGTlYMowh4sUVMe
	Ar6c+SkFJMbUaCkm1okwGfM6fBCHtAveuLvWb6hZapOaFPg86mxOLjHsOWHmEPJ/mkROeSIOpEy2e
	qWnB5FlSgYLigcdM3O31UGdbRaxvKcAdeu2TiR3GHy2BajAheChuhYpj4vXsHY+kLBJdq5xLLNxTH
	h75Ft1XWVVnvfhqE1Y3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDic-0004pK-TU; Thu, 31 Oct 2019 16:54:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDhC-0003rX-5P; Thu, 31 Oct 2019 16:53:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 80ED6B2FE;
 Thu, 31 Oct 2019 16:53:10 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 0/4] ARM: Initial RTD1195 and MeLE X1000 support
Date: Thu, 31 Oct 2019 17:53:03 +0100
Message-Id: <20191031165308.14102-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095314_383516_0723E20D 
X-CRM114-Status: UNSURE (   8.81  )
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIGluaXRpYWwgc3VwcG9ydCBmb3IgUmVhbHRlayBSVEQx
MTk1IFNvQwphbmQgYWRkcyBhIERldmljZSBUcmVlIGZvciB0aGUgTWVMRSBYMTAwMCBUViBzZXQt
dG9wLWJveC4KCnYyIGNsZWFucyB1cCBtZW1vcnkgcmVzZXJ2YXRpb25zIGFuZCBlbmFibGVzIHRo
ZSBhcmNoIHRpbWVyLgoKTW9yZSBkZXRhaWxzIGF0OgpodHRwczovL2VuLm9wZW5zdXNlLm9yZy9I
Q0w6TWVsZV9YMTAwMAoKTGF0ZXN0IGV4cGVyaW1lbnRhbCBwYXRjaGVzIGF0OgpodHRwczovL2dp
dGh1Yi5jb20vYWZhZXJiZXIvbGludXgvY29tbWl0cy9ydGQxMjk1LW5leHQKCkhhdmUgYSBsb3Qg
b2YgZnVuIQoKQ2hlZXJzLApBbmRyZWFzCgp2MSAtPiB2MjoKKiBEbyBub3QgcmVkdW5kYW50bHkg
c2VsZWN0IENPTU1PTl9DTEsgKEFybmQpCiogRHJvcCBmdXJ0aGVyIHVubmVlZGVkIHNlbGVjdHMK
KiBDbGVhbiB1cCBtZW1vcnkgcmVzZXJ2YXRpb25zIChSb2IpCiogRW5hYmxlIGFyY2ggdGltZXIK
CkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+CgpBbmRyZWFzIEbDpHJi
ZXIgKDQpOgogIGR0LWJpbmRpbmdzOiBhcm06IHJlYWx0ZWs6IEFkZCBSVEQxMTk1IGFuZCBNZUxF
IFgxMDAwCiAgQVJNOiBQcmVwYXJlIFJlYWx0ZWsgUlREMTE5NQogIEFSTTogZHRzOiBQcmVwYXJl
IFJlYWx0ZWsgUlREMTE5NSBhbmQgTWVMRSBYMTAwMAogIEFSTTogcmVhbHRlazogRW5hYmxlIFJU
RDExOTUgYXJjaCB0aW1lcgoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cmVhbHRlay55YW1sIHwgICA2ICsKIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAyICsKIGFyY2gvYXJtL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAzICsKIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUt
bWVsZS14MTAwMC5kdHMgICAgICAgICAgIHwgIDMxICsrKysrCiBhcmNoL2FybS9ib290L2R0cy9y
dGQxMTk1LmR0c2kgICAgICAgICAgICAgICAgICAgICB8IDEyNyArKysrKysrKysrKysrKysrKysr
KysKIGFyY2gvYXJtL21hY2gtcmVhbHRlay9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgIHwg
IDExICsrCiBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICB8ICAgMiArCiBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jICAgICAgICAgICAgICAg
ICAgICB8ICA1MyArKysrKysrKysKIDkgZmlsZXMgY2hhbmdlZCwgMjM3IGluc2VydGlvbnMoKykK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9ydGQxMTk1LW1lbGUteDEwMDAu
ZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCiBj
cmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yZWFsdGVrL0tjb25maWcKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvTWFrZWZpbGUKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jCgotLSAKMi4xNi40CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
