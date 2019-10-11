Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7BAD40FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jd7jsTTnSo2qLQDxUpk8vwc7Z5DAVZxLV/dMwLK9m3Y=; b=NuOwVrRD60mS1k1jSf/mq/bhH4
	ubnpL2W3hbuZu5WnksTxZ7GOynsJQbJJ2lHgXLGMeI82w2tjUXg9q5fUjlBXNOOckyylqcFBPos8g
	eAFNgdVpymBhVaEoeDA7ciH7gr/JGVdzhaAMiPKbj/mZby0EQvQBrmSsjAFij6E/45AUQBidKQ//1
	DcdPITtcm9FM5eU11NAMdcMPfFd09oIXS5VB2DRx7Gu+2cCwYuzriSiemcP/WQsBad+1qBU3+HSnL
	6EwqEbbZLqVwRdobNmxQSgEMAefANID1P4V7nqii4s1DRdGGTTD/EyVacW5Sag5Cx9ROq7KlTRFw1
	iBj+zlig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIupy-0007wv-SZ; Fri, 11 Oct 2019 13:20:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIupk-0007wO-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:19:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id p7so10407768wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 06:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=3WqnFBtN99txOjHW8qFZ7VvrrzF2BjnHQs3onyzMvPs=;
 b=bH5CG0AW9kXASvJA2EuMJnKaKD7Fbs1GwNRinWUWTNTapEP8RrIptCMP1an49xbekJ
 H/3qiouCwCwQmtjegXgBKGYHApR1xTo11NC5DYgYsPTOeQGRoDPvtPnRqKg84HcAlqvO
 XRvXTQoaIKeYYrxABxAnEh0Qvzhqn4By2pZusdHwszJXbIb/NFeogtxxx6vNknOUUPy5
 RfDnt/1a4BbZriu5/MsIqONZBAi1MKpClV3PE8YTfrl7OOtrUxEVgeQSqiDMBL92j54u
 u4ZwCTTwFqwMacJBhOAq3ppU8n5FD0zr7DkSg35RtBGQhA8ISMcqUAddCt9zb4UvoSUc
 H1aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=3WqnFBtN99txOjHW8qFZ7VvrrzF2BjnHQs3onyzMvPs=;
 b=QkdIDMg8LoKRNNfhTVRUx62K5kjD19cU7ASAu5x+dKlba4fALzSVWy4qunOytwcUF7
 ++r/UU4fC7B8zNy3vc92CjOLqatNAYgmasaGOFpeyn2cp2aywoy3QtBCB7EY8hAk7Km7
 +z1PFFQWGW8Y/e6bxyKLk9/BIJ7WtvOl3lFK2PbjQHb7NEWHA1weCFfHgk4xvNUdNl/+
 SYbyEw8JEOrnSvJUbJY9HxzwnZNdbzKR8Gx1t/VVNOh86UpD8TH2nohXo1k/9rKGExT/
 BD4yUuOOiBmDY8MhwXaiB63ZKAYcLYXTMecf0BpZL2huVgvPtMPA53hZIIgszEN860BS
 Erog==
X-Gm-Message-State: APjAAAXbifCJpZxmcgdMI/KJCSNB9noKLiVv4np/Qu1s3EP9hRqspGHX
 ZIWgu3LnBIgIJ3sh5PG8Bpv+RA==
X-Google-Smtp-Source: APXvYqynWfJQdfki/cjqANCLobcJdHZS0I5wCNhJ1JZtTd6660Unv8vERen1T4YJoCu1nFkIJXw1vg==
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr3360919wml.142.1570799990277; 
 Fri, 11 Oct 2019 06:19:50 -0700 (PDT)
Received: from zen.linaroharston ([51.148.130.216])
 by smtp.gmail.com with ESMTPSA id f143sm12497795wme.40.2019.10.11.06.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 06:19:49 -0700 (PDT)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id E1BD11FF87;
 Fri, 11 Oct 2019 14:19:48 +0100 (BST)
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-5-git-send-email-Dave.Martin@arm.com>
User-agent: mu4e 1.3.5; emacs 27.0.50
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 04/12] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
In-reply-to: <1570733080-21015-5-git-send-email-Dave.Martin@arm.com>
Date: Fri, 11 Oct 2019 14:19:48 +0100
Message-ID: <87zhi7l8qz.fsf@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061952_781151_710114FF 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkRhdmUgTWFydGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPiB3cml0ZXM6Cgo+IENvbW1pdCBkNzFi
ZTJiNmMwZTEgKCJhcm02NDogY3B1ZmVhdHVyZTogRGV0ZWN0IFNTQlMgYW5kIGFkdmVydGlzZQo+
IHRvIHVzZXJzcGFjZSIpIGV4cG9zZXMgSURfQUE2NFBGUjFfRUwxIHRvIHVzZXJzcGFjZSwgYnV0
IGRpZG4ndAo+IHVwZGF0ZSB0aGUgZG9jdW1lbnRhdGlvbiB0byBtYXRjaC4KPgo+IEFkZCBpdC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IERhdmUgTWFydGluIDxEYXZlLk1hcnRpbkBhcm0uY29tPgo+Cj4g
LS0tCj4KPiBOb3RlIHRvIG1haW50YWluZXJzOgo+Cj4gICogVGhpcyBwYXRjaCBoYXMgYmVlbiBy
YWNpbmcgd2l0aCB2YXJpb3VzIG90aGVyIGF0dGVtcHRzIHRvIGZpeAo+ICAgIHRoZSBzYW1lIGRv
Y3VtZW50YXRpb24gaW4gdGhlIG1lYW50aW1lLgo+Cj4gICAgU2luY2UgdGhpcyBwYXRjaCBvbmx5
IGZpeGVzIHRoZSBkb2N1bWVudGluZyBmb3IgcHJlLWV4aXN0aW5nCj4gICAgZmVhdHVyZXMsIGl0
IGNhbiBzYWZlbHkgYmUgZHJvcHBlZCBpZiBhcHByb3ByaWF0ZS4KPgo+ICAgIFRoZSBfbmV3XyBk
b2N1bWVudGF0aW9uIHJlbGF0aW5nIHRvIEJUSSBmZWF0dXJlIHJlcG9ydGluZwo+ICAgIGlzIGlu
IGEgc3Vic2VxdWVudCBwYXRjaCwgYW5kIG5lZWRzIHRvIGJlIHJldGFpbmVkLgo+IC0tLQo+ICBE
b2N1bWVudGF0aW9uL2FybTY0L2NwdS1mZWF0dXJlLXJlZ2lzdGVycy5yc3QgfCAxNSArKysrKysr
KysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hcm02NC9jcHUtZmVhdHVyZS1yZWdp
c3RlcnMucnN0IGIvRG9jdW1lbnRhdGlvbi9hcm02NC9jcHUtZmVhdHVyZS1yZWdpc3RlcnMucnN0
Cj4gaW5kZXggMjk1NTI4Ny4uYjg2ODI4ZiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Fy
bTY0L2NwdS1mZWF0dXJlLXJlZ2lzdGVycy5yc3QKPiArKysgYi9Eb2N1bWVudGF0aW9uL2FybTY0
L2NwdS1mZWF0dXJlLXJlZ2lzdGVycy5yc3QKPiBAQCAtMTY4LDggKzE2OCwxNSBAQCBpbmZyYXN0
cnVjdHVyZToKPiAgICAgICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0t
LSstLS0tLS0tLS0rCj4KPgo+IC0gIDMpIE1JRFJfRUwxIC0gTWFpbiBJRCBSZWdpc3Rlcgo+ICsg
IDMpIElEX0FBNjRQRlIxX0VMMSAtIFByb2Nlc3NvciBGZWF0dXJlIFJlZ2lzdGVyIDEKPiArICAg
ICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLSstLS0tLS0tLS0rCj4g
KyAgICAgfCBOYW1lICAgICAgICAgICAgICAgICAgICAgICAgIHwgIGJpdHMgICB8IHZpc2libGUg
fAo+ICsgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0t
LS0tLSsKPiArICAgICB8IFNTQlMgICAgICAgICAgICAgICAgICAgICAgICAgfCBbNy00XSAgIHwg
ICAgeSAgICB8Cj4gKyAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0t
LS0rLS0tLS0tLS0tKwo+ICsKPgo+ICsgIDQpIE1JRFJfRUwxIC0gTWFpbiBJRCBSZWdpc3Rlcgo+
ICAgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tKy0tLS0tLS0t
LSsKPiAgICAgICB8IE5hbWUgICAgICAgICAgICAgICAgICAgICAgICAgfCAgYml0cyAgIHwgdmlz
aWJsZSB8Cj4gICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0r
LS0tLS0tLS0tKwo+IEBAIC0xODgsNyArMTk1LDcgQEAgaW5mcmFzdHJ1Y3R1cmU6Cj4gICAgIGFz
IGF2YWlsYWJsZSBvbiB0aGUgQ1BVIHdoZXJlIGl0IGlzIGZldGNoZWQgYW5kIGlzIG5vdCBhIHN5
c3RlbQo+ICAgICB3aWRlIHNhZmUgdmFsdWUuCj4KPiAtICA0KSBJRF9BQTY0SVNBUjFfRUwxIC0g
SW5zdHJ1Y3Rpb24gc2V0IGF0dHJpYnV0ZSByZWdpc3RlciAxCj4gKyAgNSkgSURfQUE2NElTQVIx
X0VMMSAtIEluc3RydWN0aW9uIHNldCBhdHRyaWJ1dGUgcmVnaXN0ZXIgMQoKSWYgSSdtIG5vdCBt
aXN0YWtlbiAucnN0IGhhcyBzdXBwb3J0IGZvciBhdXRvLWVudW1lcmF0aW9uIGlmIHRoZSAjCmNo
YXJhY3RlciBpcyB1c2VkLiBUaGF0IG1pZ2h0IHJlZHVjZSB0aGUgcGFpbiBvZiByZS1udW1iZXJp
bmcgaW4gZnV0dXJlLgoKPgo+ICAgICAgICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0r
LS0tLS0tLS0tKy0tLS0tLS0tLSsKPiAgICAgICB8IE5hbWUgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgYml0cyAgIHwgdmlzaWJsZSB8Cj4gQEAgLTIxMCw3ICsyMTcsNyBAQCBpbmZyYXN0cnVj
dHVyZToKPiAgICAgICB8IERQQiAgICAgICAgICAgICAgICAgICAgICAgICAgfCBbMy0wXSAgIHwg
ICAgeSAgICB8Cj4gICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0t
LS0rLS0tLS0tLS0tKwo+Cj4gLSAgNSkgSURfQUE2NE1NRlIyX0VMMSAtIE1lbW9yeSBtb2RlbCBm
ZWF0dXJlIHJlZ2lzdGVyIDIKPiArICA2KSBJRF9BQTY0TU1GUjJfRUwxIC0gTWVtb3J5IG1vZGVs
IGZlYXR1cmUgcmVnaXN0ZXIgMgo+Cj4gICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tKwo+ICAgICAgIHwgTmFtZSAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICBiaXRzICAgfCB2aXNpYmxlIHwKPiBAQCAtMjE4LDcgKzIyNSw3IEBAIGluZnJh
c3RydWN0dXJlOgo+ICAgICAgIHwgQVQgICAgICAgICAgICAgICAgICAgICAgICAgICB8IFszNS0z
Ml0gfCAgICB5ICAgIHwKPiAgICAgICArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0t
LS0tLS0tLSstLS0tLS0tLS0rCj4KPiAtICA2KSBJRF9BQTY0WkZSMF9FTDEgLSBTVkUgZmVhdHVy
ZSBJRCByZWdpc3RlciAwCj4gKyAgNykgSURfQUE2NFpGUjBfRUwxIC0gU1ZFIGZlYXR1cmUgSUQg
cmVnaXN0ZXIgMAo+Cj4gICAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0t
LS0tLS0rLS0tLS0tLS0tKwo+ICAgICAgIHwgTmFtZSAgICAgICAgICAgICAgICAgICAgICAgICB8
ICBiaXRzICAgfCB2aXNpYmxlIHwKCgotLQpBbGV4IEJlbm7DqWUKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
