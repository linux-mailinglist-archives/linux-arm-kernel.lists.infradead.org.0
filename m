Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8691BF057
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 08:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=dciWobxaVTpL/SHsBt4c1WcQAUgB6wTOMXgUBLATjaA=; b=LMYt8tDnlJTINP
	n60A2V+jXcjDapLDnPa0ROE9hr5d8B0UewlpwysdBkKzjMPbbhW1lRhuQJoD6GUD+b+2/gwj9FZgY
	JLpLGpWmatJ3mRiaaI32r6qlsBtyS8kIjxSTOyUw9PhNhnuS9zQhViTR6KuBi4g9HovxubnrCvHXn
	Gy29xqwxz3+eJAMgBkiXiqkMEsHH3KLp2qiO5Y50liuFU7HCQ9KXGDNL3XTkLRJ3iprC1j8Z+vFu3
	itl/uXi0rY7TuNzYXJlXKafvFbXNiBKxV1FAU+dZU729SRRVT5ldyPerDP6neiuM9eSCa0i1oFYDo
	nNjEvElrlZFV/lldOmYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU2k8-0001t5-Lx; Thu, 30 Apr 2020 06:32:20 +0000
Received: from m176148.mail.qiye.163.com ([59.111.176.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU2jw-0001qy-SL
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 06:32:10 +0000
Received: from vivo.com (wm-8.qy.internal [127.0.0.1])
 by m176148.mail.qiye.163.com (Hmail) with ESMTP id 25F291A4030;
 Thu, 30 Apr 2020 14:31:31 +0800 (CST)
Message-ID: <AOsApgASCAa7imxfuvZwXqq0.3.1588228291133.Hmail.bernard@vivo.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSF0gZHJtL21lZGlhdGVrOiBjbGVhbnVwIGNvZGluZyBzdHlsZSBpbiBtZWRpYXRlayBhIGJpdA==?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 157.0.31.122
In-Reply-To: <CAAOTY_86d-UryKQrLy8-zjTbrTRrHL4k3x=bx1KqvWxPL5jj2Q@mail.gmail.com>
MIME-Version: 1.0
Received: from bernard@vivo.com( [157.0.31.122) ] by ajax-webmail (
 [127.0.0.1] ) ; Thu, 30 Apr 2020 14:31:31 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Thu, 30 Apr 2020 14:31:31 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSFVDTUlCQkJCSk1LTE1NTVlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhMTklOQ0JJTUJIN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6NAg6Cxw6KDg6GkwSFgMdDg0hDCMKCktVSFVKTkNDSUlDSUJNSUhPVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKTkxVS1VISlVKSUlZV1kIAVlBTEJKSDcG
X-HM-Tid: 0a71c9c87a5b9394kuws25f291a4030
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_233209_252927_60958A90 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, opensource.kernel@vivo.com,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrlj5Hku7bkurrvvJpDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4K5Y+R
6YCB5pel5pyf77yaMjAyMC0wNC0yOSAyMjoyMjo1MArmlLbku7bkurrvvJpCZXJuYXJkIFpoYW8g
PGJlcm5hcmRAdml2by5jb20+CuaKhOmAgeS6uu+8mkNodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5o
dUBrZXJuZWwub3JnPixQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPixEYXZp
ZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+LERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5j
aD4sTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4sRFJJIERldmVsb3Bt
ZW50IDxkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPixMaW51eCBBUk0gPGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz4sIm1vZGVyYXRlZCBsaXN0OkFSTS9NZWRpYXRl
ayBTb0Mgc3VwcG9ydCIgPGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmc+LGxpbnV4
LWtlcm5lbCA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4sb3BlbnNvdXJjZS5rZXJuZWxA
dml2by5jb20K5Li76aKY77yaUmU6IFtQQVRDSF0gZHJtL21lZGlhdGVrOiBjbGVhbnVwIGNvZGlu
ZyBzdHlsZSBpbiBtZWRpYXRlayBhIGJpdD5IaSwgQmVybmFyZDoKPgo+QmVybmFyZCBaaGFvIDxi
ZXJuYXJkQHZpdm8uY29tPiDmlrwgMjAyMOW5tDTmnIgyN+aXpSDpgLHkuIAg5LiL5Y2IMzo1M+Wv
q+mBk++8mgo+Pgo+PiBUaGlzIGNvZGUgY2hhbmdlIGlzIHRvIG1ha2UgY29kZSBiaXQgbW9yZSBy
ZWFkYWJsZS4KPj4gT3B0aW1pc2UgYXJyYXkgc2l6ZSBhbGlnbiB0byBIRE1JIG1hY3JvIGRlZmlu
ZS4KPj4gQWRkIGNoZWNrIGlmIGxlbiBpcyBvdmVyYW5nZS4KPgo+T25lIHBhdGNoIHNob3VsZCBq
dXN0IGRvIG9uZSB0aGluZywgYnV0IHRoaXMgZG8gdGhyZWUgdGhpbmdzLgo+U28gYnJlYWsgdGhp
cyBpbnRvIHRocmVlIHBhdGNoZXMuCj4KPlJlZ2FyZHMsCj5DaHVuLUt1YW5nLgoKSGkKVGhpcyBv
cHRpbWl6YXRpb24gaXMgbWFpbmx5IHRvIG1ha2UgdGhlIGNvZGUgYSBiaXQgcmVhZGFibGUuClRo
ZXNlIG1vZGlmaWNhdGlvbnMgYXJlIHJlbGF0ZWQsIG1haW4gaW4gc2V2ZXJhbCByZWxhdGVkIGZ1
bmN0aW9uIGNhbGxzIGluIHRoZSBzYW1lIGZpbGUuCkkgd2FzIGEgYml0IGNvbmZ1c2VkIHRoYXQg
aWYgaXQgaXMgcmVhbGx5IG5lY2Vzc2FyeSB0byBjaGFuZ2UgdG8gdGhyZWUgc2VwYXJhdGUgcGF0
Y2ggc3VibWlzc2lvbnM/CgpSZWdhcmRzCkJlcm5hcmQKCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJl
cm5hcmQgWmhhbyA8YmVybmFyZEB2aXZvLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2hkbWkuYyB8IDIyICsrKysrKysrKysrLS0tLS0tLS0tLS0KPj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19oZG1pLmMKPj4gaW5kZXggZmY0M2EzZDgwNDEwLi40MGZiNTE1NGVk
NWQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4+IEBAIC0zMTEsMTUg
KzMxMSwxNSBAQCBzdGF0aWMgdm9pZCBtdGtfaGRtaV9od19zZW5kX2luZm9fZnJhbWUoc3RydWN0
IG10a19oZG1pICpoZG1pLCB1OCAqYnVmZmVyLAo+PiAgICAgICAgIHU4IGNoZWNrc3VtOwo+PiAg
ICAgICAgIGludCBjdHJsX2ZyYW1lX2VuID0gMDsKPj4KPj4gLSAgICAgICBmcmFtZV90eXBlID0g
KmJ1ZmZlcjsKPj4gLSAgICAgICBidWZmZXIgKz0gMTsKPj4gLSAgICAgICBmcmFtZV92ZXIgPSAq
YnVmZmVyOwo+PiAtICAgICAgIGJ1ZmZlciArPSAxOwo+PiAtICAgICAgIGZyYW1lX2xlbiA9ICpi
dWZmZXI7Cj4+IC0gICAgICAgYnVmZmVyICs9IDE7Cj4+IC0gICAgICAgY2hlY2tzdW0gPSAqYnVm
ZmVyOwo+PiAtICAgICAgIGJ1ZmZlciArPSAxOwo+PiArICAgICAgIGZyYW1lX3R5cGUgPSAqYnVm
ZmVyKys7Cj4+ICsgICAgICAgZnJhbWVfdmVyID0gKmJ1ZmZlcisrOwo+PiArICAgICAgIGZyYW1l
X2xlbiA9ICpidWZmZXIrKzsKPj4gKyAgICAgICBjaGVja3N1bSA9ICpidWZmZXIrKzsKPj4gICAg
ICAgICBmcmFtZV9kYXRhID0gYnVmZmVyOwo+PiArICAgICAgIGlmICgoZnJhbWVfbGVuICsgSERN
SV9JTkZPRlJBTUVfSEVBREVSX1NJWkUpID4gbGVuKSB7Cj4+ICsgICAgICAgICAgICAgICBkZXZf
ZXJyKGhkbWktPmRldiwgIldyb25nIGZyYW1lIGxlbjogJWRcbiIsIGZyYW1lX2xlbjsKPj4gKyAg
ICAgICAgICAgICAgIHJldHVybjsKPj4gKyAgICAgICB9Cj4+Cj4+ICAgICAgICAgZGV2X2RiZyho
ZG1pLT5kZXYsCj4+ICAgICAgICAgICAgICAgICAiZnJhbWVfdHlwZToweCV4LGZyYW1lX3Zlcjow
eCV4LGZyYW1lX2xlbjoweCV4LGNoZWNrc3VtOjB4JXhcbiIsCj4+IEBAIC05ODIsNyArOTgyLDcg
QEAgc3RhdGljIGludCBtdGtfaGRtaV9zZXR1cF9hdmlfaW5mb2ZyYW1lKHN0cnVjdCBtdGtfaGRt
aSAqaGRtaSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQo+PiAgewo+PiAgICAgICAgIHN0cnVjdCBoZG1pX2F2
aV9pbmZvZnJhbWUgZnJhbWU7Cj4+IC0gICAgICAgdTggYnVmZmVyWzE3XTsKPj4gKyAgICAgICB1
OCBidWZmZXJbSERNSV9JTkZPRlJBTUVfSEVBREVSX1NJWkUgKyBIRE1JX0FWSV9JTkZPRlJBTUVf
U0laRV07Cj4+ICAgICAgICAgc3NpemVfdCBlcnI7Cj4+Cj4+ICAgICAgICAgZXJyID0gZHJtX2hk
bWlfYXZpX2luZm9mcmFtZV9mcm9tX2Rpc3BsYXlfbW9kZSgmZnJhbWUsCj4+IEBAIC0xMDA4LDcg
KzEwMDgsNyBAQCBzdGF0aWMgaW50IG10a19oZG1pX3NldHVwX3NwZF9pbmZvZnJhbWUoc3RydWN0
IG10a19oZG1pICpoZG1pLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY29uc3QgY2hhciAqcHJvZHVjdCkKPj4gIHsKPj4gICAgICAgICBzdHJ1Y3QgaGRtaV9zcGRf
aW5mb2ZyYW1lIGZyYW1lOwo+PiAtICAgICAgIHU4IGJ1ZmZlclsyOV07Cj4+ICsgICAgICAgdTgg
YnVmZmVyW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFICsgSERNSV9TUERfSU5GT0ZSQU1FX1NJ
WkVdOwo+PiAgICAgICAgIHNzaXplX3QgZXJyOwo+Pgo+PiAgICAgICAgIGVyciA9IGhkbWlfc3Bk
X2luZm9mcmFtZV9pbml0KCZmcmFtZSwgdmVuZG9yLCBwcm9kdWN0KTsKPj4gQEAgLTEwMzEsNyAr
MTAzMSw3IEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlfc2V0dXBfc3BkX2luZm9mcmFtZShzdHJ1Y3Qg
bXRrX2hkbWkgKmhkbWksCj4+ICBzdGF0aWMgaW50IG10a19oZG1pX3NldHVwX2F1ZGlvX2luZm9m
cmFtZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWkpCj4+ICB7Cj4+ICAgICAgICAgc3RydWN0IGhkbWlf
YXVkaW9faW5mb2ZyYW1lIGZyYW1lOwo+PiAtICAgICAgIHU4IGJ1ZmZlclsxNF07Cj4+ICsgICAg
ICAgdTggYnVmZmVyW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFICsgSERNSV9BVURJT19JTkZP
RlJBTUVfU0laRV07Cj4+ICAgICAgICAgc3NpemVfdCBlcnI7Cj4+Cj4+ICAgICAgICAgZXJyID0g
aGRtaV9hdWRpb19pbmZvZnJhbWVfaW5pdCgmZnJhbWUpOwo+PiAtLQo+PiAyLjI2LjIKPj4KPj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gTGlu
dXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Cj4+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tZWRpYXRlawoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
