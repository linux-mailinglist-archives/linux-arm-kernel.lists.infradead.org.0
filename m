Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CBA1DF462
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 05:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkA5anTlUlHIDEJjVqTi0Kk7w+UbGL10+rYruRpyZjU=; b=EHZfKhFRYAjU8i
	p2Eshj5goWfnNf0TVDUXMkBoOkar5cTkLNk0ZEqFcXecoJ74NOpr1sMno4u4lUAa9+MBOy2BZyD5F
	HWTeptctaeIfJg0wQy13mKd40Bth+JAODjgkYfibV3eecjF91959vBpOM233YnpK0tioUQocaI14N
	NbabTTXs9aiRrjwl9ev9tDExm/bQb1HSj9Rd3DJyQypL9uGQCWCYB/elm/wgVSXUey71O2ocW4qzh
	NalFfdH6RWz4ES0/vlGatKyeBISZ7y2v9+T/l63nquPzKgAqlNOTpGyNPToWd7nkEuL7F/DRY4Zcv
	xKXNlmVD1Kw2wa/R4a+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcKoI-0001kc-81; Sat, 23 May 2020 03:26:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcKmy-0000na-SF
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 03:25:34 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9375620849;
 Sat, 23 May 2020 03:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590204332;
 bh=pcOxCV9tvCilx3E4+uKd6O+RHVYRJTe9hKGhvSTd+nQ=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E+hOtejO6hdCVIH54asFfJJh5YIlChH7xHjydz3AlQB70w7FIUthOSCjlGX2vU0fR
 taBMdDwn0bGoPKX11fMOmvSG9TENUsJGLWfWtHp+eq+2ihCa1m+M/fPQFeJ2mDqZOd
 Np1kK8Vd6wu0iJPh28B8L/O2Uhyrv39R7g5NGDIo=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 5/6] i.MX arm64 device tree changes for 5.8
Date: Sat, 23 May 2020 11:25:15 +0800
Message-Id: <20200523032516.11016-5-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523032516.11016-1-shawnguo@kernel.org>
References: <20200523032516.11016-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_202532_998785_687DC8D0 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZjNkOWYzNTQyODY3NDVjNzUxMzc0
ZjVmMWZjYWZlZTZiM2YzMTM2OgoKICBMaW51eCA1LjctcmMxICgyMDIwLTA0LTEyIDEyOjM1OjU1
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtZHQ2NC01LjgKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0OGZm
ZDRlYmMxZGFmN2VhYzA1NGNmMjgyZWQwYzI2MzJhYmMyZTIwOgoKICBhcm02NDogZHRzOiBBZGQg
ZHMyNjUyMiBub2RlIHRvIGR0cyB0byBsczEwNDNhcmRiICgyMDIwLTA1LTIwIDIzOjAwOjQ3ICsw
ODAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQppLk1YIGFybTY0IGRldmljZSB0cmVlIGNoYW5nZXM6CgotIE5ldyBzdXBw
b3J0IG9mIEJlYWNvbiBpLk1YOG0tTWluaSBkZXZlbG9wbWVudCBraXQuCi0gQWRkIHNlY29uZGFy
eSBjcHVzIHN1cHBseSBvbiBpbXg4bW0tZXZrIGFuZCBpbXg4bW4tZGRyNC1ldmsgZm9yCiAgY29t
cGxldGVuZXNzLgotIEFkZCB0aGVybWFsIHpvbmVzIGZvciBpbXg4bXAgYW5kIGx4MjE2MGEsIFBN
SUMgdGhlcm1hbCB6b25lIGZvcgogIGlteDhxeHAtbWVrIGJvYXJkLgotIFVwZGF0ZSBWRERfQVJN
IDEuMkdIeiBzZXRwb2ludCB2b2x0YWdlIGZvciBpbXg4bW4uCi0gQWRkIFNSQyBkZXZpY2UgaW50
ZXJydXB0IGZvciBpLk1YOCBTb0NzLgotIFVzZSAwLjlWIGZvciBWRERfR1BVIG9uIGlteDhtcS1s
aWJyZW01LWRldmtpdCwgc2luY2UgdGhlcmUgaXMgbm8gbmVlZAogIHRvIHN1cHBvcnQgb3ZlcmNs
b2NraW5nIHRvIDFHSHouCi0gVXBkYXRlIGlteDhxeHAgU0NVIGRldmljZSB0byB1c2UgTVUgY2hh
bm5lbCB3aXRoIGxlc3MgaW50ZXJydXB0CiAgdHJpZ2dlcmluZywgb25lIFJYIGludGVycnVwdCBm
b3IgYSBSWCBhbmQgb25lIFRYIGludGVycnVwdCBmb3IgYSBUWC4KLSBTcGVjaWZ5IERNQSBjaGFu
bmVscyBmb3IgTFMxMDI4QSBEU1BJIGNvbnRyb2xsZXJzLgotIEFkZCBRRSBhbmQgRFMyNjUyMiBk
ZXZpY2Ugc3VwcG9ydCBmb3IgZnNsLWxzMTA0M2EtcmRiIGJvYXJkLgotIE1pc2MgcmFuZG9tIHVw
ZGF0ZSBhbmQgY2xlYW51cC4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQWRhbSBGb3JkICgxKToKICAgICAgYXJtNjQ6IGR0
czogaW14OiBBZGQgQmVhY29uIGkuTVg4bS1NaW5pIGRldmVsb3BtZW50IGtpdAoKQW5zb24gSHVh
bmcgKDgpOgogICAgICBhcm02NDogZHRzOiBpbXg4bW0tZXZrOiBBZGQgc2Vjb25kYXJ5IGNwdXMg
c3VwcGx5CiAgICAgIGFybTY0OiBkdHM6IGlteDhtbi1kZHI0LWV2azogQWRkIHNlY29uZGFyeSBj
cHVzIHN1cHBseQogICAgICBhcm02NDogZHRzOiBpbXg4bXA6IEFkZCB0aGVybWFsIHpvbmVzIHN1
cHBvcnQKICAgICAgYXJtNjQ6IGR0czogaW14OHF4cC1tZWs6IFNvcnQgbGFiZWxzIGFscGhhYmV0
aWNhbGx5CiAgICAgIGFybTY0OiBkdHM6IGlteDhxeHAtbWVrOiBBZGQgUE1JQyB0aGVybWFsIHpv
bmUgc3VwcG9ydAogICAgICBhcm02NDogZHRzOiBpbXg4bW46IFVwZGF0ZSBWRERfQVJNIDEuMkdI
eiBzZXRwb2ludCB2b2x0YWdlCiAgICAgIGFybTY0OiBkdHM6IGlteDhtcTogQWRkIHNyYyBub2Rl
IGludGVycnVwdHMKICAgICAgYXJtNjQ6IGR0czogaW14OG1wOiBBZGQgc3JjIG5vZGUgaW50ZXJy
dXB0cwoKRmFiaW8gRXN0ZXZhbSAoMSk6CiAgICAgIGFybTY0OiBkdHM6IGlteDhxeHAtbWVrOiBE
byBub3QgdXNlIHVuZGVyc2NvcmUgaW4gbm9kZSBuYW1lCgpGdWdhbmcgRHVhbiAoMSk6CiAgICAg
IGFybTY0OiBkdHM6IGlteDhtcDogYWRkICJmc2wsaW14NnN4LWZlYyIgY29tcGF0aWJsZSBzdHJp
bmcKCkd1aWRvIEfDvG50aGVyICgyKToKICAgICAgYXJtNjQ6IGR0czogaW14OG1xLWxpYnJlbTUt
ZGV2a2l0OiBVc2UgMC45ViBmb3IgVkREX0dQVQogICAgICBhcm02NDogZHRzOiBpbXg4bXEtbGli
cmVtNS1kZXZraXQ6IERvbid0IHVzZSB1bmRlcnNjb3JlIGluIG5vZGUgbmFtZQoKS3VsZGVlcCBT
aW5naCAoMSk6CiAgICAgIGFybTY0OiBkdHM6IGxzMTAxMmE6IEFkZCBRU1BJIG5vZGUgcHJvcGVy
dGllcwoKTWF0dCBQb3J0ZXIgKDEpOgogICAgICBhcm02NDogZHRzOiBpbXg4bW06IHNwZWNpZnkg
I3NvdW5kLWRhaS1jZWxscyBmb3IgU0FJIG5vZGVzCgpNaWNoYWVsIFdhbGxlICgyKToKICAgICAg
YXJtNjQ6IGR0czogZnJlZXNjYWxlOiBzbDI4OiBlbmFibGUgTFBVQVJUMQogICAgICBhcm02NDog
ZHRzOiBsczEwMjhhOiBzbDI4OiBrZWVwIHN3aXRjaCBwb3J0IG5hbWVzIGNvbnNpc3RlbnQKClBl
bmcgRmFuICgyKToKICAgICAgYXJtNjQ6IGR0czogaW14OHF4cDogc3VwcG9ydCBzY3UgbWFpbGJv
eCBjaGFubmVsCiAgICAgIGFybTY0OiBkdHM6IGlteDhtOiBhc3NpZ24gY2xvY2tzIGZvciBBNTMK
ClZsYWRpbWlyIE9sdGVhbiAoMSk6CiAgICAgIGFybTY0OiBkdHM6IGxzMTAyOGE6IFNwZWNpZnkg
dGhlIERNQSBjaGFubmVscyBmb3IgdGhlIERTUEkgY29udHJvbGxlcnMKCllhbmdibyBMdSAoMik6
CiAgICAgIGFybTY0OiBkdHM6IGZzbDogYWRkIGZzbCxleHR0cy1maWZvIHByb3BlcnR5IGZvciBm
bWFuIHB0cAogICAgICBhcm02NDogZHRzOiBsczEwNDNhLXJkYjogYWRkIGNvbXBhdGlibGUgZm9y
IGJvYXJkCgpZdWFudGlhbiBUYW5nICgxKToKICAgICAgYXJtNjQ6IGR0czogbHgyMTYwYTogYWRk
IG1vcmUgdGhlcm1hbCB6b25lIHN1cHBvcnQKClpoYW8gUWlhbmcgKDIpOgogICAgICBhcm02NDog
ZHRzOiBhZGQgcWUgbm9kZSB0byBsczEwNDNhcmRiCiAgICAgIGFybTY0OiBkdHM6IEFkZCBkczI2
NTIyIG5vZGUgdG8gZHRzIHRvIGxzMTA0M2FyZGIKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDEyYS1mcmRtLmR0cyB8ICAxNSArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9mc2wtbHMxMDEyYS1mcnd5LmR0cyB8ICAxNSArCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1xZHMuZHRzICB8ICAxNSArCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS1yZGIuZHRzICB8ICAxNSArCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDEyYS5kdHNpICAgICB8ICAxMyArCiAuLi4vZnJlZXNj
YWxlL2ZzbC1sczEwMjhhLWtvbnRyb24tc2wyOC12YXIyLmR0cyAgICB8ICAgNCArLQogLi4uL2R0
cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEta29udHJvbi1zbDI4LmR0cyAgICAgfCAgIDUgKwogYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaSAgICAgfCAgIDYgKwog
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0M2EtcmRiLmR0cyAgfCAgMzMg
KysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDNhLmR0c2kgICAgIHwg
IDY1ICsrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1seDIxNjBhLmR0c2kg
ICAgIHwgMTMwICsrKysrKy0KIC4uLi9kdHMvZnJlZXNjYWxlL2lteDhtbS1iZWFjb24tYmFzZWJv
YXJkLmR0c2kgICAgIHwgMjg1ICsrKysrKysrKysrKysrCiAuLi4vYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDhtbS1iZWFjb24ta2l0LmR0cyB8ICAxOSArCiAuLi4vYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtbS1iZWFjb24tc29tLmR0c2kgICAgICB8IDQxMCArKysrKysrKysrKysrKysrKysr
KysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS1ldmsuZHRzICAgICAgIHwg
IDEyICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpICAgICAgICAg
IHwgIDE0ICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4tZGRyNC1ldmsu
ZHRzICB8ICAxMiArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4uZHRzaSAg
ICAgICAgICB8ICAxMiArLQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0
c2kgICAgICAgICAgfCAgODggKysrKy0KIC4uLi9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxp
YnJlbTUtZGV2a2l0LmR0cyAgIHwgICA0ICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaSAgICAgICAgICB8ICAxMCArLQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvaW14OHF4cC1tZWsuZHRzICAgICAgfCAgOTUgKysrLS0KIGFyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaSAgICAgICAgIHwgIDE4ICstCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9xb3JpcS1mbWFuMy0wLmR0c2kgICB8ICAgMSArCiAyNCBmaWxlcyBj
aGFuZ2VkLCAxMjMxIGluc2VydGlvbnMoKyksIDY1IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS1iZWFjb24tYmFzZWJv
YXJkLmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bW0tYmVhY29uLWtpdC5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tYmVhY29uLXNvbS5kdHNpCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
