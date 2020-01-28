Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDCB14BD68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYXTY9veGBKlEKS+a+/ssysQuUJ/vtOgv/zkuvvWLH8=; b=iVM9y715B0PCjU
	KHYiYCrtm3HGz1SbZkPDgGrNo7aXSS1A+xDRA0i4E/b4vjCeFXWqUvpSYVECdQP8SQs8BmWTYK0hb
	2JiGEfZhhTt2xE4vphdrsHEzeHrvyW6H/cU3Jt91JRroVgiFNxY1zCI8sH2VhHqPHsghxqawUdWDm
	hkJuBnanIvnwdrxqq5mxoO26p/3eLYmNdpEIMVvDmxjT0l47F9GM/ibZ81GIeLG3dd4Z30f5Ej3Pc
	ij17pAyLc0wPOfIvbtLXQQAhr8l1LIChh/u92+oxdwCYBPKBAhF8pjYqD36Fgb1quacDWNVBNH80A
	wE4nOXL7FvvSFzEee3Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTHm-0006kW-EW; Tue, 28 Jan 2020 16:00:18 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTHR-0006j2-T4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:59:59 +0000
Received: by mail-il1-x143.google.com with SMTP id l4so11058061ilj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 07:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=w4ohonp6++tc7WV/sPZwKkfZN7aW1XO2ASROEv1nRiU=;
 b=lIAeCkFhXtKcaKTzDLsiXbW2Ul2ROk9tb5PwiMDl/qJCGJ+ZSMAIZoTnpN8/KjHmuX
 SxlWPSts47s3FdhN9qe/baojNFdM5XSVtWYqE36fQmaZ25sLCxCD3MZbBrRjSaI+iQWK
 PlR/1AkzKpzTO4qNV7w57wm3961oum3bDHlO5GyL25C09Ec+87//WpH+YDxd80rhkqXr
 6I4Hm3J2nwoHXsQODKt+oEjzDYJJcVkKYNBeG/Q4nl/Qd/MFXh9ia5l6qmfIRqYWr/7s
 Q5SxKAzQ/giBRAgiB8iPG8CiaU57GF9fu98xJknuguPQs9aWZVc7+D6RGo7hieBAeDDH
 +LnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w4ohonp6++tc7WV/sPZwKkfZN7aW1XO2ASROEv1nRiU=;
 b=F8hNBGv0NrDM2+PoHMoPB5cVRxVJi9vJ2UzE24/65hmXkgwcdDtzHwDFk6+a3wfzby
 OxCkM2OJmm4pqPm2LAumM1ZfTEye8qiuWVD/Zdn9887hhOWdag7M+pRxD8peD92Fj5Pk
 qfVGemgt48spYx+ZlKBxfl+99Ug+HEwPybLh3at6E5GlnoJbrKXefwWuKnznjnOwry6B
 3EFY/GK9Qx6sIhfTOt6D5/BxsJ02G9zb80anyROGbYBQxUHAslypAzXjRYMO9P32e8i3
 dPMC4GqZUezyw91z4bmjr+OP5EgF8+EfQNoupZU36JgVeMsIjefCVlhYdDZ8g0fcDOqg
 bh5Q==
X-Gm-Message-State: APjAAAVsOz8YZTitR8h1t4k7S9JddxpzN6GVka4kQnpPR+fBdDodOxwe
 TtPF0ikldwams/unAec0O4Uw072j
X-Google-Smtp-Source: APXvYqwEH+xXx7KfDR76ROthSQWmNYsqJe8W5aR8XGWqgGAr0ee4xhb+Ck7XnHVGnn3Ly4TJztRBFg==
X-Received: by 2002:a92:3cc3:: with SMTP id j64mr12118361ilf.160.1580227194744; 
 Tue, 28 Jan 2020 07:59:54 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id e23sm1828838ild.37.2020.01.28.07.59.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 07:59:54 -0800 (PST)
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
To: Wei Yang <richardw.yang@linux.intel.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200128004301.GD20624@richard>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <d66bb20e-c0e7-caef-cbbc-aa216c2be7d6@gmail.com>
Date: Tue, 28 Jan 2020 18:59:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200128004301.GD20624@richard>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_075957_942471_86302832 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 aneesh.kumar@linux.ibm.com, linux-kernel@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjguMDEuMjAyMCAwMzo0MywgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPiBPbiBTdW4sIEphbiAyNiwg
MjAyMCBhdCAwNTo0Nzo1N1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDE4LjAx
LjIwMjAgMDI6MjIsIFdlaSBZYW5nINC/0LjRiNC10YI6Cj4+PiBVc2UgdGhlIGdlbmVyYWwgaGVs
cGVyIGluc3RlYWQgb2YgZG8gaXQgYnkgaGFuZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBXZWkg
WWFuZyA8cmljaGFyZHcueWFuZ0BsaW51eC5pbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICBtbS9tcmVt
YXAuYyB8IDcgKystLS0tLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL21tL21yZW1hcC5jIGIvbW0vbXJlbWFw
LmMKPj4+IGluZGV4IGMyYWY4YmE0YmE0My4uYTI1ODkxNGYzZWUxIDEwMDY0NAo+Pj4gLS0tIGEv
bW0vbXJlbWFwLmMKPj4+ICsrKyBiL21tL21yZW1hcC5jCj4+PiBAQCAtMjUzLDExICsyNTMsOCBA
QCB1bnNpZ25lZCBsb25nIG1vdmVfcGFnZV90YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2
bWEsCj4+PiAgCj4+PiAgCWZvciAoOyBvbGRfYWRkciA8IG9sZF9lbmQ7IG9sZF9hZGRyICs9IGV4
dGVudCwgbmV3X2FkZHIgKz0gZXh0ZW50KSB7Cj4+PiAgCQljb25kX3Jlc2NoZWQoKTsKPj4+IC0J
CW5leHQgPSAob2xkX2FkZHIgKyBQTURfU0laRSkgJiBQTURfTUFTSzsKPj4+IC0JCS8qIGV2ZW4g
aWYgbmV4dCBvdmVyZmxvd2VkLCBleHRlbnQgYmVsb3cgd2lsbCBiZSBvayAqLwo+Pj4gKwkJbmV4
dCA9IHBtZF9hZGRyX2VuZChvbGRfYWRkciwgb2xkX2VuZCk7Cj4+PiAgCQlleHRlbnQgPSBuZXh0
IC0gb2xkX2FkZHI7Cj4+PiAtCQlpZiAoZXh0ZW50ID4gb2xkX2VuZCAtIG9sZF9hZGRyKQo+Pj4g
LQkJCWV4dGVudCA9IG9sZF9lbmQgLSBvbGRfYWRkcjsKPj4+ICAJCW9sZF9wbWQgPSBnZXRfb2xk
X3BtZCh2bWEtPnZtX21tLCBvbGRfYWRkcik7Cj4+PiAgCQlpZiAoIW9sZF9wbWQpCj4+PiAgCQkJ
Y29udGludWU7Cj4+PiBAQCAtMzAxLDcgKzI5OCw3IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdl
X3RhYmxlcyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPj4+ICAKPj4+ICAJCWlmIChwdGVf
YWxsb2MobmV3X3ZtYS0+dm1fbW0sIG5ld19wbWQpKQo+Pj4gIAkJCWJyZWFrOwo+Pj4gLQkJbmV4
dCA9IChuZXdfYWRkciArIFBNRF9TSVpFKSAmIFBNRF9NQVNLOwo+Pj4gKwkJbmV4dCA9IHBtZF9h
ZGRyX2VuZChuZXdfYWRkciwgbmV3X2FkZHIgKyBsZW4pOwo+Pj4gIAkJaWYgKGV4dGVudCA+IG5l
eHQgLSBuZXdfYWRkcikKPj4+ICAJCQlleHRlbnQgPSBuZXh0IC0gbmV3X2FkZHI7Cj4+PiAgCQlt
b3ZlX3B0ZXModm1hLCBvbGRfcG1kLCBvbGRfYWRkciwgb2xkX2FkZHIgKyBleHRlbnQsIG5ld192
bWEsCj4+Pgo+Pgo+PiBIZWxsbyBXZWksCj4+Cj4+IFN0YXJ0aW5nIHdpdGggbmV4dC0yMDIwMDEy
MiwgSSdtIHNlZWluZyB0aGUgZm9sbG93aW5nIGluIEtNU0cgb24gTlZJRElBCj4+IFRlZ3JhIChB
Uk0zMik6Cj4+Cj4+ICBCVUc6IEJhZCByc3MtY291bnRlciBzdGF0ZSBtbToocHRydmFsKSB0eXBl
Ok1NX0FOT05QQUdFUyB2YWw6MTkwCj4+Cj4gCj4gVGhhbmtzLgo+IAo+IFdvdWxkIHlvdSBtaW5k
IGxldHRpbmcgbWUga25vdyB3aGljaCBjYXNlIHlvdSBhcmUgdGVzdGluZz8KCk5vdGhpbmcgc3Bl
Y2lhbCwgc3lzdGVtZCBzdGFydHMgdG8gZmFsbCBhcGFydCBkdXJpbmcgYm9vdC4KCj4gT3IgdGhl
IHNwZWNpYWwgdGhpbmcgaXMgMzItYml0IHBsYXRmb3JtPwpJIGhhdmUgYSBsaW1pdGVkIGtub3ds
ZWRnZSBhYm91dCBtbS8sIHNvIGNhbid0IHByb3ZpZGUgZGV0YWlsZWQgZXhwbGFuYXRpb24uCgpQ
bGVhc2UgdGFrZSBhIGxvb2sgYXQgdGhpczoKClsxXQpodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC92NS41L3NvdXJjZS9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3RhYmxlLTJsZXZlbC5o
I0wyMTAKClsyXQpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS41L3NvdXJjZS9p
bmNsdWRlL2FzbS1nZW5lcmljL3BndGFibGUuaCNMNTQ5CgpbM10KaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/
aWQ9YzBiYTEwYjUxMmViMmUyYTM4ODhiNmU2Y2MwZTA4OWY1ZTdhMTkxYgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
