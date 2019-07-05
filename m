Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2632660AAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 18:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2Qwbs4C/4yXmFu753ELwBdxtoxmRoFBDt0Vk+fbARo=; b=K99Os07opf7177
	31zHzmNpUB7KRMlcXASQyh+soV0izFCdvhY2jCFWlKcJrFi0FUN11pat+kXclXissWX4egTVF8a3b
	1poyh+x+DaYXJp3b2UtD4LgnG7RlgiBor7Kb48bn7dvtoZ55+zSJHXzx+B/VKaJnxp9pua8bhMBHa
	rKhM25MaAShH4KoiaMY+cEM3AUm9XDk2eW+svWZecEwMzG68Fn2Gk75EHzE/f3HJLeJXw3lzadQu/
	iGkCkXDCWTlMEP3/q/5rMEamHhz9CQTTrmq+BVV3Aktl0hcqUGXi9y6GFfwfdb1HwSPsIskCNKG6d
	6vcBXfasWbkWp1B1O38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjRUD-00077w-O7; Fri, 05 Jul 2019 16:55:01 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjRU6-00077A-MP
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 16:54:55 +0000
Received: by mail-qt1-x843.google.com with SMTP id w17so8617201qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 09:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gVPnDnYZIHg//fCau2o8X4/K+TkzQ4pu97pN0qPOjGg=;
 b=HY56gVx7oYeo0j0mareMfs9VBJfGLP1hIK9Q60/d1GdKv4q9A1GXOvqhWDPtHVO/W2
 /RrvX+8ogGJW2cVFPm+P/kHWgENedo6lC9zreAKSr8Ebj5Okw/toxcTlYybpCAVpVggY
 Ip9S74TJKgeTQg3t3NZ6aivdmCoYpD9pf+nRdt/9ymUwMsyvPkLWNCT3j6pbiKJiCiRE
 rxBc2kr/h+OimDF6NV6XMm70Ssvt0Mc2OZGHNFKyI2VkfLy2uHq6aftTSrPpJdRHEkKV
 G/RvfewoG1Xa501uHcagNIYd6AoVUykWpLjzNiWnNYgG9vbEJet3gRUTqjXKCVTLPDyP
 qxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gVPnDnYZIHg//fCau2o8X4/K+TkzQ4pu97pN0qPOjGg=;
 b=mlN+mHYjHrarDrgU1THADCaE0e2rNOKdcLWPcxTf++u2uhuyy1VmUKD3oKwFodrGHV
 o9U5m1bwYkx9rlGtDreyAgEWgxR4UWkcXhb+z1nAPKaU7xUh1MZVGDl8uWcyq6mm/eSx
 ul3it+fyNfEBKeHWqqxqfHPF+wkiY1bt5wwGK8oyjXx70YTpaDLPQsZaKIUYSdjyPRfk
 U4Yck27SLNuYTLHkJT/byWAz6b0RZIeKbEA/MCEQdcJqB3jJcwqyURPyIq20Eqm0izlN
 p1w7ju8WYiw3WmIGSnczYw6gzO9R0WSt65vB2P2Dp7AGnMoOQh5UL6NHicWhSwEYP0uM
 jPoA==
X-Gm-Message-State: APjAAAXYrbBtdWB+mNqZkQbXEPwJDB0GDaJCLbVqK2fGjJ0eZGhAwfuB
 DjoyooDKz/ckp/QwUFVJOrc=
X-Google-Smtp-Source: APXvYqyL6Xp5wtUUYgejlpY+FF1T5AudwMjEl5B2aZN7563Grs7uqoz24OrXOya0O3591bdnHreMrw==
X-Received: by 2002:ac8:1a8d:: with SMTP id x13mr3595792qtj.114.1562345691667; 
 Fri, 05 Jul 2019 09:54:51 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id r14sm4233105qke.47.2019.07.05.09.54.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 09:54:50 -0700 (PDT)
Subject: Re: [PATCH v5 05/12] drm/modes: Rewrite the command line parser
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <e1fcea71-b551-274e-4ea0-178bb0d5f71c@gmail.com>
Date: Fri, 5 Jul 2019 19:54:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_095454_765414_ED15BA72 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTcuMDYuMjAxOSAxNzo1MSwgTWF4aW1lIFJpcGFyZCDQv9C40YjQtdGCOgo+IEZyb206IE1heGlt
ZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAZnJlZS1lbGVjdHJvbnMuY29tPgo+IAo+IFJld3JpdGUg
dGhlIGNvbW1hbmQgbGluZSBwYXJzZXIgaW4gb3JkZXIgdG8gZ2V0IGF3YXkgZnJvbSB0aGUgc3Rh
dGUgbWFjaGluZQo+IHBhcnNpbmcgdGhlIHZpZGVvIG1vZGUgbGluZXMuCj4gCj4gSG9wZWZ1bGx5
LCB0aGlzIHdpbGwgYWxsb3cgdG8gZXh0ZW5kIGl0IG1vcmUgZWFzaWx5IHRvIHN1cHBvcnQgbmFt
ZWQgbW9kZXMKPiBhbmQgLyBvciBwcm9wZXJ0aWVzIHNldCBkaXJlY3RseSBvbiB0aGUgY29tbWFu
ZCBsaW5lLgo+IAo+IFJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVz
Lm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGZyZWUt
ZWxlY3Ryb25zLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jIHwgMzI1
ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDIxMCBpbnNlcnRpb25zKCspLCAxMTUgZGVsZXRpb25zKC0pCgpIZWxsbywKCkkgaGF2ZSBhIFRl
Z3JhIGRldmljZSB0aGF0IHVzZXMgYSBzdG9jayBhbmRyb2lkIGJvb3Rsb2FkZXIgd2hpY2ggcGFz
c2VzICJ2aWRlbz10ZWdyYWZiIiBpbgp0aGUga2VybmVscyBjbWRsaW5lLiBUaGF0IHdhc24ndCBh
IHByb2JsZW0gYmVmb3JlIHRoaXMgcGF0Y2gsIGJ1dCBub3cgVGVncmEgRFJNIGRyaXZlcgpmYWls
cyB0byBwcm9iZSBiZWNhdXNlIHRoZSBtb2RlIGlzIDB4MDowIGFuZCBoZW5jZSBmcmFtZWJ1ZmZl
ciBhbGxvY2F0aW9uIGZhaWxzLiBJcyBpdCBhCmxlZ2l0IHJlZ3Jlc3Npb24gdGhhdCBzaG91bGQg
YmUgZml4ZWQgaW4gdXBzdHJlYW0/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
