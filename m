Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68352714F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KgY/jy9uh7enT0/GKV/aALxW5CrWnnuV/6ySjfpV30=; b=G3fI1W0dgZiEIE
	ZU1RFasp4gVVJgI2kXr1bw8nIF7Y+ncH1GENDimk15MqKYPjrLBnsj3RjMDqD9dkxF2U0Oc+n9ehB
	sxFcRpucL3J+sKYoIAjSFjDfWtllkbGKK6cxudIP6JbgTj3OmPqEALg3SGxk7TcPtoCO0v73dQIsR
	JN/VQsf0Z058bH3WUZwENyEmrHmbZj3WC68cbtKWHvqSYJNEtNH4lrowKEduRTVyOFrXUkieaeUIS
	4BNPv/fTgZlwqTRRS1Y9f0MO4V/bxcADBTSxUjdDwDT7REyaGrtWUZVzd0XyqfcsFbBkjrw68DrYr
	iW5AhBfdkCG2a8PGxmoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqyi-0007I4-GO; Tue, 23 Jul 2019 09:21:00 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqyP-0007Gy-Mf
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:20:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id v85so28789681lfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 02:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=GRGRANQcmKxQudgDYzhBenNZAQ5yhd2GJzBykTOiWlc=;
 b=JCWzpfkH01b78Yh0JrjweiSOPh+bIsEiO6HewQLqBDHtB7noDKKLCgShoD3sACjN9l
 kwK3EgmdqL2wG+/Ote7IJKbYWb64D+Cqw8x/WB7/raxpoOhVPaTMyni+VIYABj6bPlvq
 AtAhTSjskNsZD8ahRyiB45q9jew3TZvIvwR2w+GN9DIfDLREgOuiWS1S2OadvLdznD9x
 a8NAqJRGqZTacnHKxrf6vdBehyzftQ3O66OluiqqmCd9r8dH+zdHu8R7x35V2wJL8uPi
 iIZQHzZ0/W85VJ+rrHpsI6ri1VzoyRxP2CjDO24UOUJPW1tCAeMkop8EP9hcwqJJoth+
 y9tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=GRGRANQcmKxQudgDYzhBenNZAQ5yhd2GJzBykTOiWlc=;
 b=FpQYzekstEuouGKwW0RzcbURzLCmaNeFnbPwQ8uCOMCQDaaPkozleuvNwLSeeRNTo3
 QqHZSDBrUeJTHy8b1d0fZ+NXudvn2vWX5VRyZvfsAgKnteXUNXStzUMTGQylkGRFP0VF
 U+F6mGrbdazoyNyYA92BQh2uEh0pTx0ELNF/cf90KoHd+u8575WTWCPE3WRq3eY0rLbi
 jkMlGdnBrw4EGze/P7ZCCL/7FyvMtluFv3ijtQWb2Ncvy7f7eVpqvyOeCzFrReTMu3CA
 +LtoBRyuQtxLxc5TyeLssykETyeoYu0jE+6oU3JqlF6OM7P62YfXTe1zcUzcURUYmS00
 JB1A==
X-Gm-Message-State: APjAAAVfviFLmITk++cNWugy31rk6o9pC/oS5v1ShxrdpLz7/4j0AKEQ
 6MjgKMCblC+LNwkrndeLJeQ=
X-Google-Smtp-Source: APXvYqyyF6Gz9sQ6FmT6/DerWqAbxGfTSrr5WAQHrO/0w2uzSbvk8fyzH2NJbiX3x23WwqcZh1tXhA==
X-Received: by 2002:a19:78e:: with SMTP id 136mr35480608lfh.48.1563873639783; 
 Tue, 23 Jul 2019 02:20:39 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id k4sm7920231ljj.41.2019.07.23.02.20.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 02:20:39 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v6 2/3] serial: imx: set_mctrl(): correctly restore
 autoRTS state
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563823331-5629-1-git-send-email-sorganov@gmail.com>
 <1563823331-5629-3-git-send-email-sorganov@gmail.com>
 <20190722202406.hr74mg64sxoovah7@pengutronix.de>
Date: Tue, 23 Jul 2019 12:20:38 +0300
In-Reply-To: <20190722202406.hr74mg64sxoovah7@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Mon,
 22 Jul 2019 22:24:06 +0200")
Message-ID: <87h87d1509.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_022041_763841_410E26DE 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMDoyMjoxMFBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gaW14X3VhcnRfc2V0X21jdHJsKCkgaGFwcGVuZWQgdG8gc2V0IFVDUjJf
Q1RTQyBiaXQgd2hlbmV2ZXIgVElPQ01fUlRTCj4+IHdhcyBzZXQsIG5vIG1hdHRlciBpZiBSVFMv
Q1RTIGhhbmRzaGFrZSBpcyBlbmFibGVkIG9yIG5vdC4gTm93IGZpeGVkIGJ5Cj4+IHR1cm5pbmcg
aGFuZHNoYWtlIG9uIG9ubHkgd2hlbiBDUlRTQ1RTIGJpdCBmb3IgdGhlIHBvcnQgaXMgc2V0Lgo+
Pgo+PiBBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KPj4gUmV2aWV3ZWQtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25p
eC5kZT4KPj4gVGVzdGVkLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+
Cj4+IFNpZ25lZC1vZmYtYnk6IFNlcmdleSBPcmdhbm92IDxzb3JnYW5vdkBnbWFpbC5jb20+Cj4+
IC0tLQo+PiAgZHJpdmVycy90dHkvc2VyaWFsL2lteC5jIHwgMTYgKysrKysrKysrKysrKystLQo+
PiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJp
YWwvaW14LmMKPj4gaW5kZXggMzJmMzZkOC4uMDU5YmEzNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy90dHkvc2VyaWFsL2lteC5jCj4+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwo+PiBA
QCAtOTc0LDEwICs5NzQsMjIgQEAgc3RhdGljIHZvaWQgaW14X3VhcnRfc2V0X21jdHJsKHN0cnVj
dCB1YXJ0X3BvcnQgKnBvcnQsIHVuc2lnbmVkIGludCBtY3RybCkKPj4gIAlpZiAoIShwb3J0LT5y
czQ4NS5mbGFncyAmIFNFUl9SUzQ4NV9FTkFCTEVEKSkgewo+PiAgCQl1MzIgdWNyMjsKPj4KPj4g
KwkJLyoKPj4gKwkJICogVHVybiBvZmYgYXV0b1JUUyBpZiBSVFMgaXMgbG93ZXJlZCBhbmQgcmVz
dG9yZSBhdXRvUlRTCj4+ICsJCSAqIHNldHRpbmcgaWYgUlRTIGlzIHJhaXNlZC4KPgo+ICJsb3dl
ciIgYW5kICJyYWlzaW5nIiBhcmUgbWlzbGVhZGluZyBoZXJlLiBJIHJlY29tbWVuZCBzdGlja2lu
ZyB0bwo+ICJhY3RpdmUiIGFuZCAiaW5hY3RpdmUiLgoKVGhpcyBpcyBjb3B5LXBhc3RlZCBmcm9t
IHRoZSA4MjUwIGRyaXZlci4gSSdkIHByZWZlciB0byBsZWF2ZSBpdCBhcyBpcy4KCj4KPj4gKwkJ
ICovCj4+ICAJCXVjcjIgPSBpbXhfdWFydF9yZWFkbChzcG9ydCwgVUNSMik7Cj4+ICAJCXVjcjIg
Jj0gfihVQ1IyX0NUUyB8IFVDUjJfQ1RTQyk7Cj4+IC0JCWlmIChtY3RybCAmIFRJT0NNX1JUUykK
Pj4gLQkJCXVjcjIgfD0gVUNSMl9DVFMgfCBVQ1IyX0NUU0M7Cj4+ICsJCWlmIChtY3RybCAmIFRJ
T0NNX1JUUykgewo+PiArCQkJdWNyMiB8PSBVQ1IyX0NUUzsKPj4gKwkJCS8qCj4+ICsJCQkgKiBV
Q1IyX0lSVFMgaXMgdW5zZXQgaWYgYW5kIG9ubHkgaWYgdGhlIHBvcnQgaXMKPj4gKwkJCSAqIGNv
bmZpZ3VyZWQgZm9yIENSVFNDVFMsIHNvIHdlIHVzZSBpbnZlcnRlZCBVQ1IyX0lSVFMKPj4gKwkJ
CSAqIHRvIGdldCB0aGUgc3RhdGUgdG8gcmVzdG9yZSB0by4KPj4gKwkJCSAqLwo+PiArCQkJaWYg
KCEodWNyMiAmIFVDUjJfSVJUUykpCj4+ICsJCQkJdWNyMiB8PSBVQ1IyX0NUU0M7Cj4+ICsJCX0K
Pgo+IElmIHlvdSB0ZWFjaCBpbXhfdWFydF9ydHNfYXV0byBhYm91dCBJUlRTIHRoaXMgZnVuY3Rp
b24gY291bGQgYmUgcmV1c2VkCj4gaGVyZSBJIHRoaW5rLgoKWWVhaCwgYnV0IGlteF91YXJ0X3J0
c19hdXRvX2lmX2NydHNjdHNfYW5kX3J0c19pc19hY3RpdmUoKSA/IEkgZmVlbApzb21ld2hhdCB1
bmNvbWZvcnRhYmxlIGFib3V0IHRoYXQgbWl4aW5nIG9mIGRpZmZlcmVudCBwdXJwb3Nlcy4KCkJl
c2lkZXMsIG9uZSBvZiB0aGUgcHVycG9zZXMgb2YgdGhlc2UgcGF0Y2ggc2VyaWVzIHdhcyB0byBn
ZXQgcmlkIG9mCmlteF91YXJ0X3J0c19hdXRvKCkgYXMgaXRzIG5hbWUgaXMgY29uZnVzaW5nIGlu
IHRoZSBjb250ZXh0IG9mIGV4aXN0aW5nCmlteF91YXJ0X3J0c19hY3RpdmUoKSBhbmQgaW14X3Vh
cnRfcnRzX2luYWN0aXZlKCksIGFzIEkgYWxyZWFkeQpleHBsYWluZWQgYmVmb3JlLgoKV2UgY2Fu
IHJlbmFtZSB0aGUgZnVuY3Rpb24gdG8gYXZvaWQgY29uZnVzaW9uLCBhZGQgeWV0IGFub3RoZXIg
Y2hlY2sgdG8KaXQsIGFuZCBjYWxsIGl0IGZyb20gMiBwbGFjZXMsIGJ1dCBpdCdzIHN0aWxsIHF1
ZXN0aW9uYWJsZSBpZiBpdCdzIGFuCmltcHJvdmVtZW50LCBhbmQgY291bGQgYmUgZG9uZSBhcyBh
IGZvbGxvdy11cCBzdGVwIGFueXdheS4gSXQgd2lsbCBsb29rCnNvbWV0aGluZyBsaWtlIHRoaXMg
dGhlbjoKCiAtLSA+OCAtLQoKICAgIHNlcmlhbDogaW14OiBmYWN0b3Igb3V0IGNvbW1vbiBjb2Rl
IGludG8gbmV3IGlteF91YXJ0X3NldF9hdXRvX3J0cygpCgoJTW9kaWZpZWQgICBkcml2ZXJzL3R0
eS9zZXJpYWwvaW14LmMKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyBiL2Ry
aXZlcnMvdHR5L3NlcmlhbC9pbXguYwppbmRleCBkOWE3M2M3Li5jOGI4NDdlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2lteC5j
CkBAIC05NTQsNiArOTU0LDIwIEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW14X3VhcnRfZ2V0X21j
dHJsKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCiAJcmV0dXJuIHJldDsKIH0KCisvKgorICogQ29t
cHV0ZSBhbmQgc2V0IGF1dG8gUlRTIGluICd1Y3IyJyBhY2NvcmRpbmcgdG8gdGhlIGN1cnJlbnQg
c3RhdGUgb2YgUlRTCisgKiBzaWduYWwgYW5kIENSVFNDVFMgc3RhdGUgb2YgcG9ydCBjb25maWd1
cmF0aW9uLgorICoKKyAqIFVzZSBpbnZlcnRlZCBVQ1IyX0lSVFMgdG8gZ2V0IHRoZSBzdGF0ZSBv
ZiBDUlRTQ1RTLCBhbmQgZG9uJ3QgbGV0IHJlY2VpdmVyCisgKiBjb250cm9sIFJUUyBvdXRwdXQg
aWYgUlRTIGlzIGluYWN0aXZlLgorICoKKyAqLworc3RhdGljIHZvaWQgaW14X3VhcnRfc2V0X2F1
dG9fcnRzKHUzMiAqdWNyMikKK3sKKwlpZiAoKCp1Y3IyICYgVUNSMl9DVFMpICYmICEoKnVjcjIg
JiBVQ1IyX0lSVFMpKQorCQkqdWNyMiB8PSBVQ1IyX0NUU0M7Cit9CisKIC8qIGNhbGxlZCB3aXRo
IHBvcnQubG9jayB0YWtlbiBhbmQgaXJxcyBvZmYgKi8KIHN0YXRpYyB2b2lkIGlteF91YXJ0X3Nl
dF9tY3RybChzdHJ1Y3QgdWFydF9wb3J0ICpwb3J0LCB1bnNpZ25lZCBpbnQgbWN0cmwpCiB7CkBA
IC05NzEsMTMgKzk4NSw3IEBAIHN0YXRpYyB2b2lkIGlteF91YXJ0X3NldF9tY3RybChzdHJ1Y3Qg
dWFydF9wb3J0ICpwb3J0LCB1bnNpZ25lZCBpbnQgbWN0cmwpCiAJCXVjcjIgJj0gfihVQ1IyX0NU
UyB8IFVDUjJfQ1RTQyk7CiAJCWlmIChtY3RybCAmIFRJT0NNX1JUUykgewogCQkJdWNyMiB8PSBV
Q1IyX0NUUzsKLQkJCS8qCi0JCQkgKiBVQ1IyX0lSVFMgaXMgdW5zZXQgaWYgYW5kIG9ubHkgaWYg
dGhlIHBvcnQgaXMKLQkJCSAqIGNvbmZpZ3VyZWQgZm9yIENSVFNDVFMsIHNvIHdlIHVzZSBpbnZl
cnRlZCBVQ1IyX0lSVFMKLQkJCSAqIHRvIGdldCB0aGUgc3RhdGUgdG8gcmVzdG9yZSB0by4KLQkJ
CSAqLwotCQkJaWYgKCEodWNyMiAmIFVDUjJfSVJUUykpCi0JCQkJdWNyMiB8PSBVQ1IyX0NUU0M7
CisJCQlpbXhfdWFydF9zZXRfYXV0b19ydHMoJnVjcjIpOwogCQl9CiAJCWlteF91YXJ0X3dyaXRl
bChzcG9ydCwgdWNyMiwgVUNSMik7CiAJfQpAQCAtMTU5NCwxMiArMTYwMiw3IEBAIGlteF91YXJ0
X3NldF90ZXJtaW9zKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHN0cnVjdCBrdGVybWlvcyAqdGVy
bWlvcywKIAkJCWlteF91YXJ0X3J0c19pbmFjdGl2ZShzcG9ydCwgJnVjcjIpOwoKIAl9IGVsc2Ug
aWYgKHRlcm1pb3MtPmNfY2ZsYWcgJiBDUlRTQ1RTKSB7Ci0JCS8qCi0JCSAqIE9ubHkgbGV0IHJl
Y2VpdmVyIGNvbnRyb2wgUlRTIG91dHB1dCBpZiB3ZSB3ZXJlIG5vdCByZXF1ZXN0ZWQKLQkJICog
dG8gaGF2ZSBSVFMgaW5hY3RpdmUgKHdoaWNoIHRoZW4gc2hvdWxkIHRha2UgcHJlY2VkZW5jZSku
Ci0JCSAqLwotCQlpZiAodWNyMiAmIFVDUjJfQ1RTKQotCQkJdWNyMiB8PSBVQ1IyX0NUU0M7CisJ
CWlteF91YXJ0X3NldF9hdXRvX3J0cygmdWNyMik7CiAJfQoKIAlpZiAodGVybWlvcy0+Y19jZmxh
ZyAmIENSVFNDVFMpCgoKCi0tIFNlcmdleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
