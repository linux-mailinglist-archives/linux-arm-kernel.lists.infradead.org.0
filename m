Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A57154F6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKf6IAF3cshULsBmx5RGR0CNuiVwwYLQwPwCFPsAXmg=; b=XyvPUWDccFRIKC
	PFFEUtVrdGJB5+tw/LgLeyYdxgKDpoYHhixTZQ4NuJDDicIF5qObkqQ7kng6OwsXRxEawcvWTCqNh
	p5rdeR2P5c9+jJu0Y/vpw41NeVjBj1dOmZwCYO8xWBGDERw1a/beBOxxaGK7xlDmy0m85UAaW5AyL
	0+k1/WJXY816dSPMZu1HW0BwMwDbeHiEZY3pjMMHxQFBbStAsdNkrGGQ3Oluo3o1ATewwIOi40e4w
	+TfmOb3C30eCBq+mA44OYP3XZP/WejZmxwrf6Y7aBAYt+tz7VI3QRKm5SKJokHvH5p2xFJGEAAibe
	0HdaGiyrhEU8Pa1XrA7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkzo-0006Jn-1M; Tue, 25 Jun 2019 12:56:24 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkzc-0006Ix-4u
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:56:13 +0000
Received: by mail-qk1-x741.google.com with SMTP id m14so12437961qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OurFPUo7gnihcYVub8SOQDvfLe3fR+6xdFiBUG/mGaU=;
 b=DZuLEnT0c3Anyy8jegKUBD1pB5R05zrrm6Hg1/EXMvo2Azh30aWlDVwzQ+RXchLRx4
 iC/YEH+9byL2b7UGpVIjBWH8xW/ZF3FPppaGwX4xwZn4cyZQAmeTD7xSQKyzUznHunVi
 5u+9r26kvl7UvtOw7HersgYkGjYPuhz+17TPW4xuKu47wTkBHPGGXaxe+sIVSE+ccI1Y
 Mca+ACVEJ5t1XQ2X7BDriCe3dTn7ZfiFxnlGjBD+nX/wcGAbV6ay2T28Sff6M3Zn3npM
 2Df0OM/lpjKtZxhLZeisUM3a5HsKxUjS8ix42mJ2sSIsulPxOBiAlsdIFQUFVnkRwn1k
 FRTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OurFPUo7gnihcYVub8SOQDvfLe3fR+6xdFiBUG/mGaU=;
 b=nKgfwkbnX4F4c3AWEYCsv5hpwM4/EGxOvEAoWzRai52kCkO4YRk/EQ8WVABM+EYLOC
 3sYz42HoLfBEX8wff1rnBu3i8u7msULbN8CQGmYucULii2WPIcOxbPn7Ju5BdjMzqSOr
 FLgIglYRUiExnjoCEgzBFxQjb6eiumjPAhUdYDlMevAenSf21gXmDkoAjWJiPGvjfJRn
 LY/wTrNDHYHviBL6hjSaJIZnMWt74ItzMZ+zwByAjYmhwo6clrfNVnhdd50ZbVhndXL/
 PSid2q/Bk/YYYjqOgXw5C9ezH8meaL3hYt9ML6bWJWpIVkVedljFGUmVtoR5qPoqsB/D
 v7Iw==
X-Gm-Message-State: APjAAAUVDmsNasilPt3IacsOOSFC/dMyxWxLVaoNGhv5ejWHH77oPVqa
 GShOG0W3VdHIV+ZY4HFCtwJ1Gw==
X-Google-Smtp-Source: APXvYqwWcl7FHe5Q6JvWZnREmdhAYa+kjEanHdiJYtr/n0jOQquCki6IOPDpMJhUz8kj9KvU+BHsIA==
X-Received: by 2002:a05:620a:15c9:: with SMTP id
 o9mr84310245qkm.195.1561467371037; 
 Tue, 25 Jun 2019 05:56:11 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id s130sm6740825qke.104.2019.06.25.05.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 05:56:10 -0700 (PDT)
Message-ID: <1561467369.5154.67.camel@lca.pw>
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
From: Qian Cai <cai@lca.pw>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date: Tue, 25 Jun 2019 08:56:09 -0400
In-Reply-To: <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055612_193198_26AECD0B 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDEzOjQ3ICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90
ZToKPiBIaSBRaWFuLAo+IAo+IE9uIDI1LzA2LzIwMTkgMTM6MTYsIFFpYW4gQ2FpIHdyb3RlOgo+
ID4gVGhlIGxpbnV4LW5leHQgY29tbWl0ICJhcm02NDogdmRzbzogU3Vic3RpdHV0ZSBnZXR0aW1l
b2ZkYXkoKSB3aXRoIEMKPiA+IGltcGxlbWVudGF0aW9uIiBbMV0gYnJlYWtzIGNsYW5nIGJ1aWxk
Lgo+ID4gCj4gPiBlcnJvcjogaW52YWxpZCB2YWx1ZSAndGlueScgaW4gJy1tY29kZS1tb2RlbCB0
aW55Jwo+ID4gbWFrZVsxXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI3OToKPiA+IGFy
Y2gvYXJtNjQva2VybmVsL3Zkc28vdmdldHRpbWVvZmRheS5vXSBFcnJvciAxCj4gPiBtYWtlWzFd
OiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+ID4gbWFrZTogKioqIFthcmNo
L2FybTY0L01ha2VmaWxlOjE4MDogdmRzb19wcmVwYXJlXSBFcnJvciAyCj4gPiAKPiA+IFsxXSBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMDA5NjYzLwo+ID4gCj4gCj4gSSBh
bSBub3Qgc3VyZSB3aGF0IGRvZXMgZXhhY3RseSBicmVhayBmcm9tIHlvdXIgcmVwb3J0LiBDb3Vs
ZCB5b3UgcGxlYXNlCj4gcHJvdmlkZQo+IG1vcmUgZGV0YWlscz8KCkhlcmUgaXMgdGhlIGNvbmZp
ZyB0byByZXByb2R1Y2UuCgpodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vY2FpbGNh
L2xpbnV4LW1tL21hc3Rlci9hcm02NC5jb25maWcKCiMgbWFrZSBDQz1jbGFuZyAtaiAkKG5yX2Nw
dXMpCgpJIGNhbiBnZXQgaXQgd29ya2luZyBhZ2FpbiBieSByZW1vdmluZyAiLW1jbW9kZWw9dGlu
eSIgaW4KYXJjaC9hcm02NC9rZXJuZWwvdmRzby9NYWtlZmlsZQoKPiAKPiBPbiBteSBlbnY6Cj4g
Cj4gJCBtYWtlIG1ycHJvcGVyICYmIG1ha2UgZGVmY29uZmlnICYmIG1ha2UgQ0M9Y2xhbmcgSE9T
VENDPWNsYW5nIC1qJChucHJvYykKPiAKPiAuLi4KPiAKPiBhcmNoL2FybTY0L01ha2VmaWxlOjU2
OiBDUk9TU19DT01QSUxFX0NPTVBBVCBpcyBjbGFuZywgdGhlIGNvbXBhdCB2RFNPIHdpbGwKPiBu
b3QKPiBiZSBidWlsdAo+IAo+IC4uLgo+IAo+IMKgIExEU8KgwqDCoMKgwqBhcmNoL2FybTY0L2tl
cm5lbC92ZHNvL3Zkc28ubGRzCj4gwqAgQVPCoMKgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC92
ZHNvL25vdGUubwo+IMKgIEFTwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby9zaWdy
ZXR1cm4ubwo+IMKgIENDwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92Z2V0dGlt
ZW9mZGF5Lm8KPiDCoCBMRMKgwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5z
by5kYmcKPiDCoCBWRFNPQ0hLIGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5zby5kYmcKPiDC
oCBWRFNPU1lNIGluY2x1ZGUvZ2VuZXJhdGVkL3Zkc28tb2Zmc2V0cy5oCj4gCj4gLi4uCj4gCj4g
wqAgTETCoMKgwqDCoMKgwqB2bWxpbnV4Lm8KPiDCoCBNT0RQT1NUIHZtbGludXgubwo+IMKgIE1P
RElORk8gbW9kdWxlcy5idWlsdGluLm1vZGluZm8KPiDCoCBLU1lNwqDCoMKgwqAudG1wX2thbGxz
eW1zMS5vCj4gwqAgS1NZTcKgwqDCoMKgLnRtcF9rYWxsc3ltczIubwo+IMKgIExEwqDCoMKgwqDC
oMKgdm1saW51eAo+IMKgIFNPUlRFWMKgwqB2bWxpbnV4Cj4gwqAgU1lTTUFQwqDCoFN5c3RlbS5t
YXAKPiDCoCBCdWlsZGluZyBtb2R1bGVzLCBzdGFnZSAyLgo+IMKgIE9CSkNPUFkgYXJjaC9hcm02
NC9ib290L0ltYWdlCj4gwqAgTU9EUE9TVCA0ODMgbW9kdWxlcwo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
