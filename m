Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54699EDA49
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:04:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEpDqiTMp9vHfLrcRHz5fZtpO5rVE+uN2PDh7Hka74o=; b=RYmxHDd2NCyocf
	w+uaOKr/ljjMjg1SPv7paDOe9xwYbH1K5tb+O+IxEceTiETQ/Ejy23OJIQ5rI6dvWktDTNU+oW8So
	Q4EMhfrUqzmsALDSdh3vEuu0xiEonpdg0Vets7wnZQ9baE4rjhEIdV5fGhl+njblStXRNL9anGTDL
	WQkw7yZ8jpCnQ1QZUEAMd0+/KpoiPAGf/khvjF583Ugc9X93BlRUnu8QkhS5L1HRgVKrsfh5pYhyB
	DJoxlUTsaKvjmmUR+4dxfsDJ4IoFYtrsP0lf3fsxvGyAGodY6eQyfNR+C4TdEgERLNG4lSTL2OF2d
	g34JGf0SeU41JYXokhOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXLH-0006wh-4a; Mon, 04 Nov 2019 08:04:03 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXLA-0006wG-M2
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:03:57 +0000
Received: by mail-lf1-x141.google.com with SMTP id 19so6325978lft.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 00:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LxAxNMBVL+dSGienin6qaCrk7en5CTrpwUxUJmlZZRg=;
 b=TrDTWGfMBfFjlWZ8uZDUT0w3BNWxwNGte+a8IpvcI6chs9MWID54loPeAyScghAAh8
 c7UhsZiHgMWlgfVzsY3JlounwUiaxX53oS0f2R2DthwMn0wijXA35T62J9fbrpjvwxSd
 vvkuLYbB2jATrla63DCyxhxyaqfj/lNl8Jy6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LxAxNMBVL+dSGienin6qaCrk7en5CTrpwUxUJmlZZRg=;
 b=IEsT/zpqVsCidD1S3rX3e3KdQ+bcIzzKJFBnY+81khTscaa/MBHYN8WrZ5P8Chg4Ow
 05XKox60HyfumNcmTBrxFVrjZwlp9IodZRlqmqc/7VHeox4nPfXJaMwxZQC3vuorT6W6
 0MrkQa7RvJpGnu2L/Zcx/1XBKZ57EnRX/WtV8lsVsZGZXq/nQp9OSbWzZpjcaK2L4lm6
 te5dNcNAn3qJMClrdZ1/4c3EMOzO20siqmAUlRQ6oOtpGipaxAJmRdBSOet4Frq87+Be
 n+bykLR2Egt4hhp3ORzjRMmFjdCGl2XY4ZE7eaJsHxSMEOqThgw/WsC4pxx4aOfH1ayz
 1iWA==
X-Gm-Message-State: APjAAAUIiALxBkXWOMcw2E1JeOJKzChvFTV4IYbF3VPzPNk6ahb4AOqd
 /eqKA6T8MIN9z/8gBcD1zNp1KA==
X-Google-Smtp-Source: APXvYqwZ6WMPtJAcL4H1FSM0qke7qolXLVZOH2UexXvXSedbKeL3kV7Vji/MC2YFBHtLQv0vvrHfxw==
X-Received: by 2002:ac2:4357:: with SMTP id o23mr3316354lfl.51.1572854634877; 
 Mon, 04 Nov 2019 00:03:54 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id e2sm6742553lfc.2.2019.11.04.00.03.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 00:03:54 -0800 (PST)
Subject: Re: [PATCH v3 31/36] serial: ucc_uart: stub out soft_uart_init for
 !CONFIG_PPC32
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-32-linux@rasmusvillemoes.dk>
 <53c1c463-53fc-2005-3b62-a6f430815b45@c-s.fr>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <6d1e4a08-4107-753f-8701-d3acb44b0104@rasmusvillemoes.dk>
Date: Mon, 4 Nov 2019 09:03:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <53c1c463-53fc-2005-3b62-a6f430815b45@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_000356_720548_C59E652A 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMTEvMjAxOSAxNy4yNywgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBMZSAw
MS8xMS8yMDE5IMOgIDEzOjQyLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4+IFRoZSBT
b2Z0IFVBUlQgaGFjayBpcyBvbmx5IG5lZWRlZCBmb3Igc29tZSBQUEMtYmFzZWQgU09Dcy4gVG8g
YWxsb3cKPj4gYnVpbGRpbmcgdGhpcyBkcml2ZXIgZm9yIG5vbi1QUEMsIGd1YXJkIHNvZnRfdWFy
dF9pbml0KCkgYW5kIGl0cwo+PiBoZWxwZXJzIGJ5IENPTkZJR19QUEMzMiwgYW5kIHVzZSBhIG5v
LW9wIHNvZnRfdWFydF9pbml0KCkgb3RoZXJ3aXNlLgo+IAo+IEkgZG9uJ3QgbGlrZSB0b28gbXVj
aCBpZmRlZnMgaW4gQyBmaWxlcywgZXNwZWNpYWxseSBhcmNoIHNwZWNpZmljIGlmZGVmcwo+IGlu
IGdlbmVyaWMgZHJpdmVycy4KCk1lIG5laXRoZXIuIEhvd2V2ZXIsCgo+IEhvdyBkbyB3ZSBnZXQg
dGhlIFFFIHZlcnNpb24gb24gQVJNID8KPiAKPiBXb3VsZG4ndCBpdCBiZSBjbGVhbmVyIHRvIGNy
ZWF0ZSBhIGhlbHBlciBmb3IgZ2V0dGluZyB0aGUgUUUgdmVyc2lvbiwKPiB3aGljaCB3b3VsZCBi
ZSBkZWZpbmVkIGluIGFuIGFyY2ggc3BlY2lmaWMgaGVhZGVyIGZpbGUsIGNhbGxpbmcKPiBtZnNw
cihTUFJOX1NWUikgb24gcG93ZXJwYyBhbmQgd2hhdGV2ZXIgbmVlZGVkIG9uIGFybSA/CgpGaXJz
dCwgdGhhdCB3b3VsZCBtZWFuIHdlJ2QgaGF2ZSB0byBpbnRyb2R1Y2UgImRlcGVuZHMgb24gUFBD
MzIgfHwgQVJNIgpyYXRoZXIgdGhhbiBkcm9wICJkZXBlbmRzIG9uIFBQQzMyIi4gU2Vjb25kLCB0
aGUgd2F5IHRoZSBTT0MgdmVyc2lvbiBpcwpiZWluZyB1c2VkIHRvIGNvbnN0cnVjdCB0aGUgbmFt
ZSBvZiB0aGUgbWljcm9jb2RlIGJsb2Igc2VlbXMgdmVyeQpwcGMtc3BlY2lmaWMsIHNvIEkgZG9u
J3Qgc2VlIGhvdyBvbmUgY2FuIHJlYXNvbmFibHkgZGVmaW5lIGFuIGludGVyZmFjZQp0aGF0IHdv
dWxkIHdvcmsgZm9yIGFsbCBhcmNoaXRlY3R1cmVzLiBCdXQgaXQncyBhbHNvIGtpbmQgb2YgbW9v
dCBzaW5jZQp0aGUgQVJNIFNPQ3MgZG9uJ3QgbmVlZCB0aGlzIHdvcmthcm91bmQuCgpJTU8sIGhh
dmluZyB0byBhZGQgcWUtc3BlY2lmaWMgY29kZSB0byBhcmNoLyBpcyBhIGN1cmUgd29yc2UgdGhh
biB0aGUKZGlzZWFzZS4gSSdkIG11Y2ggcmF0aGVyIGFkZCBhcmNoLXNwZWNpZmljIGNvZGUgdG8g
cWUuCgpSYXNtdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
