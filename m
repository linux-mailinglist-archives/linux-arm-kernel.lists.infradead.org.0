Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B357851D1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 23:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/E79yKZoJcC19hkSRNJqkZTYROvrgrvGmjLYKteTt0=; b=DLZieQJr0RCMVF
	gVT+hNEtO2tykzlRG+AduTsOfGYNKS9mED6gRaScnZJ/hD3M4P54/rqYOoI0JWzXYtCsxv7RKgqcq
	5hFDXM4H6dUbKBMls7GKGITI+4/z0ZLbNBCsXOcgbpQBiYfAR7e10zCeMhEO5xJOFhVcvmzzmf5mz
	pDfBFI3I0JJnv1Hpplbpr3o0lgPOaHHx8PvgI13+gshBJbr3/9Fhkd69qyeFHSXNVxAQEgOje7hEx
	Y3EKef1CG+xM6HiwoMVrsqOYe5tMMoudyXQ0fw9s+vXk73hj72LGxanpmQ8Dp9ELbn6zkDbjagcPg
	6dD1LXgbAc6U8LEMuSpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWYB-0001Ul-Bc; Mon, 24 Jun 2019 21:30:55 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWXz-0001UM-8b
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 21:30:44 +0000
Received: by mail-qt1-x844.google.com with SMTP id i34so16148802qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 14:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IdPYB32R1Ky5udWdlDMBAJnCn+Bo2KtPbU6CqfZba4M=;
 b=YtNTjUwedsLsfc7DrryL4Gz7SHsyOwurki3ZAuLGi5jv3uoV1XDzNuVshE2rgNJNk7
 7B4h1/7Ftgrcz4FUW9IG5jLOzQmp+3MiTHbK1xzrjDwrPmaEvaaCsHhik+IX27Rxptfy
 hCbmTnibUCjBBtgsebBw1Yu7PyaULyPUdqE0uikoDJe1LStMwO3JfI7lG38VrHZ8Vlsf
 C8N0Y39Vin7o/umAsyJo603Fl/rEM30epk4k/3BDRXauVyd49VRXp2mTLfwCaSwo+ryL
 CCfu6apCDfSUOfIcf6TMIT6ubmfzCP3IGRY2YjyczjnEeDrzIjdliMcKaAMpp/KNc8aa
 IOzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IdPYB32R1Ky5udWdlDMBAJnCn+Bo2KtPbU6CqfZba4M=;
 b=AA+PHfe6aZcvVpObBxNxCrC8+aTKMx8hWOziH4IKK6G+I9pd23ZO8GCTiA7EfAVLJI
 cgMd9Dd1BgSG33+VxdAwOPoUEXnIYp/pAXQcAUq9bUWDYUHPerE56BGpWaigqMs8HMvP
 YdGZBL9bgungSmm+bXSN2FJ3hLERmfMI+Y1n52hirUNyGQAJSyBvqbcCFxUeu4XJtOfp
 K0/cKhW1xWAbmlIJJXK4Dv80p5YoHw7dV3ruXmwpe3u1psNQWLrM70XyPa0hvigANz5A
 KnADH9PuAU8gqq3WaR4bNSSb4xopCrJYGjcyi2doKy4tfp4b3B6jIIg6HkyZdrhzLi5f
 4Bhw==
X-Gm-Message-State: APjAAAXXuw3JwmJsv23Elsnv0CRYF31q8Gis5rNwrjexCyGwIaXhWzsu
 4bB1MDAi6uFkCsxRGSt6sFJ+4Q==
X-Google-Smtp-Source: APXvYqyS6XZTOn9QKS3QHPK7KdIUEBDmjNO9cZeXeZ9E/jUJ7+RGxN37MlErmlyPXHlBJErk3AADkg==
X-Received: by 2002:ac8:1946:: with SMTP id g6mr44679856qtk.225.1561411841994; 
 Mon, 24 Jun 2019 14:30:41 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id s23sm7340370qtk.31.2019.06.24.14.30.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 14:30:41 -0700 (PDT)
Message-ID: <1561411839.5154.60.camel@lca.pw>
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will@kernel.org>
Date: Mon, 24 Jun 2019 17:30:39 -0400
In-Reply-To: <1561381129.5154.55.camel@lca.pw>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
 <1560514539.5154.20.camel@lca.pw>
 <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
 <EC704BC3-62FF-4DCE-8127-40279ED50D65@lca.pw>
 <20190624093507.6m2quduiacuot3ne@willie-the-truck>
 <1561381129.5154.55.camel@lca.pw>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_143043_365155_FACB9464 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U28gdGhlIHByb2JsZW0gaXMgdGhhdCBpcGNnZXRfcHVibGljKCkgaGFzIGhlbGQgdGhlIHNlbWFw
aG9yZSAiaWRzLT5yd3NlbSIgZm9yCnRvbyBsb25nIHNlZW1zIHVubmVjZXNzYXJpbHkgYW5kIHRo
ZW4gZ29lcyB0byBzbGVlcCBzb21ldGltZXMgZHVlIHRvIGRpcmVjdApyZWNsYWltIChvdGhlciB0
aW1lcyBMVFAgaHVnZW1tYXAwNSBbMV0gaGFzwqBodWdldGxiX2ZpbGVfc2V0dXAoKSByZXR1cm5z
Ci1FTk9NRU0pLAoKW8KgwqA3ODguNzY1NzM5XVsgVDEzMTVdIElORk86IHRhc2sgaHVnZW1tYXAw
NTo1MDAxIGNhbid0IGRpZSBmb3IgbW9yZSB0aGFuIDEyMgpzZWNvbmRzLgpbwqDCoDc4OC43NzM1
MTJdWyBUMTMxNV0gaHVnZW1tYXAwNcKgwqDCoMKgwqDCoFLCoMKgcnVubmluZyB0YXNrwqDCoMKg
wqAyNTYwMMKgwqA1MDAxwqDCoMKgwqDCoMKgMQoweDAwMDAwMDBkClvCoMKgNzg4Ljc4MTM0OF1b
IFQxMzE1XSBDYWxsIHRyYWNlOgpbwqDCoDc4OC43ODQ1MzZdWyBUMTMxNV3CoMKgX19zd2l0Y2hf
dG8rMHgyZTAvMHgzN2MKW8KgwqA3ODguNzg4ODQ4XVsgVDEzMTVdwqDCoHRyeV90b19mcmVlX3Bh
Z2VzKzB4NjE0LzB4OTM0ClvCoMKgNzg4Ljc5MzY3OV1bIFQxMzE1XcKgwqBfX2FsbG9jX3BhZ2Vz
X25vZGVtYXNrKzB4ZTg4LzB4MWQ2MApbwqDCoDc4OC43OTkwMzBdWyBUMTMxNV3CoMKgYWxsb2Nf
ZnJlc2hfaHVnZV9wYWdlKzB4MTZjLzB4NTg4ClvCoMKgNzg4LjgwNDIwNl1bIFQxMzE1XcKgwqBh
bGxvY19zdXJwbHVzX2h1Z2VfcGFnZSsweDljLzB4Mjc4ClvCoMKgNzg4LjgwOTQ2OF1bIFQxMzE1
XcKgwqBodWdldGxiX2FjY3RfbWVtb3J5KzB4MTE0LzB4NWM0ClvCoMKgNzg4LjgxNDQ2OV1bIFQx
MzE1XcKgwqBodWdldGxiX3Jlc2VydmVfcGFnZXMrMHgxNzAvMHgyYjAKW8KgwqA3ODguODE5NjYy
XVsgVDEzMTVdwqDCoGh1Z2V0bGJfZmlsZV9zZXR1cCsweDI2Yy8weDNhOApbwqDCoDc4OC44MjQ2
MDBdWyBUMTMxNV3CoMKgbmV3c2VnKzB4MjIwLzB4NjNjClvCoMKgNzg4LjgyODQ5MF1bIFQxMzE1
XcKgwqBpcGNnZXQrMHg1NzAvMHg2NzQKW8KgwqA3ODguODMyMzc3XVsgVDEzMTVdwqDCoGtzeXNf
c2htZ2V0KzB4OTAvMHhjNApbwqDCoDc4OC44MzY1MjVdWyBUMTMxNV3CoMKgX19hcm02NF9zeXNf
c2htZ2V0KzB4NTQvMHg4OApbwqDCoDc4OC44NDEyODJdWyBUMTMxNV3CoMKgZWwwX3N2Y19oYW5k
bGVyKzB4MTljLzB4MjZjClvCoMKgNzg4Ljg0NTk1Ml1bIFQxMzE1XcKgwqBlbDBfc3ZjKzB4OC8w
eGMKCmFuZCB0aGVuIGFsbCBvdGhlciBwcm9jZXNzZXMgYXJlIHdhaXRpbmcgb24gdGhlIHNlbWFw
aG9yZSBjYXVzZXMgbG9jawpjb250ZW50aW9ucywKClvCoMKgNzg4Ljg0OTU4M11bIFQxMzE1XSBJ
TkZPOiB0YXNrIGh1Z2VtbWFwMDU6NTAyNyBibG9ja2VkIGZvciBtb3JlIHRoYW4gMTIyCnNlY29u
ZHMuClvCoMKgNzg4Ljg1NzExOV1bIFQxMzE1XcKgwqDCoMKgwqDCoMKgVGFpbnRlZDogR8KgwqDC
oMKgwqDCoMKgwqBXwqDCoMKgwqDCoMKgwqDCoMKgNS4yLjAtcmM2LW5leHQtMjAxOTA2MjQgCiMy
ClvCoMKgNzg4Ljg2NDU2Nl1bIFQxMzE1XSAiZWNobyAwID4gL3Byb2Mvc3lzL2tlcm5lbC9odW5n
X3Rhc2tfdGltZW91dF9zZWNzIgpkaXNhYmxlcyB0aGlzIG1lc3NhZ2UuClvCoMKgNzg4Ljg3MzEz
OV1bIFQxMzE1XSBodWdlbW1hcDA1wqDCoMKgwqDCoMKgRDI2OTYwwqDCoDUwMjfCoMKgwqA1MDI2
IDB4MDAwMDAwMDAKW8KgwqA3ODguODc5Mzk1XVsgVDEzMTVdIENhbGwgdHJhY2U6ClvCoMKgNzg4
Ljg4MjU3Nl1bIFQxMzE1XcKgwqBfX3N3aXRjaF90bysweDJlMC8weDM3YwpbwqDCoDc4OC44ODY5
MDFdWyBUMTMxNV3CoMKgX19zY2hlZHVsZSsweGI3NC8weGYwYwpbwqDCoDc4OC44OTExMzZdWyBU
MTMxNV3CoMKgc2NoZWR1bGUrMHg2MC8weDE2OApbwqDCoDc4OC44OTUwOTddWyBUMTMxNV3CoMKg
cndzZW1fZG93bl93cml0ZV9zbG93cGF0aCsweDVhMC8weDhjOApbwqDCoDc4OC45MDA2NTNdWyBU
MTMxNV3CoMKgZG93bl93cml0ZSsweGMwLzB4YzQKW8KgwqA3ODguOTA0NzE1XVsgVDEzMTVdwqDC
oGlwY2dldCsweDc0LzB4Njc0ClvCoMKgNzg4LjkwODUxNl1bIFQxMzE1XcKgwqBrc3lzX3NobWdl
dCsweDkwLzB4YzQKW8KgwqA3ODguOTEyNjY0XVsgVDEzMTVdwqDCoF9fYXJtNjRfc3lzX3NobWdl
dCsweDU0LzB4ODgKW8KgwqA3ODguOTE3NDIwXVsgVDEzMTVdwqDCoGVsMF9zdmNfaGFuZGxlcisw
eDE5Yy8weDI2YwpbwqDCoDc4OC45MjIwODhdWyBUMTMxNV3CoMKgZWwwX3N2YysweDgvMHhjCgpJ
ZGVhbGx5LCBpdCBzZWVtcyBvbmx5IGlwY19maW5ka2V5KCkgYW5kIG5ld3NlZygpIGluIHRoaXMg
cGF0aCBuZWVkcyB0byBob2xkIHRoZQpzZW1hcGhvcmUgdG8gcHJvdGVjdCBjb25jdXJyZW5jeSBh
Y2Nlc3MsIHNvIGl0IGNvdWxkIGp1c3QgYmUgY29udmVydGVkIHRvIGEKc3BpbmxvY2sgaW5zdGVh
ZC4KClsxXSAuL2h1Z2VtbWFwMDUgLXMgLW0KCmh0dHBzOi8vZ2l0aHViLmNvbS9saW51eC10ZXN0
LXByb2plY3QvbHRwL2Jsb2IvbWFzdGVyL3Rlc3RjYXNlcy9rZXJuZWwvbWVtL2h1Z2V0CmxiL2h1
Z2VtbWFwL2h1Z2VtbWFwMDUuYwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
