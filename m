Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1227E64ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 19:40:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECUvx3tgqTORFb2fR6zYT65y8/pgJJYQqemfxnRcFt0=; b=K+6j9o3jw3v5Kh
	NpL2JebQbdQN0Bxh0gdUEgzqEHZMopDF9HuxsuFaRBweHX6P8Eel5YB9PvGm7/U0VkhsN0b7bqdxj
	GHVeBOmlewxsgbYqZNy2ASAe94mOBGLOny1T2Wo8OPpBWQpTMI4KCZPnxKMCdQI4xSxV+RSB/lH6U
	vmDpHk3EZxDjQPvcHMsMmxhKSrAYdbaFm5wnD6znTCIoxLS9Bvb5GKQojTXtRN1jTOcUphymGEX0J
	CFb439YZlBZXUbVF83jQkfr9xq2kCN9m4RF6S+/l6/N5txJbFJMXU0/cZJMUtjalgszvC7NkkOWZa
	ScryQWFMtjfEI2bGVtrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnSl-0007rU-9C; Sun, 27 Oct 2019 18:40:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnSW-0007Sj-6e
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 18:40:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id p4so7590654wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 11:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nWu85K/T7faCoglcFkP8fhjv7AQwKz42mtCuJHoWABs=;
 b=o/SKcafrYjc9Ziwf3n/OF2yhvTVI1388bAbiE1auE6FqZ1KPwZVebQmtnxVHPy+MLk
 lrf8Sr2kKkf+wyEyF22MKkZPtJXzs1aNVOj2zVgWUEPJbQ2x0u7odRBr2Z47nGmtIZbN
 tGAOsu6X7H5HrI1GvhC3I7GeVPkAvxQcsYkmOy5XKNYtfOsk2fF7ScLSvkSn0Lcy42U7
 tCjxqYF2QxWVfv2zX6rc84ELVDvyJ2YxFhFAqNoGwY9Mjb7xKYMMLuoOc7d6fkl/9A2G
 A8k/QcAXnGkNiS/7oC5+yzZmVz6f76hROd3x66rpamO6OXDm2Q7vQAmxpM5d+gUKgNty
 a7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nWu85K/T7faCoglcFkP8fhjv7AQwKz42mtCuJHoWABs=;
 b=VyMxcAe1BQZ5W+E5aC0o7Dx0AoY06fzp1Uv/Iq2EllcQgSuVl1t85AHeCwdurvBOmY
 /yRUxuPWlGJJqhyWfsF44Vz9A2bSc/8mE19GEbZBknL+IY1Ly+UYLbzvs6cJRCeNMiaq
 mAswNYkzbImTXBZN0RIp62VWvgvgkf2HgvYPX5zeBdwaxIKW+tBZ59Q6ZvldjbtdOAWa
 QHQQUtq5phqTcVrJyqKh0nb1CU0SU6jFLx/4gfCI8dgYfE1h7xcGiC6dsQRwrFni2Ynz
 ANpdVDsmG8iMMiawOj3CrG3Ao2Y2tXCl0xCn1JnUu466mGaDTne2XUbl1qFA4bYPrjZs
 h6dQ==
X-Gm-Message-State: APjAAAU7VktdIBUg3NGx5WDl7r32h1LYyT6QpyygXW4eQILyQmCx7+UG
 EYVStCBpyxp1HPmKbej1+H6r8heq1kmn+xyPdH9YzA==
X-Google-Smtp-Source: APXvYqzmoq0uExSNf010u9g+jeVlTGfR6fQ3vSZv8tPViwMredyuiKXF+74wI4Q5olyoRBtw8T/qW0Oj9iKXG+13JlQ=
X-Received: by 2002:adf:9f08:: with SMTP id l8mr11413768wrf.325.1572201606366; 
 Sun, 27 Oct 2019 11:40:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191019022048.28065-1-richard.henderson@linaro.org>
 <20191019022048.28065-2-richard.henderson@linaro.org>
 <20191024113239.GC4300@lakrids.cambridge.arm.com>
 <CAKv+Gu9uoJk8iqGASP3KvZK+4GMo=5ckD5DSzdOAmCJuOQNiUA@mail.gmail.com>
 <6e75d7b9-1c30-adab-bb74-1aaaa4e98ad4@linaro.org>
In-Reply-To: <6e75d7b9-1c30-adab-bb74-1aaaa4e98ad4@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sun, 27 Oct 2019 19:40:04 +0100
Message-ID: <CAKv+Gu8A7vF0MQgVn6H2=Pjimnv0UUZt=1sce7aHr9BJ05_vzw@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Richard Henderson <richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_114012_275785_8D59AFFB 
X-CRM114-Status: GOOD (  30.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAxMzozOCwgUmljaGFyZCBIZW5kZXJzb24KPHJpY2hhcmQu
aGVuZGVyc29uQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMTAvMjQvMTkgMTo1NyBQTSwgQXJk
IEJpZXNoZXV2ZWwgd3JvdGU6Cj4gPj4+ICsKPiA+Pj4gKyNpZmRlZiBDT05GSUdfQVJDSF9SQU5E
T00KPiA+Pj4gKwo+ID4+PiArLyoKPiA+Pj4gKyAqIE5vdGUgdGhhdCB0aGVzZSB0d28gaW50ZXJm
YWNlcywgcmFuZG9tIGFuZCByYW5kb21fc2VlZCwgYXJlIHN0cm9uZ2x5Cj4gPj4+ICsgKiB0aWVk
IHRvIHRoZSBJbnRlbCBpbnN0cnVjdGlvbnMgUkRSQU5EIGFuZCBSRFNFRUQuICBSRFNFRUQgaXMg
dGhlCj4gPj4+ICsgKiAiZW5oYW5jZWQiIHZlcnNpb24gYW5kIGhhcyBzdHJvbmdlciBndWFyYW50
ZWVzLiAgVGhlIEFSTXY4LjUtUk5HCj4gPj4+ICsgKiBpbnN0cnVjdGlvbiBSTkRSIGNvcnJlc3Bv
bmRzIHRvIFJEU0VFRCwgdGh1cyB3ZSBwdXQgb3VyIGltcGxlbWVudGF0aW9uCj4gPj4+ICsgKiBp
bnRvIHRoZSByYW5kb21fc2VlZCBzZXQgb2YgZnVuY3Rpb25zLgo+ID4+PiArICoKPiA+Cj4gPiBJ
cyB0aGF0IGFjY3VyYXRlPyBUaGUgQVJNIEFSTSBzYXlzIHRoYXQgUk5EUiBpcyBiYWNrZWQgYnkg
YSBEUkJHIHdoaWNoCj4gPgo+ID4gIiIKPiA+IC4uLmlzIHJlc2VlZGVkIGFmdGVyIGFuIElNUExF
TUVOVEFUSU9OIERFRklORUQgbnVtYmVyIG9mIHJhbmRvbQo+ID4gbnVtYmVycyBoYXMgYmVlbiBn
ZW5lcmF0ZWQgYW5kIHJlYWQKPiA+IHVzaW5nIHRoZSBSTkRSIHJlZ2lzdGVyLgo+ID4gIiIiCj4g
Pgo+ID4gd2hpY2ggbWVhbnMgdGhhdCB5b3UgY2Fubm90IHJlbHkgb24gdGhpcyByZXNlZWRpbmcg
dG8gdGFrZSBwbGFjZSBhdCBhbGwuCj4gPgo+ID4gU28gdGhlIHdheSBJIHJlYWQgdGhpcywgUk5E
UiB+PSBSRFJBTkQgYW5kIFJORFJSUyB+PSBSRFNFRUQsIGFuZCB3ZQo+ID4gc2hvdWxkIHdpcmUg
dXAgdGhlIGZ1bmN0aW9ucyBiZWxvdyBhY2NvcmRpbmdseS4KPgo+IE5vLCB0aGF0IHJlYWRpbmcg
aXMgbm90IGNvcnJlY3QsIGFuZCBpcyBleGFjdGx5IHdoYXQgSSB3YXMgdHJ5aW5nIHRvIGV4cGxh
aW4gaW4KPiB0aGF0IHBhcmFncmFwaC4KPgo+IFJORFIgfj0gUkRTRUVELgo+Cj4gSXQncyBhIG1h
dHRlciBvZiBzdGFuZGFyZHMgY29uZm9ybWFuY2U6Cj4KPiBSRFJBTkQ6IE5JU1QgU1A4MDAtOTBB
Lgo+Cj4gUkRTRUVEOiBOSVNUIFNQODAwLTkwQiwKPiAgICAgICAgIE5JU1QgU1A4MDAtOTBDLgo+
Cj4gUk5EUjogICBOSVNUIFNQODAwLTkwQSBSZXYgMSwKPiAgICAgICAgIE5JU1QgU1A4MDAtOTBC
LAo+ICAgICAgICAgTklTVCBTUDgwMC0yMiwKPiAgICAgICAgIEZJUFMgMTQwLTIsCj4gICAgICAg
ICBCU0kgQUlTLTMxLAo+ICAgICAgICAgTklTVCBTUDgwMC05MEMuCj4KClRoYXQgaXMgbm90IHdo
YXQgdGhlIEFSTSBBUk0gc2F5cyAoRERJMDQ4N0UuYSBLMTIuMSk6CgpUaGUgKlRSTkcqIHRoYXQg
c2VlZHMgdGhlIERSQkcgdGhhdCBiYWNrcyBib3RoIFJORFIgYW5kIFJORFJSUyBzaG91bGQgY29u
Zm9ybSB0bwoK4oCiIFRoZSBOSVNUIFNQODAwLTkwQiBzdGFuZGFyZC4K4oCiIFRoZSBOSVNUIFNQ
ODAwLTIyIHN0YW5kYXJkLgrigKIgVGhlIEZJUFMgMTQwLTIgc3RhbmRhcmQuCuKAoiBUaGUgQlNJ
IEFJUy0zMSBzdGFuZGFyZC4KClRoaXMgRFJCRyBpdHNlbGYgc2hvdWxkIGNvbmZvcm0gdG8gTklT
VCBTUDgwMC05MEEgUmV2IDEsIGFuZCBpcwpyZXNlZWRlZCBhdCBhbiBpbXBsZW1lbnRhdGlvbiBk
ZWZpbmVkIHJhdGUgd2hlbiBSTkRSIGlzIHVzZWQsIG9yIGV2ZXJ5CnRpbWUgd2hlbiBSTkRSUlMg
aXMgdXNlZC4KClNvIHRoZSBvdXRwdXQgb2YgdGhlIFRSTkcgaXRzZWxmIGlzIG5vdCBhY2Nlc3Np
YmxlIGRpcmVjdGx5LCBhbmQgYm90aApSTkRSIGFuZCBSTkRSUlMgcmV0dXJuIG91dHB1dCBnZW5l
cmF0ZWQgYnkgYSBEUkJHLiBOSVNUIFNQODAwLTkwQQpzdWdnZXN0cyBhIG1pbmltdW0gc2VlZCBz
aXplIG9mIDQ0MCBiaXRzLCBzbyB1c2luZyBSTkRSUlMgdG8gZ2VuZXJhdGUKNjQtYml0IHNlZWRz
IGlzIHJlYXNvbmFibGUsIGV2ZW4gdGhvdWdoIGl0IGNvbWVzIGZyb20gYSBEUkJHLiBCdXQgUk5E
UgppcyBkZWZpbml0ZWx5IG5vdCBlcXVpdmFsZW50IHRvIFJEU0VFRC4KCgoKPgo+ID4+PiArICog
Tm90ZSBhcyB3ZWxsIHRoYXQgSW50ZWwgZG9lcyBub3QgaGF2ZSBhbiBpbnN0cnVjdGlvbiB0aGF0
IGNvcnJlc3BvbmRzCj4gPj4+ICsgKiB0byB0aGUgUk5EUlJTIGluc3RydWN0aW9uLCBzbyB0aGVy
ZSdzIG5vIGdlbmVyaWMgaW50ZXJmYWNlIGZvciB0aGF0Lgo+ID4+PiArICovCj4KPiAuLi4KPgo+
ID4+PiArc3RhdGljIGlubGluZSBib29sIGFyY2hfaGFzX3JhbmRvbSh2b2lkKQo+ID4+PiArewo+
ID4+PiArICAgICByZXR1cm4gZmFsc2U7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyBp
bmxpbmUgYm9vbCBhcmNoX2dldF9yYW5kb21fbG9uZyh1bnNpZ25lZCBsb25nICp2KQo+ID4+PiAr
ewo+ID4+PiArICAgICByZXR1cm4gZmFsc2U7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gK3N0YXRp
YyBpbmxpbmUgYm9vbCBhcmNoX2dldF9yYW5kb21faW50KHVuc2lnbmVkIGludCAqdikKPiA+Pj4g
K3sKPiA+Pj4gKyAgICAgcmV0dXJuIGZhbHNlOwo+ID4+PiArfQo+ID4+PiArCj4gPj4+ICtzdGF0
aWMgaW5saW5lIGJvb2wgYXJjaF9oYXNfcmFuZG9tX3NlZWQodm9pZCkKPiA+Pj4gK3sKPiA+Pj4g
KyAgICAgcmV0dXJuIGNwdXNfaGF2ZV9jb25zdF9jYXAoQVJNNjRfSEFTX1JORyk7Cj4gPj4+ICt9
Cj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNoX2dldF9yYW5kb21fc2VlZF9s
b25nKHVuc2lnbmVkIGxvbmcgKnYpCj4gPj4+ICt7Cj4gPj4+ICsgICAgIC8qIElmIFJORFIgZmFp
bHMsIGF0dGVtcHQgdG8gcmUtc2VlZCB3aXRoIFJORFJSUy4gICovCj4gPj4+ICsgICAgIHJldHVy
biBhcmNoX2hhc19yYW5kb21fc2VlZCgpICYmIChhcm1fcm5kcih2KSB8fCBhcm1fcm5kcnJzKHYp
KTsKPiA+Pj4gK30KPiA+Pgo+ID4+IEhlcmUgd2UgY2xvYmJlciB0aGUgdmFsdWUgYXQgdiBldmVu
IGlmIHRoZSByZWFkcyBvZiBSTkRSIGFuZCBSTkRSUlMKPiA+PiBmYWlsZWQuIElzIHRoYXQgb2s/
Cj4gPj4KPiA+PiBNYXliZSB3ZSB3YW50IHRoZSBhY2Nlc3NvcnMgdG8gb25seSBhc3NpZ24gdG8g
diB1cG9uIHN1Y2Nlc3MuCj4gPj4KPiA+Cj4gPiBJJ2QgYmUgbW9yZSBjb21mb3J0YWJsZSB3aXRo
IHRoaXMgaWYgYXJjaF9nZXRfcmFuZG9tXyooKSB3ZXJlCj4gPiBhbm5vdGF0ZWQgYXMgX19tdXN0
X2NoZWNrLCBhbmQgdGhlIGFzc2lnbm1lbnQgb25seSBkb25lIGNvbmRpdGlvbmFsbHkuCj4KPiBX
ZSBzaG91bGQgcHJvYmFibHkgbWFrZSB0aGF0IGNoYW5nZSBnZW5lcmljYWxseSByYXRoZXIgdGhh
biBtYWtlIGl0IGFybTY0IHNwZWNpZmljLgo+Cj4gPj4+ICtzdGF0aWMgYm9vbCBjYW5fdXNlX3Ju
Zyhjb25zdCBzdHJ1Y3QgYXJtNjRfY3B1X2NhcGFiaWxpdGllcyAqZW50cnksIGludCBzY29wZSkK
PiA+Pj4gK3sKPiA+Pj4gKyAgICAgdW5zaWduZWQgbG9uZyB0bXA7Cj4gPj4+ICsgICAgIGludCBp
Owo+ID4+PiArCj4gPj4+ICsgICAgIGlmICghaGFzX2NwdWlkX2ZlYXR1cmUoZW50cnksIHNjb3Bl
KSkKPiA+Pj4gKyAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gPj4+ICsKPiA+Pj4gKyAgICAg
LyoKPiA+Pj4gKyAgICAgICogUmUtc2VlZCBmcm9tIHRoZSB0cnVlIHJhbmRvbSBudW1iZXIgc291
cmNlLgo+ID4+PiArICAgICAgKiBJZiB0aGlzIGZhaWxzLCBkaXNhYmxlIHRoZSBmZWF0dXJlLgo+
ID4+PiArICAgICAgKi8KPiA+Pj4gKyAgICAgZm9yIChpID0gMDsgaSA8IDEwOyArK2kpIHsKPiA+
Pj4gKyAgICAgICAgICAgICBpZiAoYXJtX3JuZHJycygmdG1wKSkKPiA+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiB0cnVlOwo+ID4+PiArICAgICB9Cj4gPj4KPiA+PiBUaGUgQVJNIEFS
TSAoQVJNIERESSAwNDg3RS5hKSBzYXlzOgo+ID4+Cj4gPj4gfCBSZXNlZWRlZCBSYW5kb20gTnVt
YmVyLiBSZXR1cm5zIGEgNjQtYml0IHJhbmRvbSBudW1iZXIgd2hpY2ggaXMKPiA+PiB8IHJlc2Vl
ZGVkIGZyb20gdGhlIFRydWUgUmFuZG9tIE51bWJlciBzb3VyY2UgYXQgYW4gSU1QTEVNRU5UQVRJ
T04KPiA+PiB8IERFRklORUQgcmF0ZS4KPiA+Pgo+ID4+IC4uLiBhbmQ6Cj4gPj4KPiA+PiB8IElm
IHRoZSBpbnN0cnVjdGlvbiBjYW5ub3QgcmV0dXJuIGEgZ2VudWluZSByYW5kb20gbnVtYmVyIGlu
IGEKPiA+PiB8IHJlYXNvbmFibGUgcGVyaW9kIG9mIHRpbWUsIFBTVEFURS5OWkNWIGlzIHNldCB0
byAwYjAxMDAgYW5kIHRoZSBkYXRhCj4gPj4gfCB2YWx1ZSByZXR1cm5lZCBpbiBVTktOT1dOLgo+
ID4+Cj4gPj4gLi4uIHNvIGl0J3Mgbm90IGNsZWFyIHRvIG1lIGlmIHRoZSByZXRyeSBsb2dpYyBt
YWtlcyBzZW5zZS4gTmFpdmVseSBJJ2QKPiA+PiBleHBlY3QgInJlYXNvbmFibGUgcGVyaW9kIG9m
IHRpbWUiIHRvIGluY2x1ZGUgMTAgYXR0ZW1wdHMuCj4gPj4KPiA+PiBHaXZlbiB3ZSdsbCBoYXZl
IHRvIGhhbmRsZSBmYWlsdXJlIGVsc2V3aGVyZSwgSSBzdXNwZWN0IHRoYXQgaXQgbWlnaHQgYmUK
PiA+PiBiZXN0IHRvIGFzc3VtZSB0aGF0IHRoaXMgd29ya3MgdW50aWwgd2UgZW5jb3VudGVyIGV2
aWRlbmNlIHRvIHRoZQo+ID4+IGNvbnRyYXJ5Lgo+ID4+Cj4gPgo+ID4gVGhlIGFyY2hpdGVjdHVy
ZSBpc24ndCB2ZXJ5IGNsZWFyIGFib3V0IHdoYXQgYSByZWFzb25hYmxlIHBlcmlvZCBvZgo+ID4g
dGltZSBpcywgYnV0IHRoZSBmYWN0IHRoYXQgaXQgY2FuIGZhaWwgdHJhbnNpZW50bHkgc3VnZ2Vz
dHMgdGhhdAo+ID4gdHJ5aW5nIGl0IG9ubHkgb25jZSBkb2Vzbid0IG1ha2UgYSBsb3Qgb2Ygc2Vu
c2UuIEhvd2V2ZXIsIEknbSBub3Qgc3VyZQo+ID4gd2hldGhlciBoYXZpbmcgYSBnbyBhdCBwcm9i
ZSB0aW1lIGlzIGhlbHBmdWwgaW4gZGVjaWRpbmcgd2hldGhlciB3ZQo+ID4gY2FuIHVzZSBpdCBh
dCBhbGwsIGFuZCBJJ2QgYmUgaW5jbGluZWQgdG8gZHJvcCB0aGlzIHRlc3QgYWx0b2dldGhlci4K
PiA+IFRoaXMgaXMgZXNwZWNpYWxseSB0cnVlIHNpbmNlIHdlIGNhbm5vdCBzdG9wIEVMMCBvciBW
TXMgYXQgRUwxIHVzaW5nCj4gPiB0aGUgaW5zdHJ1Y3Rpb24uCj4KPiBBcyBtZW50aW9uZWQgaW4g
cmVwbHkgdG8gTWFyayBzcGVjaWZpY2FsbHksIHRoZSBvdGhlciB0d28gYXJjaGl0ZWN0dXJlcyBk
byB0aGUKPiBzYW1lIHRoaW5nLiAgRnJvbSB0aGUgY29tbWVudCBmb3IgeDg2LCBJIHJlYWQgdGhp
cyBhcyAiaWYgc29tZXRoaW5nIGdvZXMgd3JvbmcsCj4gaXQncyBsaWtlbHkgY29tcGxldGVseSBi
cm9rZW4gYW5kIHdvbid0IHdvcmsgdGhlIGZpcnN0IHRpbWUgd2UgY2hlY2siLgo+Cj4gWWVzLCB3
ZSBjYW4ndCBwcmV2ZW50IEVMMCBvciBWTXMgZnJvbSB1c2luZyB0aGUgaW5zbiwgYnV0IHdlIGNh
biBhdm9pZCBoYXZpbmcKPiB0aGUga2VybmVsIGl0c2VsZiBhdHRlbXB0IHRvIHVzZSBpdCBpZiB0
aGUgaGFyZHdhcmUgc2VsZi1jaGVjayBmYWlscy4KPgo+IE9UT0gsIGdpdmVuIHRoYXQgZXZlcnkg
dXNlciBvZiBhcmNoX2dldF9yYW5kb20oKSBjaGVja3MgdGhlIHJlc3VsdCwgYW5kIGhhcyBhCj4g
ZmFsbGJhY2sgZm9yIGZhaWx1cmUsIEkgc3VwcG9zZSB3ZSBkb24ndCBuZWVkIHRvIGRvIGFueXRo
aW5nIHNwZWNpYWwuICBKdXN0IHVzZQo+IHRoZSBpbnNuIGFuZCBsZXQgWj0xIHVzZSB0aGUgZmFs
bGJhY2sgZmFpbHVyZSBwYXRoLgo+Cj4KPiByfgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
