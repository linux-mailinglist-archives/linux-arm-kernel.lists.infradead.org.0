Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F373C1C37E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gzi1VOfVeq0Sh1fpkFAz0DXeXaXST109CCloFqeE0i4=; b=tX8beFstM/TTIx
	TzAFVIJsR9yHkXfDqjywS0Or9fFPmybET6dyEWZSz+GhXn1gMfx8sTzP8Rsh1l94rzLsF8LrOOXAl
	3qPD9lbCBPbHYFEx/TTFNvdOcRsWzCDE0pMh9gR/F79cvZ3V1L+BF31oOXrGCrTdNN0ZB9/4Wwv+J
	1jqjXCFGU04B6NQspNwi1HUF5JSAmBV7NUt8RZUFll2id9Ut1jCQwERYOZGJTStrZFEFFCB7EZHN6
	tIs+sqVbLmmgtChuO9B/Y7iO1ndGvsooSwWJF+P+94ar58YV7xFefPCYfF9w4c1oTOzhE4ZfZRsTp
	HCLcV8auIs30eztKk9ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZ7v-0000so-RZ; Mon, 04 May 2020 11:19:11 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZ7n-0000rX-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:19:05 +0000
Received: by mail-ot1-x344.google.com with SMTP id m13so8526428otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 04:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=deBFpZDyD7Ytv7er+9351gbbtNrttVAi3jZjoadiPO4=;
 b=glUcsG5WwYRnt+lJPOtXI4u2+uV8cO9bdXvRZGvTV68eBEUcNwFHztrwdHRujYdHDs
 za+2QmAIcNuBiVZoHk5c2TrjPwt7XJeqrhwOA5f0z/BkNND1OxBYATl7dOYGOc4jL0aM
 OrNogdlgitlS26m/bpcotVxSFTKnDWeAr50F4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=deBFpZDyD7Ytv7er+9351gbbtNrttVAi3jZjoadiPO4=;
 b=fqXjHJgTMFdudT/IQezz9kJ4fMZmu917VDe0HpFNcyNEjn1miELxA2ViFFZmHFYJqa
 rb+cQOfX/pZCtfrG3VsR+sfvBDYHSo1Or5FmYoKqfGy9ghUIMsDtiIrZYJ4+ljMltoAh
 0rd5M/PaExS8C5Oi9P6T6BAa+UhEkszilUBuJnRylWNOj8Yv43eMtS2m5Fv8GE9301Kt
 34mktEoc8qQFG/ykm4IaKF3j51GUx+ik5RW0mIs+EBkf68BogwbloCeHUC9TbnAdwPPQ
 EqXgV55DcNFwETMuHmlpn9h35T+DQZYIh8DsWMQG/NTpJux4esRfIiiWOlB4PZMnUqhb
 PSmw==
X-Gm-Message-State: AGi0PuZwbfSiQ3C84pdD/sWLwAl/haqCWZp1sw3P1qC9rxShMiSRBMZI
 JgawCSwM8qcyNiWAcXyIZlBZxbERGD378m4s5etZYQ==
X-Google-Smtp-Source: APiQypLa3Y84foLnht3d7ZcPNR2FZ3H6bsD5C/40pRpZ5N6wW+C1v22NLJcYfxdC783HNctofY9OsgbQwCLqMroI8Ls=
X-Received: by 2002:a9d:7c92:: with SMTP id q18mr7889489otn.281.1588591141860; 
 Mon, 04 May 2020 04:19:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200504010912.982044-1-ira.weiny@intel.com>
 <20200504010912.982044-12-ira.weiny@intel.com>
In-Reply-To: <20200504010912.982044-12-ira.weiny@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 4 May 2020 13:18:51 +0200
Message-ID: <CAKMK7uF4fd3upBYSQEzs==Nx7osn=wZPnxoKLKm9HTxwU_sZ+w@mail.gmail.com>
Subject: Re: [PATCH V2 11/11] drm: Remove drm specific kmap_atomic code
To: Ira Weiny <ira.weiny@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_041903_469375_363BD57A 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Helge Deller <deller@gmx.de>, X86 ML <x86@kernel.org>,
 linux-csky@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 arcml <linux-snps-arc@lists.infradead.org>, linux-xtensa@linux-xtensa.org,
 Dan Williams <dan.j.williams@intel.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgNCwgMjAyMCBhdCAzOjA5IEFNIDxpcmEud2VpbnlAaW50ZWwuY29tPiB3cm90
ZToKPgo+IEZyb206IElyYSBXZWlueSA8aXJhLndlaW55QGludGVsLmNvbT4KPgo+IGttYXBfYXRv
bWljX3Byb3QoKSBpcyBub3cgZXhwb3J0ZWQgYnkgYWxsIGFyY2hpdGVjdHVyZXMuICBVc2UgdGhp
cwo+IGZ1bmN0aW9uIHJhdGhlciB0aGFuIG9wZW4gY29kaW5nIGEgZHJpdmVyIHNwZWNpZmljIGtt
YXBfYXRvbWljLgo+Cj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3Qu
ZGU+Cj4gU2lnbmVkLW9mZi1ieTogSXJhIFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPgoKSSdt
IGFzc3VtaW5nIHRoaXMgbGFuZHMgdGhyb3VnaCBzb21lIG90aGVyIHRyZWUgb3IgYSB0b3BpYyBi
cmFuY2ggb3Igd2hhdGV2ZXIuCgpBY2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4KCkNoZWVycywgRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9ib191dGlsLmMgICAgfCA1NiArKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X2JsaXQuYyB8IDE2ICsrKystLS0tCj4gIGluY2x1
ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmggICAgICAgICB8ICA0IC0tCj4gIDMgZmlsZXMgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgNjQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdXRpbC5jCj4gaW5kZXggNTJkMmI3MWYxNTg4Li5mMDliMDk2YmE0ZmQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fYm9fdXRpbC5jCj4gQEAgLTI1Nyw1NCArMjU3LDYgQEAgc3RhdGljIGludCB0
dG1fY29weV9pb19wYWdlKHZvaWQgKmRzdCwgdm9pZCAqc3JjLCB1bnNpZ25lZCBsb25nIHBhZ2Up
Cj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gLSNpZmRlZiBDT05GSUdfWDg2Cj4gLSNkZWZp
bmUgX190dG1fa21hcF9hdG9taWNfcHJvdChfX3BhZ2UsIF9fcHJvdCkga21hcF9hdG9taWNfcHJv
dChfX3BhZ2UsIF9fcHJvdCkKPiAtI2RlZmluZSBfX3R0bV9rdW5tYXBfYXRvbWljKF9fYWRkcikg
a3VubWFwX2F0b21pYyhfX2FkZHIpCj4gLSNlbHNlCj4gLSNkZWZpbmUgX190dG1fa21hcF9hdG9t
aWNfcHJvdChfX3BhZ2UsIF9fcHJvdCkgdm1hcCgmX19wYWdlLCAxLCAwLCAgX19wcm90KQo+IC0j
ZGVmaW5lIF9fdHRtX2t1bm1hcF9hdG9taWMoX19hZGRyKSB2dW5tYXAoX19hZGRyKQo+IC0jZW5k
aWYKPiAtCj4gLQo+IC0vKioKPiAtICogdHRtX2ttYXBfYXRvbWljX3Byb3QgLSBFZmZpY2llbnQg
a2VybmVsIG1hcCBvZiBhIHNpbmdsZSBwYWdlIHdpdGgKPiAtICogc3BlY2lmaWVkIHBhZ2UgcHJv
dGVjdGlvbi4KPiAtICoKPiAtICogQHBhZ2U6IFRoZSBwYWdlIHRvIG1hcC4KPiAtICogQHByb3Q6
IFRoZSBwYWdlIHByb3RlY3Rpb24uCj4gLSAqCj4gLSAqIFRoaXMgZnVuY3Rpb24gbWFwcyBhIFRU
TSBwYWdlIHVzaW5nIHRoZSBrbWFwX2F0b21pYyBhcGkgaWYgYXZhaWxhYmxlLAo+IC0gKiBvdGhl
cndpc2UgZmFsbHMgYmFjayB0byB2bWFwLiBUaGUgdXNlciBtdXN0IG1ha2Ugc3VyZSB0aGF0IHRo
ZQo+IC0gKiBzcGVjaWZpZWQgcGFnZSBkb2VzIG5vdCBoYXZlIGFuIGFsaWFzZWQgbWFwcGluZyB3
aXRoIGEgZGlmZmVyZW50IGNhY2hpbmcKPiAtICogcG9saWN5IHVubGVzcyB0aGUgYXJjaGl0ZWN0
dXJlIGV4cGxpY2l0bHkgYWxsb3dzIGl0LiBBbHNvIG1hcHBpbmcgYW5kCj4gLSAqIHVubWFwcGlu
ZyB1c2luZyB0aGlzIGFwaSBtdXN0IGJlIGNvcnJlY3RseSBuZXN0ZWQuIFVubWFwcGluZyBzaG91
bGQKPiAtICogb2NjdXIgaW4gdGhlIHJldmVyc2Ugb3JkZXIgb2YgbWFwcGluZy4KPiAtICovCj4g
LXZvaWQgKnR0bV9rbWFwX2F0b21pY19wcm90KHN0cnVjdCBwYWdlICpwYWdlLCBwZ3Byb3RfdCBw
cm90KQo+IC17Cj4gLSAgICAgICBpZiAocGdwcm90X3ZhbChwcm90KSA9PSBwZ3Byb3RfdmFsKFBB
R0VfS0VSTkVMKSkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIGttYXBfYXRvbWljKHBhZ2UpOwo+
IC0gICAgICAgZWxzZQo+IC0gICAgICAgICAgICAgICByZXR1cm4gX190dG1fa21hcF9hdG9taWNf
cHJvdChwYWdlLCBwcm90KTsKPiAtfQo+IC1FWFBPUlRfU1lNQk9MKHR0bV9rbWFwX2F0b21pY19w
cm90KTsKPiAtCj4gLS8qKgo+IC0gKiB0dG1fa3VubWFwX2F0b21pY19wcm90IC0gVW5tYXAgYSBw
YWdlIHRoYXQgd2FzIG1hcHBlZCB1c2luZwo+IC0gKiB0dG1fa21hcF9hdG9taWNfcHJvdC4KPiAt
ICoKPiAtICogQGFkZHI6IFRoZSB2aXJ0dWFsIGFkZHJlc3MgZnJvbSB0aGUgbWFwLgo+IC0gKiBA
cHJvdDogVGhlIHBhZ2UgcHJvdGVjdGlvbi4KPiAtICovCj4gLXZvaWQgdHRtX2t1bm1hcF9hdG9t
aWNfcHJvdCh2b2lkICphZGRyLCBwZ3Byb3RfdCBwcm90KQo+IC17Cj4gLSAgICAgICBpZiAocGdw
cm90X3ZhbChwcm90KSA9PSBwZ3Byb3RfdmFsKFBBR0VfS0VSTkVMKSkKPiAtICAgICAgICAgICAg
ICAga3VubWFwX2F0b21pYyhhZGRyKTsKPiAtICAgICAgIGVsc2UKPiAtICAgICAgICAgICAgICAg
X190dG1fa3VubWFwX2F0b21pYyhhZGRyKTsKPiAtfQo+IC1FWFBPUlRfU1lNQk9MKHR0bV9rdW5t
YXBfYXRvbWljX3Byb3QpOwo+IC0KPiAgc3RhdGljIGludCB0dG1fY29weV9pb190dG1fcGFnZShz
dHJ1Y3QgdHRtX3R0ICp0dG0sIHZvaWQgKnNyYywKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVuc2lnbmVkIGxvbmcgcGFnZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHBncHJvdF90IHByb3QpCj4gQEAgLTMxNiwxMyArMjY4LDEzIEBAIHN0YXRpYyBpbnQgdHRt
X2NvcHlfaW9fdHRtX3BhZ2Uoc3RydWN0IHR0bV90dCAqdHRtLCB2b2lkICpzcmMsCj4gICAgICAg
ICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+Cj4gICAgICAgICBzcmMgPSAodm9pZCAqKSgodW5z
aWduZWQgbG9uZylzcmMgKyAocGFnZSA8PCBQQUdFX1NISUZUKSk7Cj4gLSAgICAgICBkc3QgPSB0
dG1fa21hcF9hdG9taWNfcHJvdChkLCBwcm90KTsKPiArICAgICAgIGRzdCA9IGttYXBfYXRvbWlj
X3Byb3QoZCwgcHJvdCk7Cj4gICAgICAgICBpZiAoIWRzdCkKPiAgICAgICAgICAgICAgICAgcmV0
dXJuIC1FTk9NRU07Cj4KPiAgICAgICAgIG1lbWNweV9mcm9taW8oZHN0LCBzcmMsIFBBR0VfU0la
RSk7Cj4KPiAtICAgICAgIHR0bV9rdW5tYXBfYXRvbWljX3Byb3QoZHN0LCBwcm90KTsKPiArICAg
ICAgIGt1bm1hcF9hdG9taWMoZHN0KTsKPgo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPiBAQCAt
MzM4LDEzICsyOTAsMTMgQEAgc3RhdGljIGludCB0dG1fY29weV90dG1faW9fcGFnZShzdHJ1Y3Qg
dHRtX3R0ICp0dG0sIHZvaWQgKmRzdCwKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07
Cj4KPiAgICAgICAgIGRzdCA9ICh2b2lkICopKCh1bnNpZ25lZCBsb25nKWRzdCArIChwYWdlIDw8
IFBBR0VfU0hJRlQpKTsKPiAtICAgICAgIHNyYyA9IHR0bV9rbWFwX2F0b21pY19wcm90KHMsIHBy
b3QpOwo+ICsgICAgICAgc3JjID0ga21hcF9hdG9taWNfcHJvdChzLCBwcm90KTsKPiAgICAgICAg
IGlmICghc3JjKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPgo+ICAgICAgICAg
bWVtY3B5X3RvaW8oZHN0LCBzcmMsIFBBR0VfU0laRSk7Cj4KPiAtICAgICAgIHR0bV9rdW5tYXBf
YXRvbWljX3Byb3Qoc3JjLCBwcm90KTsKPiArICAgICAgIGt1bm1hcF9hdG9taWMoc3JjKTsKPgo+
ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Zt
d2dmeC92bXdnZnhfYmxpdC5jIGIvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYmxpdC5j
Cj4gaW5kZXggYmI0NmNhMGM0NThmLi45NGQ0NTZhMWQxYTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfYmxpdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3Zt
d2dmeC92bXdnZnhfYmxpdC5jCj4gQEAgLTM3NCwxMiArMzc0LDEyIEBAIHN0YXRpYyBpbnQgdm13
X2JvX2NwdV9ibGl0X2xpbmUoc3RydWN0IHZtd19ib19ibGl0X2xpbmVfZGF0YSAqZCwKPiAgICAg
ICAgICAgICAgICAgY29weV9zaXplID0gbWluX3QodTMyLCBjb3B5X3NpemUsIFBBR0VfU0laRSAt
IHNyY19wYWdlX29mZnNldCk7Cj4KPiAgICAgICAgICAgICAgICAgaWYgKHVubWFwX3NyYykgewo+
IC0gICAgICAgICAgICAgICAgICAgICAgIHR0bV9rdW5tYXBfYXRvbWljX3Byb3QoZC0+c3JjX2Fk
ZHIsIGQtPnNyY19wcm90KTsKPiArICAgICAgICAgICAgICAgICAgICAgICBrdW5tYXBfYXRvbWlj
KGQtPnNyY19hZGRyKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBkLT5zcmNfYWRkciA9IE5V
TEw7Cj4gICAgICAgICAgICAgICAgIH0KPgo+ICAgICAgICAgICAgICAgICBpZiAodW5tYXBfZHN0
KSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgdHRtX2t1bm1hcF9hdG9taWNfcHJvdChkLT5k
c3RfYWRkciwgZC0+ZHN0X3Byb3QpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGt1bm1hcF9h
dG9taWMoZC0+ZHN0X2FkZHIpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGQtPmRzdF9hZGRy
ID0gTlVMTDsKPiAgICAgICAgICAgICAgICAgfQo+Cj4gQEAgLTM4OCw4ICszODgsOCBAQCBzdGF0
aWMgaW50IHZtd19ib19jcHVfYmxpdF9saW5lKHN0cnVjdCB2bXdfYm9fYmxpdF9saW5lX2RhdGEg
KmQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPgo+
ICAgICAgICAgICAgICAgICAgICAgICAgIGQtPmRzdF9hZGRyID0KPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHR0bV9rbWFwX2F0b21pY19wcm90KGQtPmRzdF9wYWdlc1tkc3RfcGFn
ZV0sCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBkLT5kc3RfcHJvdCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBrbWFwX2F0
b21pY19wcm90KGQtPmRzdF9wYWdlc1tkc3RfcGFnZV0sCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGQtPmRzdF9wcm90KTsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBpZiAoIWQtPmRzdF9hZGRyKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FTk9NRU07Cj4KPiBAQCAtNDAxLDggKzQwMSw4IEBAIHN0YXRpYyBpbnQg
dm13X2JvX2NwdV9ibGl0X2xpbmUoc3RydWN0IHZtd19ib19ibGl0X2xpbmVfZGF0YSAqZCwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgZC0+c3JjX2FkZHIgPQo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdHRtX2ttYXBfYXRvbWljX3Byb3QoZC0+c3JjX3BhZ2VzW3NyY19wYWdlXSwKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGQtPnNy
Y19wcm90KTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGttYXBfYXRvbWljX3By
b3QoZC0+c3JjX3BhZ2VzW3NyY19wYWdlXSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZC0+c3JjX3Byb3QpOwo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIGlmICghZC0+c3JjX2FkZHIpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gLUVOT01FTTsKPgo+IEBAIC00OTksOSArNDk5LDkgQEAgaW50IHZtd19ib19jcHVfYmxp
dChzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmRzdCwKPiAgICAgICAgIH0KPiAgb3V0Ogo+ICAg
ICAgICAgaWYgKGQuc3JjX2FkZHIpCj4gLSAgICAgICAgICAgICAgIHR0bV9rdW5tYXBfYXRvbWlj
X3Byb3QoZC5zcmNfYWRkciwgZC5zcmNfcHJvdCk7Cj4gKyAgICAgICAgICAgICAgIGt1bm1hcF9h
dG9taWMoZC5zcmNfYWRkcik7Cj4gICAgICAgICBpZiAoZC5kc3RfYWRkcikKPiAtICAgICAgICAg
ICAgICAgdHRtX2t1bm1hcF9hdG9taWNfcHJvdChkLmRzdF9hZGRyLCBkLmRzdF9wcm90KTsKPiAr
ICAgICAgICAgICAgICAga3VubWFwX2F0b21pYyhkLmRzdF9hZGRyKTsKPgo+ICAgICAgICAgcmV0
dXJuIHJldDsKPiAgfQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5o
IGIvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaAo+IGluZGV4IDBhOWQwNDJlMDc1YS4uZGUx
Y2NkY2Q1NzAzIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKPiAr
KysgYi9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oCj4gQEAgLTY2OCwxMCArNjY4LDYgQEAg
aW50IHR0bV9ib19tbWFwX29iaihzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwgc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibyk7Cj4gIGludCB0dG1fYm9fbW1hcChzdHJ1Y3QgZmlsZSAqZmls
cCwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4gICAgICAgICAgICAgICAgIHN0cnVjdCB0
dG1fYm9fZGV2aWNlICpiZGV2KTsKPgo+IC12b2lkICp0dG1fa21hcF9hdG9taWNfcHJvdChzdHJ1
Y3QgcGFnZSAqcGFnZSwgcGdwcm90X3QgcHJvdCk7Cj4gLQo+IC12b2lkIHR0bV9rdW5tYXBfYXRv
bWljX3Byb3Qodm9pZCAqYWRkciwgcGdwcm90X3QgcHJvdCk7Cj4gLQo+ICAvKioKPiAgICogdHRt
X2JvX2lvCj4gICAqCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8v
YmxvZy5mZndsbC5jaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
