Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D551C3506
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrgLPlVevA/reeD6OSa7U/l6aK1Z+bbDs806ry8+FsQ=; b=Csb8JtpH3csaHb
	n6tllz+9dZiESMMl/sgQLTD2SLFuh2AZ7ItUVHyYPoJYZAlomt78E6gf5+v/79Q8LSMwIZK306bLp
	n8/FmN7Wh+YT0wd0V55TePbVKmTZ6xI5Pjk/64P9ds6aumUVMtYKl3deooDAfLdFVj9vv5CdvKXeH
	hjf01Yn4Pci4oOJJRevuth4QjghRkhf1yrvJhByUa+wgYzOhObGMS5R3pEWk61pL4FMBWkfPMYrrs
	BNO5A793AaojUEpPN4rrWjqCTpUXX/6Xg8682Of78+ZdehEr6Gg1+z+EF/ewHJJl2lVjadvsQXli7
	defco4ch3ajYV4EkJERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWt1-0003d4-Uv; Mon, 04 May 2020 08:55:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWsu-0003bT-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:55:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id k12so7486728wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 01:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SNjxJ48X/rl6hjN+vla+LpQhWwTuERynNvR/GbTeioI=;
 b=Q+Aqs4SEzZUxEE/Je3bV89qqZWPmWByHUPk2Q5BTBry6TFVZVOnnhwnmjU1OAvkZ/P
 ARidv/8x94rTCrUOnz7r22dfO2BaCna3yb3sUyvDNtj4zf+kN3GN8WfA6kRF4Jig9K+T
 Teybf0N/SonFwXVqDUIQsdg3bBOgk/yj3vSbykPUUaUjYUFg8bSsOdbYJzvQQnxtf0E3
 GxHjYw/xwgs0LLNTdNK2kEjqdEp4QBI67QWq06ncEjDasu1kDVNQ9wc5MAgfSM9LlygC
 fFRHmHCA96Q/eB2Q0jvASh8wbWzYpQDtT64KU0vp2AKI+7TJnLRt9fqpsoVn3EWHfjaA
 iieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SNjxJ48X/rl6hjN+vla+LpQhWwTuERynNvR/GbTeioI=;
 b=tFj+CyYuj+9snq6W3E3Z50BizMySaZiC44Abo7B6QyOYjefGSo6uTdB5gw+ACeo0T+
 znkkhi1rKaNriTmZh1rDC/RlcLH4Cl5LRsTQn2s0RAlhpM/YTMoz8Sa0p6lKegB3+zmp
 CTAbhd6nY6OcnX32DCiYyHsh1UqYqE4gf3ncrOYN7I1Fodfn1tgOXSX4tsS9s6mxu9tf
 L6Z1fwjdaBKISB1Y+Lj4SJYSBHVwaj9s1Aer19fFWDkO4WZq4baeFyo1FfNc003S3h3a
 4JmRGsO94Q+upW0I3c0vndJ9q1ycqO2OJpEKb89SlAl4ks5VaRdshfLD6lak60xOJ0lK
 fJ1A==
X-Gm-Message-State: AGi0PuarDCVTNinlbYIdP17gzsPj72CZzAzQ2EviOvsxdKC1Qh4bev8T
 AQo9Tnh3PGBhZaT8gzjdLbWtwQ==
X-Google-Smtp-Source: APiQypLIu5XYyLvjvzr6H38pPYriIIo9ay0MJUR3mN66/1O4dEqAKKbIpFUupbQN4qf60YvJbNiK8A==
X-Received: by 2002:a1c:9d84:: with SMTP id
 g126mr12452726wme.184.1588582531295; 
 Mon, 04 May 2020 01:55:31 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id u12sm12941324wmu.25.2020.05.04.01.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 01:55:30 -0700 (PDT)
Date: Mon, 4 May 2020 09:55:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 08/16] mfd: vexpress-sysreg: Drop selecting
 CONFIG_CLKSRC_MMIO
Message-ID: <20200504085528.GH298816@dell>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-9-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-9-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_015532_806029_90CB9212 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-pm@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBBcHIgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE5vdGhpbmcgaW4gdGhl
IFZFeHByZXNzIHN5c3JlZ3Mgbm9yIHRoZSBNRkQgY2hpbGQgZHJpdmVycyB1c2UKPiBDT05GSUdf
Q0xLU1JDX01NSU8uIFRoZXJlJ3MgdGhlIDI0TUh6IGNvdW50ZXIsIGJ1dCB0aGF0J3MgaGFuZGxl
ZCBieQo+IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItdmVyc2F0aWxlLmMgd2hpY2ggZG9lc24n
dCB1c2UKPiBDT05GSUdfQ0xLU1JDX01NSU8gZWl0aGVyLiBTbyBsZXQncyBqdXN0IGRyb3AgQ09O
RklHX0NMS1NSQ19NTUlPLgo+IAo+IEFzIHRoZSAhQVJDSF9VU0VTX0dFVFRJTUVPRkZTRVQgZGVw
ZW5kZW5jeSB3YXMgYWRkZWQgZm9yCj4gQ09ORklHX0NMS1NSQ19NTUlPLCB0aGF0IGNhbiBiZSBk
cm9wcGVkLCB0b28uCj4gCj4gQ2M6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+
Cj4gQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+IENj
OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gQ2M6IExlZSBKb25l
cyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gQWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRA
YXJuZGIuZGU+Cj4gQWNrZWQtYnk6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRy
aXZlcnMvbWZkL0tjb25maWcgfCAzICstLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDIgZGVsZXRpb25zKC0pCgpBY2tlZC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJv
Lm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNh
bCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpG
b2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
