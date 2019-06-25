Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7DF550C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeIhMWnrnrXjRT6KevtWJFVlTnLLObFRgxll7wiaXIU=; b=iM/ayRw61pBdyp
	6hPBnm5ff09lWv6cvh7nrtZDfiXGeFqbvQiW4hpObEWyNGLr+lN8K1eyvVDwBNEoJwYxT25xf6j56
	6rDiCwDw0+/CXbiMf7cyKF1VMzeU/+Byt5onccU4JqSILLBcMSQUT1iaK3m5WrUwCyuFE9pceieV6
	n4sFhlrvoDfI5A6HIi4ruPfiXCUXQYHTm7Kp3mkGmepJa1OMsXDFJUhanX79iEAc/MgsPe4zN57Uu
	9GVCprBokRmQnExkNhUSdddxziKIt89T2Qf/EcQspCjSTYTBGjziM2Bdvh4ssnPLf4WSHVgzVQVee
	6L2+1dd8d9TNaSh+RzfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflrd-0002CY-Mb; Tue, 25 Jun 2019 13:52:01 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflrR-0002BQ-UK
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:51:51 +0000
Received: by mail-qt1-x844.google.com with SMTP id w40so7888560qtk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wjkKzUFIVPJ1j5aV88KU9VWmlhLQMASp3kVIWO/a6pA=;
 b=WPqJuEazkr5JEFJTFgEo9lRY4Kq9gTotdEE27bIGpXyHnXuDkSKC8LuHNBL6Ypi3bv
 I8fL0UjUwYmZHUFqppz0btsTL01C1gK2GcuKZfCT0ODqMgML06fRgY0M0sj9X9PiJGsg
 bLxZSr6Y6dEI6lYHuxq0kyHSNDTnanI/YuP8iOwviWMNmgjjFtZpP8xxO3xH5Z/F/f+T
 uuy6TBD82zFYDZxdcddV2/FMPxKkYCUI6COsJuSm51tOvDG5+WsAMFbukDLFcpxwlQHK
 jPQtTSp3Ys/zuuCF9nXkwHwJyxWbE8Ffhvmgno2kJ5bvdLHTS7DwoDfvGOltUDgnGLH6
 WdYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wjkKzUFIVPJ1j5aV88KU9VWmlhLQMASp3kVIWO/a6pA=;
 b=QpGzSRoTO1YAqLWBeXKSi0o/c7LMLVtKN5DdJMpxNJQ02ke7guRLnogvC0L+MXxapZ
 BB3sOoNcCOJEWiLwsCRZSSw6GfCkdiPlkWkqwQJ3Rsi8ICnhDNOjytHx5j3V67mVlcZy
 vzc2/sMY2t92NUAnG9nAE+OemaS0/cstL53ChyBJSV4rLKEBIVBe/QuKUus7ZSO9gpvY
 k8DzDjfQ9iiEQCpl6PvE+Iy8wfdYP80pVOEu/sAxfOy/DJPAXkrT1DpEQGygE5tsCrJs
 nQ07YQUFdd8iCqCe0s26snib8H35U21OyWdgHXNWeYRBBS/BO+lUxKPWb8uOjTcbYRER
 TNoQ==
X-Gm-Message-State: APjAAAUIaHhzURUgWXw9Hy9LGsWW61ocOJ+2oQ0OOQMpnlehnAB8otwj
 lpPgHbqzKhsdMx0I+y5oTEA89w==
X-Google-Smtp-Source: APXvYqwx9tviP/RsZnNZPrM2hgYzH7eQ8kOq7UPdXGLrRfUBtTHfxw03I3E1v3nHFtzJZyMMtcm4DQ==
X-Received: by 2002:ad4:46f1:: with SMTP id h17mr30472101qvw.109.1561470707055; 
 Tue, 25 Jun 2019 06:51:47 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id u7sm11765933qtc.25.2019.06.25.06.51.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 06:51:46 -0700 (PDT)
Message-ID: <1561470705.5154.68.camel@lca.pw>
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
From: Qian Cai <cai@lca.pw>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date: Tue, 25 Jun 2019 09:51:45 -0400
In-Reply-To: <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_065150_026842_0AC061C3 
X-CRM114-Status: GOOD (  16.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ndesaulniers@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 natechancellor@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE0OjQwICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90
ZToKPiBPbiAyNS8wNi8yMDE5IDEzOjU2LCBRaWFuIENhaSB3cm90ZToKPiA+IE9uIFR1ZSwgMjAx
OS0wNi0yNSBhdCAxMzo0NyArMDEwMCwgVmluY2Vuem8gRnJhc2Npbm8gd3JvdGU6Cj4gPiA+IEhp
IFFpYW4sCj4gPiA+IAo+ID4gPiBPbiAyNS8wNi8yMDE5IDEzOjE2LCBRaWFuIENhaSB3cm90ZToK
PiA+ID4gPiBUaGUgbGludXgtbmV4dCBjb21taXQgImFybTY0OiB2ZHNvOiBTdWJzdGl0dXRlIGdl
dHRpbWVvZmRheSgpIHdpdGggQwo+ID4gPiA+IGltcGxlbWVudGF0aW9uIiBbMV0gYnJlYWtzIGNs
YW5nIGJ1aWxkLgo+ID4gPiA+IAo+ID4gPiA+IGVycm9yOiBpbnZhbGlkIHZhbHVlICd0aW55JyBp
biAnLW1jb2RlLW1vZGVsIHRpbnknCj4gPiA+ID4gbWFrZVsxXTogKioqIFtzY3JpcHRzL01ha2Vm
aWxlLmJ1aWxkOjI3OToKPiA+ID4gPiBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3ZnZXR0aW1lb2Zk
YXkub10gRXJyb3IgMQo+ID4gPiA+IG1ha2VbMV06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVk
IGpvYnMuLi4uCj4gPiA+ID4gbWFrZTogKioqIFthcmNoL2FybTY0L01ha2VmaWxlOjE4MDogdmRz
b19wcmVwYXJlXSBFcnJvciAyCj4gPiA+ID4gCj4gPiA+ID4gWzFdIGh0dHBzOi8vcGF0Y2h3b3Jr
Lmtlcm5lbC5vcmcvcGF0Y2gvMTEwMDk2NjMvCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBJIGFtIG5v
dCBzdXJlIHdoYXQgZG9lcyBleGFjdGx5IGJyZWFrIGZyb20geW91ciByZXBvcnQuIENvdWxkIHlv
dSBwbGVhc2UKPiA+ID4gcHJvdmlkZQo+ID4gPiBtb3JlIGRldGFpbHM/Cj4gPiAKPiA+IEhlcmUg
aXMgdGhlIGNvbmZpZyB0byByZXByb2R1Y2UuCj4gPiAKPiA+IGh0dHBzOi8vcmF3LmdpdGh1YnVz
ZXJjb250ZW50LmNvbS9jYWlsY2EvbGludXgtbW0vbWFzdGVyL2FybTY0LmNvbmZpZwo+ID4gCj4g
PiAjIG1ha2UgQ0M9Y2xhbmcgLWogJChucl9jcHVzKQo+ID4gCj4gPiBJIGNhbiBnZXQgaXQgd29y
a2luZyBhZ2FpbiBieSByZW1vdmluZyAiLW1jbW9kZWw9dGlueSIgaW4KPiA+IGFyY2gvYXJtNjQv
a2VybmVsL3Zkc28vTWFrZWZpbGUKPiA+IAo+IAo+IFdpdGggeW91ciBkZWZjb25maWcgSSBjYW4n
dCBzdGlsbCByZXByb2R1Y2UgdGhlIHByb2JsZW0uIFdoaWNoIHZlcnNpb24gb2YKPiBjbGFuZwo+
IGFyZSB5b3UgdXNpbmc/CgpDb21waWxlcjogY2xhbmcgdmVyc2lvbiA3LjAuMSAodGFncy9SRUxF
QVNFXzcwMS9maW5hbCkKCj4gCj4gPiA+IAo+ID4gPiBPbiBteSBlbnY6Cj4gPiA+IAo+ID4gPiAk
IG1ha2UgbXJwcm9wZXIgJiYgbWFrZSBkZWZjb25maWcgJiYgbWFrZSBDQz1jbGFuZyBIT1NUQ0M9
Y2xhbmcgLWokKG5wcm9jKQo+ID4gPiAKPiA+ID4gLi4uCj4gPiA+IAo+ID4gPiBhcmNoL2FybTY0
L01ha2VmaWxlOjU2OiBDUk9TU19DT01QSUxFX0NPTVBBVCBpcyBjbGFuZywgdGhlIGNvbXBhdCB2
RFNPCj4gPiA+IHdpbGwKPiA+ID4gbm90Cj4gPiA+IGJlIGJ1aWx0Cj4gPiA+IAo+ID4gPiAuLi4K
PiA+ID4gCj4gPiA+IMKgIExEU8KgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3Zkc28u
bGRzCj4gPiA+IMKgIEFTwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby9ub3RlLm8K
PiA+ID4gwqAgQVPCoMKgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5v
Cj4gPiA+IMKgIENDwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92Z2V0dGltZW9m
ZGF5Lm8KPiA+ID4gwqAgTETCoMKgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3Zkc28u
c28uZGJnCj4gPiA+IMKgIFZEU09DSEsgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92ZHNvLnNvLmRi
Zwo+ID4gPiDCoCBWRFNPU1lNIGluY2x1ZGUvZ2VuZXJhdGVkL3Zkc28tb2Zmc2V0cy5oCj4gPiA+
IAo+ID4gPiAuLi4KPiA+ID4gCj4gPiA+IMKgIExEwqDCoMKgwqDCoMKgdm1saW51eC5vCj4gPiA+
IMKgIE1PRFBPU1Qgdm1saW51eC5vCj4gPiA+IMKgIE1PRElORk8gbW9kdWxlcy5idWlsdGluLm1v
ZGluZm8KPiA+ID4gwqAgS1NZTcKgwqDCoMKgLnRtcF9rYWxsc3ltczEubwo+ID4gPiDCoCBLU1lN
wqDCoMKgwqAudG1wX2thbGxzeW1zMi5vCj4gPiA+IMKgIExEwqDCoMKgwqDCoMKgdm1saW51eAo+
ID4gPiDCoCBTT1JURVjCoMKgdm1saW51eAo+ID4gPiDCoCBTWVNNQVDCoMKgU3lzdGVtLm1hcAo+
ID4gPiDCoCBCdWlsZGluZyBtb2R1bGVzLCBzdGFnZSAyLgo+ID4gPiDCoCBPQkpDT1BZIGFyY2gv
YXJtNjQvYm9vdC9JbWFnZQo+ID4gPiDCoCBNT0RQT1NUIDQ4MyBtb2R1bGVzCj4gPiA+IAo+IAo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
