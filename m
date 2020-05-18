Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA101D7E3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzPZXq5j9m2X5mYVXqzN+EWJx4pguZFTdoHJd0VBt90=; b=cTnXfb7KZ+RzCm
	k5XgQzMFgFEtzNgVu/iHZjPMhDwcUbLaGa2mviymvfP4E8QiTAepO/ppH5ajioM9fJx5OYJrTfZh4
	P/QOhxd5uHKFCP4zPHJDJyj60e7kWB/nIfttfsOTg1WrruQ03XXfARSUj7lKHzizVPPPHX79tTPAa
	Jzn0l1y4lxl9iBey7yK6PWKxafMRXmO2C2FWBqy0ZinFU28LBCSRIEjqFLX2z5twKDW2AbIl6SNd1
	OMnNGVz+rfuaunJVgJGjs0iLlA9uO6Bt3pe2hB/wM/RaqmLeSOBehD/r7cX1j5PM8C3AUhtSFzAyd
	VFHA45J63TpFI2WzWf4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiW8-00035g-IN; Mon, 18 May 2020 16:21:28 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiW0-00035B-4n
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:21:21 +0000
Received: by mail-wm1-x332.google.com with SMTP id f13so97608wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 09:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SAlVc8Y9WPmWCnfLlC2hsjQ0F9+TvwmR33hhaJXJf5I=;
 b=UrRxqqN20RhAdbH4vEHZ28qeT50NZ8UZ05N7xM2PspJfHqF8RVO/by2VD5XAbYGZKe
 9XfhDMFZtmKAcsW+9o+SbuTGlkfHwOPykhJ/XU45iJBebw9Zp+6p0zhtzUUyjpqQulJ7
 SRN71x3FSqyXSIDfCOx1KbIgYAr1aY+54IyfUOYm6H1S0Xv13Eh8H3OChphTEU9snVKU
 va0Sp4LLHM3Pe9kWy0P4va4d+bKyHiXKqchHqaUWYWQO5xLoAr0qGmAZp6IgqDk+y/z2
 MJQL657Ezc6ATeHZ6Qtga/agwgn8enZVlz0AsQBvnF13F3Op8dvQEsoWWTO4DAsbTvcc
 QSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SAlVc8Y9WPmWCnfLlC2hsjQ0F9+TvwmR33hhaJXJf5I=;
 b=Z833xwKyw8BsABj15KNeZkLzvK2cCy1IBs1zv53dArmjK1ZON0Wyna15ytuAqgPqny
 v5b9FqdN+5FaIn4i1LnU1N2gOtiYSuIdLY84T1Ip8x/aFvu0moiKM86nL9c7fDmI4q+q
 r7v2SpA/VXhuYhsJKSrKtUTtvB69BvR2K25GJ7HUmAUvZado8Q/Ij35PTHCUDgtbQLhV
 /me23ahXmnr+JinxaADcrGO49Nsb3ZwCPxkv7aQ5fPwbudgqxqts43pjLRgdlAgfRWso
 GrB81/O24v0kIQbFCJKqeGWxT5X5mHN0IMwdIyFlUoQ53bCccC9koKNfLnX9oEmjFy6z
 L1IQ==
X-Gm-Message-State: AOAM532WOYc2x7Zyh8yfGNw+Kc9NKKj9Ec0ukm3y0rodF1OGM6whSwey
 mBhBUerAZWVIHnrkK33Va1yqb3oI3Rc=
X-Google-Smtp-Source: ABdhPJyPVB4AbD+I0nNx5e85Skgk/Z8I85dB/DJShQQyEM8ES2m0iao8D9F8E6K5aP7R23YCOD4MtA==
X-Received: by 2002:a05:600c:d7:: with SMTP id
 u23mr135046wmm.155.1589818878212; 
 Mon, 18 May 2020 09:21:18 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8?
 ([2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8])
 by smtp.googlemail.com with ESMTPSA id f128sm125911wme.1.2020.05.18.09.21.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 09:21:17 -0700 (PDT)
Subject: Re: [PATCH v1] drivers/clocksource/arm_arch_timer: remove duplicate
 error message
To: Dejin Zheng <zhengdejin5@gmail.com>, mark.rutland@arm.com,
 maz@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
References: <20200429153559.21189-1-zhengdejin5@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <a787b855-3b06-6b07-6222-cd33a5dfbf03@linaro.org>
Date: Mon, 18 May 2020 18:21:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429153559.21189-1-zhengdejin5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_092120_193202_30F45540 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDQvMjAyMCAxNzozNSwgRGVqaW4gWmhlbmcgd3JvdGU6Cj4gaXQgd2lsbCBwcmludCBh
biBlcnJvciBtZXNzYWdlIGJ5IGl0c2VsZiB3aGVuIGFjcGlfZ3RkdF9pbml0KCkKPiBnb2VzIHdy
b25nLiBzbyByZW1vdmUgdGhlIGR1cGxpY2F0ZSBlcnJvciBtZXNzYWdlLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IERlamluIFpoZW5nIDx6aGVuZ2RlamluNUBnbWFpbC5jb20+CgpBcHBsaWVkLCB0aGFu
a3MKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZh
Y2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8j
IS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9n
Lz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
