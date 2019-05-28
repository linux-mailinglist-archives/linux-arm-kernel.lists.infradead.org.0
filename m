Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C982C164
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJ8ew4k4hks+JZJSAgw5SHAP/fLjdXHIzB6C+SfmKIk=; b=pTl9rxdsn+4b0t
	2P4bgbjjUgCg70k3So/vsxklbPcT10jOIyQtWxAnpDPkHt3dM6oMO/8Cx7WsDoxXXnwOdLfafe+yw
	PK2fVFOZrzhI10YuZ/RY3v4uhVIjbKEqvfvvM5shwtI+RAt2gtQY+HL1gvyGjuSGcsqd6dWN3Zeq0
	6/FGjyIXkZv0UojkSrw48LX+AIvTR05mW+96kEdiB7GxyufkXgJYJ4SFguFwQWW3iBGYpiAA89BaH
	/XJEVkyITDYiv+lajWs0jJd+qYfqcyYwKQf7OwRgiqb+FXoNTmqTAAJMlS/9G6S7DMI8vWpo5Ewwy
	6U48xySz2nzvJU2aICNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXXl-0007Wq-AE; Tue, 28 May 2019 08:33:13 +0000
Received: from mail.tastiess.eu ([194.182.86.235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXXe-0007VK-Cv
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:33:07 +0000
Received: by mail.tastiess.eu (Postfix, from userid 1001)
 id 0744E8A831; Tue, 28 May 2019 10:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tastiess.eu; s=mail;
 t=1559032371; bh=I9Ue03WK1DGltuFRFxeBc6SZHKWkq/f13b7q3CFLQVk=;
 h=Date:From:To:Subject:From;
 b=Mp890cTTCTDNTsPy6kGTRYJEpbIXiFCbPYn/AlZ68KjT3hBsmSgVYVdKEptgLiJx0
 lRbhHfd/0Y/0oIflkxbeY7GWMtD1dO03foruQnZVPp+Tcf8YwX80vK7eyKh4WskFs7
 hb1lorVx/2+sD6Ysktq2GBkni/+LFfKVDRICEsV8=
Received: by mail.tastiess.eu for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 08:31:03 GMT
Message-ID: <20190528103018-0.1.13.f5k.0.6otaq1a4f1@tastiess.eu>
Date: Tue, 28 May 2019 08:31:03 GMT
From: =?UTF-8?Q?"Kapolcs_M=C3=A1ty=C3=A1s"?= <kapolcs.matyas@tastiess.eu>
To: <linux-arm-kernel@lists.infradead.org>
Subject: =?UTF-8?Q?Dolgoz=C3=B3i_juttat=C3=A1sok?=
X-Mailer: mail.tastiess.eu
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_013306_605961_7EFA5113 
X-CRM114-Status: UNSURE (   2.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

w5xkdsO2emzDtm0hCgoyMDE5IGphbnXDoXJqw6F0w7NsIG1lZ3N6xbFudCBheiBFcnpzw6liZXQg
dXRhbHbDoW55b2sgw6lzIGvDoXJ0ecOhayBmb3JnYWxtYXrDoXNhLgoKSXNtZXJqZSBtZWcganV0
dGF0w6FzaSBrw6FydHnDoWlua2F0IMOpcyB1dGFsdsOhbnlhaW5rYXQsIG1lbHlla2tlbCBlZ3lz
emVyxbFlbiBoZWx5ZXR0ZXPDrXRoZXRpIGEga29yw6FiYmkgRXJ6c8OpYmV0ZXMganV0dGF0w6Fz
b2thdC4KCkFtZW5ueWliZW4gw5ZuIGlzIGEgbGVnZWd5c3plcsWxYmIgw6F0w6FsbMOhc3Qgc3pl
cmV0bsOpLCBzesOtdmVzZW4gYmVtdXRhdG9tIMOWbm5layBtZWdvbGTDoXNhaW5rYXQhCgoKS2Fw
b2xjcyBNw6F0ecOhcwpIdW5nYXJ5IFRlYW0gTGVhZGVyICAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
