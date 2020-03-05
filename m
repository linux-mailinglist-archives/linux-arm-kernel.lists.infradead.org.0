Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8B417AD47
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 18:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV7VWvaR15OPIEqXuKHd+/Ys5f/w7WAticwrArcgJS8=; b=tnKvRr2F8Tiz8n
	+SmFjIQd48rvKsuGrTogbYGbRh+oGAfdbj/yzSw/aXJbr/FHA7znskYtDeQunHgbPPQsX/VAh3k2v
	7aByaaUGdzgt6uZ87ajJntWt+38uL8Xlh5yslxvHcMyfTRV/JB6/EWdEheoth0Z9RND9c0ikrhZr4
	Yja8OXBNpNfmyprHeEwbMWnckqp28p+gZgrCBrKo9+w2FtB/+jqKf5Cwx1I5+kgbeLBV1bWYZTJsa
	p9tbliVorsUTHhmjapkc3waDewLG/gc46BWNwIWlo6ue5rB6lIJHIiT6RfCUyRz9cO9lI7KGjaxzm
	LFAz597FI10SGrOy2agA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9uK8-0002xM-Ic; Thu, 05 Mar 2020 17:30:16 +0000
Received: from forward501j.mail.yandex.net ([2a02:6b8:0:801:2::111])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9uJs-0002Uk-LQ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 17:30:03 +0000
Received: from mxback3g.mail.yandex.net (mxback3g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:164])
 by forward501j.mail.yandex.net (Yandex) with ESMTP id 47FD13380051;
 Thu,  5 Mar 2020 20:29:52 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback3g.mail.yandex.net (mxback/Yandex) with ESMTP id MSMUb1R6XH-To1Kctjv; 
 Thu, 05 Mar 2020 20:29:51 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1583429391; bh=bzehxGVvj/LyLAppmVIllXOgGQfOzRvhMGVzevTZoaY=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=dz5+1NfKzDi9mR+LNugi6IsIemk1dqfOLKIx1P3mYRMOdyoDld2YKstHLEjOrU1NZ
 QjfNzxNJH19/4M8voas1Xu9axKNUuC052zkURdyxi2+NO15r09XicBWn+K2xnhJTMA
 dsVnQcdEPN/DSfjciOA2w0gv77o/aWK9kqj0xOTw=
Authentication-Results: mxback3g.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by sas8-b090c2642e35.qloud-c.yandex.net with HTTP;
 Thu, 05 Mar 2020 20:29:50 +0300
From: nikita.shubin@maquefel.me
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Nikita Shubin <nshubin@topcon.com>
In-Reply-To: <CANLsYkzPROdphvmtpZ6YiajZ2dYLrojC-rGYkq4jK2yzTnAJ5A@mail.gmail.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <CANLsYkzPROdphvmtpZ6YiajZ2dYLrojC-rGYkq4jK2yzTnAJ5A@mail.gmail.com>
Subject: Re: [PATCH 1/2] remoteproc: imx_rproc: dummy kick method
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 05 Mar 2020 20:29:50 +0300
Message-Id: <264561583429111@sas1-438a02fc058e.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_093000_884095_E617D677 
X-CRM114-Status: GOOD (  11.72  )
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgowNS4wMy4yMDIwLCAxOToxNywgIk1hdGhpZXUgUG9pcmllciIgPG1hdGhpZXUucG9pcmllckBs
aW5hcm8ub3JnPjoKPiBPbiBXZWQsIDQgTWFyIDIwMjAgYXQgMDc6MjUsIE5pa2l0YSBTaHViaW4g
PE5TaHViaW5AdG9wY29uLmNvbT4gd3JvdGU6Cj4+IMKgYWRkIGtpY2sgbWV0aG9kIHRoYXQgZG9l
cyBub3RoaW5nLCB0byBhdm9pZCBlcnJvcnMgaW4gcnByb2NfdmlydGlvX25vdGlmeS4KPj4KPj4g
wqBTaWduZWQtb2ZmLWJ5OiBOaWtpdGEgU2h1YmluIDxOU2h1YmluQHRvcGNvbi5jb20+Cj4+IMKg
LS0tCj4+IMKgwqBkcml2ZXJzL3JlbW90ZXByb2MvaW14X3Jwcm9jLmMgfCA2ICsrKysrKwo+PiDC
oMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+Pgo+PiDCoGRpZmYgLS1naXQgYS9k
cml2ZXJzL3JlbW90ZXByb2MvaW14X3Jwcm9jLmMgYi9kcml2ZXJzL3JlbW90ZXByb2MvaW14X3Jw
cm9jLmMKPj4gwqBpbmRleCAzZTcyYjZmMzhkNGIuLjc5NmI2Yjg2NTUwYSAxMDA2NDQKPj4gwqAt
LS0gYS9kcml2ZXJzL3JlbW90ZXByb2MvaW14X3Jwcm9jLmMKPj4gwqArKysgYi9kcml2ZXJzL3Jl
bW90ZXByb2MvaW14X3Jwcm9jLmMKPj4gwqBAQCAtMjQwLDkgKzI0MCwxNSBAQCBzdGF0aWMgdm9p
ZCAqaW14X3Jwcm9jX2RhX3RvX3ZhKHN0cnVjdCBycHJvYyAqcnByb2MsIHU2NCBkYSwgaW50IGxl
bikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHZhOwo+PiDCoMKgfQo+Pgo+PiDCoCtzdGF0
aWMgdm9pZCBpbXhfcnByb2Nfa2ljayhzdHJ1Y3QgcnByb2MgKnJwcm9jLCBpbnQgdnFpZCkKPj4g
wqArewo+PiDCoCsKPj4gwqArfQo+PiDCoCsKPgo+IElmIHJwcm9jOjpraWNrKCkgaXMgZW1wdHks
IGhvdyBkb2VzIHRoZSBNQ1Uga25vdyB0aGVyZSBpcyBwYWNrZXRzIHRvCj4gZmV0Y2ggaW4gdGhl
IHZpcnRpbyBxdWV1ZXM/CgpXZWxsLCBvZiBjb3Vyc2UgaXQgZG9lc24ndCBpIHVuZGVyc3RhbmQg
dGhpcyBwZXJmZWN0bHkgLSBqdXN0IGZvbGxvd2luZyBkb2N1bWVudGF0aW9uIGNpdGluZzoKCnwg
RXZlcnkgcmVtb3RlcHJvYyBpbXBsZW1lbnRhdGlvbiBzaG91bGQgYXQgbGVhc3QgcHJvdmlkZSB0
aGUgLT5zdGFydCBhbmQgLT5zdG9wCnwgaGFuZGxlcnMuIElmIHJwbXNnL3ZpcnRpbyBmdW5jdGlv
bmFsaXR5IGlzIGFsc28gZGVzaXJlZCwgdGhlbiB0aGUgLT5raWNrIGhhbmRsZXIKfCBzaG91bGQg
YmUgcHJvdmlkZWQgYXMgd2VsbC4KCkJ1dCBpIGFzIGkgbWVudGlvbmVkIGluICJyZW1vdGVwcm9j
OiBGaXggTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHJwcm9jX3ZpcnRpb19ub3RpZnkiIGtp
Y2sgbWV0aG9kIHdpbGwgYmUgY2FsbGVkIGlmIAoicmVzb3VyY2VfdGFibGUgZXhpc3RzIGluIGZp
cm13YXJlIGFuZCBoYXMgIlZpcnRpbyBkZXZpY2UgZW50cnkiIGRlZmluZWQiIGFueXdheSwgdGhl
IGlteF9ycHJvYyBpcyBub3QgaW4gY29udHJvbCBvZiB3aGF0IApleGFjdGx5IGl0IGlzIGJvb3Rp
bmcsIHNvIHN1Y2ggc2l0dWF0aW9uIGNhbiBvY2N1ci4KCj4KPj4gwqDCoHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcnByb2Nfb3BzIGlteF9ycHJvY19vcHMgPSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoC5z
dGFydCA9IGlteF9ycHJvY19zdGFydCwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgLnN0b3AgPSBpbXhf
cnByb2Nfc3RvcCwKPj4gwqArIC5raWNrID0gaW14X3Jwcm9jX2tpY2ssCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoC5kYV90b192YSA9IGlteF9ycHJvY19kYV90b192YSwKPj4gwqDCoH07Cj4+Cj4+IMKg
LS0KPj4gwqAyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
