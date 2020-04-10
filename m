Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5901A4B60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 22:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZmCDjxaa3ZYgNTzZr/odatHX8t6eIIoYFBoZM1Jgjc=; b=TQONtIPDLzJ5OQ
	fL1m1dt+0qiHarXJiPYSI/xMJty1MXBkZCYr7H0kUHzv8sOnEmxQedqD0Vsa6NL9OBM9zT6jt7+NJ
	IIg8y1s2zLZgUQbU7EsV5sUnFNexyY5xXMSoHYqqqxwIjK+bTiR5ab2EVNuPfL/e+Naf8eMJrfOS7
	AAl1+WHmwwMzSjcbEqV9pdWfI+tIrNI0iW53erDiuTTpTvp/Fo6vl0nBpVfp83vQgp9+zDE3QvLzc
	mZ2LsQKoWyPI9gwNzE/uwdWLmm1PLF8+Wc/YmPFmem6g+JfA0sPs9218qBJVrJBLZO8uRnOUAzlPV
	XHWNXS4VVMmrbNemqMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN0Xu-0004AQ-43; Fri, 10 Apr 2020 20:46:38 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN0Xm-0004A4-Tw
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 20:46:32 +0000
Received: by mail-lf1-x142.google.com with SMTP id 131so2174340lfh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 13:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I+22ZdLvG5Rujvbq/B2qtEVig1LNO+Yt4MNm4tY+6JM=;
 b=kNO2u9ENzzNIXOmnOwjmNREPT3/M9v4uMOY++O3kr9ViuQLLx0++ZXjaoimcQWx08b
 tmL/Lyq6MSMTohfP08eJ3TijhlhSChRqEpAyVn0sufycEaKel1BwL+duv1SPFhE/Rbs6
 A+Ed1tI1dMtotWuta+NGlMk5sjwU7uiPM/3UVivB9N1FtkerKbrnTADbBGJtrchY0W+6
 S4d3nupp5gLMOjoczlaTNMiYsDi22iHy++YDe636HKbomw3r/dmFCSjMwyp44XMGNUMs
 GzjTfx/VnEFvXqKPABsgY+rDRnDuJQ16HyvJ/9dYqQYpbV6RNCfuO9RVHwfxcoUrLKi9
 Nfrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I+22ZdLvG5Rujvbq/B2qtEVig1LNO+Yt4MNm4tY+6JM=;
 b=TqXpyahFhk+L8obRJ7MK5XUvIG8+QUOkzHBP5k7x6uY3Pa7T+l2CjSbmYGLmy1mMPr
 fvt1JpQAlUpjg7tLV4MpFANhLwSrpkJm2p6z93wtf7AAWotOzDIqiFiZdyFX8L8Bj9+2
 wU/p+QONzhW28KOrJGDSbcdKK5DQeDbU43pCIZJn52mJJdiVtBAkMRJ+XVLpTvCc30CK
 ikKeM/HqdS31MS2+T2gqXPz/kPDQ+XF5/AOPRr0hJ4lXwv9VqI3VrpaSFc5q8m0TBXk0
 C2irjKOxKSsPEcgrNDr5SP5a5TuxhabuMOGnBUEQhZlF7Y5ds5kWTehbuG6AArVHz2Ha
 tYMg==
X-Gm-Message-State: AGi0PubSyFdwCwElfCFGZ16j+XdVg6asHsdpHNy6AT9RyEI1MntYYA1m
 MhuieaVJWNZLUgvWyQ176wVN5Xhm
X-Google-Smtp-Source: APiQypIoT9tmvJ8Grzu/GhsTxVJ9fNzQs2I967ArH5Rq3yRTbrZrU3tmptJ+UnCrQLYAuh5qjSqxog==
X-Received: by 2002:a05:6512:695:: with SMTP id
 t21mr3575749lfe.158.1586551587266; 
 Fri, 10 Apr 2020 13:46:27 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id j13sm1974258lfb.19.2020.04.10.13.46.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 13:46:26 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <fae8e1f5-753b-b2ce-d14f-c6e8b2061fdd@gmail.com>
Date: Fri, 10 Apr 2020 23:46:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-10-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_134630_987939_ECDAC866 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gLS0tCj4g
Q2hhbmdlcyBpbiB2NjoKPiAtIHVzZSBfX21heWJlX3VudXNlZCBpbnN0ZWFkIG9mICNpZmRlZidl
cnkgZm9yIHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcwo+IC0gdGFrZSBleGNsdXNpdmUgY29udHJv
bCBvZiBFTUMgY2xvY2sgZHVyaW5nIHN1c3BlbmQvcmVzdW1lCj4gLSBtb3ZlIEVNQyBkcml2ZXIg
Y2hhbmdlcyBmcm9tIGNsayBwYXRjaCB0byB0aGlzIHBhdGNoCj4gLSBtYWtlIHRoZSBkcml2ZXIg
YnVpbGRhYmxlIGFzIGEgbW9kdWxlCj4gLSByZW1vdmUgdW5uZWNlc3Nhcnkgc3VzcGVuZCB0cmFj
a2luZwo+IC0gcmVtb3ZlIGR1cGxpY2F0ZSByZWdpc3RlciBkZWZpbmVzCj4gLSBhZGQgdGVncmEy
MTAtZW1jLmggZm9yIFRlZ3JhMjEwLXNwZWNpZmljIHJlZ2lzdGVycwo+IC0gZGV0ZWN0IG51bWJl
ciBvZiBjaGFubmVscywgbnVtYmVyIG9mIGRldmljZXMgYW5kIERSQU0gdHlwZSBhdCBwcm9iZQo+
ICAgdGltZSBhbmQgc3RvcmUgdGhlbSBpbiBzdHJ1Y3QgdGVncmEyMTBfZW1jLCByZW1vdmUgdGhl
IGNvcnJlc3BvbmRpbmcKPiAgIGZ1bmN0aW9uIHBhcmFtZXRlcnMgd2hlcmUgbm8gbG9uZ2VyIG5l
ZWRlZAo+IC0gcHJvcGVybHkgY2xlYW4gdXAgb24gZmFpbHVyZQo+IAo+IENoYW5nZXMgaW4gdjU6
Cj4gLSBtYWpvciByZXdvcmsgYW5kIGNsZWFudXAKCkkgaGFwcGVuZWQgdG8gbm90aWNlIHRoYXQg
dGhlIHBhdGNoZXMgaGF2ZSBhbiBpbmRpdmlkdWFsIGNoYW5nZWxvZyBvbmx5CmJ5IGFjY2lkZW50
IDopCgpOZXh0IHRpbWUgd2lsbCBiZSBuaWNlIGlmIGF0IGxlYXN0IHlvdSBjb3VsZCBtZW50aW9u
IGFib3V0IHRoaXMgaW4gdGhlCmNvdmVyLWxldHRlciwgb3IgbW92ZSAob3IgZHVwbGljYXRlKSB0
aGUgd2hvbGUgbG9nIGluIHRoZSBjb3Zlci1sZXR0ZXIuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
