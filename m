Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21F61D4E1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WHC0y2HemJScdDiv7FDYne9oNrEmFN+0BmZAQClNvM8=; b=X9DIv0oEyYmbeO
	OEdDgPbYAy4T3rzOBBsz+GMDanOlfpMc0SwcdKMMvKPfgpwWTqrokJrNR1Gf85Mk2VGhWeUgRPPhK
	tjzM6Cje9WXIzWl0YqseZzcV51paKcMPysa5HoH/VUjnBjCxH9Fc0dv+q3zKGfOCKw+VR+k+KcP7v
	Fjn+gqbYpzqeneeEFeVclyA8MmVA14/6+x9TLy8yVBuMolTm+OSgTbYCX686d3gvooV499wmGI1yc
	VL2Acinfuvb4vIJbBIJ6Kuf/+CpxStMX/MQ27uiWnJd+DCD9vLdnw8jiuMdV5NobeR6oRPyuEmTIt
	wC/4mLCcERMR8G3LAwAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZnz-0000zA-An; Fri, 15 May 2020 12:51:11 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZnp-0000yM-Dp
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:51:03 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:ad37:48f9:900a:523e])
 by baptiste.telenet-ops.be with bizsmtp
 id f0qp2200V1TfvYq010qp6s; Fri, 15 May 2020 14:50:52 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZZnd-0005Y5-Fs; Fri, 15 May 2020 14:50:49 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZZnd-0005we-DI; Fri, 15 May 2020 14:50:49 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL] Renesas fixes for v5.7 (take two)
Date: Fri, 15 May 2020 14:50:43 +0200
Message-Id: <20200515125043.22811-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_055101_611355_8037ECC8 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CUhpIGFybS1zb2MgZm9sa3MsCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGI3
MDRmYzFkYTliODRkNzE0NWRiNTUwYTEzZTJiNzE0MGY2YjQxOWI6CgogIEFSTTogZHRzOiByN3M5
MjEwOiBSZW1vdmUgYm9ndXMgY2xvY2stbmFtZXMgZnJvbSBPU1RNIG5vZGVzICgyMDIwLTA0LTI4
IDEwOjE1OjM4ICswMjAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6
CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9nZWVydC9y
ZW5lc2FzLWRldmVsLmdpdCB0YWdzL3JlbmVzYXMtZml4ZXMtZm9yLXY1LjctdGFnMgoKZm9yIHlv
dSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGM4ZTIzM2JmYmEzYjIxY2I2Yjk4MTRiNGJmZTI1MDI0
NzhjN2I4OTU6CgogIEFSTTogZHRzOiBpd2cyMGQtcTctZGJjbS1jYTogUmVtb3ZlIHVubmVlZGVk
IHByb3BlcnRpZXMgaW4gaGRtaUAzOSAoMjAyMC0wNS0xNSAxMDo0MTozNSArMDIwMCkKCi0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KUmVuZXNhcyBmaXhlcyBmb3IgdjUuNyAodGFrZSB0d28pCgogIC0gRml4IGEgd3JvbmcgY2xv
Y2sgY29uZmlndXJhdGlvbiBvbiBSLU1vYmlsZSBBMSwKICAtIE1pbm9yIGZpeGVzIHRoYXQgYXJl
IGZhc3QtdHJhY2tlZCB0byBhdm9pZCBpbnRyb2R1Y2luZyByZWdyZXNzaW9ucwogICAgZHVyaW5n
IGNvbnZlcnNpb24gb2YgRFQgYmluZGluZ3MgdG8ganNvbi1zY2hlbWEuCgpUaGFua3MgZm9yIHB1
bGxpbmchCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KR2VlcnQgVXl0dGVyaG9ldmVuICgxKToKICAgICAgQVJNOiBkdHM6IHI4
YTc3NDA6IEFkZCBtaXNzaW5nIGV4dGFsMiB0byBDUEcgbm9kZQoKUmljYXJkbyBDYcOxdWVsbyAo
Myk6CiAgICAgIGFybTY0OiBkdHM6IHJlbmVzYXM6IE1ha2UgaGRtaSBlbmNvZGVyIG5vZGVzIGNv
bXBsaWFudCB3aXRoIERUIGJpbmRpbmdzCiAgICAgIEFSTTogZHRzOiByZW5lc2FzOiBNYWtlIGhk
bWkgZW5jb2RlciBub2RlcyBjb21wbGlhbnQgd2l0aCBEVCBiaW5kaW5ncwogICAgICBBUk06IGR0
czogaXdnMjBkLXE3LWRiY20tY2E6IFJlbW92ZSB1bm5lZWRlZCBwcm9wZXJ0aWVzIGluIGhkbWlA
MzkKCiBhcmNoL2FybS9ib290L2R0cy9pd2cyMGQtcTctZGJjbS1jYS5kdHNpICAgICAgICAgICAg
fCAgMiAtLQogYXJjaC9hcm0vYm9vdC9kdHMvcjhhNzc0MC5kdHNpICAgICAgICAgICAgICAgICAg
ICAgIHwgIDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3NDUtaXdnMjJkLXNvZGltbS1kYmhk
LWNhLmR0cyB8ICAyIC0tCiBhcmNoL2FybS9ib290L2R0cy9yOGE3NzkwLWxhZ2VyLmR0cyAgICAg
ICAgICAgICAgICAgfCAgMiAtLQogYXJjaC9hcm0vYm9vdC9kdHMvcjhhNzc5MC1zdG91dC5kdHMg
ICAgICAgICAgICAgICAgIHwgIDIgLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTEta29lbHNj
aC5kdHMgICAgICAgICAgICAgICB8ICAyIC0tCiBhcmNoL2FybS9ib290L2R0cy9yOGE3NzkxLXBv
cnRlci5kdHMgICAgICAgICAgICAgICAgfCAgMiAtLQogYXJjaC9hcm0vYm9vdC9kdHMvcjhhNzc5
Mi1ibGFuY2hlLmR0cyAgICAgICAgICAgICAgIHwgIDIgLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3I4
YTc3OTItd2hlYXQuZHRzICAgICAgICAgICAgICAgICB8IDEyICsrKystLS0tLS0tLQogYXJjaC9h
cm0vYm9vdC9kdHMvcjhhNzc5My1nb3NlLmR0cyAgICAgICAgICAgICAgICAgIHwgIDIgLS0KIGFy
Y2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTQtc2lsay5kdHMgICAgICAgICAgICAgICAgICB8ICAyIC0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5NzAtZWFnbGUuZHRzICAgICAgfCAg
MiAtLQogYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTcwLXYzbXNrLmR0cyAgICAg
IHwgIDIgLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk4MC1jb25kb3IuZHRz
ICAgICB8ICAyIC0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlbmVzYXMvcjhhNzc5ODAtdjNoc2su
ZHRzICAgICAgfCAgMiAtLQogYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3I4YTc3OTkwLWVi
aXN1LmR0cyAgICAgIHwgIDIgLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yOGE3Nzk5
NS1kcmFhay5kdHMgICAgICB8ICA2ICsrLS0tLQogMTcgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCA0MSBkZWxldGlvbnMoLSkKCkdye29ldGplLGVldGluZ31zLAoKCQkJCQkJR2VlcnQK
Ci0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlh
MzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0
aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20g
dGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhp
bmcgbGlrZSB0aGF0LgoJCQkJCQkJICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
