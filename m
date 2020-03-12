Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C0618311F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kcfSesFZ3GP2G1h5l2ppt5PvdkxH/AWBU98ZORtjizg=; b=YIakFQoxq8pA94OcutyXJjSjC
	zNTTTmR+VRuVyi77Jersa5MDDPFXmZFPdldG8ifaV6l74hqwZyGJPfMWKuxp3Xj1LvhVai0VFQgYv
	iplZmypgspdGj7RTfHm5djI4+pPb4OZkVUWUAId/J1RkIac/XNXulOLN1mudOfm1f4zueOKgA4S4j
	o9x3CYfIj8lDFZlDzKXAusP7EjsglOCzCPwXHSHt+6MMgrQnExopSM9HbL8cpj8XsUC722ZZg+G4Z
	bQrNe7alIZc8hcv0TkMDFMNuS7M7zKBbTn2+o+uBuv+5+pnD9vbu84uWtQAnyUZfy01StoUuJmGpZ
	Pl9Sinxgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNmx-0004ik-34; Thu, 12 Mar 2020 13:22:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNmk-0004iD-LV
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:22:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5023E30E;
 Thu, 12 Mar 2020 06:22:01 -0700 (PDT)
Received: from [10.162.16.120] (a075563-lin.blr.arm.com [10.162.16.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BDDA43F534;
 Thu, 12 Mar 2020 06:21:57 -0700 (PDT)
Subject: Re: [PATCH v6 00/18] (as long a
To: Marc Zyngier <maz@kernel.org>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <ae8f900b-6173-5cbb-076e-457994fbe0fe@arm.com>
 <79a45ce2-a632-9821-986e-1f48cb0121c9@arm.com>
 <98ad6e44-7aef-9ad2-0398-d5d412d8bb23@arm.com>
 <b5ca043cfaca30435957974d0f58524e@kernel.org>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <7ba381f0-095d-6994-bb6d-12b2665b4a8e@arm.com>
Date: Thu, 12 Mar 2020 18:51:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b5ca043cfaca30435957974d0f58524e@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_062202_795887_4D327ABB 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDMvMTIvMjAgNjoxNyBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIEFt
aXQsCj4gCj4gT24gMjAyMC0wMy0xMiAwODowNiwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+PiBIaSBK
YW1lcywKPj4KPj4gT24gMy8xMi8yMCAxMjoyMyBQTSwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+Pj4g
SGkgSmFtZXMsCj4+Pgo+Pj4gT24gMy8xMS8yMCAyOjU4IFBNLCBKYW1lcyBNb3JzZSB3cm90ZToK
Pj4+PiBIaSBBbWl0LAo+Pj4+Cj4+Pj4gKENDOiArTWFyYykKPj4+Pgo+Pj4+IE9uIDMvNi8yMCA2
OjM1IEFNLCBBbWl0IERhbmllbCBLYWNoaGFwIHdyb3RlOgo+Pj4+PiBUaGlzIHNlcmllcyBpbXBy
b3ZlcyBmdW5jdGlvbiByZXR1cm4gYWRkcmVzcyBwcm90ZWN0aW9uIGZvciB0aGUgCj4+Pj4+IGFy
bTY0IGtlcm5lbCwgYnkKPj4+Pj4gY29tcGlsaW5nIHRoZSBrZXJuZWwgd2l0aCBBUk12OC4zIFBv
aW50ZXIgQXV0aGVudGljYXRpb24gCj4+Pj4+IGluc3RydWN0aW9ucyAocmVmZXJyZWQKPj4+Pj4g
cHRyYXV0aCBoZXJlYWZ0ZXIpLiBUaGlzIHNob3VsZCBoZWxwIHByb3RlY3QgdGhlIGtlcm5lbCBh
Z2FpbnN0IAo+Pj4+PiBhdHRhY2tzIHVzaW5nCj4+Pj4+IHJldHVybi1vcmllbnRlZCBwcm9ncmFt
bWluZy4KPj4+Pgo+Pj4+IChhcyBpdCBsb29rcyBsaWtlIHRoZXJlIG1heSBiZSBhbm90aGVyIHZl
cnNpb24gb2YgdGhpczopCj4+Pj4KPj4+PiBBbSBJIHJpZ2h0IGluIHRoaW5raW5nIHRoYXQgYWZ0
ZXIgeW91ciBwYXRjaCAxMCBjaGFuZ2luZwo+Pj4+IGNwdV9zd2l0Y2hfdG8oKSwgb25seSB0aGUg
QSBrZXkgaXMgbGl2ZSBkdXJpbmcga2VybmVsIGV4ZWN1dGlvbj8KPj4+Cj4+PiBZZXMKPj4+Cj4+
Pj4KPj4+PiBLVk0gaXMgc3RpbGwgc2F2ZS9yZXN0b3JpbmcgNCBleHRyYSBrZXlzIGFyb3VuZCBn
dWVzdC1lbnRyeS9leGl0LiBBcyAKPj4+PiB5b3UKPj4+PiByZXN0b3JlIGFsbCB0aGUga2V5cyBv
biByZXR1cm4gdG8gdXNlci1zcGFjZSwgaXMgdGhpcyBzdGlsbCBuZWNlc3Nhcnk/Cj4+Pgo+Pj4g
WWVzIEl0cyBhIGdvb2Qgb3B0aW1pemF0aW9uIHRvIHNraXAgNCBub24tQSBrZXlzLiBJIHdhcyB3
b25kZXJpbmcgCj4+PiB3aGV0aGVyIHRvIGRvIGl0IGluIHRoaXMgc2VyaWVzIG9yIHNlbmQgaXQg
c2VwYXJhdGVseS4KPj4KPj4gSSBzdXBwb3NlIHdlIGNhbiBvbmx5IHNraXAgbm9uLUEga2V5cyBz
YXZlL3Jlc3RvcmUgZm9yIGhvc3QgY29udGV4dC4gSWYKPj4gd2Ugc2tpcCBub24tQSBrZXlzIGZv
ciBndWVzdCBjb250ZXh0IHRoZW4gZ3Vlc3Qgd2l0aCBvbGQgaW1wbGVtZW50YXRpb24KPj4gd2ls
bCBicmVhay4gTGV0IG1lIGtub3cgeW91ciBvcGluaW9uLgo+IAo+IEkgZG9uJ3QgdGhpbmsgeW91
IGNhbiBza2lwIGFueXRoaW5nIGFzIGZhciBhcyB0aGUgZ3Vlc3QgaXMgY29uY2VybmVkLgo+IEJ1
dCBiZWluZyBhYmxlIHRvIHNraXAgdGhlIEIga2V5cyAod2hpY2ggaXMgd2hhdCBJIGV4cGVjdCB5
b3UgY2FsbCB0aGUKPiBub24tQSBrZXlzKSBvbiB0aGUgaG9zdCB3b3VsZCBjZXJ0YWlubHkgYmUg
dXNlZnVsLgoKVGhhbmtzIGZvciB0aGUgY2xhcmlmaWNhdGlvbi4KCj4gCj4gSSBhc3N1bWUgeW91
IGhhdmUgYSB3YXkgdG8gaGlkZSB0aGVtIGZyb20gdXNlcnNwYWNlLCB0aG91Z2guCgpZb3UgbWVh
biBoaWRlIGFsbCB0aGUga2V5cyBmcm9tIHVzZXJzcGFjZSBsaWtlIGJlbG93LAoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmMgYi9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5j
CmluZGV4IDNlOTA5YjEuLjI5Y2M3NGYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQva3ZtL3N5c19y
ZWdzLmMKKysrIGIvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwpAQCAtMTAyMyw3ICsxMDIzLDcg
QEAgc3RhdGljIGJvb2wgdHJhcF9wdHJhdXRoKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSwKICBzdGF0
aWMgdW5zaWduZWQgaW50IHB0cmF1dGhfdmlzaWJpbGl0eShjb25zdCBzdHJ1Y3Qga3ZtX3ZjcHUg
KnZjcHUsCiAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3Qgc3lzX3JlZ19kZXNj
ICpyZCkKICB7Ci0gICAgICAgcmV0dXJuIHZjcHVfaGFzX3B0cmF1dGgodmNwdSkgPyAwIDogUkVH
X0hJRERFTl9VU0VSIHwgClJFR19ISURERU5fR1VFU1Q7CisgICAgICAgcmV0dXJuIHZjcHVfaGFz
X3B0cmF1dGgodmNwdSkgPyBSRUdfSElEREVOX1VTRVIgOiAKUkVHX0hJRERFTl9VU0VSIHwgUkVH
X0hJRERFTl9HVUVTVDsKICB9CgogICNkZWZpbmUgX19QVFJBVVRIX0tFWShrKQoKSSBkb24ndCBy
ZW1lbWJlciB3aHkgaXQgd2FzIG5vdCBkb25lIHRoaXMgd2F5IGxhc3QgdGltZS4KCkNoZWVycywK
QW1pdAoKPiAKPiBUaGFua3MsCj4gCj4gIMKgwqDCoMKgwqDCoMKgIE0uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
