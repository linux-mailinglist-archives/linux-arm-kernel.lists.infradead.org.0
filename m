Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91459329B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wxI481feDstNLXcsht8YMao7hq5TM7hiPF9HZrxpbOc=; b=DkQTZZ6qU5w/SH8D0rphVN5iE
	OWdTHPTIek6t2ZZj6NQ+w02/UL3xOjUbchbVlRFY1yEdjRt1gekHbEubhbJhRSb8e8svVYPIxp98R
	T9rfjCyLCKpaUtqVuQjSWPoOsT10lveSHFlQNIyw75X24Q77DrZCfSUl23DFFeEpypg19LMUPQZVs
	j2cDCkyCDLl627uSJ1e80zyvgxiVpdum8jhoxlF6Vm1DzL2LyQTbvLX+vGrYDAv51wIsPrQSBSlS1
	sKkeY7U0nM8btdwT1L9iSbGR5lqoc+N4XW8gb1OZfvWYehj7n69P6JWohNaFFFYIiI6YFE0O08L5H
	djKjWU0IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhSx-0003ec-7t; Mon, 03 Jun 2019 07:33:11 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhSm-0003dJ-7g
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:33:04 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45HRbj0L33z9tyqk;
 Mon,  3 Jun 2019 09:32:49 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=KCHA/+I2; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id f1ZXWwP5lEd5; Mon,  3 Jun 2019 09:32:48 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45HRbh6GzZz9tyqD;
 Mon,  3 Jun 2019 09:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1559547168; bh=mFSnLp9SecdoefqVAi+zrsx7gCUNrqDDhzeAm7hNfcA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=KCHA/+I2NHjkZkiR233EwpdRJt5jFkb7BB5WvTUHNfzd/oweFVHs6D+raJnJ4JYpd
 J+KQ8vTwYSp7XV7FCrl9nJmeWCQH+EPqi/mxK+DlAKOo2fjx8cf6H7S04ezRTgUM5E
 wPjjz8mFCLKIrimihcCu7Fs69Nna3fpjCg3CfU9w=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 704308B7B1;
 Mon,  3 Jun 2019 09:32:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id eaNrRzoQGBQV; Mon,  3 Jun 2019 09:32:53 +0200 (CEST)
Received: from PO15451 (po15451.idsi0.si.c-s.fr [172.25.231.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 1C9028B7A1;
 Mon,  3 Jun 2019 09:32:53 +0200 (CEST)
Subject: Re: [PATCH 09/22] docs: mark orphan documents as such
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
References: <cover.1559171394.git.mchehab+samsung@kernel.org>
 <e0bf4e767dd5de9189e5993fbec2f4b1bafd2064.1559171394.git.mchehab+samsung@kernel.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <2891a08c-50b1-db33-0e96-740d45c5235f@c-s.fr>
Date: Mon, 3 Jun 2019 09:32:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e0bf4e767dd5de9189e5993fbec2f4b1bafd2064.1559171394.git.mchehab+samsung@kernel.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_003303_401913_865D6DDA 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kvm@vger.kernel.org, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, Paul Mackerras <paulus@samba.org>,
 linux-stm32@st-md-mailman.stormreply.com, Andrew Donnellan <ajd@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-pm@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Matan Ziv-Av <matan@svgalib.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Frederic Barrat <fbarrat@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 linuxppc-dev@lists.ozlabs.org, Georgi Djakov <georgi.djakov@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzMC8wNS8yMDE5IMOgIDAxOjIzLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgYSDDqWNyaXTC
oDoKPiBTcGhpbnggZG9lc24ndCBsaWtlIG9ycGhhbiBkb2N1bWVudHM6Cj4gCj4gICAgICBEb2N1
bWVudGF0aW9uL2FjY2VsZXJhdG9ycy9vY3hsLnJzdDogV0FSTklORzogZG9jdW1lbnQgaXNuJ3Qg
aW5jbHVkZWQgaW4gYW55IHRvY3RyZWUKPiAgICAgIERvY3VtZW50YXRpb24vYXJtL3N0bTMyL292
ZXJ2aWV3LnJzdDogV0FSTklORzogZG9jdW1lbnQgaXNuJ3QgaW5jbHVkZWQgaW4gYW55IHRvY3Ry
ZWUKPiAgICAgIERvY3VtZW50YXRpb24vYXJtL3N0bTMyL3N0bTMyZjQyOS1vdmVydmlldy5yc3Q6
IFdBUk5JTkc6IGRvY3VtZW50IGlzbid0IGluY2x1ZGVkIGluIGFueSB0b2N0cmVlCj4gICAgICBE
b2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0zMmY3NDYtb3ZlcnZpZXcucnN0OiBXQVJOSU5HOiBk
b2N1bWVudCBpc24ndCBpbmNsdWRlZCBpbiBhbnkgdG9jdHJlZQo+ICAgICAgRG9jdW1lbnRhdGlv
bi9hcm0vc3RtMzIvc3RtMzJmNzY5LW92ZXJ2aWV3LnJzdDogV0FSTklORzogZG9jdW1lbnQgaXNu
J3QgaW5jbHVkZWQgaW4gYW55IHRvY3RyZWUKPiAgICAgIERvY3VtZW50YXRpb24vYXJtL3N0bTMy
L3N0bTMyaDc0My1vdmVydmlldy5yc3Q6IFdBUk5JTkc6IGRvY3VtZW50IGlzbid0IGluY2x1ZGVk
IGluIGFueSB0b2N0cmVlCj4gICAgICBEb2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0zMm1wMTU3
LW92ZXJ2aWV3LnJzdDogV0FSTklORzogZG9jdW1lbnQgaXNuJ3QgaW5jbHVkZWQgaW4gYW55IHRv
Y3RyZWUKPiAgICAgIERvY3VtZW50YXRpb24vZ3B1L21zbS1jcmFzaC1kdW1wLnJzdDogV0FSTklO
RzogZG9jdW1lbnQgaXNuJ3QgaW5jbHVkZWQgaW4gYW55IHRvY3RyZWUKPiAgICAgIERvY3VtZW50
YXRpb24vaW50ZXJjb25uZWN0L2ludGVyY29ubmVjdC5yc3Q6IFdBUk5JTkc6IGRvY3VtZW50IGlz
bid0IGluY2x1ZGVkIGluIGFueSB0b2N0cmVlCj4gICAgICBEb2N1bWVudGF0aW9uL2xhcHRvcHMv
bGctbGFwdG9wLnJzdDogV0FSTklORzogZG9jdW1lbnQgaXNuJ3QgaW5jbHVkZWQgaW4gYW55IHRv
Y3RyZWUKPiAgICAgIERvY3VtZW50YXRpb24vcG93ZXJwYy9pc2EtdmVyc2lvbnMucnN0OiBXQVJO
SU5HOiBkb2N1bWVudCBpc24ndCBpbmNsdWRlZCBpbiBhbnkgdG9jdHJlZQo+ICAgICAgRG9jdW1l
bnRhdGlvbi92aXJ0dWFsL2t2bS9hbWQtbWVtb3J5LWVuY3J5cHRpb24ucnN0OiBXQVJOSU5HOiBk
b2N1bWVudCBpc24ndCBpbmNsdWRlZCBpbiBhbnkgdG9jdHJlZQo+ICAgICAgRG9jdW1lbnRhdGlv
bi92aXJ0dWFsL2t2bS92Y3B1LXJlcXVlc3RzLnJzdDogV0FSTklORzogZG9jdW1lbnQgaXNuJ3Qg
aW5jbHVkZWQgaW4gYW55IHRvY3RyZWUKPiAKPiBTbywgd2hpbGUgdGhleSBhcmVuJ3Qgb24gYW55
IHRvY3RyZWUsIGFkZCA6b3JwaGFuOiB0byB0aGVtLCBpbiBvcmRlcgo+IHRvIHNpbGVudCB0aGlz
IHdhcm5pbmcuCgpBcmUgdGhvc2UgZmlsZXMgcmVhbGx5IG5vdCBtZWFudCB0byBiZSBpbmNsdWRl
ZCBpbiBhIHRvY3RyZWUgPwoKU2hvdWxkbid0IHdlIGluY2x1ZGUgdGhlbSBpbiB0aGUgcmVsZXZh
bnQgdG9jdHJlZSBpbnN0ZWFkIG9mIGp1c3QgCnNodXR0aW5nIHVwIFNwaGlueCB3YXJuaW5ncyA/
CgpDaHJpc3RvcGhlCgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8
bWNoZWhhYitzYW1zdW5nQGtlcm5lbC5vcmc+Cj4gLS0tCj4gICBEb2N1bWVudGF0aW9uL2FjY2Vs
ZXJhdG9ycy9vY3hsLnJzdCAgICAgICAgICAgICAgICAgfCAyICsrCj4gICBEb2N1bWVudGF0aW9u
L2FybS9zdG0zMi9vdmVydmlldy5yc3QgICAgICAgICAgICAgICAgfCAyICsrCj4gICBEb2N1bWVu
dGF0aW9uL2FybS9zdG0zMi9zdG0zMmY0Mjktb3ZlcnZpZXcucnN0ICAgICAgfCAyICsrCj4gICBE
b2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0zMmY3NDYtb3ZlcnZpZXcucnN0ICAgICAgfCAyICsr
Cj4gICBEb2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0zMmY3Njktb3ZlcnZpZXcucnN0ICAgICAg
fCAyICsrCj4gICBEb2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0zMmg3NDMtb3ZlcnZpZXcucnN0
ICAgICAgfCAyICsrCj4gICBEb2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0zMm1wMTU3LW92ZXJ2
aWV3LnJzdCAgICAgfCAyICsrCj4gICBEb2N1bWVudGF0aW9uL2dwdS9tc20tY3Jhc2gtZHVtcC5y
c3QgICAgICAgICAgICAgICAgfCAyICsrCj4gICBEb2N1bWVudGF0aW9uL2ludGVyY29ubmVjdC9p
bnRlcmNvbm5lY3QucnN0ICAgICAgICAgfCAyICsrCj4gICBEb2N1bWVudGF0aW9uL2xhcHRvcHMv
bGctbGFwdG9wLnJzdCAgICAgICAgICAgICAgICAgfCAyICsrCj4gICBEb2N1bWVudGF0aW9uL3Bv
d2VycGMvaXNhLXZlcnNpb25zLnJzdCAgICAgICAgICAgICAgfCAyICsrCj4gICBEb2N1bWVudGF0
aW9uL3ZpcnR1YWwva3ZtL2FtZC1tZW1vcnktZW5jcnlwdGlvbi5yc3QgfCAyICsrCj4gICBEb2N1
bWVudGF0aW9uL3ZpcnR1YWwva3ZtL3ZjcHUtcmVxdWVzdHMucnN0ICAgICAgICAgfCAyICsrCj4g
ICAxMyBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vYWNjZWxlcmF0b3JzL29jeGwucnN0IGIvRG9jdW1lbnRhdGlvbi9hY2NlbGVy
YXRvcnMvb2N4bC5yc3QKPiBpbmRleCAxNGNlZmMwMjBlMmQuLmIxY2VhMTlhOTBmNSAxMDA2NDQK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FjY2VsZXJhdG9ycy9vY3hsLnJzdAo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vYWNjZWxlcmF0b3JzL29jeGwucnN0Cj4gQEAgLTEsMyArMSw1IEBACj4gKzpvcnBo
YW46Cj4gKwo+ICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPiAgIE9wZW5DQVBJIChPcGVuIENvaGVyZW50IEFjY2VsZXJhdG9yIFByb2Nl
c3NvciBJbnRlcmZhY2UpCj4gICA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FybS9zdG0z
Mi9vdmVydmlldy5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zdG0zMi9vdmVydmlldy5yc3QKPiBp
bmRleCA4NWNmYzg0MTA3OTguLmY3ZTczNDE1Mzg2MCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2FybS9zdG0zMi9vdmVydmlldy5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2FybS9zdG0z
Mi9vdmVydmlldy5yc3QKPiBAQCAtMSwzICsxLDUgQEAKPiArOm9ycGhhbjoKPiArCj4gICA9PT09
PT09PT09PT09PT09PT09PT09PT0KPiAgIFNUTTMyIEFSTSBMaW51eCBPdmVydmlldwo+ICAgPT09
PT09PT09PT09PT09PT09PT09PT09Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYXJtL3N0
bTMyL3N0bTMyZjQyOS1vdmVydmlldy5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0z
MmY0Mjktb3ZlcnZpZXcucnN0Cj4gaW5kZXggMThmZWRhOTdmNDgzLi42NWJiYjFjM2I0MjMgMTAw
NjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9hcm0vc3RtMzIvc3RtMzJmNDI5LW92ZXJ2aWV3LnJz
dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYXJtL3N0bTMyL3N0bTMyZjQyOS1vdmVydmlldy5yc3QK
PiBAQCAtMSwzICsxLDUgQEAKPiArOm9ycGhhbjoKPiArCj4gICBTVE0zMkY0MjkgT3ZlcnZpZXcK
PiAgID09PT09PT09PT09PT09PT09PQo+ICAgCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
YXJtL3N0bTMyL3N0bTMyZjc0Ni1vdmVydmlldy5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zdG0z
Mi9zdG0zMmY3NDYtb3ZlcnZpZXcucnN0Cj4gaW5kZXggYjVmNGI2Y2U3NjU2Li40MmQ1OTMwODUw
MTUgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9hcm0vc3RtMzIvc3RtMzJmNzQ2LW92ZXJ2
aWV3LnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYXJtL3N0bTMyL3N0bTMyZjc0Ni1vdmVydmll
dy5yc3QKPiBAQCAtMSwzICsxLDUgQEAKPiArOm9ycGhhbjoKPiArCj4gICBTVE0zMkY3NDYgT3Zl
cnZpZXcKPiAgID09PT09PT09PT09PT09PT09PQo+ICAgCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vYXJtL3N0bTMyL3N0bTMyZjc2OS1vdmVydmlldy5yc3QgYi9Eb2N1bWVudGF0aW9uL2Fy
bS9zdG0zMi9zdG0zMmY3Njktb3ZlcnZpZXcucnN0Cj4gaW5kZXggMjI4NjU2Y2VkMmZlLi5mNmFk
YWM4NjJiMTcgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9hcm0vc3RtMzIvc3RtMzJmNzY5
LW92ZXJ2aWV3LnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYXJtL3N0bTMyL3N0bTMyZjc2OS1v
dmVydmlldy5yc3QKPiBAQCAtMSwzICsxLDUgQEAKPiArOm9ycGhhbjoKPiArCj4gICBTVE0zMkY3
NjkgT3ZlcnZpZXcKPiAgID09PT09PT09PT09PT09PT09PQo+ICAgCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vYXJtL3N0bTMyL3N0bTMyaDc0My1vdmVydmlldy5yc3QgYi9Eb2N1bWVudGF0
aW9uL2FybS9zdG0zMi9zdG0zMmg3NDMtb3ZlcnZpZXcucnN0Cj4gaW5kZXggMzQ1OGRjMDAwOTVk
Li5jNTI1ODM1ZTc0NzMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9hcm0vc3RtMzIvc3Rt
MzJoNzQzLW92ZXJ2aWV3LnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYXJtL3N0bTMyL3N0bTMy
aDc0My1vdmVydmlldy5yc3QKPiBAQCAtMSwzICsxLDUgQEAKPiArOm9ycGhhbjoKPiArCj4gICBT
VE0zMkg3NDMgT3ZlcnZpZXcKPiAgID09PT09PT09PT09PT09PT09PQo+ICAgCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vYXJtL3N0bTMyL3N0bTMybXAxNTctb3ZlcnZpZXcucnN0IGIvRG9j
dW1lbnRhdGlvbi9hcm0vc3RtMzIvc3RtMzJtcDE1Ny1vdmVydmlldy5yc3QKPiBpbmRleCA2MmUx
NzZkNDdjYTcuLjJjNTJjZDAyMDYwMSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FybS9z
dG0zMi9zdG0zMm1wMTU3LW92ZXJ2aWV3LnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYXJtL3N0
bTMyL3N0bTMybXAxNTctb3ZlcnZpZXcucnN0Cj4gQEAgLTEsMyArMSw1IEBACj4gKzpvcnBoYW46
Cj4gKwo+ICAgU1RNMzJNUDE1NyBPdmVydmlldwo+ICAgPT09PT09PT09PT09PT09PT09PQo+ICAg
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L21zbS1jcmFzaC1kdW1wLnJzdCBiL0Rv
Y3VtZW50YXRpb24vZ3B1L21zbS1jcmFzaC1kdW1wLnJzdAo+IGluZGV4IDc1N2NkMjU3ZTBkOC4u
MjQwZWYyMDBmNzZjIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L21zbS1jcmFzaC1k
dW1wLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L21zbS1jcmFzaC1kdW1wLnJzdAo+IEBA
IC0xLDMgKzEsNSBAQAo+ICs6b3JwaGFuOgo+ICsKPiAgID09PT09PT09PT09PT09PT09PT09PQo+
ICAgTVNNIENyYXNoIER1bXAgRm9ybWF0Cj4gICA9PT09PT09PT09PT09PT09PT09PT0KPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJjb25uZWN0LnJzdCBiL0Rv
Y3VtZW50YXRpb24vaW50ZXJjb25uZWN0L2ludGVyY29ubmVjdC5yc3QKPiBpbmRleCBjM2UwMDQ4
OTM3OTYuLjU2ZTMzMWRhYjcwZSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2ludGVyY29u
bmVjdC9pbnRlcmNvbm5lY3QucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5lY3Qv
aW50ZXJjb25uZWN0LnJzdAo+IEBAIC0xLDUgKzEsNyBAQAo+ICAgLi4gU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAKPiAgIAo+ICs6b3JwaGFuOgo+ICsKPiAgID09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0KPiAgIEdFTkVSSUMgU1lTVEVNIElOVEVSQ09OTkVDVCBT
VUJTWVNURU0KPiAgID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9sYXB0b3BzL2xnLWxhcHRvcC5yc3QgYi9Eb2N1bWVudGF0
aW9uL2xhcHRvcHMvbGctbGFwdG9wLnJzdAo+IGluZGV4IGFhNTAzZWU5YjNiYy4uZjJjMmZmZTMx
MTAxIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vbGFwdG9wcy9sZy1sYXB0b3AucnN0Cj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9sYXB0b3BzL2xnLWxhcHRvcC5yc3QKPiBAQCAtMSw1ICsxLDcg
QEAKPiAgIC4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICAgCj4gKzpvcnBo
YW46Cj4gKwo+ICAgTEcgR3JhbSBsYXB0b3AgZXh0cmEgZmVhdHVyZXMKPiAgID09PT09PT09PT09
PT09PT09PT09PT09PT09PT09Cj4gICAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9wb3dl
cnBjL2lzYS12ZXJzaW9ucy5yc3QgYi9Eb2N1bWVudGF0aW9uL3Bvd2VycGMvaXNhLXZlcnNpb25z
LnJzdAo+IGluZGV4IDgxMmUyMGNjODk4Yy4uNjZjMjQxNDBlYmYxIDEwMDY0NAo+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vcG93ZXJwYy9pc2EtdmVyc2lvbnMucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9wb3dlcnBjL2lzYS12ZXJzaW9ucy5yc3QKPiBAQCAtMSwzICsxLDUgQEAKPiArOm9ycGhhbjoK
PiArCj4gICBDUFUgdG8gSVNBIFZlcnNpb24gTWFwcGluZwo+ICAgPT09PT09PT09PT09PT09PT09
PT09PT09PT0KPiAgIAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3ZpcnR1YWwva3ZtL2Ft
ZC1tZW1vcnktZW5jcnlwdGlvbi5yc3QgYi9Eb2N1bWVudGF0aW9uL3ZpcnR1YWwva3ZtL2FtZC1t
ZW1vcnktZW5jcnlwdGlvbi5yc3QKPiBpbmRleCA2NTliYmMwOTNiNTIuLjMzZDY5N2FiOGE1OCAx
MDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL3ZpcnR1YWwva3ZtL2FtZC1tZW1vcnktZW5jcnlw
dGlvbi5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL3ZpcnR1YWwva3ZtL2FtZC1tZW1vcnktZW5j
cnlwdGlvbi5yc3QKPiBAQCAtMSwzICsxLDUgQEAKPiArOm9ycGhhbjoKPiArCj4gICA9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ICAgU2VjdXJlIEVuY3J5cHRlZCBWaXJ0
dWFsaXphdGlvbiAoU0VWKQo+ICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi92aXJ0dWFsL2t2bS92Y3B1LXJlcXVlc3Rz
LnJzdCBiL0RvY3VtZW50YXRpb24vdmlydHVhbC9rdm0vdmNwdS1yZXF1ZXN0cy5yc3QKPiBpbmRl
eCA1ZmViMzcwNmE3YWUuLmMxODA3YTFiOTJlNiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9u
L3ZpcnR1YWwva3ZtL3ZjcHUtcmVxdWVzdHMucnN0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi92aXJ0
dWFsL2t2bS92Y3B1LXJlcXVlc3RzLnJzdAo+IEBAIC0xLDMgKzEsNSBAQAo+ICs6b3JwaGFuOgo+
ICsKPiAgID09PT09PT09PT09PT09PT09Cj4gICBLVk0gVkNQVSBSZXF1ZXN0cwo+ICAgPT09PT09
PT09PT09PT09PT0KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
