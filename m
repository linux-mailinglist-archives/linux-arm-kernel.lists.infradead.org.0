Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1696AB5F8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 14:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JM3elwS0sgSgNMuormw23JmnvNtDOIC81kjN+aJ+Zw=; b=oqbzAIH+Hct3fa
	JoECMJCJCVcZySQ0qDvFUWt1YnGO2pTp5oAnJkZi+diP7DFffB7JD8Ps4oRZ1gR17wwvUNjoSfrRJ
	7KwC+LrgiFhFmBRu38qmxu5vppGidvrWykdSbdy+vDz2T5m2Otr2xgMUvMd5OMntacLP/HMypsiXR
	Gbbk8OVeX+aEXai8IJCLApXaGCj34UbWmlQSCMq6Uv/cZ3lr6k0Bey2Pr6WldtaX5Yv2gMUZY+vWZ
	sCMDvb5O2bDhZxXsFCSVTkm+9GApBtifyyD48tt4SLL++7FYEZ0rZ4ysKhqjUsRCKv7cqJ9+ZPtFa
	GVuCOZc9xMBVxh7FJwGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKjBg-0008G0-0o; Sun, 28 Apr 2019 12:45:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKjBW-0008EX-Ko
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 12:45:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id c5so11552161wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 05:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kjtjPVeH9uJpdgJ4+Mz+dHECKsOeFzPmFSYQ0lOXlR8=;
 b=cd5k/15uADqLMAJw5B8UKQEopJ8j6JAZ8bDdTsspGpZJM9P99gq16aT6wnVAGC9zdQ
 b0XQImUdKpjAK96KhCQtqj1LBQfMNyQh8Vq3DjDtk1sUdiVtEump4CyxBlpEnvy2jsp5
 FKYRefQkMzhOjvsllnKX3FHpZc7A41Tu79VdNJ1UjdII9P1jX3HmkXT+u78WShOmHf/C
 PgRcAA51s/ZwPZ+OiZ1c6yAhJrGjkfRen4mIwO/oNbe9izzg+MlZ3IrsEHWoRMG5vEah
 oQHzFAyIbAivvD/hA3O7YenYJ87R6D3iwxdRXcV7ncRhIoPe3D8MIgn4P7hVUxzXqAO5
 aSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kjtjPVeH9uJpdgJ4+Mz+dHECKsOeFzPmFSYQ0lOXlR8=;
 b=lr3AzpzHb+x4taaAMoYYaFqMmYkXLQsl4wmkGxWbVAlFW5S44qDo5mCG8DcjwACTDb
 jBBeNRKMnXIjCNFXYyKkNKjSq7WZDyYkxY+NytWNcKRoilyZ2Y0+P0ODKM3mduc89Ax1
 sLhCl5GabyCpL4VLi4v6J61r9G9kzEO8G6fJqC88vxPj02/MfOJkLgCsZomtAsOHy+qC
 xK1ea3+7U1juKHXH4aFfDs7+1VC/UuZO/jXdnIEguiU2SY/Zb0PhrLSWaxeW+jPxHB02
 3z5j4LE/Sa5KV0O9HaCtUpNbhljIdzMClDlbKlg+W1XOOrNzygVAJwLjuK4y0+hxOe6e
 RDgA==
X-Gm-Message-State: APjAAAWNOrFxMhZKCnjHnxWfurIwnW/jejsP5mOF7nUSiGzecZmFNFgz
 RAkDXDrvmIMacmQez1vT7oQZug==
X-Google-Smtp-Source: APXvYqwtDjW+k72NDXuTsG5WeDiwQ61HiZNWbQq5aHjsOa5EhP2zQp77AArxVEbt3c/64dpOVmjsVw==
X-Received: by 2002:a5d:4e86:: with SMTP id e6mr385971wru.59.1556455529976;
 Sun, 28 Apr 2019 05:45:29 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id d11sm3488520wmb.39.2019.04.28.05.45.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 05:45:29 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v2 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <1556187154-22632-1-git-send-email-zhangqing@rock-chips.com>
 <1556187154-22632-2-git-send-email-zhangqing@rock-chips.com>
Message-ID: <be0170d7-64dc-896d-b847-5be192304791@linaro.org>
Date: Sun, 28 Apr 2019 14:45:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556187154-22632-2-git-send-email-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_054534_740624_8D177631 
X-CRM114-Status: GOOD (  25.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, huangtao@rock-chips.com,
 linux-pm@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUvMDQvMjAxOSAxMjoxMiwgRWxhaW5lIFpoYW5nIHdyb3RlOgo+IEV4cGxpY2l0bHkgdXNl
IHRoZSBwaW5jdHJsIHRvIHNldC91bnNldCB0aGUgcmlnaHQgbW9kZQo+IGluc3RlYWQgb2YgcmVs
eWluZyBvbiB0aGUgcGluY3RybCBpbml0IG1vZGUuCj4gQW5kIGl0IHJlcXVpcmVzIHNldHRpbmcg
dGhlIHRzaHV0IHBvbGFyaXR5IGJlZm9yZSBzZWxlY3QgcGluY3RybC4KPiAKPiBXaGVuIHRoZSB0
ZW1wZXJhdHVyZSBzZW5zb3IgbW9kZSBpcyBzZXQgdG8gMCwgaXQgd2lsbCBhdXRvbWF0aWNhbGx5
Cj4gcmVzZXQgdGhlIGJvYXJkIHZpYSB0aGUgQ2xvY2stUmVzZXQtVW5pdCAoQ1JVKSBpZiB0aGUg
b3ZlciB0ZW1wZXJhdHVyZQo+IHRocmVzaG9sZCBpcyByZWFjaGVkLiBIb3dldmVyLCB3aGVuIHRo
ZSBwaW5jdHJsIGluaXRpYWxpemVzLCBpdCBkb2VzIGEKPiB0cmFuc2l0aW9uIHRvICJvdHBfb3V0
IiB3aGljaCBtYXkgbGVhZCB0aGUgU29DIHJlc3RhcnQgYWxsIHRoZSB0aW1lLgo+IAo+ICJvdHBf
b3V0IiBJTyBtYXkgYmUgY29ubmVjdGVkIHRvIHRoZSBSRVNFVCBjaXJjdWl0IG9uIHRoZSBoYXJk
d2FyZS4KPiBJZiB0aGUgSU8gaXMgaW4gdGhlIHdyb25nIHN0YXRlLCBpdCB3aWxsIHRyaWdnZXIg
UkVTRVQuCj4gKHNpbWlsYXIgdG8gdGhlIGVmZmVjdCBvZiBwcmVzc2luZyB0aGUgUkVTRVQgYnV0
dG9uKQo+IHdoaWNoIHdpbGwgY2F1c2UgdGhlIHNvYyB0byByZXN0YXJ0IGFsbCB0aGUgdGltZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyB8IDM3ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM0IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhl
cm1hbC9yb2NrY2hpcF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1h
bC5jCj4gaW5kZXggOWM3NjQzZDYyZWQ3Li4wM2ZmNDk0ZjI4NjQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9y
b2NrY2hpcF90aGVybWFsLmMKPiBAQCAtMTcyLDYgKzE3Miw5IEBAIHN0cnVjdCByb2NrY2hpcF90
aGVybWFsX2RhdGEgewo+ICAJaW50IHRzaHV0X3RlbXA7Cj4gIAllbnVtIHRzaHV0X21vZGUgdHNo
dXRfbW9kZTsKPiAgCWVudW0gdHNodXRfcG9sYXJpdHkgdHNodXRfcG9sYXJpdHk7Cj4gKwlzdHJ1
Y3QgcGluY3RybCAqcGluY3RybDsKPiArCXN0cnVjdCBwaW5jdHJsX3N0YXRlICpncGlvX3N0YXRl
Owo+ICsJc3RydWN0IHBpbmN0cmxfc3RhdGUgKm90cF9zdGF0ZTsKPiAgfTsKPiAgCj4gIC8qKgo+
IEBAIC0xMjQyLDYgKzEyNDUsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJtYWxfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQlyZXR1cm4gZXJyb3I7Cj4gIAl9Cj4g
IAo+ICsJdGhlcm1hbC0+Y2hpcC0+Y29udHJvbCh0aGVybWFsLT5yZWdzLCBmYWxzZSk7Cj4gKwo+
ICAJZXJyb3IgPSBjbGtfcHJlcGFyZV9lbmFibGUodGhlcm1hbC0+Y2xrKTsKPiAgCWlmIChlcnJv
cikgewo+ICAJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBlbmFibGUgY29udmVydGVy
IGNsb2NrOiAlZFxuIiwKPiBAQCAtMTI2Nyw2ICsxMjcyLDMxIEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJdGhlcm1h
bC0+Y2hpcC0+aW5pdGlhbGl6ZSh0aGVybWFsLT5ncmYsIHRoZXJtYWwtPnJlZ3MsCj4gIAkJCQkg
IHRoZXJtYWwtPnRzaHV0X3BvbGFyaXR5KTsKPiAgCj4gKwlpZiAodGhlcm1hbC0+dHNodXRfbW9k
ZSA9PSBUU0hVVF9NT0RFX0dQSU8pIHsKPiArCQl0aGVybWFsLT5waW5jdHJsID0gZGV2bV9waW5j
dHJsX2dldCgmcGRldi0+ZGV2KTsKPiArCQlpZiAoSVNfRVJSKHRoZXJtYWwtPnBpbmN0cmwpKSB7
Cj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRoZXJtYWwgcGluY3Ry
bFxuIik7Cj4gKwkJCXBhbmljKCJwYW5pY19vbl9maW5kIHRoZXJtYWwgcGluY3RybC4uLlxuIik7
CgpJIHJlYWxpemUgbXkgY29tbWVudCB3YXMgY29uZnVzaW5nLiBJIHdhcyBub3Qgc2F5aW5nIHRv
IGFkZCBhIHBhbmljKCkKY2FsbCBoZXJlIGJ1dCB0aGF0IHRoZSBjb2RlIHdhcyBhY2Nlc3Npbmcg
YSBOVUxMIHBvaW50ZXIuIFBsZWFzZSByZW1vdmUKdGhlIHBhbmljLgoKPiArCQkJcmV0dXJuIFBU
Ul9FUlIodGhlcm1hbC0+cGluY3RybCk7Cj4gKwkJfQo+ICsKPiArCQl0aGVybWFsLT5ncGlvX3N0
YXRlID0gcGluY3RybF9sb29rdXBfc3RhdGUodGhlcm1hbC0+cGluY3RybCwKPiArCQkJCQkJCSAg
ICJncGlvIik7Cj4gKwkJaWYgKElTX0VSUl9PUl9OVUxMKHRoZXJtYWwtPmdwaW9fc3RhdGUpKSB7
Cj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRoZXJtYWwgZ3BpbyBz
dGF0ZVxuIik7Cj4gKwkJCXJldHVybiAtRUlOVkFMOwo+ICsJCX0KPiArCj4gKwkJdGhlcm1hbC0+
b3RwX3N0YXRlID0gcGluY3RybF9sb29rdXBfc3RhdGUodGhlcm1hbC0+cGluY3RybCwKPiArCQkJ
CQkJCSAgIm90cG91dCIpOwo+ICsJCWlmIChJU19FUlJfT1JfTlVMTCh0aGVybWFsLT5vdHBfc3Rh
dGUpKSB7Cj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRoZXJtYWwg
b3Rwb3V0IHN0YXRlXG4iKTsKPiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4gKwkJfQo+ICsKPiArCQlw
aW5jdHJsX3NlbGVjdF9zdGF0ZSh0aGVybWFsLT5waW5jdHJsLCB0aGVybWFsLT5vdHBfc3RhdGUp
OwoKSSBkb24ndCB1bmRlcnN0YW5kIHRoaXMgcG9ydGlvbiBvZiBjb2RlLiBUaGUgdGVzdCBhYm92
ZSBzYXlzIHRzaHV0X21vZGUKaXMgVFNIVVRfTU9ERV9HUElPLiBXaHkgYWN0aW5nIG9uIHRoZXJt
YWwtPm90cF9zdGF0ZSB0aGVuID8KCgpJbiBteSBwcmV2aW91cyBjb21tZW50LCBJIHdhcyBzdWdn
ZXN0aW5nIHRoZSBmb2xsb3dpbmc6CgpUd28gbW9yZSBmaWVsZHMgaW5zdGVhZCBvZiB0aHJlZToK
CglzdHJ1Y3Qgcm9ja2NoaXBfdGhlcm1hbF9kYXRhIHsKICAJCWludCB0c2h1dF90ZW1wOwoJICAJ
ZW51bSB0c2h1dF9tb2RlIHRzaHV0X21vZGU7CiAgCQllbnVtIHRzaHV0X3BvbGFyaXR5IHRzaHV0
X3BvbGFyaXR5OwoJIAlzdHJ1Y3QgcGluY3RybCAqcGluY3RybDsKCQlzdHJ1Y3QgcGluY3RybF9z
dGF0ZSAqcGluY3RybF9zdGF0ZTsKCX07CgoJWyAuLi4gXQoKCXRoZXJtYWwtPnBpbmN0cmwgPSBk
ZXZtX3BpbmN0cmxfZ2V0KCZwZGV2LT5kZXYpOwoJaWYgKElTX0VSUih0aGVybWFsLT5waW5jdHJs
KSkgewoJCWRldl9lcnIoIi4uLiIpOwoJCXJldHVybiBQVFJfRVJSKHRoZXJtYWwtPnBpbmN0cmwp
OwoJfQoKCXRoZXJtYWwtPnBpbmN0cmxfc3RhdGUgPSBwaW5jdHJsX2xvb2t1cF9zdGF0ZSh0aGVy
bWFsLT5waW5jdHJsLAoJCXRoZXJtYWwtPnRzaHV0X21vZGUgPT0gVFNIVVRfTU9ERV9HUElPID8g
ImdwaW8iIDoKCQkJCQkJCSJvdHBvdXQiOwoKCWlmIChJU19FUlJfT1JfTlVMTCh0aGVybWFsLT5w
aW5jdHJsX3N0YXRlKSB7CgkJZGV2X2VycigiLi4uIik7CgkJcmV0dXJuIFBUUl9FUlIodGhlcm1h
bC0+cGluY3RybF9zdGF0ZSk7Cgl9CgogCXBpbmN0cmxfc2VsZWN0X3N0YXRlKHRoZXJtYWwtPnBp
bmN0cmwsIHRoZXJtYWwtPnBpbmN0cmxfc3RhdGUpOwoKCglbIC4uLiBdCgpJcyBpdCB3cm9uZyA/
CgoKPiArCX0KPiArCj4gIAlmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2huX251bTsg
aSsrKSB7Cj4gIAkJZXJyb3IgPSByb2NrY2hpcF90aGVybWFsX3JlZ2lzdGVyX3NlbnNvcihwZGV2
LCB0aGVybWFsLAo+ICAJCQkJCQkmdGhlcm1hbC0+c2Vuc29yc1tpXSwKPiBAQCAtMTMzNyw4ICsx
MzY3LDggQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByb2NrY2hpcF90aGVybWFsX3N1c3Bl
bmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAKPiAgCWNsa19kaXNhYmxlKHRoZXJtYWwtPnBjbGsp
Owo+ICAJY2xrX2Rpc2FibGUodGhlcm1hbC0+Y2xrKTsKPiAtCj4gLQlwaW5jdHJsX3BtX3NlbGVj
dF9zbGVlcF9zdGF0ZShkZXYpOwo+ICsJaWYgKHRoZXJtYWwtPnRzaHV0X21vZGUgPT0gVFNIVVRf
TU9ERV9HUElPKQo+ICsJCXBpbmN0cmxfc2VsZWN0X3N0YXRlKHRoZXJtYWwtPnBpbmN0cmwsIHRo
ZXJtYWwtPmdwaW9fc3RhdGUpOwoKQW5kIHRoZW46CgkgcGluY3RybF9zZWxlY3Rfc3RhdGUodGhl
cm1hbC0+cGluY3RybCwgdGhlcm1hbC0+cGluY3RybF9zdGF0ZSk7Cgo+ICAKPiAgCXJldHVybiAw
Owo+ICB9Cj4gQEAgLTEzODMsNyArMTQxMyw4IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQg
cm9ja2NoaXBfdGhlcm1hbF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJZm9yIChpID0g
MDsgaSA8IHRoZXJtYWwtPmNoaXAtPmNobl9udW07IGkrKykKPiAgCQlyb2NrY2hpcF90aGVybWFs
X3RvZ2dsZV9zZW5zb3IoJnRoZXJtYWwtPnNlbnNvcnNbaV0sIHRydWUpOwo+ICAKPiAtCXBpbmN0
cmxfcG1fc2VsZWN0X2RlZmF1bHRfc3RhdGUoZGV2KTsKPiArCWlmICh0aGVybWFsLT50c2h1dF9t
b2RlID09IFRTSFVUX01PREVfR1BJTykKPiArCQlwaW5jdHJsX3NlbGVjdF9zdGF0ZSh0aGVybWFs
LT5waW5jdHJsLCB0aGVybWFsLT5vdHBfc3RhdGUpOwoKQW5kIHRoZW4KCXBpbmN0cmxfc2VsZWN0
X3N0YXRlKHRoZXJtYWwtPnBpbmN0cmwsIHRoZXJtYWwtPnBpbmN0cmxfc3RhdGUpOwoKPiAgCXJl
dHVybiAwOwo+ICB9Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9y
ZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAg
PGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDov
L3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5v
cmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
