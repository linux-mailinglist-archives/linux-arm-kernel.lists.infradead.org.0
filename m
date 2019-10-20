Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8C8DDC4E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/hnUsfQtpTPl1thXFO6QhkyjpH66dAsSmB9DBFIfHto=; b=nQwXPKYSS8N/e8
	oTlc8sg6TY+SvZKb9WEOJucWjYbKjFfknN/LAl/HQetKHFaDAlH3FfNWLtzU69Pv+n6/jA6Iug1M3
	Oj8pjz+JHYdOfIQlfPZE/ZtCxDUW/Gq7H58wIOXQkbyO/jMknZIcWIBrdESp1o8NlaySRPKWsnsWK
	Az4k1qv6qsWRk2KULf2+tksgIMyirzFRI3KHUrr1JwcVPNKyQW9mwynDqiSXchfia2q0/Fw0RUqTk
	K8LQSimK8ZsAHQCgJ6uCQtKBFdGq+6CQMdnvshBsZQ1Im3GvMb3VaNevjOIENvs6zoAv0KKeLVOo+
	i0VjLwsz6K0a1F/fbpgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2Wd-0002gf-Du; Sun, 20 Oct 2019 04:09:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W5-0002UH-67; Sun, 20 Oct 2019 04:08:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 73045AC75;
 Sun, 20 Oct 2019 04:08:25 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 0/8] arm64: dts: Initial RTD1293/RTD1296 and DS418j/DS418
 support
Date: Sun, 20 Oct 2019 06:08:09 +0200
Message-Id: <20191020040817.16882-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210829_379615_6B832198 
X-CRM114-Status: UNSURE (   8.49  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, info@synology.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBhZGRzIERldmljZSBUcmVlcyBmb3IgdGhlIFJlYWx0ZWsgUlRE
MTI5MyBhbmQgUlREMTI5NiBTb0NzIGFuZApTeW5vbG9neSBEaXNrU3RhdGlvbiBEUzQxOGogYW5k
IERTNDE4IE5BUyBkZXZpY2VzLgoKdjIgd2FzIHVwZGF0ZWQgdG8gWUFNTCBzY2hlbWFzLgoKTW9y
ZSBkZXRhaWxzIGF0OgpodHRwczovL2VuLm9wZW5zdXNlLm9yZy9IQ0w6RFM0MThqCmh0dHBzOi8v
ZW4ub3BlbnN1c2Uub3JnL0hDTDpEUzQxOAoKTGF0ZXN0IGV4cGVyaW1lbnRhbCBwYXRjaGVzIGF0
OgpodHRwczovL2dpdGh1Yi5jb20vYWZhZXJiZXIvbGludXgvY29tbWl0cy9ydGQxMjk1LW5leHQK
CkhhdmUgYSBsb3Qgb2YgZnVuIQoKQ2hlZXJzLApBbmRyZWFzCgp2MSAtPiB2MjoKKiBSZWJhc2Vk
IG9udG8gUm9iJ3MgU29DIFlBTUwgc2NoZW1hIGNvbnZlcnNpb24KKiBNb3ZlZCBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllciB0byB0b3AKKiBZQU1MIHNjaGVtYSBjb252ZXJzaW9ucyBvZiB3YXRjaGRv
ZyBhbmQgcnRjCiogRHJvcHBlZCAiYXJtLGFybXY4IiAoUm9iKQoqIEFkb3B0ZWQgQlNELTItQ2xh
dXNlIGluc3RlYWQgb2YgTUlUIGR1YWwtbGljZW5zZSAoUm9iKQoqIERyb3BwZWQgYWNjaWRlbnRh
bCBlbmFibGUtbWV0aG9kIGFuZCBjcHUtcmVsZWFzZS1hZGRyCiogRml4IERTNDE4IHRvIGFjdHVh
bGx5IHVzZSBydGQxMjk2LmR0c2kKCkNjOiBpbmZvQHN5bm9sb2d5LmNvbQpDYzogZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+CgpB
bmRyZWFzIEbDpHJiZXIgKDgpOgogIGR0LWJpbmRpbmdzOiB3YXRjaGRvZzogcmVhbHRlazogQ29u
dmVydCBSVEQxMTl4IHRvIHNjaGVtYQogIGR0LWJpbmRpbmdzOiBydGM6IHJlYWx0ZWs6IENvbnZl
cnQgUlREMTE5eCB0byBzY2hlbWEKICBkdC1iaW5kaW5nczogYXJtOiByZWFsdGVrOiBUaWR5IHVw
IGNvbnZlcnNpb24gdG8ganNvbi1zY2hlbWEKICBkdC1iaW5kaW5nczogYXJtOiByZWFsdGVrOiBE
b2N1bWVudCBSVEQxMjkzIGFuZCBTeW5vbG9neSBEUzQxOGoKICBhcm02NDogZHRzOiByZWFsdGVr
OiBDaGFuZ2UgZHVhbC1saWNlbnNlIGZyb20gTUlUIHRvIEJTRAogIGFybTY0OiBkdHM6IHJlYWx0
ZWs6IEFkZCBSVEQxMjkzIGFuZCBTeW5vbG9neSBEUzQxOGoKICBkdC1iaW5kaW5nczogYXJtOiBy
ZWFsdGVrOiBEb2N1bWVudCBSVEQxMjk2IGFuZCBTeW5vbG9neSBEUzQxOAogIGFybTY0OiBkdHM6
IHJlYWx0ZWs6IEFkZCBSVEQxMjk2IGFuZCBTeW5vbG9neSBEUzQxOAoKIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIHwgMjcgKysrKysrLS0tCiAuLi4v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcmVhbHRlayxydGQxMTl4LnR4dCAgICB8IDE2IC0tLS0t
LQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcnRjL3JlYWx0ZWsscnRkMTE5eC55YW1sICAgfCAz
OCArKysrKysrKysrKysrCiAuLi4vYmluZGluZ3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4LnR4
dCAgICAgICAgICB8IDE3IC0tLS0tLQogLi4uL2JpbmRpbmdzL3dhdGNoZG9nL3JlYWx0ZWsscnRk
MTE5eC55YW1sICAgICAgICAgfCAzOCArKysrKysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICA1ICsrCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JlYWx0ZWsvcnRkMTI5My1kczQxOGouZHRzICAgICB8IDMwICsrKysrKysrKysKIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLmR0c2kgICAgICAgICAgIHwgNTEgKysrKysr
KysrKysrKysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LXppZG9vLXg5
cy5kdHMgIHwgIDMgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kg
ICAgICAgICAgIHwgIDMgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk2LWRz
NDE4LmR0cyAgICAgIHwgMzAgKysrKysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEyOTYuZHRzaSAgICAgICAgICAgfCA2NSArKysrKysrKysrKysrKysrKysrKysrCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpICAgICAgICAgICB8ICAzICstCiAx
MyBmaWxlcyBjaGFuZ2VkLCAyODAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCiBkZWxl
dGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9yZWFs
dGVrLHJ0ZDExOXgudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3J0Yy9yZWFsdGVrLHJ0ZDExOXgueWFtbAogZGVsZXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDEx
OXgudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3dhdGNoZG9nL3JlYWx0ZWsscnRkMTE5eC55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTMtZHM0MThqLmR0cwogY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLmR0c2kKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5Ni1kczQxOC5kdHMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5Ni5k
dHNpCgotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
