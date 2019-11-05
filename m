Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F716EF5A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 07:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTR0+KG0tgJ0VMh+rbL+nIY455PZWvBEDG5QKjUwLVs=; b=oAI+Hxf9gGO8Gf
	0vRjADN7jmLUHS0oACjyvNItc1ZTDL2KKMaZXzbG8EglTFKVFfvpW+tP3VJT3xLnbK4rwyai46+BP
	DDEXYBZhvotn7Uifb+anXYtipCk3eGMO0RWuQVBV3TxWpwn4wfkFoWUo5GfS7Mkb0qPyT03UKUXaG
	hkxunuiXs3hT7wKT+s4RJ00LmReqNGrP6CGTa92a1O6ZrlHSMWrqoSSsuC6UhPvKOS7mw8y0Q8tLh
	fUpcYGUKdb4mE7uNI44vOx7/Len7oDMwpQcmTdKwYRlwvd+eiikJDAgufzQvQJkUAcb9NG04FaO3i
	y1dE9ly+aGL7mPkKcKdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRsd2-0003GW-IJ; Tue, 05 Nov 2019 06:47:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRscv-0003Fd-Ma
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 06:47:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id z4so8390982pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 22:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=c8eBVSCLgnx4UHNdOIdUmMHjAPLlK/lRDbaNxZy4A4c=;
 b=mEPTpthPqrMH5V6gpUyO2MP9vjXUVOG5F+cfT9fHTAvMDsPPnu++Uy0Y/UG1VJn5YB
 reVqWzhKjLkXKJEVOpPWdARHD0lqj2UqV+m7feK5PILe6moTpRjApPU5kK+I0/R3+RPc
 1Ng5a7znl+03oVa+3EvpFWPqYHxP5S3K1iv22FgcNrumGnBOOsKrmoRwAwoYfl3p/JKO
 Yz970pjFTHptsZLlCJ+GJUF/T33U/rERVx4Z+cntj127yJee4y01vFwqsfBQysMyyTmz
 0GV7j8Bhm+iIW7YG33GDh50N70CaHEuUuf6kqNCOzhYt3AR2Q39VH9eMvy8dt11Gatq3
 IomQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=c8eBVSCLgnx4UHNdOIdUmMHjAPLlK/lRDbaNxZy4A4c=;
 b=KHCCtOczD97ctsQRRfAM2fEodorNBYkmCAOBeqdMddqnWS3IzT9F3jauCRCLOhMEXt
 PThWuopd6hNhLA4bkQxQClq0KAvUdoh60p35/039SmJhN/b6ZeReuwtRirYAkG8xn9nm
 f48yK5M/+cCi7X4s6KYROGdrTf8rX39JVhIB/s60nlb72TX60TYcCZAINgqBg6T6KucK
 ZXWJRWLs8kTAaep7o4I/fjvtbBmXBNk2XRhEFbsRIQZdyqOxBZCitMxuJwb6lgq99f0A
 U6vLhtgo/Ar/Pjt+bAum2P/RslUoFTzgEXBXYwc3qr4yv45dj88KCMjSAOEQ8JZ75zft
 kTWQ==
X-Gm-Message-State: APjAAAWE/mEZF2vxqbgBOZwQOW83LPPzaOlL3Sj6jZmQOWrQ3jp5kR/Y
 Iad2t6K7a0lU4DZCB2HUGR5AwQ==
X-Google-Smtp-Source: APXvYqysgFxpzP8+b+00PPJbazsimS6pA5b/uc82/LVtNch0fd3yxbSpRVAafZ4s/JVNEawZcmWuKQ==
X-Received: by 2002:a17:90a:1089:: with SMTP id c9mr4506695pja.8.1572936460366; 
 Mon, 04 Nov 2019 22:47:40 -0800 (PST)
Received: from localhost ([122.171.110.253])
 by smtp.gmail.com with ESMTPSA id q184sm19465254pfc.111.2019.11.04.22.47.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 22:47:39 -0800 (PST)
Date: Tue, 5 Nov 2019 12:17:35 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: David Binderman <dcb314@hotmail.com>
Subject: Re: drivers/cpufreq/brcmstb-avs-cpufreq.c:449: bad test ?
Message-ID: <20191105064735.t6qiz2kc266em7vi@vireshk-i7>
References: <DB7PR08MB38017C35D2B5E025804338129C660@DB7PR08MB3801.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB38017C35D2B5E025804338129C660@DB7PR08MB3801.eurprd08.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_224741_775082_DBBB27F4 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "mmayer@broadcom.com" <mmayer@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgtMTAtMTksIDE1OjE4LCBEYXZpZCBCaW5kZXJtYW4gd3JvdGU6Cj4gSGVsbG8gdGhlcmUs
Cj4gCj4gZHJpdmVycy9jcHVmcmVxL2JyY21zdGItYXZzLWNwdWZyZXEuYzo0NDk6NjE6IHdhcm5p
bmc6IGxvZ2ljYWwg4oCYb3LigJkgb2YgY29sbGVjdGl2ZWx5IGV4aGF1c3RpdmUgdGVzdHMgaXMg
YWx3YXlzIHRydWUgWy1XbG9naWNhbC1vcF0KPiAKPiBTb3VyY2UgY29kZSBpcwo+IAo+ICAgICBy
ZXR1cm4gKG1hZ2ljID09IEFWU19GSVJNV0FSRV9NQUdJQykgJiYgKChyYyAhPSAtRU5PVFNVUFAp
IHx8Cj4gICAgICAgICAocmMgIT0gLUVJTlZBTCkpOwo+IAo+IE1heWJlIGJldHRlciBjb2RlOgo+
IAo+ICAgICByZXR1cm4gKG1hZ2ljID09IEFWU19GSVJNV0FSRV9NQUdJQykgJiYgKHJjICE9IC1F
Tk9UU1VQUCkgJiYKPiAgICAgICAgIChyYyAhPSAtRUlOVkFMKTsKClJpZ2h0LiBDYXJlIHRvIHNl
bmQgYSBwcm9wZXIgcGF0Y2ggZm9yIHRoaXMgPwoKLS0gCnZpcmVzaAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
