Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EF217ADD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 19:07:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1keV4DjRRCL2JBxGFt0keIGT7GK7sg//KMBU640zvA=; b=A2Grbl1e9ku/5q
	8/qHIno3t/cFKIvMaT1kTLqNHLhj6lLlTdtaC2nIbz9qBlfc6YAlKh+ZYkwpfGgtRJwU3UHEdU+tv
	RTtUs0wJ4Zm7A+cPPGln0f5tuNc6JF5bruyZsmRTx1iK86EGtaZH1eNi3rv1En8Ud38QX7PQEq2fR
	GFiYFFC6MJm1NMnazSH3TaFQzDgcy3ieqRMHyO0x1UgKUyLjOsZbMm9tpW8ljed7pKkqfJZSE6AFw
	PhkfUGGMj/cYyHkBSZvMNGKXh1jDDFJO5nMe3+e9T/4hjC7hnTwtl8oHSQX+bkl56FyoXRrXTZI1j
	BCRk16H1QdXa/A/Py2Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9uu2-0007Ge-Un; Thu, 05 Mar 2020 18:07:22 +0000
Received: from forward501j.mail.yandex.net ([2a02:6b8:0:801:2::111])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9utv-0007G7-6m
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 18:07:17 +0000
Received: from mxback2q.mail.yandex.net (mxback2q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:40:0:640:9c8c:4946])
 by forward501j.mail.yandex.net (Yandex) with ESMTP id 763103380647;
 Thu,  5 Mar 2020 21:07:12 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback2q.mail.yandex.net (mxback/Yandex) with ESMTP id 3bp9zgIweA-7AFW3X28; 
 Thu, 05 Mar 2020 21:07:11 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1583431631; bh=eXX4BqM/CvX5qZBMKAWZEGZsO8H/7S65R5d35irFfrI=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=SnnfKIzvEKLQ4z783HCIgp4acV43C9uZPpcdonvnd4WLPwNb7+ru/vj+yXPUPBmd9
 oyxcfcAx5SOcDcTrlTdsoE5plCk2hmuLlO0jcNLkPggpnPsno8fNmZD6ZoQX+DCG3W
 J5DbDJCyLinvWna6/ebPnXNWDpkG0YpM2/txfzug=
Authentication-Results: mxback2q.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by vla1-422f52264539.qloud-c.yandex.net with HTTP;
 Thu, 05 Mar 2020 21:07:10 +0300
From: nikita.shubin@maquefel.me
To: Mathieu Poirier <mathieu.poirier@linaro.org>
In-Reply-To: <CANLsYkxj=1o8Y0V0WedbVirj9seZSArWeCvQvwk+N7wZa2_hPQ@mail.gmail.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <CANLsYkzPROdphvmtpZ6YiajZ2dYLrojC-rGYkq4jK2yzTnAJ5A@mail.gmail.com>
 <264561583429111@sas1-438a02fc058e.qloud-c.yandex.net>
 <CANLsYkxj=1o8Y0V0WedbVirj9seZSArWeCvQvwk+N7wZa2_hPQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] remoteproc: imx_rproc: dummy kick method
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 05 Mar 2020 21:07:10 +0300
Message-Id: <266371583430956@iva3-67f911cb3a01.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_100715_608865_BBED405C 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:801:2:0:0:111 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Nikita Shubin <nshubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgowNS4wMy4yMDIwLCAyMDo1NCwgIk1hdGhpZXUgUG9pcmllciIgPG1hdGhpZXUucG9pcmllckBs
aW5hcm8ub3JnPjoKPiBPbiBUaHUsIDUgTWFyIDIwMjAgYXQgMTA6MjksIDxuaWtpdGEuc2h1Ymlu
QG1hcXVlZmVsLm1lPiB3cm90ZToKPj4gwqAwNS4wMy4yMDIwLCAxOToxNywgIk1hdGhpZXUgUG9p
cmllciIgPG1hdGhpZXUucG9pcmllckBsaW5hcm8ub3JnPjoKPj4gwqA+IE9uIFdlZCwgNCBNYXIg
MjAyMCBhdCAwNzoyNSwgTmlraXRhIFNodWJpbiA8TlNodWJpbkB0b3Bjb24uY29tPiB3cm90ZToK
Pj4gwqA+PiBhZGQga2ljayBtZXRob2QgdGhhdCBkb2VzIG5vdGhpbmcsIHRvIGF2b2lkIGVycm9y
cyBpbiBycHJvY192aXJ0aW9fbm90aWZ5Lgo+PiDCoD4+Cj4+IMKgPj4gU2lnbmVkLW9mZi1ieTog
TmlraXRhIFNodWJpbiA8TlNodWJpbkB0b3Bjb24uY29tPgo+PiDCoD4+IC0tLQo+PiDCoD4+IGRy
aXZlcnMvcmVtb3RlcHJvYy9pbXhfcnByb2MuYyB8IDYgKysrKysrCj4+IMKgPj4gMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+PiDCoD4+Cj4+IMKgPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcmVtb3RlcHJvYy9pbXhfcnByb2MuYyBiL2RyaXZlcnMvcmVtb3RlcHJvYy9pbXhfcnByb2Mu
Ywo+PiDCoD4+IGluZGV4IDNlNzJiNmYzOGQ0Yi4uNzk2YjZiODY1NTBhIDEwMDY0NAo+PiDCoD4+
IC0tLSBhL2RyaXZlcnMvcmVtb3RlcHJvYy9pbXhfcnByb2MuYwo+PiDCoD4+ICsrKyBiL2RyaXZl
cnMvcmVtb3RlcHJvYy9pbXhfcnByb2MuYwo+PiDCoD4+IEBAIC0yNDAsOSArMjQwLDE1IEBAIHN0
YXRpYyB2b2lkICppbXhfcnByb2NfZGFfdG9fdmEoc3RydWN0IHJwcm9jICpycHJvYywgdTY0IGRh
LCBpbnQgbGVuKQo+PiDCoD4+IHJldHVybiB2YTsKPj4gwqA+PiB9Cj4+IMKgPj4KPj4gwqA+PiAr
c3RhdGljIHZvaWQgaW14X3Jwcm9jX2tpY2soc3RydWN0IHJwcm9jICpycHJvYywgaW50IHZxaWQp
Cj4+IMKgPj4gK3sKPj4gwqA+PiArCj4+IMKgPj4gK30KPj4gwqA+PiArCj4+IMKgPgo+PiDCoD4g
SWYgcnByb2M6OmtpY2soKSBpcyBlbXB0eSwgaG93IGRvZXMgdGhlIE1DVSBrbm93IHRoZXJlIGlz
IHBhY2tldHMgdG8KPj4gwqA+IGZldGNoIGluIHRoZSB2aXJ0aW8gcXVldWVzPwo+Pgo+PiDCoFdl
bGwsIG9mIGNvdXJzZSBpdCBkb2Vzbid0IGkgdW5kZXJzdGFuZCB0aGlzIHBlcmZlY3RseSAtIGp1
c3QgZm9sbG93aW5nIGRvY3VtZW50YXRpb24gY2l0aW5nOgo+Pgo+PiDCoHwgRXZlcnkgcmVtb3Rl
cHJvYyBpbXBsZW1lbnRhdGlvbiBzaG91bGQgYXQgbGVhc3QgcHJvdmlkZSB0aGUgLT5zdGFydCBh
bmQgLT5zdG9wCj4+IMKgfCBoYW5kbGVycy4gSWYgcnBtc2cvdmlydGlvIGZ1bmN0aW9uYWxpdHkg
aXMgYWxzbyBkZXNpcmVkLCB0aGVuIHRoZSAtPmtpY2sgaGFuZGxlcgo+PiDCoHwgc2hvdWxkIGJl
IHByb3ZpZGVkIGFzIHdlbGwuCj4+Cj4+IMKgQnV0IGkgYXMgaSBtZW50aW9uZWQgaW4gInJlbW90
ZXByb2M6IEZpeCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gcnByb2NfdmlydGlvX25vdGlm
eSIga2ljayBtZXRob2Qgd2lsbCBiZSBjYWxsZWQgaWYKPj4gwqAicmVzb3VyY2VfdGFibGUgZXhp
c3RzIGluIGZpcm13YXJlIGFuZCBoYXMgIlZpcnRpbyBkZXZpY2UgZW50cnkiIGRlZmluZWQiIGFu
eXdheSwgdGhlIGlteF9ycHJvYyBpcyBub3QgaW4gY29udHJvbCBvZiB3aGF0Cj4+IMKgZXhhY3Rs
eSBpdCBpcyBib290aW5nLCBzbyBzdWNoIHNpdHVhdGlvbiBjYW4gb2NjdXIuCj4KPiBJZiBJIHVu
ZGVyc3RhbmQgY29ycmVjdGx5LCB0aGUgTUNVIGNhbiBib290IGltYWdlcyB0aGF0IGhhdmUgYSB2
aXJ0aW8KPiBkZXZpY2UgaW4gaXRzIHJlc291cmNlIHRhYmxlIGFuZCBzdGlsbCBkbyB1c2VmdWwg
d29yayBldmVuIGlmIHRoZQo+IHZpcnRpbyBkZXZpY2UvcnBtc2cgYnVzIGNhbid0IGJlIHNldHVw
IC0gaXMgdGhpcyBjb3JyZWN0PwoKWWVzLCB0aGlzIGFzc3VtcHRpb24gaXMgY29ycmVjdC4gCgpE
ZXNwaXRlIHRoaXMgc2l0dWF0aW9uIGlzIG5vdCBpIGRlc2lyZSBhdCBhbGwgLSBzdWNoIHRoaW5n
IGNhbiBoYXBwZW4uCkkgYW0gY3VycmVudGx5IHVzaW5nIGNvLXByb2MgYXMgYSByZWFsdGltZSBw
YXJ0IG9mIFVHViBjb250cm9sLCAKc28gaXQgbXVzdCBpbW1lZGlhdGVseSBzdG9wIHRoZSBlbmdp
bmVzLCBpZiBub3QgcHJvdmlkZWQgd2l0aCBuYXZpZ2F0aW9uYWwgaW5mb3JtYXRpb24uCgpUaGUg
aW14N2QgTUNVIGhhdmUgYWNjZXNzIHRvIHRoZSBtb3N0IHBlcmlwaGVyeSB0aGF0IGhhdmUgdGhl
IG1haW4gcHJvY2Vzc29yLgoKT2YgY291cnNlIHRoZSBraWNrIG1ldGhvZCBzaG91bGQgZG8gcmVh
bCB3b3JrLCBidXQgaSBkZWNpZGVkIHRvIHN1Ym1pdCBzdGVwIGJ5IHN0ZXAgaWYgaSBhbSBhbGxv
d2VkIHRvIGRvIHNvLgoKPgo+IFRoYW5rcywKPiBNYXRoaWV1Cj4KPj4gwqA+Cj4+IMKgPj4gc3Rh
dGljIGNvbnN0IHN0cnVjdCBycHJvY19vcHMgaW14X3Jwcm9jX29wcyA9IHsKPj4gwqA+PiAuc3Rh
cnQgPSBpbXhfcnByb2Nfc3RhcnQsCj4+IMKgPj4gLnN0b3AgPSBpbXhfcnByb2Nfc3RvcCwKPj4g
wqA+PiArIC5raWNrID0gaW14X3Jwcm9jX2tpY2ssCj4+IMKgPj4gLmRhX3RvX3ZhID0gaW14X3Jw
cm9jX2RhX3RvX3ZhLAo+PiDCoD4+IH07Cj4+IMKgPj4KPj4gwqA+PiAtLQo+PiDCoD4+IDIuMjQu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
