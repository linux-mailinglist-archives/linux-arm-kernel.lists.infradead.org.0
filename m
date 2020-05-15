Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF54D1D4C17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hf2y3k/WAUAPbqm+qkL4ECWCG4jXJJ+6qeuaoYSFrDc=; b=dkiVLLpN+Bky1x
	8NawwGEjEOzO0rIZSu9Ln4h87Gy84C+OD1pvEtACTexuSTDk0qQ8HCg0OtezU06Z4OOVQI14PcShj
	79jh5oGn0g+EsUem/OkReCbijHLGXqdFMXzFCYepSIFAFiUikbPdFcFKNLOkdj1vM2pX1JdQ4Gi1W
	riw8mXCaFv290Ft/VrHW3G7kLUrDStPJsjfbzoWGR/D8+m11vfsguRxwq9vvExOdjGnCTG7auWhuu
	KF9gewZPXYmsi+uwIvtgUaBEYKFH1KYle54WzNl5epc3AIr6aaSC5aN1hIz5ITdK0VqWtoHq9M4aH
	lEI+l2bvtGnoCxZBVSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYA0-0002jf-Pt; Fri, 15 May 2020 11:05:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZY7T-0000BR-U0
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:03:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id z72so2191663wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 04:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iqpq12gc8bTtNBtY5ZIVdxCDS9UGGhps1DCBy7t56Sc=;
 b=KQhWFuX/FjBpvSsD5C4JlqNzD53keqf6x1HZUfMWY9SjMgRvTGdIRcgtfxx+yEhOua
 7FJGFLE/tL21fgq7R1DP6qTmAsILkA7I4iQbUswloXIptvbMaIjLiQ+JuFAqdrgh1K0q
 MbxDuvveGypUJvaM4vhgWjhk+g01QInFSXY+fXcmb8H23HUhzpdgrUgoAPnLuzrQOkWm
 MTgueJG/9fB0PYlgMmHxWSLuDK4wk/ybO7LPPQ3E9Jono3Ly/QGKv6JYwPBZAB34Hyb6
 0R3efCIjIciXDeRMX/oaSGKEeTMXO5WiPRNUMAvLtFGnUIaQHpXivbwnoRATQBzMBAMS
 ZKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iqpq12gc8bTtNBtY5ZIVdxCDS9UGGhps1DCBy7t56Sc=;
 b=Qy/1UPyElxOuAJ1W09C+Ckg7fqPT1maOArT+2jy+Q8LJMnu34iwIrKj08QIlGRtTEN
 c2n4IiIslMHSCHQVsODrP0RN4GlZSm5rRDYTPvFoZF/mJEXOHwC2qJprHabfcuK7rg/u
 toRoBegHj4eUiO810AnZzvUn0h7LaC5bwydvE8//UZQgoP1Cu2dNviZG60JabxuXhRJX
 pgJMzC2ZqHNcH/adzJjE4G17LQoURvsxl6JpoknoeRgXLkMzEu5iGyGsIXFPZvTcblLU
 iIDBlH2MNkmx4ZxkyZBcqugcfDbetKymSdPFVeke1TpCRDhxWt3E1pxKl4+dh8QKt573
 k4iw==
X-Gm-Message-State: AOAM5326fPkI4faYliu/aYhOtV5cwf9oXST/SzPvP561bIeKm6PpLmL3
 9Jx7TDKwA/42b+fj1TTm0yo8XFT56WI=
X-Google-Smtp-Source: ABdhPJz09zqvaqC1JaFDugl18vq78E+RNFXiDIdWvrDoMdsvhWsiQds56u5FrbQHPH1HGgUnZIcgDA==
X-Received: by 2002:a1c:bbc5:: with SMTP id l188mr3289666wmf.163.1589540589509; 
 Fri, 15 May 2020 04:03:09 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:28df:6b80:d69f:9c0a?
 ([2a01:e34:ed2f:f020:28df:6b80:d69f:9c0a])
 by smtp.googlemail.com with ESMTPSA id z12sm458111wmc.6.2020.05.15.04.03.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 04:03:08 -0700 (PDT)
Subject: Re: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
 <20200429103644.5492-4-daniel.lezcano@linaro.org>
 <99b3bc79-f48a-3d51-a8ae-8b9ca4856d36@arm.com>
 <04b5da25-d591-b08a-e554-6e084d7ea908@linaro.org>
 <f3cee834-4946-10bd-a504-df6cf62d9e90@linaro.org>
 <20200515095751.GA25267@bogus>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <6faac4ac-b711-11ad-32e7-26ae930db6fa@linaro.org>
Date: Fri, 15 May 2020 13:03:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200515095751.GA25267@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_040311_983989_986041F4 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>,
 rui.zhang@intel.com, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAyMCAxMTo1OCwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+IE9uIE1vbiwgTWF5IDA0
LCAyMDIwIGF0IDA4OjAwOjAxUE0gKzAyMDAsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pgo+PiBI
aSwKPj4KPj4gT24gMjkvMDQvMjAyMCAyMzowMSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+PiBP
biAyOS8wNC8yMDIwIDIyOjAyLCBMdWthc3ogTHViYSB3cm90ZToKPj4+Pgo+Pj4+Cj4+Pj4gT24g
NC8yOS8yMCAxMTozNiBBTSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+Pj4+IFRoZSBjcHVpZGxl
IGRyaXZlciBjYW4gYmUgdXNlZCBhcyBhIGNvb2xpbmcgZGV2aWNlIGJ5IGluamVjdGluZyBpZGxl
Cj4+Pj4+IGN5Y2xlcy4gVGhlIERUIGJpbmRpbmcgZm9yIHRoZSBpZGxlIHN0YXRlIGFkZGVkIGFu
IG9wdGlvbmFsCj4+Pj4+Cj4+Pj4+IFdoZW4gdGhlIHByb3BlcnR5IGlzIHNldCwgcmVnaXN0ZXIg
dGhlIGNwdWlkbGUgZHJpdmVyIHdpdGggdGhlIGlkbGUKPj4+Pj4gc3RhdGUgbm9kZSBwb2ludGVy
IGFzIGEgY29vbGluZyBkZXZpY2UuIFRoZSB0aGVybWFsIGZyYW1ld29yayB3aWxsIGRvCj4+Pj4+
IHRoZSBhc3NvY2lhdGlvbiBhdXRvbWF0aWNhbGx5IHdpdGggdGhlIHRoZXJtYWwgem9uZSB2aWEg
dGhlCj4+Pj4+IGNvb2xpbmctZGV2aWNlIGRlZmluZWQgaW4gdGhlIGRldmljZSB0cmVlIGNvb2xp
bmctbWFwcyBzZWN0aW9uLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2Fu
byA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPj4+Pj4gLS0tCj4+Pj4+IMKgIC0gVjQ6Cj4+
Pj4+IMKgwqDCoCAtIERvIG5vdCBjaGVjayB0aGUgcmV0dXJuIHZhbHVlIGFzIHRoZSBmdW5jdGlv
biBkb2VzIG5vIGxvbmdlcgo+Pj4+PiByZXR1cm4gb25lCj4+Pj4+IC0tLQo+Pj4KPj4+IFsgLi4u
IF0KPj4+Cj4+Pj4gUmV2aWV3ZWQtYnk6IEx1a2FzeiBMdWJhIDxsdWthc3oubHViYUBhcm0uY29t
Pgo+Pj4KPj4+IFRoYW5rcyBMdWthc3ogZm9yIHRoZSByZXZpZXcuCj4+Pgo+Pj4gUmFmYWVsLCBh
cyBMb3JlbnpvIGFuZCBTdWRlZXAgYXJlIG5vdCByZXNwb25zaXZlLCBjb3VsZCB5b3UgY29uc2lk
ZXIgYWNrCj4+PiB0aGlzIHBhdGNoIHNvIEkgY2FuIG1lcmdlIHRoZSBzZXJpZXMgdGhyb3VnaCB0
aGUgdGhlcm1hbCB0cmVlID8KPj4KPj4gR2VudGxlIHBpbmcgLi4uIFN1ZGVlcCwgTG9yZW56byBv
ciBSYWZhZWwgPwo+Pgo+IAo+IFNvcnJ5IGZvciB0aGUgZGVsYXkuIEkgaWdub3JlIHRoaXMgYXMg
aXQgd2FzIGdlbmVyaWMgYW5kIEkgd2FzIGZpbmUgd2l0aAo+IGl0LiBEaWRuJ3Qga25vdyB5b3Ug
d2VyZSB3YWl0aW5nIG1lLCBzb3JyeSBmb3IgdGhhdC4KCk5vIHByb2JsZW0sIHRoYW5rcyBmb3Ig
dGhlIGFjay4KCj4gQWNrZWQtYnk6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+
CgpSYWZhZWwsIGlmIHlvdSBhcmUgb2sgd2l0aCB0aGF0LCBJJ2xsIHRha2UgdGhpcyBwYXRjaCBp
biB0aGUgdGhlcm1hbAp0cmVlIGFsb25nIHdpdGggdGhlIG90aGVycy4KCgotLSAKPGh0dHA6Ly93
d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9M
aW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0
ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
