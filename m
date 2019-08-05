Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE9381862
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdVN7bz1FczrlDLJvISuZ+BgilPpQZdUhDXOSYUsTog=; b=bYwMNq8Rz1khIr
	Ml8jaK5S/0w8BM3tk+7R+lYSakP942q9xrfe6Slp/KH5Ct7wTOZkFZNt1reh4roCImPI+RNxYIhLY
	wQh9OV9OBatm/KxJm4oFL00CXvLkgvOmBp9Dr3/Q9IsSAN5Cs7FHqrLMn/17i58A9WH0GgZszDGkC
	CTc3Lv2NA+NkJb0siGOfnLvwEdSX5OCkr9Y2xgTe8qBm7SFfAtLZlIEzMvHqenv76m+K0g945m+s9
	U0d/bTiL6J8EB/ehyiCgKiEV1e3KIB4KGBnR6otGlUVPa0JPHb9fluQDe1Vz1lhYfjBgyHAcmFGJg
	iv47zHIVbfXlmP0b3GWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubSz-0004Ih-Ln; Mon, 05 Aug 2019 11:47:53 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubSn-0004Hr-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:47:43 +0000
Received: by mail-qk1-x741.google.com with SMTP id r21so59854690qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=f6szPwFxDbpw2ZKmmxnSTt1g2JfUNMH6l68GeeOqbeA=;
 b=RqwbRbC7E5abtgOFsm6t0AUynjZ5rcKHbVCBlFTqcoqhjs1n6baAcFt2AY6zQmZ1+t
 7SMSJNHRsENlBL6IBLyyFYpT4K7w3+NQ/KEaZE5Hy8X+Be2g5XWIxgB1NBdVfnWiSNkQ
 4CyWvaVZ8LtJQ4E9KuXtr3NTmQdEgJ9eZFCPaO3vfkwHe+utjx/SZdzrEF6yGr1fyYrg
 hrCP23mOcWm8Z52VVAnpVGmAbugX7ng3H9nSnlKe9NaukWZGsP6lb3glRR+gvOrHhzQI
 ivuMQr1uNox+6GlUM5NVIqdUd7mMaVkYc/fH+ngflkjr2r2TRA4Xp1u/TXQVcNX0jFhS
 f+KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=f6szPwFxDbpw2ZKmmxnSTt1g2JfUNMH6l68GeeOqbeA=;
 b=syH11Qf/0D4jyqHtvHiJQEQTKlmMqjOJ3Vb1Cwrysvd6pY4w8qnAcKDZFHhYSyjfEX
 VpgoMFOkm8mNNiYUMF3Tfq1EcOjkQph6ODZa/5wG3Wr/gkdBTQ0TlHdMqPDW32Np+nLA
 giJHdiT/X/+GGBaEp7Lx3nBrztDE4IUCpXc6P5mEphJOm6WCsvn7zCkQcOtBDaUvfF8/
 uYium4HFsRwMGz1Q63DO1ChEYiF886HlUT2zluLcE6HL7BJxWeUm/R3LJf4SwojgHoZJ
 nREUQvfzDaO2a/igdOfgrrD47pm0zvKkQkHd0tQcA4uF4ayigWzOgzCLhjaYjh99IQkR
 9mwA==
X-Gm-Message-State: APjAAAWO1JOV+Rj3wEhlU1pvk3v4yAWwTVU9xw4jfsdLVWg4MLTe7pvc
 /+gp3Lvy9kOkbJn9fQbo2xCiCw==
X-Google-Smtp-Source: APXvYqxBgJKy9z+rqeTuFeh91T3hyxcm65GKukJYybRFBiubRkqGyQNhtog1NgVCEZqmvJ2S7OX4yg==
X-Received: by 2002:a05:620a:1537:: with SMTP id
 n23mr95501333qkk.441.1565005658834; 
 Mon, 05 Aug 2019 04:47:38 -0700 (PDT)
Received: from qians-mbp.fios-router.home
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id z4sm40873036qtd.60.2019.08.05.04.47.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 04:47:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] arm64/cache: fix -Woverride-init compiler warnings
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190805095256.ocgdb2yfhnbdz6kw@willie-the-truck>
Date: Mon, 5 Aug 2019 07:47:37 -0400
Message-Id: <771C4B4C-6D79-419D-9778-5DE1BFC67FBE@lca.pw>
References: <1564759944-2197-1-git-send-email-cai@lca.pw>
 <20190805095256.ocgdb2yfhnbdz6kw@willie-the-truck>
To: Will Deacon <will@kernel.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_044741_735193_99FC95CD 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyA1LCAyMDE5LCBhdCA1OjUyIEFNLCBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwu
b3JnPiB3cm90ZToKPiAKPiBPbiBGcmksIEF1ZyAwMiwgMjAxOSBhdCAxMTozMjoyNEFNIC0wNDAw
LCBRaWFuIENhaSB3cm90ZToKPj4gVGhlIGNvbW1pdCAxNTU0MzNjYjM2NWUgKCJhcm02NDogY2Fj
aGU6IFJlbW92ZSBzdXBwb3J0IGZvciBBU0lELXRhZ2dlZAo+PiBWSVZUIEktY2FjaGVzIikgaW50
cm9kdWNlZCBzb21lIGNvbXBpYXRpb24gd2FybmluZ3MgZnJvbSBHQ0MsCj4+IAo+PiBhcmNoL2Fy
bTY0L2tlcm5lbC9jcHVpbmZvLmM6Mzg6MjY6IHdhcm5pbmc6IGluaXRpYWxpemVkIGZpZWxkCj4+
IG92ZXJ3cml0dGVuIFstV292ZXJyaWRlLWluaXRdCj4+ICBbSUNBQ0hFX1BPTElDWV9WSVBUXSAg
PSAiVklQVCIsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn4KPj4gYXJjaC9hcm02
NC9rZXJuZWwvY3B1aW5mby5jOjM4OjI2OiBub3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3IK
Pj4gJ2ljYWNoZV9wb2xpY3lfc3RyWzJdJykKPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5j
OjM5OjI2OiB3YXJuaW5nOiBpbml0aWFsaXplZCBmaWVsZAo+PiBvdmVyd3JpdHRlbiBbLVdvdmVy
cmlkZS1pbml0XQo+PiAgW0lDQUNIRV9QT0xJQ1lfUElQVF0gID0gIlBJUFQiLAo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzoz
OToyNjogbm90ZTogKG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yCj4+ICdpY2FjaGVfcG9saWN5X3N0
clszXScpCj4+IGFyY2gvYXJtNjQva2VybmVsL2NwdWluZm8uYzo0MDoyNzogd2FybmluZzogaW5p
dGlhbGl6ZWQgZmllbGQKPj4gb3ZlcndyaXR0ZW4gWy1Xb3ZlcnJpZGUtaW5pdF0KPj4gIFtJQ0FD
SEVfUE9MSUNZX1ZQSVBUXSAgPSAiVlBJUFQiLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn4KPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jOjQwOjI3OiBub3RlOiAobmVh
ciBpbml0aWFsaXphdGlvbiBmb3IKPj4gJ2ljYWNoZV9wb2xpY3lfc3RyWzBdJykKPj4gCj4+IGJl
Y2F1c2UgaXQgaW5pdGlhbGl6ZXMgaWNhY2hlX3BvbGljeV9zdHJbMCAuLi4gM10gdHdpY2UuCj4+
IAo+PiBGaXhlczogMTU1NDMzY2IzNjVlICgiYXJtNjQ6IGNhY2hlOiBSZW1vdmUgc3VwcG9ydCBm
b3IgQVNJRC10YWdnZWQgVklWVCBJLWNhY2hlcyIpCj4+IFNpZ25lZC1vZmYtYnk6IFFpYW4gQ2Fp
IDxjYWlAbGNhLnB3Pgo+PiAtLS0KPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jIHwgNCAr
Ky0tCj4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+
IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1aW5mby5jIGIvYXJjaC9hcm02
NC9rZXJuZWwvY3B1aW5mby5jCj4+IGluZGV4IDg3NjA1NWUzNzM1Mi4uMTkzYjM4ZGE4ZDk2IDEw
MDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVpbmZvLmMKPj4gKysrIGIvYXJjaC9h
cm02NC9rZXJuZWwvY3B1aW5mby5jCj4+IEBAIC0zNCwxMCArMzQsMTAgQEAKPj4gc3RhdGljIHN0
cnVjdCBjcHVpbmZvX2FybTY0IGJvb3RfY3B1X2RhdGE7Cj4+IAo+PiBzdGF0aWMgY2hhciAqaWNh
Y2hlX3BvbGljeV9zdHJbXSA9IHsKPj4gLQlbMCAuLi4gSUNBQ0hFX1BPTElDWV9QSVBUXQk9ICJS
RVNFUlZFRC9VTktOT1dOIiwKPj4gKwlbSUNBQ0hFX1BPTElDWV9WUElQVF0JCT0gIlZQSVBUIiwK
Pj4gKwlbSUNBQ0hFX1BPTElDWV9WUElQVCArIDFdCT0gIlJFU0VSVkVEL1VOS05PV04iLAo+PiAJ
W0lDQUNIRV9QT0xJQ1lfVklQVF0JCT0gIlZJUFQiLAo+PiAJW0lDQUNIRV9QT0xJQ1lfUElQVF0J
CT0gIlBJUFQiLAo+PiAtCVtJQ0FDSEVfUE9MSUNZX1ZQSVBUXQkJPSAiVlBJUFQiLAo+IAo+IEkg
cmVhbGx5IGRvbid0IGxpa2UgdGhpcyBwYXRjaC4gVXNpbmcgIlswIC4uLiBNQVhJRFhdID0gPGRl
ZmF1bHQ+IiBpcyBhCj4gdXNlZnVsIGlkaW9tIGFuZCBJIHRoaW5rIHRoZSBjb2RlIGlzIG1vcmUg
ZXJyb3ItcHJvbmUgdGhlIHdheSB5b3UgaGF2ZQo+IHJlc3RydWN0dXJlZCBpdC4KPiAKPiBXaHkg
YXJlIHlvdSBwYXNzaW5nIC1Xb3ZlcnJpZGUtaW5pdCB0byB0aGUgY29tcGlsZXIgYW55d2F5PyBU
aGVyZSdzIG9ubHkKPiBvbmUgTWFrZWZpbGUgdGhhdCByZWZlcmVuY2VzIHRoYXQgb3B0aW9uLCBh
bmQgaXQncyBzcGVjaWZpYyB0byBhIHBpbmN0cmwKPiBkcml2ZXIuCgpUaG9zZSBleHRyYSB3YXJu
aW5ncyBjYW4gYmUgZW5hYmxlZCBieSDigJxtYWtlIFc9MeKAnS4g4oCcLVdvdmVycmlkZS1pbml0
IOKAnCBzZWVtcyB0byBiZSB1c2VmdWwKdG8gY2F0Y2ggcG90ZW50aWFsIGRldmVsb3BlciBtaXN0
YWtlcyB3aXRoIHVuaW50ZW50ZWQgZG91YmxlLWluaXRpYWxpemF0aW9ucy4gSXQgaXMgbm9ybWFs
IHRvCnN0YXJ0IHRvIGZpeCB0aGUgbW9zdCBvZiBmYWxzZS1wb3NpdGl2ZXMgZmlyc3QgYmVmb3Jl
IGdsb2JhbGx5IGVuYWJsaW5nIHRoZSBmbGFnIGJ5IGRlZmF1bHQganVzdCBsaWtlCuKAnC1XaW1w
bGljaXQtZmFsbHRocm91Z2jigJ0gbWVudGlvbmVkIGluLAoKaHR0cHM6Ly9sd24ubmV0L0FydGlj
bGVzLzc5NDk0NC8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
