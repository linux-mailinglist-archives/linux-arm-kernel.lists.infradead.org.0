Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10A71A9353
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 08:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7l53LWFRdv/i6TzBcVWvDTtHu1Kkt8mbnm3LD45Y7E=; b=Fplm7FZ7YVXZNZ
	0RFWtOXTItEVyIlYeZxloeUl0ApIOFUtzic8IMaYvIvZaYzomkOlW+nz6gaKfxO9MzG1FH38ssSU+
	FU+lhfrS78wb0gZ5h81luXvOxF9usrBrcclvrNsnoOYMzC9kuDAeSgSzhG+V7pxzG1Dz/EmnnIezw
	dBI5sw0Ez4JwnaB72uqWk8BBzGCaubO7yVmqc7MOBIdssos/3Mmkop9eGl5kOIwJuSd/RTARWdBEn
	UUDt21qKr0GMcZq0DPHGVPO9ozWb2cyeUFW7rgmDIdS4/s1zqKCxZ2L8d35uNNnG6Iiz0O6xfcKS5
	A38bkjGYZqTArap7sV+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jObeu-0005Mi-8J; Wed, 15 Apr 2020 06:36:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOben-0005MH-3g
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 06:36:22 +0000
Received: by mail-ed1-x544.google.com with SMTP id m12so3168240edl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 23:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ziy3CvjiTZBb7re9okjvNzQcGH3k+TOTS0/15gywnMU=;
 b=qqWsPrEf0Ts6quEdGNgBCMsV+kOpY8DsnLT8o+GDgNvhTV7DBX8PBknwe8j0CFEmZX
 jpltKjKxsibH1qtE9Pf+Yz7+KL62s7h7jGgyQlIBJ/TlhWE5yR2c4gr+7Tj1c78y1fr6
 +Zrz2j6Hmf3jl/P4hZRQjAS6AYMTJfyK4LyMEMf53j3sfn38rtV0w5wPuRetHtwAIhxz
 pWb4hDPYcN9P2BvtRDpRaqKHmXbtsK7GhxWOnwkikmDYVI0XvWIhVDDk0RLbEDIYG847
 +cFNtefbyrNvpUo935pS2ws6qM5Vz4D5kiUbknZ6Gro0unFWFR9g7XFcFYGMgY7GmiKA
 lYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ziy3CvjiTZBb7re9okjvNzQcGH3k+TOTS0/15gywnMU=;
 b=r2rcdFeeKH4urrZUjib6KhcD2By20NgRlnBOB8TW3s8cvRqLOUmKh0QVnI9JQmGOB5
 4y4bqs15v9Vf+YX2NyaYkpMZnuD3QJRGpT/7MRq87chPx84ylKNSfp68PRi1+murylot
 XvCEREYDFnV/uE6S1V4jGlM9TnIi13hPM+g0azeCDXq9qx0yeFggKTErebGeD1oxdpk/
 sR39xlF5t4jq5zeBbHkX6EN77b1e1W99XIaMgo5rVUDj2zjYiSZKGcv8jkqS49ZvWaT0
 bTMs6HwUD7NfGwR9Dcr/vkm1lAnluciKMsegtKyOwJcsOv1kaqCFYLWgREEVXedMumtd
 mFhg==
X-Gm-Message-State: AGi0PubWB/fmqclNqh+6ytCVHK16NsuF+rZ/NdTlMWjhOAyf5GEBGsMf
 P4FlT863Kqf906UN7iuBbZM=
X-Google-Smtp-Source: APiQypLBhzQGFSJJza9fhbUNOdf67Ws8AWLLrc2T019xWRRZvN78jvwPXZ4Cq/fMHCh3e7IoI3AkbQ==
X-Received: by 2002:aa7:cf15:: with SMTP id a21mr15771536edy.349.1586932578974; 
 Tue, 14 Apr 2020 23:36:18 -0700 (PDT)
Received: from [192.168.1.39] (116.red-83-42-57.dynamicip.rima-tde.net.
 [83.42.57.116])
 by smtp.gmail.com with ESMTPSA id y10sm2423364ejm.3.2020.04.14.23.36.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 23:36:18 -0700 (PDT)
Subject: Re: [PATCH v2] kvm_host: unify VM_STAT and VCPU_STAT definitions in a
 single place
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>, kvm@vger.kernel.org
References: <20200414155625.20559-1-eesposit@redhat.com>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>
Autocrypt: addr=f4bug@amsat.org; keydata=
 mQINBDU8rLoBEADb5b5dyglKgWF9uDbIjFXU4gDtcwiga9wJ/wX6xdhBqU8tlQ4BroH7AeRl
 u4zXP0QnBDAG7EetxlQzcfYbPmxFISWjckDBFvDbFsojrZmwF2/LkFSzlvKiN5KLghzzJhLO
 HhjGlF8deEZz/d/G8qzO9mIw8GIBS8uuWh6SIcG/qq7+y+2+aifaj92EdwU79apZepT/U3vN
 YrfcAuo1Ycy7/u0hJ7rlaFUn2Fu5KIgV2O++hHYtCCQfdPBg/+ujTL+U+sCDawCyq+9M5+LJ
 ojCzP9rViLZDd/gS6jX8T48hhidtbtsFRj/e9QpdZgDZfowRMVsRx+TB9yzjFdMO0YaYybXp
 dg/wCUepX5xmDBrle6cZ8VEe00+UQCAU1TY5Hs7QFfBbjgR3k9pgJzVXNUKcJ9DYQP0OBH9P
 ZbZvM0Ut2Bk6bLBO5iCVDOco0alrPkX7iJul2QWBy3Iy9j02GnA5jZ1Xtjr9kpCqQT+sRXso
 Vpm5TPGWaWljIeLWy/qL8drX1eyJzwTB3A36Ck4r3YmjMjfmvltSZB1uAdo1elHTlFEULpU/
 HiwvvqXQ9koB15U154VCuguvx/Qnboz8GFb9Uw8VyawzVxYVNME7xw7CQF8FYxzj6eI7rBf2
 Dj/II6wxWPgDEy3oUzuNOxTB7sT3b/Ym76yOJzWX5BylXQIJ5wARAQABtDFQaGlsaXBwZSBN
 YXRoaWV1LURhdWTDqSAoRjRCVUcpIDxmNGJ1Z0BhbXNhdC5vcmc+iQJVBBMBCAA/AhsPBgsJ
 CAcDAgYVCAIJCgsEFgIDAQIeAQIXgBYhBPqr514SkXIh3P1rsuPjLCzercDeBQJd660aBQks
 klzgAAoJEOPjLCzercDe2iMP+gMG2dUf+qHz2uG8nTBGMjgK0aEJrKVPodFA+iedQ5Kp3BMo
 jrTg3/DG1HMYdcvQu/NFLYwamUfUasyor1k+3dB23hY09O4xOsYJBWdilkBGsJTKErUmkUO2
 3J/kawosvYtJJSHUpw3N6mwz/iWnjkT8BPp7fFXSujV63aZWZINueTbK7Y8skFHI0zpype9s
 loU8xc4JBrieGccy3n4E/kogGrTG5jcMTNHZ106DsQkhFnjhWETp6g9xOKrzZQbETeRBOe4P
 sRsY9YSG2Sj+ZqmZePvO8LyzGRjYU7T6Z80S1xV0lH6KTMvq7vvz5rd92f3pL4YrXq+e//HZ
 JsiLen8LH/FRhTsWRgBtNYkOsd5F9NvfJtSM0qbX32cSXMAStDVnS4U+H2vCVCWnfNug2TdY
 7v4NtdpaCi4CBBa3ZtqYVOU05IoLnlx0miKTBMqmI05kpgX98pi2QUPJBYi/+yNu3fjjcuS9
 K5WmpNFTNi6yiBbNjJA5E2qUKbIT/RwQFQvhrxBUcRCuK4x/5uOZrysjFvhtR8YGm08h+8vS
 n0JCnJD5aBhiVdkohEFAz7e5YNrAg6kOA5IVRHB44lTBOatLqz7ntwdGD0rteKuHaUuXpTYy
 CRqCVAKqFJtxhvJvaX0vLS1Z2dwtDwhjfIdgPiKEGOgCNGH7R8l+aaM4OPOd
Message-ID: <b479e7ff-4534-5ced-e19b-2a2914905a8b@amsat.org>
Date: Wed, 15 Apr 2020 08:36:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200414155625.20559-1-eesposit@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_233621_153496_41980BC1 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [philippe.mathieu.daude[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kvm-ppc@vger.kernel.org, linux-s390@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8xNC8yMCA1OjU2IFBNLCBFbWFudWVsZSBHaXVzZXBwZSBFc3Bvc2l0byB3cm90ZToKPiBU
aGUgbWFjcm9zIFZNX1NUQVQgYW5kIFZDUFVfU1RBVCBhcmUgcmVkdW5kYW50bHkgaW1wbGVtZW50
ZWQgaW4gbXVsdGlwbGUKPiBmaWxlcywgZWFjaCB1c2VkIGJ5IGEgZGlmZmVyZW50IGFyY2hpdGVj
dXJlIHRvIGluaXRpYWxpemUgdGhlIGRlYnVnZnMKPiBlbnRyaWVzIGZvciBzdGF0aXN0aWNzLiBT
aW5jZSB0aGV5IGFsbCBoYXZlIHRoZSBzYW1lIHB1cnBvc2UsIHRoZXkgY2FuIGJlCj4gdW5pZmll
ZCBpbiBhIHNpbmdsZSBjb21tb24gZGVmaW5pdGlvbiBpbiBpbmNsdWRlL2xpbnV4L2t2bV9ob3N0
LmgKPiAKPiBTaWduZWQtb2ZmLWJ5OiBFbWFudWVsZSBHaXVzZXBwZSBFc3Bvc2l0byA8ZWVzcG9z
aXRAcmVkaGF0LmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9rdm0vZ3Vlc3QuYyAgICB8ICAyMyAr
Ky0tLQo+ICBhcmNoL21pcHMva3ZtL21pcHMuYyAgICAgIHwgIDYxICsrKysrKy0tLS0tLQo+ICBh
cmNoL3Bvd2VycGMva3ZtL2Jvb2szcy5jIHwgIDYxICsrKysrKy0tLS0tLQo+ICBhcmNoL3Bvd2Vy
cGMva3ZtL2Jvb2tlLmMgIHwgIDQxICsrKystLS0tCj4gIGFyY2gvczM5MC9rdm0va3ZtLXMzOTAu
YyAgfCAyMDMgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgYXJjaC94
ODYva3ZtL3g4Ni5jICAgICAgICB8ICA4MCArKysrKysrLS0tLS0tLS0KPiAgaW5jbHVkZS9saW51
eC9rdm1faG9zdC5oICB8ICAgNSArCj4gIDcgZmlsZXMgY2hhbmdlZCwgMjMxIGluc2VydGlvbnMo
KyksIDI0MyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vZ3Vl
c3QuYyBiL2FyY2gvYXJtNjQva3ZtL2d1ZXN0LmMKPiBpbmRleCAyM2ViZTUxNDEwZjAuLjg0MTdi
MjAwYmVjOSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2t2bS9ndWVzdC5jCj4gKysrIGIvYXJj
aC9hcm02NC9rdm0vZ3Vlc3QuYwo+IEBAIC0yOSwyMCArMjksMTcgQEAKPiAgCj4gICNpbmNsdWRl
ICJ0cmFjZS5oIgo+ICAKPiAtI2RlZmluZSBWTV9TVEFUKHgpIHsgI3gsIG9mZnNldG9mKHN0cnVj
dCBrdm0sIHN0YXQueCksIEtWTV9TVEFUX1ZNIH0KPiAtI2RlZmluZSBWQ1BVX1NUQVQoeCkgeyAj
eCwgb2Zmc2V0b2Yoc3RydWN0IGt2bV92Y3B1LCBzdGF0LngpLCBLVk1fU1RBVF9WQ1BVIH0KPiAt
Cj4gIHN0cnVjdCBrdm1fc3RhdHNfZGVidWdmc19pdGVtIGRlYnVnZnNfZW50cmllc1tdID0gewo+
IC0JVkNQVV9TVEFUKGhhbHRfc3VjY2Vzc2Z1bF9wb2xsKSwKPiAtCVZDUFVfU1RBVChoYWx0X2F0
dGVtcHRlZF9wb2xsKSwKPiAtCVZDUFVfU1RBVChoYWx0X3BvbGxfaW52YWxpZCksCj4gLQlWQ1BV
X1NUQVQoaGFsdF93YWtldXApLAo+IC0JVkNQVV9TVEFUKGh2Y19leGl0X3N0YXQpLAo+IC0JVkNQ
VV9TVEFUKHdmZV9leGl0X3N0YXQpLAo+IC0JVkNQVV9TVEFUKHdmaV9leGl0X3N0YXQpLAo+IC0J
VkNQVV9TVEFUKG1taW9fZXhpdF91c2VyKSwKPiAtCVZDUFVfU1RBVChtbWlvX2V4aXRfa2VybmVs
KSwKPiAtCVZDUFVfU1RBVChleGl0cyksCj4gKwlWQ1BVX1NUQVQoImhhbHRfc3VjY2Vzc2Z1bF9w
b2xsIiwgaGFsdF9zdWNjZXNzZnVsX3BvbGwpLAo+ICsJVkNQVV9TVEFUKCJoYWx0X2F0dGVtcHRl
ZF9wb2xsIiwgaGFsdF9hdHRlbXB0ZWRfcG9sbCksCj4gKwlWQ1BVX1NUQVQoImhhbHRfcG9sbF9p
bnZhbGlkIiwgaGFsdF9wb2xsX2ludmFsaWQpLAo+ICsJVkNQVV9TVEFUKCJoYWx0X3dha2V1cCIs
IGhhbHRfd2FrZXVwKSwKPiArCVZDUFVfU1RBVCgiaHZjX2V4aXRfc3RhdCIsIGh2Y19leGl0X3N0
YXQpLAo+ICsJVkNQVV9TVEFUKCJ3ZmVfZXhpdF9zdGF0Iiwgd2ZlX2V4aXRfc3RhdCksCj4gKwlW
Q1BVX1NUQVQoIndmaV9leGl0X3N0YXQiLCB3ZmlfZXhpdF9zdGF0KSwKPiArCVZDUFVfU1RBVCgi
bW1pb19leGl0X3VzZXIiLCBtbWlvX2V4aXRfdXNlciksCj4gKwlWQ1BVX1NUQVQoIm1taW9fZXhp
dF9rZXJuZWwiLCBtbWlvX2V4aXRfa2VybmVsKSwKPiArCVZDUFVfU1RBVCgiZXhpdHMiLCBleGl0
cyksCj4gIAl7IE5VTEwgfQo+ICB9OwoKUGF0Y2ggZWFzaWx5IHJldmlld2VkIHdpdGggLS13b3Jk
LWRpZmYuCgpbLi4uXQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2t2bV9ob3N0LmggYi9p
bmNsdWRlL2xpbnV4L2t2bV9ob3N0LmgKPiBpbmRleCA2ZDU4YmViNjU0NTQuLjJlNmVhZDg3Mjk1
NyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2t2bV9ob3N0LmgKPiArKysgYi9pbmNsdWRl
L2xpbnV4L2t2bV9ob3N0LmgKPiBAQCAtMTEzMCw2ICsxMTMwLDExIEBAIHN0cnVjdCBrdm1fc3Rh
dHNfZGVidWdmc19pdGVtIHsKPiAgI2RlZmluZSBLVk1fREJHRlNfR0VUX01PREUoZGJnZnNfaXRl
bSkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgCSgoZGJnZnNf
aXRlbSktPm1vZGUgPyAoZGJnZnNfaXRlbSktPm1vZGUgOiAwNjQ0KQo+ICAKPiArI2RlZmluZSBW
TV9TVEFUKG4sIHgsIC4uLikgCQkJCQkJCQkJCQkJCSAgIFwKPiArCXsgbiwgb2Zmc2V0b2Yoc3Ry
dWN0IGt2bSwgc3RhdC54KSwgS1ZNX1NUQVRfVk0sICMjIF9fVkFfQVJHU19fIH0KPiArI2RlZmlu
ZSBWQ1BVX1NUQVQobiwgeCwgLi4uKQkJCQkJCQkJCQkJCSAgIFwKCk5vdCBzdXJlIHdoaWxlIHlv
dSB1c2Ugc28gbWFueSB3aGl0ZXNwYWNlcyBoZXJlLi4uIChtYXliZSBQYW9sbyBjYW4Kc3RyaXAg
c29tZSB3aGVuIGFwcGx5aW5nPykuCgpPdGhlcndpc2UgaXQgbG9va3MgbmljZXIgdGhhdCB2MSwg
dGhhbmtzLgoKUmV2aWV3ZWQtYnk6IFBoaWxpcHBlIE1hdGhpZXUtRGF1ZMOpIDxmNGJ1Z0BhbXNh
dC5vcmc+Cgo+ICsJeyBuLCBvZmZzZXRvZihzdHJ1Y3Qga3ZtX3ZjcHUsIHN0YXQueCksIEtWTV9T
VEFUX1ZDUFUsICMjIF9fVkFfQVJHU19fIH0KPiArCj4gIGV4dGVybiBzdHJ1Y3Qga3ZtX3N0YXRz
X2RlYnVnZnNfaXRlbSBkZWJ1Z2ZzX2VudHJpZXNbXTsKPiAgZXh0ZXJuIHN0cnVjdCBkZW50cnkg
Kmt2bV9kZWJ1Z2ZzX2RpcjsKPiAgCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
