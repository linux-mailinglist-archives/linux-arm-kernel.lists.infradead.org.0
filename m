Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC59113E89
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lF+VYIWM+VeXkKa4FDPPW8vC37Nnol8CXJVUweWIWpY=; b=QdAlBABq+qRGuig6DlBdDtNhy
	g9haUK+8G2MRJyK/I916yTdq8acfbkdWlKu43cm1tIUG7kCYLQI+bJDjRj8QhMJJ/KPOiuOsQw7ih
	PKbPQRjJ2iYA7da+IBTGSwEEFJN/ZXBqMtKb6xK3do91rsYoWOU2VpLZPaly/VmLWCnIsaAQVxKc1
	EDmrXpyvJzHQ8EnH0tY0mTQf8j/H5kU+bieTlREgQm/+gX9fvWv0SxQhnFrYs/1tNP9UXkvZPg3Zy
	CjaardeCifQAFnbOvh/Zlyb9FB3rGLYq3xBTR6N339QDMLKIj5U63Zyh4NSSl8Ocuv1IsTB154XeX
	aL8Iqy0RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnlu-0008Av-35; Thu, 05 Dec 2019 09:50:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnli-0008AQ-Ft
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:49:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so2662602wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 01:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VDCRarATB8BrPGGFa2oJ0ZXIsVlkqssojKkWxJIt7Sw=;
 b=IUFpBprd5cUy49LefBNJcPOz24gxeLYCdnSeVp1swiaikpzNAnnAlqYiGzP2niYWe1
 UvdkMutU0vvWqvDe5BEGqWYvlx9yhm3cpLv7F5nFIBe47KnZpscevQ5mDt8wa25lMhfe
 OnnNqqFGtiXDZ6ApeG7JZWxVHK7UdgDoHf/HFRbFRwa7A81/W5jojgvuKTj1Auy2wECl
 4MMqj9BXx1Ejr3J6Qjk2ENvFaFaLhp8IbqYv51GqaO3KSvVxPFoGi6+bvxgWyiFHdgmU
 Zrh76yVlrfzDW+Ku65z/PfC4NnPmC69s+TonPU3vk+mwQfNOcN3DGhmpFhEMmaaVHTqP
 KD2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VDCRarATB8BrPGGFa2oJ0ZXIsVlkqssojKkWxJIt7Sw=;
 b=U4Y5vwoTmHiyWzfADGZmnS7ZELswScVULs8GWT53qAh/OhjfMIb49md/jQ02LiRt7X
 B/hCoQ/ABjdWa2nfywGuxNEJZv+VYjXJ998lk4+bfm+9+2cM5IQ0awJiN2ReN1EId9a2
 N3OeOdzXK5klSXE+NEzU9yG/hjoS7QzXV7kmgxPWP1HIE3EGM/4BUALor5mMtQAuptxv
 qRTWJN6WBSYm1MTI38xGxd1YeTCPPmsV+79P4xsGoC4KJm6Oajd3mi01/gaSKC6Ng079
 B6mM7ryRLsdsK6/EFxhBqhLhr0Nx0cOmcfip8GzHC+XwK7ulTwIw/YoTAR95xLt0Xxnb
 hUog==
X-Gm-Message-State: APjAAAVaghz5Yo/eDtawEa6O5BX6dLdzgwl0KwQRlPvFbfGy34TeUmc2
 Ws38GEhgxRQW38KtWrt2w5M=
X-Google-Smtp-Source: APXvYqxBtpkgOdAW7CRYJrvAlE0K8uKX4b6YMw5evwxxJGel49FacekG2njBKu1+ODO53PFLBi35DQ==
X-Received: by 2002:adf:eb46:: with SMTP id u6mr9246213wrn.239.1575539393159; 
 Thu, 05 Dec 2019 01:49:53 -0800 (PST)
Received: from [192.168.1.35] (182.red-88-21-103.staticip.rima-tde.net.
 [88.21.103.182])
 by smtp.gmail.com with ESMTPSA id u18sm11562183wrt.26.2019.12.05.01.49.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 01:49:52 -0800 (PST)
Subject: Re: [PATCH v3 07/15] KVM: Refactor error handling for setting memory
 region
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>
References: <20191024230744.14543-1-sean.j.christopherson@intel.com>
 <20191024230744.14543-8-sean.j.christopherson@intel.com>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>
Message-ID: <3b6cd050-2551-d262-aded-051e25044519@amsat.org>
Date: Thu, 5 Dec 2019 10:49:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191024230744.14543-8-sean.j.christopherson@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_014954_555241_489E3585 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (philippe.mathieu.daude[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMjUvMTkgMTowNyBBTSwgU2VhbiBDaHJpc3RvcGhlcnNvbiB3cm90ZToKPiBSZXBsYWNl
IGEgYmlnIHBpbGUgbycgZ290b3Mgd2l0aCByZXR1cm5zIHRvIG1ha2UgaXQgbW9yZSBvYnZpb3Vz
IHdoYXQKPiBlcnJvciBjb2RlIGlzIGJlaW5nIHJldHVybmVkLCBhbmQgdG8gcHJlcGFyZSBmb3Ig
cmVmYWN0b3JpbmcgdGhlCj4gZnVuY3Rpb25hbCwgaS5lLiBwb3N0LWNoZWNrcywgcG9ydGlvbiBv
ZiBfX2t2bV9zZXRfbWVtb3J5X3JlZ2lvbigpLgo+IAo+IFJldmlld2VkLWJ5OiBKYW5vc2NoIEZy
YW5rIDxmcmFua2phQGxpbnV4LmlibS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU2VhbiBDaHJpc3Rv
cGhlcnNvbiA8c2Vhbi5qLmNocmlzdG9waGVyc29uQGludGVsLmNvbT4KPiAtLS0KPiAgIHZpcnQv
a3ZtL2t2bV9tYWluLmMgfCA0MCArKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2t2bV9tYWluLmMgYi92aXJ0L2t2bS9rdm1fbWFp
bi5jCj4gaW5kZXggYTQzOTAyZDkwMzZkLi5lMmY0N2Q2MGY2OTYgMTAwNjQ0Cj4gLS0tIGEvdmly
dC9rdm0va3ZtX21haW4uYwo+ICsrKyBiL3ZpcnQva3ZtL2t2bV9tYWluLmMKPiBAQCAtOTQyLDM0
ICs5NDIsMzMgQEAgaW50IF9fa3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwK
PiAgIAo+ICAgCXIgPSBjaGVja19tZW1vcnlfcmVnaW9uX2ZsYWdzKG1lbSk7Cj4gICAJaWYgKHIp
Cj4gLQkJZ290byBvdXQ7Cj4gKwkJcmV0dXJuIHI7Cj4gICAKPiAtCXIgPSAtRUlOVkFMOwo+ICAg
CWFzX2lkID0gbWVtLT5zbG90ID4+IDE2Owo+ICAgCWlkID0gKHUxNiltZW0tPnNsb3Q7Cj4gICAK
PiAgIAkvKiBHZW5lcmFsIHNhbml0eSBjaGVja3MgKi8KPiAgIAlpZiAobWVtLT5tZW1vcnlfc2l6
ZSAmIChQQUdFX1NJWkUgLSAxKSkKPiAtCQlnb3RvIG91dDsKPiArCQlyZXR1cm4gLUVJTlZBTDsK
PiAgIAlpZiAobWVtLT5ndWVzdF9waHlzX2FkZHIgJiAoUEFHRV9TSVpFIC0gMSkpCj4gLQkJZ290
byBvdXQ7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJLyogV2UgY2FuIHJlYWQgdGhlIGd1ZXN0
IG1lbW9yeSB3aXRoIF9feHh4X3VzZXIoKSBsYXRlciBvbi4gKi8KPiAgIAlpZiAoKGlkIDwgS1ZN
X1VTRVJfTUVNX1NMT1RTKSAmJgo+ICAgCSAgICAoKG1lbS0+dXNlcnNwYWNlX2FkZHIgJiAoUEFH
RV9TSVpFIC0gMSkpIHx8Cj4gICAJICAgICAhYWNjZXNzX29rKCh2b2lkIF9fdXNlciAqKSh1bnNp
Z25lZCBsb25nKW1lbS0+dXNlcnNwYWNlX2FkZHIsCj4gICAJCQltZW0tPm1lbW9yeV9zaXplKSkp
Cj4gLQkJZ290byBvdXQ7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJaWYgKGFzX2lkID49IEtW
TV9BRERSRVNTX1NQQUNFX05VTSB8fCBpZCA+PSBLVk1fTUVNX1NMT1RTX05VTSkKPiAtCQlnb3Rv
IG91dDsKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAlpZiAobWVtLT5ndWVzdF9waHlzX2FkZHIg
KyBtZW0tPm1lbW9yeV9zaXplIDwgbWVtLT5ndWVzdF9waHlzX2FkZHIpCj4gLQkJZ290byBvdXQ7
Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gICAKPiAgIAlzbG90ID0gaWRfdG9fbWVtc2xvdChfX2t2
bV9tZW1zbG90cyhrdm0sIGFzX2lkKSwgaWQpOwo+ICAgCWJhc2VfZ2ZuID0gbWVtLT5ndWVzdF9w
aHlzX2FkZHIgPj4gUEFHRV9TSElGVDsKPiAgIAlucGFnZXMgPSBtZW0tPm1lbW9yeV9zaXplID4+
IFBBR0VfU0hJRlQ7Cj4gICAKPiAgIAlpZiAobnBhZ2VzID4gS1ZNX01FTV9NQVhfTlJfUEFHRVMp
Cj4gLQkJZ290byBvdXQ7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gICAKPiAgIAluZXcgPSBvbGQg
PSAqc2xvdDsKPiAgIAo+IEBAIC05ODYsMjAgKzk4NSwxOCBAQCBpbnQgX19rdm1fc2V0X21lbW9y
eV9yZWdpb24oc3RydWN0IGt2bSAqa3ZtLAo+ICAgCQkJaWYgKChuZXcudXNlcnNwYWNlX2FkZHIg
IT0gb2xkLnVzZXJzcGFjZV9hZGRyKSB8fAo+ICAgCQkJICAgIChucGFnZXMgIT0gb2xkLm5wYWdl
cykgfHwKPiAgIAkJCSAgICAoKG5ldy5mbGFncyBeIG9sZC5mbGFncykgJiBLVk1fTUVNX1JFQURP
TkxZKSkKPiAtCQkJCWdvdG8gb3V0Owo+ICsJCQkJcmV0dXJuIC1FSU5WQUw7Cj4gICAKPiAgIAkJ
CWlmIChiYXNlX2dmbiAhPSBvbGQuYmFzZV9nZm4pCj4gICAJCQkJY2hhbmdlID0gS1ZNX01SX01P
VkU7Cj4gICAJCQllbHNlIGlmIChuZXcuZmxhZ3MgIT0gb2xkLmZsYWdzKQo+ICAgCQkJCWNoYW5n
ZSA9IEtWTV9NUl9GTEFHU19PTkxZOwo+IC0JCQllbHNlIHsgLyogTm90aGluZyB0byBjaGFuZ2Uu
ICovCj4gLQkJCQlyID0gMDsKPiAtCQkJCWdvdG8gb3V0Owo+IC0JCQl9Cj4gKwkJCWVsc2UgLyog
Tm90aGluZyB0byBjaGFuZ2UuICovCj4gKwkJCQlyZXR1cm4gMDsKPiAgIAkJfQo+ICAgCX0gZWxz
ZSB7Cj4gICAJCWlmICghb2xkLm5wYWdlcykKPiAtCQkJZ290byBvdXQ7Cj4gKwkJCXJldHVybiAt
RUlOVkFMOwo+ICAgCj4gICAJCWNoYW5nZSA9IEtWTV9NUl9ERUxFVEU7Cj4gICAJCW5ldy5iYXNl
X2dmbiA9IDA7Cj4gQEAgLTEwMDgsMjkgKzEwMDUsMjkgQEAgaW50IF9fa3ZtX3NldF9tZW1vcnlf
cmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwKPiAgIAo+ICAgCWlmICgoY2hhbmdlID09IEtWTV9NUl9D
UkVBVEUpIHx8IChjaGFuZ2UgPT0gS1ZNX01SX01PVkUpKSB7Cj4gICAJCS8qIENoZWNrIGZvciBv
dmVybGFwcyAqLwo+IC0JCXIgPSAtRUVYSVNUOwo+ICAgCQlrdm1fZm9yX2VhY2hfbWVtc2xvdChz
bG90LCBfX2t2bV9tZW1zbG90cyhrdm0sIGFzX2lkKSkgewo+ICAgCQkJaWYgKHNsb3QtPmlkID09
IGlkKQo+ICAgCQkJCWNvbnRpbnVlOwo+ICAgCQkJaWYgKCEoKGJhc2VfZ2ZuICsgbnBhZ2VzIDw9
IHNsb3QtPmJhc2VfZ2ZuKSB8fAo+ICAgCQkJICAgICAgKGJhc2VfZ2ZuID49IHNsb3QtPmJhc2Vf
Z2ZuICsgc2xvdC0+bnBhZ2VzKSkpCj4gLQkJCQlnb3RvIG91dDsKPiArCQkJCXJldHVybiAtRUVY
SVNUOwo+ICAgCQl9Cj4gICAJfQo+ICAgCj4gLQlyID0gLUVOT01FTTsKPiAtCj4gICAJLyogQWxs
b2NhdGUvZnJlZSBwYWdlIGRpcnR5IGJpdG1hcCBhcyBuZWVkZWQgKi8KPiAgIAlpZiAoIShuZXcu
ZmxhZ3MgJiBLVk1fTUVNX0xPR19ESVJUWV9QQUdFUykpCj4gICAJCW5ldy5kaXJ0eV9iaXRtYXAg
PSBOVUxMOwo+ICAgCWVsc2UgaWYgKCFuZXcuZGlydHlfYml0bWFwKSB7Cj4gLQkJaWYgKGt2bV9j
cmVhdGVfZGlydHlfYml0bWFwKCZuZXcpIDwgMCkKPiAtCQkJZ290byBvdXQ7Cj4gKwkJciA9IGt2
bV9jcmVhdGVfZGlydHlfYml0bWFwKCZuZXcpOwo+ICsJCWlmIChyKQo+ICsJCQlyZXR1cm4gcjsK
ClJldmlld2VkLWJ5OiBQaGlsaXBwZSBNYXRoaWV1LURhdWTDqSA8ZjRidWdAYW1zYXQub3JnPgoK
PiAgIAl9Cj4gICAKPiAgIAlzbG90cyA9IGt2emFsbG9jKHNpemVvZihzdHJ1Y3Qga3ZtX21lbXNs
b3RzKSwgR0ZQX0tFUk5FTF9BQ0NPVU5UKTsKPiAtCWlmICghc2xvdHMpCj4gKwlpZiAoIXNsb3Rz
KSB7Cj4gKwkJciA9IC1FTk9NRU07Cj4gICAJCWdvdG8gb3V0X2JpdG1hcDsKPiArCX0KPiAgIAlt
ZW1jcHkoc2xvdHMsIF9fa3ZtX21lbXNsb3RzKGt2bSwgYXNfaWQpLCBzaXplb2Yoc3RydWN0IGt2
bV9tZW1zbG90cykpOwo+ICAgCj4gICAJaWYgKChjaGFuZ2UgPT0gS1ZNX01SX0RFTEVURSkgfHwg
KGNoYW5nZSA9PSBLVk1fTVJfTU9WRSkpIHsKPiBAQCAtMTA4MSw3ICsxMDc4LDYgQEAgaW50IF9f
a3ZtX3NldF9tZW1vcnlfcmVnaW9uKHN0cnVjdCBrdm0gKmt2bSwKPiAgIG91dF9iaXRtYXA6Cj4g
ICAJaWYgKG5ldy5kaXJ0eV9iaXRtYXAgJiYgIW9sZC5kaXJ0eV9iaXRtYXApCj4gICAJCWt2bV9k
ZXN0cm95X2RpcnR5X2JpdG1hcCgmbmV3KTsKPiAtb3V0Ogo+ICAgCXJldHVybiByOwo+ICAgfQo+
ICAgRVhQT1JUX1NZTUJPTF9HUEwoX19rdm1fc2V0X21lbW9yeV9yZWdpb24pOwo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
