Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980B1551AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nl0MLhbfa8UjQdcRB0cDEmXDhxS4Atsyj74gtJBmV0=; b=i7jf779QGEQjl/
	RbZwLqnepaQmx5iqZLOyWULvF1JW7K5MfFWzvdFrsf9McRUgfrEYse0NOE9v/ATpx58O2ZspGyGXI
	GruXUOZgG8N2y3Ri71xYix2OMk/DVKeWXytVGOx3JTpIKvBiWrTLPN+hSXVIkHrSt2zwTEZY6mt+K
	PQw/QLpAN1fB/TM6gWVrMwIzjPWrOQWFdmCxPBZDXOjaIBjTqcD9jImstplTN03Ud1cWh+tESlWFH
	v9pCVm4ULAfRxfVi9VOiaEnb75yvesraO3GJ2iBym3bCmENcWc3w5IfBjwmIdL6DnH+H/YiePQ+qv
	sY3pcy/HofjuWW1BbaiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmQp-0003Uo-1o; Tue, 25 Jun 2019 14:28:23 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmQc-0003Ts-4M
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:28:11 +0000
Received: by mail-qk1-x744.google.com with SMTP id x18so12699674qkn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fZTSDA7Jm88O6VnwanikoTP6YNbKCMJ8649VNWkEmCA=;
 b=pNb4rfKcGRZeJnFUsfnXdhWA4zo3p+5+Aqc15gwpsJzcb88+TdhNtQHB7/JFqvk+be
 6BmDnzabEpDbh0BryRV18XSQSef7ncqNOVoirX/Pmr6jAKfksORHaVrSmHnKXsTSHnh7
 +uSavj8Vy6/gyC5j0arhGmWI8GtuC+FOxixyTyKgMGRjUj6hl9Kjvcf9/ShYuN5z5QxX
 0t8SV6BU9KQKncGPMT+F5j2dL+tkQhOcMmZ94pmoLg/EnOdcE7gwWAuGS+LpiiV+vKSA
 KhLkCYfW5LAmodi8RmnPs8D9uXgQoU4/cdfuFH08O/10crjGEl2nGBpJBeZKg5FircKB
 LVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fZTSDA7Jm88O6VnwanikoTP6YNbKCMJ8649VNWkEmCA=;
 b=BseSNIJ6WfItyEeIR3epyOON1UIZQvPH3nxyWjJBe9NXlHxcJWodC1tZyrz8ykdjbl
 f7GwRJY3J9UirNpU7S9pzNMJmY1+sm9q/w+Aw2fN/o1xLwk6G1XCeIJDGSQVF5GT9aUs
 0iursVD3I9fnKU5DABgaUG+ey3+PU8kMXDZ1vc04SmEjwrRZf0HcBFGirBmRMaTJ/1aP
 Amre0bRzeHB1Ndg14f8bFy+bJMzRezcnm3CBrt4J0EsbbjJqs1ddtGbmM7BBV+kgioJI
 25rADI/VUmn+w2wg/FAgaOG0YWJojreaUzpOWnMroS9nY/gA4MJx+XgMvD9l/6G/5X/K
 qrtA==
X-Gm-Message-State: APjAAAWYVhQF5wOeWS02sxdoDPIKoD668Kusz9BhtymJjeNHsQZ7hkyG
 y8kkvjSy58jXyjcBk+kgn9I4nQ==
X-Google-Smtp-Source: APXvYqzJwQVO95DigbWp2E0NeIqdMZbB34f+lQDS3CeMLe+WRHPUtwCWF+FX4mfgesfZTyf15w1UEQ==
X-Received: by 2002:a37:4d06:: with SMTP id a6mr2250109qkb.298.1561472888897; 
 Tue, 25 Jun 2019 07:28:08 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id d26sm6923857qkl.97.2019.06.25.07.28.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 07:28:08 -0700 (PDT)
Message-ID: <1561472887.5154.72.camel@lca.pw>
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
From: Qian Cai <cai@lca.pw>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date: Tue, 25 Jun 2019 10:28:07 -0400
In-Reply-To: <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_072810_175560_D298F84A 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE1OjExICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90
ZToKPiBIaSBRaWFuLAo+IAo+IE9uIDI1LzA2LzIwMTkgMTQ6NTEsIFFpYW4gQ2FpIHdyb3RlOgo+
ID4gT24gVHVlLCAyMDE5LTA2LTI1IGF0IDE0OjQwICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3
cm90ZToKPiA+ID4gT24gMjUvMDYvMjAxOSAxMzo1NiwgUWlhbiBDYWkgd3JvdGU6Cj4gPiA+ID4g
T24gVHVlLCAyMDE5LTA2LTI1IGF0IDEzOjQ3ICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90
ZToKPiA+ID4gPiA+IEhpIFFpYW4sCj4gPiA+ID4gPiAKPiA+ID4gPiA+IE9uIDI1LzA2LzIwMTkg
MTM6MTYsIFFpYW4gQ2FpIHdyb3RlOgo+ID4gPiA+ID4gPiBUaGUgbGludXgtbmV4dCBjb21taXQg
ImFybTY0OiB2ZHNvOiBTdWJzdGl0dXRlIGdldHRpbWVvZmRheSgpIHdpdGggQwo+ID4gPiA+ID4g
PiBpbXBsZW1lbnRhdGlvbiIgWzFdIGJyZWFrcyBjbGFuZyBidWlsZC4KPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+IGVycm9yOiBpbnZhbGlkIHZhbHVlICd0aW55JyBpbiAnLW1jb2RlLW1vZGVsIHRp
bnknCj4gPiA+ID4gPiA+IG1ha2VbMV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNzk6
Cj4gPiA+ID4gPiA+IGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmdldHRpbWVvZmRheS5vXSBFcnJv
ciAxCj4gPiA+ID4gPiA+IG1ha2VbMV06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMu
Li4uCj4gPiA+ID4gPiA+IG1ha2U6ICoqKiBbYXJjaC9hcm02NC9NYWtlZmlsZToxODA6IHZkc29f
cHJlcGFyZV0gRXJyb3IgMgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gWzFdIGh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEwMDk2NjMvCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBJIGFtIG5vdCBzdXJlIHdoYXQgZG9lcyBleGFjdGx5IGJyZWFrIGZyb20geW91
ciByZXBvcnQuIENvdWxkIHlvdQo+ID4gPiA+ID4gcGxlYXNlCj4gPiA+ID4gPiBwcm92aWRlCj4g
PiA+ID4gPiBtb3JlIGRldGFpbHM/Cj4gPiA+ID4gCj4gPiA+ID4gSGVyZSBpcyB0aGUgY29uZmln
IHRvIHJlcHJvZHVjZS4KPiA+ID4gPiAKPiA+ID4gPiBodHRwczovL3Jhdy5naXRodWJ1c2VyY29u
dGVudC5jb20vY2FpbGNhL2xpbnV4LW1tL21hc3Rlci9hcm02NC5jb25maWcKPiA+ID4gPiAKPiA+
ID4gPiAjIG1ha2UgQ0M9Y2xhbmcgLWogJChucl9jcHVzKQo+ID4gPiA+IAo+ID4gPiA+IEkgY2Fu
IGdldCBpdCB3b3JraW5nIGFnYWluIGJ5IHJlbW92aW5nICItbWNtb2RlbD10aW55IiBpbgo+ID4g
PiA+IGFyY2gvYXJtNjQva2VybmVsL3Zkc28vTWFrZWZpbGUKPiA+ID4gPiAKPiA+ID4gCj4gPiA+
IFdpdGggeW91ciBkZWZjb25maWcgSSBjYW4ndCBzdGlsbCByZXByb2R1Y2UgdGhlIHByb2JsZW0u
IFdoaWNoIHZlcnNpb24gb2YKPiA+ID4gY2xhbmcKPiA+ID4gYXJlIHlvdSB1c2luZz8KPiA+IAo+
ID4gQ29tcGlsZXI6IGNsYW5nIHZlcnNpb24gNy4wLjEgKHRhZ3MvUkVMRUFTRV83MDEvZmluYWwp
Cj4gPiAKPiAKPiBJIGFtIHVzaW5nIGNsYW5nIDguMC4wLiBDb3VsZCB5b3UgcGxlYXNlIHRyeSB3
aXRoIGl0IGFuZCBzZWUgaWYgdGhlIGlzc3VlIGdvZXMKPiBhd2F5PwoKTG9va3MgbGlrZSB0aGUg
InRpbnkiIHdhcyBhZGRlZCBzaW5jZSBjbGFuZyA4LjAuCgpodHRwczovL3Jldmlld3MubGx2bS5v
cmcvRDQ5Njc0CgpidXQgY2xhbmcgNy4wIGlzIHN0aWxsIHVzZSBpbiBtYW55IGRpc3Ryb3MgYnkg
ZGVmYXVsdCwgc28gbWF5YmUgdGhpcyBjb21taXQgY2FuCmJlIGZpeGVkIGJ5IGFkZGluZyBhIGNv
bmRpdGlvbmFsIGNoZWNrIHRvIHVzZSAic21hbGwiIGlmIGNsYW5nIHZlcnNpb24gPCA4LjAuCgo+
IAo+IFRoYW5rcywKPiBWaW5jZW56bwo+IAo+ID4gPiAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gT24g
bXkgZW52Ogo+ID4gPiA+ID4gCj4gPiA+ID4gPiAkIG1ha2UgbXJwcm9wZXIgJiYgbWFrZSBkZWZj
b25maWcgJiYgbWFrZSBDQz1jbGFuZyBIT1NUQ0M9Y2xhbmcKPiA+ID4gPiA+IC1qJChucHJvYykK
PiA+ID4gPiA+IAo+ID4gPiA+ID4gLi4uCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGFyY2gvYXJtNjQv
TWFrZWZpbGU6NTY6IENST1NTX0NPTVBJTEVfQ09NUEFUIGlzIGNsYW5nLCB0aGUgY29tcGF0IHZE
U08KPiA+ID4gPiA+IHdpbGwKPiA+ID4gPiA+IG5vdAo+ID4gPiA+ID4gYmUgYnVpbHQKPiA+ID4g
PiA+IAo+ID4gPiA+ID4gLi4uCj4gPiA+ID4gPiAKPiA+ID4gPiA+IMKgIExEU8KgwqDCoMKgwqBh
cmNoL2FybTY0L2tlcm5lbC92ZHNvL3Zkc28ubGRzCj4gPiA+ID4gPiDCoCBBU8KgwqDCoMKgwqDC
oGFyY2gvYXJtNjQva2VybmVsL3Zkc28vbm90ZS5vCj4gPiA+ID4gPiDCoCBBU8KgwqDCoMKgwqDC
oGFyY2gvYXJtNjQva2VybmVsL3Zkc28vc2lncmV0dXJuLm8KPiA+ID4gPiA+IMKgIENDwqDCoMKg
wqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92Z2V0dGltZW9mZGF5Lm8KPiA+ID4gPiA+IMKg
IExEwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92ZHNvLnNvLmRiZwo+ID4gPiA+
ID4gwqAgVkRTT0NISyBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3Zkc28uc28uZGJnCj4gPiA+ID4g
PiDCoCBWRFNPU1lNIGluY2x1ZGUvZ2VuZXJhdGVkL3Zkc28tb2Zmc2V0cy5oCj4gPiA+ID4gPiAK
PiA+ID4gPiA+IC4uLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiDCoCBMRMKgwqDCoMKgwqDCoHZtbGlu
dXgubwo+ID4gPiA+ID4gwqAgTU9EUE9TVCB2bWxpbnV4Lm8KPiA+ID4gPiA+IMKgIE1PRElORk8g
bW9kdWxlcy5idWlsdGluLm1vZGluZm8KPiA+ID4gPiA+IMKgIEtTWU3CoMKgwqDCoC50bXBfa2Fs
bHN5bXMxLm8KPiA+ID4gPiA+IMKgIEtTWU3CoMKgwqDCoC50bXBfa2FsbHN5bXMyLm8KPiA+ID4g
PiA+IMKgIExEwqDCoMKgwqDCoMKgdm1saW51eAo+ID4gPiA+ID4gwqAgU09SVEVYwqDCoHZtbGlu
dXgKPiA+ID4gPiA+IMKgIFNZU01BUMKgwqBTeXN0ZW0ubWFwCj4gPiA+ID4gPiDCoCBCdWlsZGlu
ZyBtb2R1bGVzLCBzdGFnZSAyLgo+ID4gPiA+ID4gwqAgT0JKQ09QWSBhcmNoL2FybTY0L2Jvb3Qv
SW1hZ2UKPiA+ID4gPiA+IMKgIE1PRFBPU1QgNDgzIG1vZHVsZXMKPiA+ID4gPiA+IAo+ID4gPiAK
PiA+ID4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
