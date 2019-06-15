Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D72B470FA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 17:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71BYTOqQUBvkMnm3eXRBGZ0+kZpg0dTGYA9UOg0Ug1w=; b=dslhNxmoGMRv1z
	gTx5BZFN0doZkCXy3WyGczvKkcbsfikrpVhogQIt4rj/mIu14Tww6j8OPkxYxSefRgJsmlbN2qsBO
	j7orBdNWfk5/juGvPZESTr15GrnJam6V7Jo/xpPnVmNjKPAMfWyVmYgf5uNs4Keup6+nvGa9zLA7i
	ltVgG+2+4t78+kAzQb9x6rAzVIsigILvTx4Tv4wfyPc4yUNS59+YWBtAUV24qDVlQYYgTe9cgjrns
	Nf/j1Caor0tmjyaOR6StJi8KgAtnHY9Rui4F7cIcHYMHFG58Fd1gWzTzlOuSGJv3uLYiSfykJdM+g
	gfPzWU+GjD+yN+4BqNxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcAna-0003bC-0I; Sat, 15 Jun 2019 15:40:58 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcAnL-0003an-4Q
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 15:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=JoX17tYcQM/Wxo8a3Kew8h9b23utegzFdj5At3iKaSk=; 
 b=uqIdVkdsqIlECKOq3AXDTOgFn8TWcW1yz4VYtJ0HAaBwI3eEMJspfcipUpz0Bn7MXCFgg+YNGHgezBSVFORQzinrPFjQ0HkIHbmTrpQ6n3T6k3O4J9ya3fTpIO6+blztwzq7/k2meKaKKObjXandS/MkokiPgLeaLfWDO3qIwMtNDTyEorvFXOA+xq3h/y6nm2dLf+rbqRgeIdQs/y7AolULngVe0t9rpv0xHG1lDNPUb5sOUdD/U+1Ql0ywpwXBN32oAfoVMD87uD8f4/fhppwvtIuHsWBr++SAc9AkDhfJb9SsDighc2R8tgCZVe6RVN/y3k+tpi5zfRxPdwf3wQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54324
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hcAnJ-0007Dy-6D; Sat, 15 Jun 2019 17:40:41 +0200
Subject: Re: [PATCH v4 10/12] drm/modes: Parse overscan properties
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <c16d281d1dc69ee60e95169807e7e2ab2992f133.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <00dfc10e-a95e-be07-0179-8cfeb6ca9908@tronnes.org>
Date: Sat, 15 Jun 2019 17:40:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <c16d281d1dc69ee60e95169807e7e2ab2992f133.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_084043_357332_184F4BB0 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBQcm9wZXJseSBj
b25maWd1cmluZyB0aGUgb3ZlcnNjYW4gcHJvcGVydGllcyBtaWdodCBiZSBuZWVkZWQgZm9yIHRo
ZQo+IGluaXRpYWwgc2V0dXAgb2YgdGhlIGZyYW1lYnVmZmVyIGZvciBkaXNwbGF5IHRoYXQgc3Rp
bGwgaGF2ZSBvdmVyc2Nhbi4KPiBMZXQncyBhbGxvdyBmb3IgbW9yZSBwcm9wZXJ0aWVzIG9uIHRo
ZSBrZXJuZWwgY29tbWFuZCBsaW5lIHRvIHNldHVwIGVhY2gKPiBtYXJnaW4uCgpUaGlzIGFsc28g
bmVlZHMgdG8gYmUgZG9jdW1lbnRlZCBpbiBEb2N1bWVudGF0aW9uL2ZiL21vZGVkYi50eHQKCj4g
Cj4gUmV2aWV3ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgo+IFNp
Z25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYyB8IDQ0ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLQo+ICBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggfCAx
MiArKysrKy0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jCj4gaW5kZXggYjkyYjdkZjY3ODRhLi4yNWQyYmE1
OTU3NTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jCj4gQEAgLTE2MDksNiArMTYwOSw1MCBAQCBzdGF0
aWMgaW50IGRybV9tb2RlX3BhcnNlX2NtZGxpbmVfb3B0aW9ucyhjaGFyICpzdHIsIHNpemVfdCBs
ZW4sCj4gIAkJfSBlbHNlIGlmICghc3RybmNtcChvcHRpb24sICJyZWZsZWN0X3kiLCBkZWxpbSAt
IG9wdGlvbikpIHsKPiAgCQkJcm90YXRpb24gfD0gRFJNX01PREVfUkVGTEVDVF9ZOwo+ICAJCQlz
ZXAgPSBkZWxpbTsKPiArCQl9IGVsc2UgaWYgKCFzdHJuY21wKG9wdGlvbiwgIm1hcmdpbl9yaWdo
dCIsIGRlbGltIC0gb3B0aW9uKSkgewoKSSB3b25kZXIgaWYgdGhpcyBzaG91bGQgYmUgY2FsbGVk
IHR2X21hcmdpbl9yaWdodCB0byBkaXN0aW5ndWlzaCBpdCBmcm9tCidtJyAodGhlIG1vZGUgc3Bl
Y2lmaWVyKSB3aGljaCBhbHNvIGlzIGEgbWFyZ2luPyBPciBjYW4gdGhlc2UgbWFyZ2lucyBiZQpy
ZXVzZWQgb24gb3RoZXIgZGlzcGxheSB0eXBlcyBsYXRlciBvbj8gQSBsaXR0bGUgc3R1cGlkIHRv
IGhhdmUgYm90aAondHZfbWFyZ2luX3JpZ2h0JyBhbmQgJ21hcmdpbl9yaWdodCcuCgo+ICsJCQlj
b25zdCBjaGFyICp2YWx1ZSA9IGRlbGltICsgMTsKPiArCQkJdW5zaWduZWQgaW50IG1hcmdpbjsK
PiArCj4gKwkJCW1hcmdpbiA9IHNpbXBsZV9zdHJ0b2wodmFsdWUsICZzZXAsIDEwKTsKPiArCj4g
KwkJCS8qIE1ha2Ugc3VyZSB3ZSBoYXZlIHBhcnNlZCBzb21ldGhpbmcgKi8KPiArCQkJaWYgKHNl
cCA9PSB2YWx1ZSkKPiArCQkJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCQkJbW9kZS0+dHZfbWFy
Z2lucy5yaWdodCA9IG1hcmdpbjsKPiArCQl9IGVsc2UgaWYgKCFzdHJuY21wKG9wdGlvbiwgIm1h
cmdpbl9sZWZ0IiwgZGVsaW0gLSBvcHRpb24pKSB7Cj4gKwkJCWNvbnN0IGNoYXIgKnZhbHVlID0g
ZGVsaW0gKyAxOwo+ICsJCQl1bnNpZ25lZCBpbnQgbWFyZ2luOwo+ICsKPiArCQkJbWFyZ2luID0g
c2ltcGxlX3N0cnRvbCh2YWx1ZSwgJnNlcCwgMTApOwo+ICsKPiArCQkJLyogTWFrZSBzdXJlIHdl
IGhhdmUgcGFyc2VkIHNvbWV0aGluZyAqLwo+ICsJCQlpZiAoc2VwID09IHZhbHVlKQo+ICsJCQkJ
cmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJCQltb2RlLT50dl9tYXJnaW5zLmxlZnQgPSBtYXJnaW47
Cj4gKwkJfSBlbHNlIGlmICghc3RybmNtcChvcHRpb24sICJtYXJnaW5fdG9wIiwgZGVsaW0gLSBv
cHRpb24pKSB7Cj4gKwkJCWNvbnN0IGNoYXIgKnZhbHVlID0gZGVsaW0gKyAxOwo+ICsJCQl1bnNp
Z25lZCBpbnQgbWFyZ2luOwo+ICsKPiArCQkJbWFyZ2luID0gc2ltcGxlX3N0cnRvbCh2YWx1ZSwg
JnNlcCwgMTApOwo+ICsKPiArCQkJLyogTWFrZSBzdXJlIHdlIGhhdmUgcGFyc2VkIHNvbWV0aGlu
ZyAqLwo+ICsJCQlpZiAoc2VwID09IHZhbHVlKQo+ICsJCQkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+
ICsJCQltb2RlLT50dl9tYXJnaW5zLnRvcCA9IG1hcmdpbjsKPiArCQl9IGVsc2UgaWYgKCFzdHJu
Y21wKG9wdGlvbiwgIm1hcmdpbl9ib3R0b20iLCBkZWxpbSAtIG9wdGlvbikpIHsKPiArCQkJY29u
c3QgY2hhciAqdmFsdWUgPSBkZWxpbSArIDE7Cj4gKwkJCXVuc2lnbmVkIGludCBtYXJnaW47Cj4g
Kwo+ICsJCQltYXJnaW4gPSBzaW1wbGVfc3RydG9sKHZhbHVlLCAmc2VwLCAxMCk7Cj4gKwo+ICsJ
CQkvKiBNYWtlIHN1cmUgd2UgaGF2ZSBwYXJzZWQgc29tZXRoaW5nICovCj4gKwkJCWlmIChzZXAg
PT0gdmFsdWUpCj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwkJCW1vZGUtPnR2X21hcmdp
bnMuYm90dG9tID0gbWFyZ2luOwo+ICAJCX0gZWxzZSB7Cj4gIAkJCXJldHVybiAtRUlOVkFMOwo+
ICAJCX0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIGIvaW5jbHVk
ZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCj4gaW5kZXggYzU4YTM1YjM0YzFhLi42ODQxYzQ2ZTY3ODEg
MTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCj4gKysrIGIvaW5jbHVk
ZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCj4gQEAgLTUwNSwxMiArNTA1LDcgQEAgc3RydWN0IGRybV9j
b25uZWN0b3JfdHZfbWFyZ2lucyB7Cj4gICAqLwo+ICBzdHJ1Y3QgZHJtX3R2X2Nvbm5lY3Rvcl9z
dGF0ZSB7Cj4gIAllbnVtIGRybV9tb2RlX3N1YmNvbm5lY3RvciBzdWJjb25uZWN0b3I7Cj4gLQlz
dHJ1Y3Qgewo+IC0JCXVuc2lnbmVkIGludCBsZWZ0Owo+IC0JCXVuc2lnbmVkIGludCByaWdodDsK
PiAtCQl1bnNpZ25lZCBpbnQgdG9wOwo+IC0JCXVuc2lnbmVkIGludCBib3R0b207Cj4gLQl9IG1h
cmdpbnM7Cj4gKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl90dl9tYXJnaW5zIG1hcmdpbnM7Cj4gIAl1
bnNpZ25lZCBpbnQgbW9kZTsKPiAgCXVuc2lnbmVkIGludCBicmlnaHRuZXNzOwo+ICAJdW5zaWdu
ZWQgaW50IGNvbnRyYXN0OwoKQXMgbWVudGlvbmVkIHRoaXMgbmVlZHMgbW92aW5nIHRvIHBhdGNo
IDguCgpOb3JhbGYuCgo+IEBAIC0xMDM5LDYgKzEwMzQsMTEgQEAgc3RydWN0IGRybV9jbWRsaW5l
X21vZGUgewo+ICAJICogRFJNX01PREVfUk9UQVRFXzE4MCBhcmUgc3VwcG9ydGVkIGF0IHRoZSBt
b21lbnQuCj4gIAkgKi8KPiAgCXVuc2lnbmVkIGludCByb3RhdGlvbjsKPiArCj4gKwkvKioKPiAr
CSAqIEB0dl9tYXJnaW5zOiBUViBtYXJnaW5zIHRvIGFwcGx5IHRvIHRoZSBtb2RlLgo+ICsJICov
Cj4gKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl90dl9tYXJnaW5zIHR2X21hcmdpbnM7Cj4gIH07Cj4g
IAo+ICAvKioKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
