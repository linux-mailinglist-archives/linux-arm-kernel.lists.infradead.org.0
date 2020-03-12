Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F574183A19
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 21:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzUGwseVbNFJ0U0B14kK8zV5ILosreVhV1H2UyVgi0c=; b=uac6K4MBzL+0WT
	1ZDyso0OyzHfgx3FpxTKIBrt5teRvRj5C/Ib0SvFPAXDGOxfnbGSWMWuyOTPWGVC4mW964d16C5Rt
	aE5XrnQFcvtppbbkvME5sbxlyE7yzQ1J0zmsJ/9/lU8aRNOxGV9OO9364ljrRjI6Fvuo3CPZNCNYZ
	M+3W6nYyuOfVBQCDSak/SmZ/+YJ2TJx8jsk4xQblRWOAvbfirT3bNQCXH0MDIqSDr7GJcLQpMzg++
	8+6sdhWXEv1lIsuLiD9oO9tRU7+6o46QzBry/RekNFsDfMGsqfxEy2Wd8OhgIrKmgFboH/vZ+CHu+
	snO2GUroRl3ibtDGWR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCTzl-0002JZ-Ew; Thu, 12 Mar 2020 19:59:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCTzc-0002Ib-8G
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 19:59:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id t13so1416533wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 12:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ob+DDAJoCv1eNbpOzJsx/saHpEetRfJlb0KnNJ3G6Og=;
 b=X1qtGcuvtvqFLuJpd+LP+okeBAHhenV4fi3+E47XtLVTi50WomOHJaVXJwKPrIFDNz
 2cgvozUVrPAkfJ7GJYn2XZchKUpD4GXfk7rc2yCfXHtFbfM5ntfsjQjfwWnt6GkiWKPX
 DN6er1P1AU3isxcGno53R5S2vZ8pQgAQSPrk8emtJchUerRbWdHHszfgp6DeV03f++2Y
 eTMbqy3iqlNvvYRKL5hu+qAhApLzaCbPp8q8xLrSjYIJc3Puu8749dkNxIFhnI/TO1w+
 Px5ldX2pwZszdBWGLq1okMV/XR7fCGe6oaoq0UvtFaYL8U3JVT+YA3vLxWWVzCs9x3+l
 oU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ob+DDAJoCv1eNbpOzJsx/saHpEetRfJlb0KnNJ3G6Og=;
 b=o+6jknXS3tqGvATmJjTucYs3//G7Aa7VRaGfXdzktTdBNhKP45vDs/RZ1Vm/W3VyDP
 HWIJLCDr+gWo7BT945V/vWNHFfl/dLSbSaON7UB62vVp7jyrNN2cMZPR1wXg6azQVPt4
 9eM80f/XLr0/UHhlJTvsYKzvoU5nXOhWsDHjwZKdoTYFSavVhKv8H3Z/OCxG/Ug2Ql6i
 fNCUXOvNa8RfDbeQXqD1U1psUfNlRlRYM3MteyV4ie+ReJ2BR3o7Zc7WG3jYbfPmeBpQ
 Qg9OntuyxOdYrLLq8xqwYSw8ezPCJf8LPrWtvmuk/ntLt5dADoPCCVxwP0iZdwDKlp7S
 I0xw==
X-Gm-Message-State: ANhLgQ3B80Q04gVDOH8Ng8a3Zm3NHZZZwvjRpRRaRd+9aszupT0Rm8yQ
 5QUQLkfQgCrJ91EQt3P6QbVK8T8VDPNUp5MibKho4A==
X-Google-Smtp-Source: ADFU+vtNzD+KVArkr1t+ZItRwBiWwgsZ175SQZjbBDipJcKcWr0rV2ntzewY7uSWxCh7efF2btQLS9IY5JEAkPzrMJg=
X-Received: by 2002:a7b:cc98:: with SMTP id p24mr6032809wma.29.1584043180023; 
 Thu, 12 Mar 2020 12:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200312155920.50067-1-glider@google.com>
 <20200312164922.GC21120@lakrids.cambridge.arm.com>
In-Reply-To: <20200312164922.GC21120@lakrids.cambridge.arm.com>
From: Alexander Potapenko <glider@google.com>
Date: Thu, 12 Mar 2020 20:59:28 +0100
Message-ID: <CAG_fn=VfRW6Gi-a9WCMwoK1-Nc+i+NFLN3ZyhFAUzr-K3LeaZQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: define __alloc_zeroed_user_highpage
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_125944_322395_7CEF7BFC 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgNTo0OSBQTSBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFu
ZEBhcm0uY29tPiB3cm90ZToKPgo+IE9uIFRodSwgTWFyIDEyLCAyMDIwIGF0IDA0OjU5OjIwUE0g
KzAxMDAsIGdsaWRlckBnb29nbGUuY29tIHdyb3RlOgo+ID4gV2hlbiBydW5uaW5nIHRoZSBrZXJu
ZWwgd2l0aCBpbml0X29uX2FsbG9jPTEsIGNhbGxpbmcgdGhlIGRlZmF1bHQKPiA+IGltcGxlbWVu
dGF0aW9uIG9mIF9fYWxsb2NfemVyb2VkX3VzZXJfaGlnaHBhZ2UoKSBmcm9tIGluY2x1ZGUvbGlu
dXgvaGlnaG1lbS5oCj4gPiBsZWFkcyB0byBkb3VibGUtaW5pdGlhbGl6YXRpb24gb2YgdGhlIGFs
bG9jYXRlZCBwYWdlIChmaXJzdCBieSB0aGUgcGFnZQo+ID4gYWxsb2NhdG9yLCB0aGVuIGJ5IGNs
ZWFyX3VzZXJfcGFnZSgpLgo+ID4gQ2FsbGluZyBhbGxvY19wYWdlX3ZtYSgpIHdpdGggX19HRlBf
WkVSTywgc2ltaWxhcmx5IHRvIGUuZy4geDg2LCBzZWVtcwo+ID4gdG8gYmUgZW5vdWdoIHRvIGVu
c3VyZSB0aGUgdXNlciBwYWdlIGlzIHplcm9lZCBvbmx5IG9uY2UuCj4KPiBKdXN0IHRvIGNoZWNr
LCBpcyB0aGVyZSBhIGZ1bmN0aW9uYWwgdXNzdWUgYmV5b25kIHRoZSByZWR1bmRhbnQgemVyb2lu
ZywKPiBvciBpcyB0aGlzIGpzdXQgYSBwZXJmb3JtYW5jZSBpc3N1ZT8KClRoaXMgaXMganVzdCBh
IHBlcmZvcm1hbmNlIGlzc3VlIHRoYXQgb25seSBtYW5pZmVzdHMgd2hlbiBydW5uaW5nIHRoZQpr
ZXJuZWwgd2l0aCBpbml0X29uX2FsbG9jPTEuCgo+IE9uIGFyY2hpdGVjdHVyZXMgd2l0aCByZWFs
IGhpZ2htZW0sIGRvZXMgR0ZQX0hJR0hVU0VSIHByZXZlbnQgdGhlCj4gYWxsb2NhdG9yIGZyb20g
emVyb2luZyB0aGUgcGFnZSBpbiB0aGlzIGNhc2UsIG9yIGlzIHRoZSBhcmNoaXRlY3R1cmUKPiBw
cmV2ZW50ZWQgZnJvbSBhbGxvY2F0aW5nIGZyb20gaGlnaG1lbT8KCkkgd2FzIGhvcGluZyBvbmUg
b2YgQVJNIG1haW50YWluZXJzIGNhbiBhbnN3ZXIgdGhpcyBxdWVzdGlvbi4gTXkKdW5kZXJzdGFu
ZGluZyB3YXMgdGhhdCBfX0dGUF9aRVJPIHNob3VsZCBiZSBzdWZmaWNpZW50LCBidXQgdGhlcmUn
cwpwcm9iYWJseSBzb21ldGhpbmcgSSdtIG1pc3NpbmcuCgoKCj4gVGhhbmtzLAo+IE1hcmsuCj4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgUG90YXBlbmtvIDxnbGlkZXJAZ29vZ2xl
LmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGFnZS5oIHwgNCArKysr
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BhZ2UuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20v
cGFnZS5oCj4gPiBpbmRleCBkMzlkZGIyNThhMDQ5Li43NWQ2Y2QyM2E2NzkwIDEwMDY0NAo+ID4g
LS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9wYWdlLmgKPiA+ICsrKyBiL2FyY2gvYXJtNjQv
aW5jbHVkZS9hc20vcGFnZS5oCj4gPiBAQCAtMjEsNiArMjEsMTAgQEAgZXh0ZXJuIHZvaWQgX19j
cHVfY29weV91c2VyX3BhZ2Uodm9pZCAqdG8sIGNvbnN0IHZvaWQgKmZyb20sCj4gPiAgZXh0ZXJu
IHZvaWQgY29weV9wYWdlKHZvaWQgKnRvLCBjb25zdCB2b2lkICpmcm9tKTsKPiA+ICBleHRlcm4g
dm9pZCBjbGVhcl9wYWdlKHZvaWQgKnRvKTsKPiA+Cj4gPiArI2RlZmluZSBfX2FsbG9jX3plcm9l
ZF91c2VyX2hpZ2hwYWdlKG1vdmFibGVmbGFncywgdm1hLCB2YWRkcikgXAo+ID4gKyAgICAgYWxs
b2NfcGFnZV92bWEoR0ZQX0hJR0hVU0VSIHwgX19HRlBfWkVSTyB8IG1vdmFibGVmbGFncywgdm1h
LCB2YWRkcikKPiA+ICsjZGVmaW5lIF9fSEFWRV9BUkNIX0FMTE9DX1pFUk9FRF9VU0VSX0hJR0hQ
QUdFCj4gPiArCj4gPiAgI2RlZmluZSBjbGVhcl91c2VyX3BhZ2UoYWRkcix2YWRkcixwZykgIF9f
Y3B1X2NsZWFyX3VzZXJfcGFnZShhZGRyLCB2YWRkcikKPiA+ICAjZGVmaW5lIGNvcHlfdXNlcl9w
YWdlKHRvLGZyb20sdmFkZHIscGcpIF9fY3B1X2NvcHlfdXNlcl9wYWdlKHRvLCBmcm9tLCB2YWRk
cikKPiA+Cj4gPiAtLQo+ID4gMi4yNS4xLjQ4MS5nZmJjZTBlYjgwMS1nb29nCj4gPgoKCgotLSAK
QWxleGFuZGVyIFBvdGFwZW5rbwpTb2Z0d2FyZSBFbmdpbmVlcgoKR29vZ2xlIEdlcm1hbnkgR21i
SApFcmlrYS1NYW5uLVN0cmHDn2UsIDMzCjgwNjM2IE3DvG5jaGVuCgpHZXNjaMOkZnRzZsO8aHJl
cjogUGF1bCBNYW5pY2xlLCBIYWxpbWFoIERlTGFpbmUgUHJhZG8KUmVnaXN0ZXJnZXJpY2h0IHVu
ZCAtbnVtbWVyOiBIYW1idXJnLCBIUkIgODY4OTEKU2l0eiBkZXIgR2VzZWxsc2NoYWZ0OiBIYW1i
dXJnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
