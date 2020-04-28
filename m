Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A712C1BC275
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44csmylY1Utg7YW5GlO50rqRP5Lts+o3B5P2rbBqwE0=; b=CCwLRfivxrjjec
	/3XKMlrp9uowgJW54xTa+Yyrv44kyVBt/kL9IzkZlH1h2V4TPrC4OooWR1EhnJ4SZy2W0B+4Qw+j9
	SgJvp+n4LZJZo/nqm+J2kMxWge3AuTp+TB8cHAMN7CKA6OTPh9Knwr7hilCcGt8mgPl7ME3V0jMUG
	nSbrTHq/FwulsWY55wv713z1WEqrZeKKtWM1DC+roEpuDoJVkDavokUNkaIC160faAwHQuAp/IXyB
	vw3pQ0of9o4GoEgn77gF8a24MW52hlj5DPGZWY7YEultlefRcSckZcLYG5e//h3lii6YXyUGRqhtg
	RXfezluCXXyycExDYiTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRwl-0004vX-PO; Tue, 28 Apr 2020 15:14:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRwb-0004tg-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:14:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id v4so2605443wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 08:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=l31iHzi+Qs0wCkNpZUkmQ43l/0Uer53q54jbPNk9/tA=;
 b=KlHwcr3gTyxBlExVYMYEDezxp2MypKFK+c6Ao/6WCZFEdvxM87IzFhahTJWpvBuNZM
 cFsfktXWaoRij0YPRZs+CfSAAapta3x5PTjTct9nKzkeYlY/uKwbfbgFnN7gjjy2NYs8
 oeXIVDldzCGpa4IeFQvUz5qM0thtnyU+gBnAqzy88i4+rnZ7PFIvhnjWZjEFzSIO0kbL
 p0p19jj+iD6Xh5Tg8gXjuda6JrLj+r8F56iRtpn0tm/B5pquPdIB0hA4jaipWC68ssNv
 HlJNAQ+DAB1ZQ2u1gjAfaSG5//xbPSnz+CTuBZi+htDjig8onvuhS9nFWJ1tLfXTRyp2
 zKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=l31iHzi+Qs0wCkNpZUkmQ43l/0Uer53q54jbPNk9/tA=;
 b=eDqFDqasH5r6kbjQ5eslJOIMysk4RrEYedD+KFlhvesaFa5EuGGYe5pXHKIgO0hvSq
 3MndWlheNC22WRM+4R+bL5aHqAhjcWl+hqkqBCO68vjodzKNhtEUZt9cwurCWqQ1L91r
 ReDtJa+WPhpWy2ZhG1R892YgZy3O6nn/8YdklhMRqRrbncT4JmnNzeglhypJEJzL9ttI
 OrDiGivUeeGktyN57lXOdUTJ1blZVqVjNJbOYQSBShu0EWEBm84aJpJXaIcjyCLr7jxx
 L9nA853kWYSEhSGiQM5qCc8EOYklnQRM3QgKxi6u1bu5RurfEWRVyhCP45GMADinfEHi
 qjYw==
X-Gm-Message-State: AGi0PubS97JBqNX7Wnl3SEYd1lP+wEHczdJkboSVog70acucygW3GE+P
 liVYDpAQDRUYuJhpZQr3ihwi/2Aq
X-Google-Smtp-Source: APiQypL8H3EcxyO7rOvNQpM8a9StjgW5VyI7nmqOUuAgjrQlknQi+ypDm7LmhWDvCqyCCbM8wblpgQ==
X-Received: by 2002:a1c:7715:: with SMTP id t21mr4857338wmi.182.1588086882730; 
 Tue, 28 Apr 2020 08:14:42 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id s8sm25807970wru.38.2020.04.28.08.14.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 08:14:42 -0700 (PDT)
Subject: Re: [RFC 02/17] drm: amdgpu: fix sg_table nents vs. orig_nents misuse
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132023eucas1p2a1993145eef91506698aa8c9750a7e43@eucas1p2.samsung.com>
 <20200428132005.21424-3-m.szyprowski@samsung.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <c462d1f0-8daa-76bb-a7fd-5e0d687975d5@gmail.com>
Date: Tue, 28 Apr 2020 17:14:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200428132005.21424-3-m.szyprowski@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_081445_480660_09C21DD7 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ckoenig.leichtzumerken[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: christian.koenig@amd.com
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjguMDQuMjAgdW0gMTU6MTkgc2NocmllYiBNYXJlayBTenlwcm93c2tpOgo+IFRoZSBEb2N1
bWVudGF0aW9uL0RNQS1BUEktSE9XVE8udHh0IHN0YXRlcyB0aGF0IGRtYV9tYXBfc2cgcmV0dXJu
cyB0aGUKPiBudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRkcmVzcyBz
cGFjZS4gSG93ZXZlciB0aGUKPiBzdWJzZXF1ZW50IGNhbGxzIHRvIGRtYV9zeW5jX3NnX2Zvcl97
ZGV2aWNlLGNwdX0gYW5kIGRtYV91bm1hcF9zZyBtdXN0IGJlCj4gY2FsbGVkIHdpdGggdGhlIG9y
aWdpbmFsIG51bWJlciBvZiBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUKPiBzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCj4gaW4gaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oLiBBZGFwdCB0aGUg
Y29kZSB0byBvYmV5IHRob3NlIHJ1bGVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJv
d3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgNyArKysrLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgIHwgOCArKysrLS0tLQo+ICAgMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKPiBpbmRleCA0M2Q4ZWQ3Li40ZGY4
MTNlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFf
YnVmLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5j
Cj4gQEAgLTMwNyw4ICszMDcsOSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICphbWRncHVfZG1h
X2J1Zl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAgCQlpZiAoSVNf
RVJSKHNndCkpCj4gICAJCQlyZXR1cm4gc2d0Owo+ICAgCj4gLQkJaWYgKCFkbWFfbWFwX3NnX2F0
dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAo+IC0JCQkJICAgICAg
RE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpCj4gKwkJc2d0LT5uZW50cyA9IGRtYV9tYXBfc2dfYXR0
cnMoYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCj4gKwkJCQkJICAgICAg
ZGlyLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKPiArCQlpZiAoIXNndC0+bmVudHMpCj4gICAJ
CQlnb3RvIGVycm9yX2ZyZWU7Cj4gICAJCWJyZWFrOwo+ICAgCj4gQEAgLTM0OSw3ICszNTAsNyBA
QCBzdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl91bm1hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gsCj4gICAJc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBhbWRncHVfdHRt
X2FkZXYoYm8tPnRiby5iZGV2KTsKPiAgIAo+ICAgCWlmIChzZ3QtPnNnbC0+cGFnZV9saW5rKSB7
Cj4gLQkJZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGly
KTsKPiArCQlkbWFfdW5tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVu
dHMsIGRpcik7Cj4gICAJCXNnX2ZyZWVfdGFibGUoc2d0KTsKPiAgIAkJa2ZyZWUoc2d0KTsKPiAg
IAl9IGVsc2Ugewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKPiBpbmRl
eCBkNTU0M2MyLi41ZjMxNTg1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV90dG0uYwo+IEBAIC0xMDQzLDcgKzEwNDMsNiBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fdHRf
cGluX3VzZXJwdHIoc3RydWN0IHR0bV90dCAqdHRtKQo+ICAgewo+ICAgCXN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KHR0bS0+YmRldik7Cj4gICAJc3RydWN0IGFt
ZGdwdV90dG1fdHQgKmd0dCA9ICh2b2lkICopdHRtOwo+IC0JdW5zaWduZWQgbmVudHM7Cj4gICAJ
aW50IHI7Cj4gICAKPiAgIAlpbnQgd3JpdGUgPSAhKGd0dC0+dXNlcmZsYWdzICYgQU1ER1BVX0dF
TV9VU0VSUFRSX1JFQURPTkxZKTsKPiBAQCAtMTA1OSw4ICsxMDU4LDkgQEAgc3RhdGljIGludCBh
bWRncHVfdHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKPiAgIAo+ICAgCS8q
IE1hcCBTRyB0byBkZXZpY2UgKi8KPiAgIAlyID0gLUVOT01FTTsKPiAtCW5lbnRzID0gZG1hX21h
cF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5zZy0+bmVudHMsIGRpcmVjdGlvbik7
Cj4gLQlpZiAobmVudHMgPT0gMCkKPiArCXR0bS0+c2ctPm5lbnRzID0gZG1hX21hcF9zZyhhZGV2
LT5kZXYsIHR0bS0+c2ctPnNnbCwKPiArCQkJCSAgICB0dG0tPnNnLT5vcmlnX25lbnRzLCBkaXJl
Y3Rpb24pOwo+ICsJaWYgKHR0bS0+c2ctPm5lbnRzID09IDApCj4gICAJCWdvdG8gcmVsZWFzZV9z
ZzsKPiAgIAo+ICAgCS8qIGNvbnZlcnQgU0cgdG8gbGluZWFyIGFycmF5IG9mIHBhZ2VzIGFuZCBk
bWEgYWRkcmVzc2VzICovCj4gQEAgLTEwOTEsNyArMTA5MSw3IEBAIHN0YXRpYyB2b2lkIGFtZGdw
dV90dG1fdHRfdW5waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCj4gICAJCXJldHVybjsK
PiAgIAo+ICAgCS8qIHVubWFwIHRoZSBwYWdlcyBtYXBwZWQgdG8gdGhlIGRldmljZSAqLwo+IC0J
ZG1hX3VubWFwX3NnKGFkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGly
ZWN0aW9uKTsKPiArCWRtYV91bm1hcF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5z
Zy0+b3JpZ19uZW50cywgZGlyZWN0aW9uKTsKPiAgIAo+ICAgCXNnX2ZyZWVfdGFibGUodHRtLT5z
Zyk7Cj4gICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
