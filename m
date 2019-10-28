Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3D7E72D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XA1+5kgudtqQc3O+yIvAYGJRMTX7E7xr08Iro/32ay4=; b=JH6B6bcuXnh+iM
	qy/N2UAxItQ8aMFtNAL+f1yFNWZO19mErXgxF8CQlT5wFxhMP2LSW/x+t/y+iwaQ/Li57tYsdnRrq
	5YQAjbPYZYL1aCWW4ufBTrp8k26gYeoNEq3ohgVBVqKoUlTrZ00PE8vfCXEksfAuwiQi7xvl+gb5l
	CD9tKvL+s5kOqfhm25oglM+iCoqXbjAJqsga+1Ke6ovPK4gkziaOV+ZYA9JpwknnxBv4CtGKdqT6O
	uDQhjYgjLgrCLzgzdm9Qigviv3B/Xh+gMXkTEITNamS3TgrE9+qtfGXhycmTdahiybyswHAdGjMUb
	qoc0gqdxFivsUEdpmO/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5Ln-0001uI-Ac; Mon, 28 Oct 2019 13:46:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5Ld-0001tN-T2
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:46:19 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iP5Lc-0007TV-Mg; Mon, 28 Oct 2019 14:46:16 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iP5Lc-0001om-EG; Mon, 28 Oct 2019 14:46:16 +0100
Message-ID: <ede6874508472d0917dca770ef80b90626b0f205.camel@pengutronix.de>
Subject: [GIT PULL] Reset controller updates for v5.5
From: Philipp Zabel <p.zabel@pengutronix.de>
To: arm@kernel.org
Date: Mon, 28 Oct 2019 14:46:16 +0100
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_064617_934297_CCA33A40 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBhcm0tc29jIG1haW50YWluZXJzLAoKVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNv
bW1pdCA1NGVjYjhmNzAyOGM1ZWIzZDc0MGJiODJiMGYxZDkwZjJkZjYzYzVjOgoKICBMaW51eCA1
LjQtcmMxICgyMDE5LTA5LTMwIDEwOjM1OjQwIC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUg
R2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5wZW5ndXRyb25peC5kZS9naXQvcHphL2xp
bnV4LmdpdCB0YWdzL3Jlc2V0LWZvci12NS41Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAg
dG8gYzJmZmEwMGFkNjE1MmFkNTQ5NDBmOTQyZmMzMTZiOWM4M2Q1ZTZmOToKCiAgcmVzZXQ6IGRv
Y3VtZW50IChkZXZtXylyZXNldF9jb250cm9sX2dldF9vcHRpb25hbCB2YXJpYW50cyAoMjAxOS0x
MC0yNCAxMDo1MTowOSArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KUmVzZXQgY29udHJvbGxlciB1cGRhdGVzIGZv
ciB2NS41CgpUaGlzIHRhZyBhZGRzIHN1cHBvcnQgZm9yIE1lc29uIFNNMSBBUkIgcmVzZXRzLCBV
bmlwaGllciBQcm81IFVTQjMKcmVzZXRzLCB0aGUgTWVzb24tQTEgcmVzZXQgY29udHJvbGxlciwg
U29jRlBHQSBBZ2lsZXggcmVzZXRzLCBhbmQKUmVhbHRlayBSVEQxMTk1L1JURDEyOTUgcmVzZXRz
LgpJdCBhZGRzIHNvbWUgcmVzZXQgY29udHJvbGxlciBBUEkga2V5d29yZHMgZm9yIGdldF9tYWlu
dGFpbmVycy5wbCBhbmQKbWFrZXMgYSBmZXcgcmVtYWluaW5nIHJlc2V0X2NvbnRyb2xfb3BzIGNv
bnN0LiBBbHNvIGluY2x1ZGVkIGFyZQphIGNvbnZlcnNpb24gb2YgdGhlIFF1YWxjb21tIGRldmlj
ZSB0cmVlIGJpbmRpbmdzIHRvIHlhbWwgYW5kIGEgZmV3CnNtYWxsIGtlcm5lbGRvYyBpbXByb3Zl
bWVudHMuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCkFuZHJlYXMgRsOkcmJlciAoMik6CiAgICAgIHJlc2V0OiBzaW1wbGU6
IEtlZXAgYWxwaGFiZXRpY2FsIG9yZGVyCiAgICAgIHJlc2V0OiBzaW1wbGU6IEFkZCBSZWFsdGVr
IFJURDExOTUvUlREMTI5NQoKQW5keSBTaGV2Y2hlbmtvICgxKToKICAgICAgcmVzZXQ6IFJlbW92
ZSBjb3B5J24ncGFzdGUgcmVkdW5kYW5jeSBpbiB0aGUgY29tbWVudHMKCkRpbmggTmd1eWVuICgx
KToKICAgICAgcmVzZXQ6IGJ1aWxkIHNpbXBsZSByZXNldCBjb250cm9sbGVyIGRyaXZlciBmb3Ig
QWdpbGV4CgpKZXJvbWUgQnJ1bmV0ICgyKToKICAgICAgcmVzZXQ6IGR0LWJpbmRpbmdzOiBtZXNv
bjogdXBkYXRlIGFyYiBiaW5kaW5ncyBmb3Igc20xCiAgICAgIHJlc2V0OiBtZXNvbi1hdWRpby1h
cmI6IGFkZCBzbTEgc3VwcG9ydAoKS3VuaWhpa28gSGF5YXNoaSAoMSk6CiAgICAgIHJlc2V0OiB1
bmlwaGllci1nbHVlOiBBZGQgUHJvNSBVU0IzIHN1cHBvcnQKClBoaWxpcHAgWmFiZWwgKDUpOgog
ICAgICByZXNldDogaGlzaWxpY29uOiBoaTM2NjA6IE1ha2UgcmVzZXRfY29udHJvbF9vcHMgY29u
c3QKICAgICAgcmVzZXQ6IHp5bnFtcDogTWFrZSByZXNldF9jb250cm9sX29wcyBjb25zdAogICAg
ICBNQUlOVEFJTkVSUzogYWRkIHJlc2V0IGNvbnRyb2xsZXIgZnJhbWV3b3JrIGtleXdvcmRzCiAg
ICAgIHJlc2V0OiBpbXByb3ZlIG9mX3hsYXRlIGRvY3VtZW50YXRpb24KICAgICAgcmVzZXQ6IGRv
Y3VtZW50IChkZXZtXylyZXNldF9jb250cm9sX2dldF9vcHRpb25hbCB2YXJpYW50cwoKU2liaSBT
YW5rYXIgKDIpOgogICAgICBkdC1iaW5kaW5nczogcmVzZXQ6IGFvc3M6IENvbnZlcnQgQU9TUyBy
ZXNldCBiaW5kaW5ncyB0byB5YW1sCiAgICAgIGR0LWJpbmRpbmdzOiByZXNldDogcGRjOiBDb252
ZXJ0IFBEQyBHbG9iYWwgYmluZGluZ3MgdG8geWFtbAoKWGluZ3l1IENoZW4gKDIpOgogICAgICBk
dC1iaW5kaW5nczogcmVzZXQ6IGFkZCBiaW5kaW5ncyBmb3IgdGhlIE1lc29uLUExIFNvQyBSZXNl
dCBDb250cm9sbGVyCiAgICAgIHJlc2V0OiBhZGQgc3VwcG9ydCBmb3IgdGhlIE1lc29uLUExIFNv
QyBSZXNldCBDb250cm9sbGVyCgogLi4uL2JpbmRpbmdzL3Jlc2V0L2FtbG9naWMsbWVzb24tYXhn
LWF1ZGlvLWFyYi50eHQgfCAgMyArLQogLi4uL2JpbmRpbmdzL3Jlc2V0L2FtbG9naWMsbWVzb24t
cmVzZXQueWFtbCAgICAgICAgfCAgMSArCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9x
Y29tLGFvc3MtcmVzZXQudHh0ICB8IDUyIC0tLS0tLS0tLS0tLS0tLQogLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvcmVzZXQvcWNvbSxhb3NzLXJlc2V0LnlhbWwgfCA0NyArKysrKysrKysrKysrKwog
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXQvcWNvbSxwZGMtZ2xvYmFsLnR4dCAgfCA1MiAt
LS0tLS0tLS0tLS0tLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L3Fjb20scGRjLWds
b2JhbC55YW1sIHwgNDcgKysrKysrKysrKysrKysKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jl
c2V0L3VuaXBoaWVyLXJlc2V0LnR4dCAgIHwgIDUgKy0KIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9yZXNldC9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNSArLQogZHJpdmVycy9yZXNldC9jb3Jl
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgOCArLS0KIGRyaXZlcnMvcmVzZXQv
aGlzaWxpY29uL3Jlc2V0LWhpMzY2MC5jICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvcmVz
ZXQvcmVzZXQtbWVzb24tYXVkaW8tYXJiLmMgICAgICAgICAgICAgIHwgNDMgKysrKysrKysrKysr
LQogZHJpdmVycy9yZXNldC9yZXNldC1tZXNvbi5jICAgICAgICAgICAgICAgICAgICAgICAgfCAz
NSArKysrKysrKy0tCiBkcml2ZXJzL3Jlc2V0L3Jlc2V0LXVuaXBoaWVyLWdsdWUuYyAgICAgICAg
ICAgICAgICB8ICA0ICsrCiBkcml2ZXJzL3Jlc2V0L3Jlc2V0LXp5bnFtcC5jICAgICAgICAgICAg
ICAgICAgICAgICB8ICAyICstCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2FtbG9naWMsbWVz
b24tYTEtcmVzZXQuaCB8IDc0ICsrKysrKysrKysrKysrKysrKysrKysKIC4uLi9yZXNldC9hbWxv
Z2ljLG1lc29uLWF4Zy1hdWRpby1hcmIuaCAgICAgICAgICAgIHwgIDIgKwogaW5jbHVkZS9saW51
eC9yZXNldC1jb250cm9sbGVyLmggICAgICAgICAgICAgICAgICAgfCAgMyArLQogaW5jbHVkZS9s
aW51eC9yZXNldC5oICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA0NiArKysrKysrKysr
KysrKwogMTkgZmlsZXMgY2hhbmdlZCwgMzA2IGluc2VydGlvbnMoKyksIDEyNiBkZWxldGlvbnMo
LSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cmVzZXQvcWNvbSxhb3NzLXJlc2V0LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9xY29tLGFvc3MtcmVzZXQueWFtbAogZGVsZXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9xY29t
LHBkYy1nbG9iYWwudHh0CiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3Jlc2V0L3Fjb20scGRjLWdsb2JhbC55YW1sCiBjcmVhdGUgbW9kZSAxMDA2
NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC9hbWxvZ2ljLG1lc29uLWExLXJlc2V0LmgKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
