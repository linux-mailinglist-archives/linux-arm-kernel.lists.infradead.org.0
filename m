Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FF51F6D0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 19:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8KBSpIuC+ZlWvVcYZD94/FF0vtls1oV8OkySv2qo58=; b=bU/cryOkab+wie
	JgpprLYBr1zzc4FF60tPeVI7atmBkxQi+mFpxWPGZfDcpp+O4OJTlsovNrha/W+hiYQz/PmX3rOeW
	idpc8qgHsa1PNf18pnDNFfrqmhlLN1toCKzVUIr0CPucRLtFrPWhEGEghJdBqq4RwalgFZVIsCyW0
	M4hPlI6AwXacJ4VJvjuvTIySUy7Le5vwye98xJx8Gh6UPpitz3rQXTKoUZ6mpb1NxXfWu+2z+pVD3
	xEzFtNAtKS9WiYSIm3BBUvCuHzg64/EtV12Igu9YQIiGGZqqycOy2RtPTfhPsG7q65KI+lumbqbpw
	w267Qag5CwRSwFPMSxzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjRSx-0001uB-Ed; Thu, 11 Jun 2020 17:58:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjRSo-0001t2-AG
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 17:58:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id e1so7105934wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 10:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=qqQFrQ3hX/shpvXWwGDhgGnBTSC3S+c/PjVDVDzS3rE=;
 b=RMBV6f6Vh3v68zzMMHOq3d5aiyVunV3JQHjQMLCK5mcpOiReTC01XShfGzGrwrQ9le
 a4+jjLn21/X563twetGXCugC9XtXko++QhuEG+0XaUmOcHXbW86y6YWyI0SOV7Azz0l7
 W2tymZ5SNSJ/jocsB7hHRw3qS6PhW57rMECOhlc86I/a4T8dxlY7kAM5iLRfgsjbxAFO
 R5NMtjlIia1/y5Gxb/WOAds91fNOnixD4OHfzKqvWw9iYCyIxyZ8F8ID8w7XL3IeqyiQ
 igq2mb4Bl2nogRTuPNp3f9UoK3AS5ItEK82wtNms1G63k/FPVEsO2L4y2JcDRgt8EO1w
 aRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=qqQFrQ3hX/shpvXWwGDhgGnBTSC3S+c/PjVDVDzS3rE=;
 b=r+VZNUIfGl9XcBE6+x5L6OA0GPHrEpl64XAEUL2WOzIfdoHOWJ/1B7jNVx+qdKJJHe
 2S42pTcykgqvVrt6FvqHh0qt7apO5WmpJRAHhiR60bebM1bCMZqKQHI+CpaT1HF/d285
 nppyGR6w4MdihVVRMHDBoV0W5QQu97xgbt3Q1aihaond4RAxUv/uRPV8RTrK7+2aHHO0
 w16rVE7QpT15KP2g3J91JiYttWSOhj3nc9W7Rnq4Y4XU293eocYoDvEZTlwwH1+UqEMl
 VhEPLxPueq5fbD9ti1WXmUYa8c5HDhNm3uPmOa3JQ/DGxNmJh46isKy/7FV7Mwr1TVIB
 KMpg==
X-Gm-Message-State: AOAM533ZK8TFlt6kUCbO/NBJmg93j6PMrJdlCsR4tXJs/xgVRhQ07lcL
 8coLA7nrSnqwJTEYHVkhw/AUpA==
X-Google-Smtp-Source: ABdhPJwF+ldQ32ipjGqMh+nSh0lfcFoy4UZXkOMJ83ncLJVxf71MRIhMXWJgqpQ0qjiTsPT0o/sTXg==
X-Received: by 2002:adf:a1c1:: with SMTP id v1mr11031281wrv.205.1591898280460; 
 Thu, 11 Jun 2020 10:58:00 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id c81sm5358903wmd.42.2020.06.11.10.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 10:57:59 -0700 (PDT)
Date: Thu, 11 Jun 2020 18:57:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v16 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200611175757.GB4106@dell>
References: <cover.1591136989.git.gurus@codeaurora.org>
 <20200611165505.GA9335@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611165505.GA9335@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_105806_423546_98F87C5D 
X-CRM114-Status: GOOD (  27.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxMSBKdW4gMjAyMCwgR3VydSBEYXMgU3JpbmFnZXNoIHdyb3RlOgoKPiBPbiBUdWUs
IEp1biAwMiwgMjAyMCBhdCAwMzozMTowNFBNIC0wNzAwLCBHdXJ1IERhcyBTcmluYWdlc2ggd3Jv
dGU6Cj4gPiBCZWNhdXNlIHBlcmlvZCBhbmQgZHV0eSBjeWNsZSBhcmUgZGVmaW5lZCBpbiB0aGUg
UFdNIGZyYW1ld29yayBzdHJ1Y3RzIGFzIGludHMKPiA+IHdpdGggdW5pdHMgb2YgbmFub3NlY29u
ZHMsIHRoZSBtYXhpbXVtIHRpbWUgZHVyYXRpb24gdGhhdCBjYW4gYmUgc2V0IGlzIGxpbWl0ZWQK
PiA+IHRvIH4yLjE0NyBzZWNvbmRzLiBDb25zZXF1ZW50bHksIGFwcGxpY2F0aW9ucyBkZXNpcmlu
ZyB0byBzZXQgZ3JlYXRlciB0aW1lCj4gPiBwZXJpb2RzIHZpYSB0aGUgUFdNIGZyYW1ld29yayBh
cmUgbm90IGJlIGFibGUgdG8gZG8gc28gLSBsaWtlLCBmb3IgaW5zdGFuY2UsCj4gPiBjYXVzaW5n
IGFuIExFRCB0byBibGluayBhdCBhbiBpbnRlcnZhbCBvZiA1IHNlY29uZHMuCj4gPiAKPiA+IFJl
ZGVmaW5pbmcgdGhlIHBlcmlvZCBhbmQgZHV0eSBjeWNsZSBzdHJ1Y3QgbWVtYmVycyBpbiB0aGUg
Y29yZSBQV00gZnJhbWV3b3JrCj4gPiBzdHJ1Y3RzIGFzIHU2NCB2YWx1ZXMgd2lsbCBlbmFibGUg
bGFyZ2VyIHRpbWUgZHVyYXRpb25zIHRvIGJlIHNldCBhbmQgc29sdmUKPiA+IHRoaXMgcHJvYmxl
bS4gU3VjaCBhIGNoYW5nZSB0byB0aGUgZnJhbWV3b3JrIG1hbmRhdGVzIHRoYXQgZHJpdmVycyB1
c2luZyB0aGVzZQo+ID4gc3RydWN0IG1lbWJlcnMgKGFuZCBjb3JyZXNwb25kaW5nIGhlbHBlciBm
dW5jdGlvbnMpIGFsc28gYmUgbW9kaWZpZWQgY29ycmVjdGx5Cj4gPiBpbiBvcmRlciB0byBwcmV2
ZW50IGNvbXBpbGF0aW9uIGVycm9ycy4KPiA+IAo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgaW50cm9k
dWNlcyB0aGUgY2hhbmdlcyB0byBhbGwgdGhlIGRyaXZlcnMgZmlyc3QsIGZvbGxvd2VkIGJ5Cj4g
PiB0aGUgZnJhbWV3b3JrIGNoYW5nZSBhdCB0aGUgdmVyeSBlbmQgc28gdGhhdCB3aGVuIHRoZSBs
YXR0ZXIgaXMgYXBwbGllZCwgYWxsCj4gPiB0aGUgZHJpdmVycyBhcmUgaW4gZ29vZCBzaGFwZSBh
bmQgdGhlcmUgYXJlIG5vIGNvbXBpbGF0aW9uIGVycm9ycy4KPiA+IAo+ID4gQ2hhbmdlcyBmcm9t
IHYxNToKPiA+ICAgLSAgUmViYXNlZCB0byB0aXAgb2YgZm9yLW5leHQuCj4gPiAKPiA+IENoYW5n
ZXMgZnJvbSB2MTQ6Cj4gPiAgIC0gQ29sbGVjdGVkIFV3ZSdzIEFja2VkLWJ5IGZvciB0aGUgcHdt
IGNvcmUgcGF0Y2guCj4gPiAgIC0gQWRkcmVzc2VkIGNvbW1lbnRzIGluIHB3bS1jbHBzNzExeC5j
Lgo+ID4gCj4gPiBDaGFuZ2VzIGZyb20gdjEzOgo+ID4gICAtIFBydW5lZCBjYy1saXN0IGFuZCBh
ZGRlZCBzYW1lIChyZWR1Y2VkKSBzZXQgb2YgcmV2aWV3ZXJzIHRvIGFsbCBwYXRjaGVzLgo+ID4g
ICAtIEFkZGVkIExlZSBKb25lcycgQWNrZWQtYnkgdG8gdGhlIHB3bV9ibC5jIHBhdGNoLgo+ID4g
ICAtIEFkZGVkIEphbmkgTmlrdWxhJ3MgQWNrZWQtYnkgdG8gaW50ZWwtcGFuZWwuYyBwYXRjaC4K
PiA+ICAgLSBBZGRlZCBTdGVwaGVuIEJveWQncyBBY2tlZC1ieSB0byBwd20tY2xrLmMgcGF0Y2gu
Cj4gPiAgIC0gQWRkcmVzc2VkIEdlZXJ0J3MgcmV2aWV3IGNvbW1lbnRzIGluIGNscHM3MTF4LmMg
cGF0Y2guCj4gPiAKPiA+IENoYW5nZXMgZnJvbSB2MTI6Cj4gPiAgIC0gUmViYXNlZCB0byB0aXAg
b2YgZm9yLW5leHQKPiA+ICAgLSBDb2xsZWN0ZWQgQWNrZWQtYnkgZm9yIHN1bjRpCj4gPiAgIC0g
UmV3b3JrZWQgcGF0Y2ggZm9yIGludGVsLXBhbmVsLmMgZHVlIHRvIHJlYmFzZSwgZHJvcHBlZCBK
YW5pJ3MgQWNrZWQtYnkgYXMKPiA+ICAgICBhIHJlc3VsdAo+ID4gCj4gPiBDaGFuZ2VzIGZyb20g
djExOgo+ID4gICAtIFJlYmFzZWQgdG8gdGlwIG9mIGZvci1uZXh0Lgo+ID4gICAtIENvbGxlY3Rl
ZCAiQWNrZWQtYnk6IiBmb3IgdjcgKHVuY2hhbmdlZCkgb2YgcHdtOiBzaWZpdmU6IFs0XQo+ID4g
ICAtIFNxdWlzaGVkIHN0bTMyLWxwLmMgY2hhbmdlIHdpdGggZmluYWwgcGF0Y2ggaW4gc2VyaWVz
Cj4gPiAgIC0gc3VuNGk6IFVzZWQgbnNlY3NfdG9famlmZmllcygpCj4gPiAgIC0gaW14Mjc6IEFk
ZGVkIG92ZXJmbG93IGhhbmRsaW5nIGxvZ2ljCj4gPiAgIC0gY2xwczcxMXg6IENvcnJlY3RlZCB0
aGUgaWYgY29uZGl0aW9uIGZvciBza2lwcGluZyB0aGUgZGl2aXNpb24KPiA+ICAgLSBjbGs6IHB3
bTogUmV2ZXJ0ZWQgdG8gdjggdmVyc2lvbiwgYWRkZWQgY2hlY2sgdG8gcHJldmVudCBkaXZpc2lv
bi1ieS16ZXJvCj4gPiAKPiA+IENoYW5nZXMgZnJvbSB2MTA6Cj4gPiAgIC0gQ2FyZWZ1bGx5IGFk
ZGVkIGJhY2sgYWxsIHRoZSAiUmV2aWV3ZWQtYnk6ICIgYW5kICJBY2tlZC1ieTogIiB0YWdzIHJl
Y2VpdmVkCj4gPiAgICAgc28gZmFyIHRoYXQgaGFkIGdvdHRlbiBtaXNzZWQgaW4gdjkuIE5vIG90
aGVyIGNoYW5nZXMuCj4gPiAKPiA+IENoYW5nZXMgZnJvbSB2OToKPiA+ICAgLSBHYXRoZXJlZCB0
aGUgcmVjZWl2ZWQgIlJldmlld2VkLWJ5OiAiIHRhZwo+ID4gICAtIEFkZGVkIGJhY2sgdGhlIGNs
ay1wd20uYyBwYXRjaCBiZWNhdXNlIGtidWlsZCB0ZXN0IHJvYm90IGNvbXBsYWluZWQgWzNdCj4g
PiAgICAgYW5kIGFkZHJlc3NlZCByZWNlaXZlZCByZXZpZXcgY29tbWVudHMuCj4gPiAgIC0gY2xw
czcxMXg6IEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMuCj4gPiAKPiA+IENoYW5nZXMgZnJvbSB2
ODoKPiA+ICAgLSBHYXRoZXJlZCBhbGwgcmVjZWl2ZWQgIkFja2VkLWJ5OiAiIGFuZCAiUmV2aWV3
ZWQtYnk6ICIgdGFncwo+ID4gICAtIERyb3BwZWQgcGF0Y2ggdG8gY2xrLXB3bS5jIGZvciByZWFz
b25zIG1lbnRpb25kIGluIFsyXQo+ID4gICAtIEV4cGFuZGVkIGF1ZGllbmNlIG9mIHVucmV2aWV3
ZWQgcGF0Y2hlcwo+ID4gCj4gPiBDaGFuZ2VzIGZyb20gdjc6Cj4gPiAgIC0gQ2hhbmdlZCBjb21t
aXQgbWVzc2FnZXMgb2YgYWxsIHBhdGNoZXMgdG8gYmUgYnJpZWYgYW5kIHRvIHRoZSBwb2ludC4K
PiA+ICAgLSBBZGRlZCBleHBsYW5hdGlvbiBvZiBjaGFuZ2UgaW4gY292ZXIgbGV0dGVyLgo+ID4g
ICAtIERyb3BwZWQgY2hhbmdlIHRvIHB3bS1zdGkuYyBhcyB1cG9uIHJldmlldyBpdCB3YXMgdW5u
ZWNlc3NhcnkgYXMgc3RydWN0Cj4gPiAgICAgcHdtX2NhcHR1cmUgaXMgbm90IGJlaW5nIG1vZGlm
aWVkIGluIHRoZSBQV00gY29yZS4KPiA+IAo+ID4gQ2hhbmdlcyBmcm9tIHY2Ogo+ID4gICAtIFNw
bGl0IG91dCB0aGUgZHJpdmVyIGNoYW5nZXMgb3V0IGludG8gc2VwYXJhdGUgcGF0Y2hlcywgb25l
IHBhdGNoIHBlciBmaWxlCj4gPiAgICAgZm9yIGVhc2Ugb2YgcmV2aWV3aW5nLgo+ID4gCj4gPiBD
aGFuZ2VzIGZyb20gdjU6Cj4gPiAgIC0gRHJvcHBlZCB0aGUgY29udmVyc2lvbiBvZiBzdHJ1Y3Qg
cHdtX2NhcHR1cmUgdG8gdTY0IGZvciByZWFzb25zIG1lbnRpb25lZAo+ID4gICAgIGluIGh0dHBz
Oi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LXB3bS9tc2cxMTU0MS5odG1sCj4gPiAKPiA+
IENoYW5nZXMgZnJvbSB2NDoKPiA+ICAgLSBTcGxpdCB0aGUgcGF0Y2ggaW50byB0d286IG9uZSBm
b3IgY2hhbmdlcyB0byB0aGUgZHJpdmVycywgYW5kIHRoZSBhY3R1YWwKPiA+ICAgICBzd2l0Y2gg
dG8gdTY0IGZvciBlYXNlIG9mIHJldmVydGluZyBzaG91bGQgdGhlIG5lZWQgYXJpc2UuCj4gPiAg
IC0gUmUtZXhhbWluZWQgdGhlIHBhdGNoIGFuZCBtYWRlIHRoZSBmb2xsb3dpbmcgY29ycmVjdGlv
bnM6Cj4gPiAgICAgICAqIGludGVsX3BhbmVsLmM6Cj4gPiAJRElWNjRfVTY0X1JPVU5EX1VQIC0+
IERJVl9ST1VORF9VUF9VTEwgKGFzIG9ubHkgdGhlIG51bWVyYXRvciB3b3VsZCBiZQo+ID4gCTY0
LWJpdCBpbiB0aGlzIGNhc2UpLgo+ID4gICAgICAgKiBwd20tc3RpLmM6Cj4gPiAJZG9fZGl2IC0+
IGRpdl91NjQgKGRvX2RpdiBpcyBvcHRpbWl6ZWQgb25seSBmb3IgeDg2IGFyY2hpdGVjdHVyZXMs
IGFuZAo+ID4gCWRpdl91NjQncyBjb21tZW50IGJsb2NrIHN1Z2dlc3RzIHRvIHVzZSB0aGlzIGFz
IG11Y2ggYXMgcG9zc2libGUpLgo+ID4gCj4gPiBDaGFuZ2VzIGZyb20gdjM6Cj4gPiAgIC0gUmVi
YXNlZCB0byBjdXJyZW50IHRpcCBvZiBmb3ItbmV4dC4KPiA+IAo+ID4gQ2hhbmdlcyBmcm9tIHYy
Ogo+ID4gICAtIEZpeGVkICV1IC0+ICVsbHUgaW4gYSBkZXZfZGJnIGluIHB3bS1zdG0zMi1scC5j
LCB0aGFua3MgdG8ga2J1aWxkIHRlc3Qgcm9ib3QKPiA+ICAgLSBBZGRlZCBhIGNvdXBsZSBvZiBm
aXhlcyB0byBwd20taW14LXRwbS5jIGFuZCBwd20tc2lmaXZlLmMKPiA+IAo+ID4gQ2hhbmdlcyBm
cm9tIHYxOgo+ID4gICAtIEZpeGVkIGNvbXBpbGF0aW9uIGVycm9ycyBzZWVuIHdoZW4gY29tcGls
aW5nIGZvciBkaWZmZXJlbnQgYXJjaHMuCj4gPiAKPiA+IHYxOgo+ID4gICAtIFJld29ya2VkIHRo
ZSBjaGFuZ2UgcHVzaGVkIHVwc3RyZWFtIGVhcmxpZXIgWzFdIHNvIGFzIHRvIG5vdCBhZGQgYW4K
PiA+ICAgICBleHRlbnNpb24gdG8gYW4gb2Jzb2xldGUgQVBJLiBXaXRoIHRoaXMgY2hhbmdlLCBw
d21fb3BzLT5hcHBseSgpIGNhbiBiZQo+ID4gICAgIHVzZWQgdG8gc2V0IHB3bV9zdGF0ZSBwYXJh
bWV0ZXJzIGFzIHVzdWFsLgo+ID4gCj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGtt
bC8yMDE5MDkxNjE0MDA0OC5HQjc0ODhAdWxtby8KPiA+IFsyXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzIwMjAwMzEyMTkwODU5LkdBMTk2MDVAeHh4eHh4eHh4eHh4eHgvCj4gPiBbM10g
aHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtcHdtL21zZzExOTA2Lmh0bWwKPiA+
IFs0XSBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1wd20vbXNnMTE5ODYuaHRt
bAo+ID4gCj4gPiBHdXJ1IERhcyBTcmluYWdlc2ggKDExKToKPiA+ICAgZHJtL2k5MTU6IFVzZSA2
NC1iaXQgZGl2aXNpb24gbWFjcm8KPiA+ICAgaHdtb246IHB3bS1mYW46IFVzZSA2NC1iaXQgZGl2
aXNpb24gbWFjcm8KPiA+ICAgaXItcng1MTogVXNlIDY0LWJpdCBkaXZpc2lvbiBtYWNybwo+ID4g
ICBwd206IGNscHM3MTF4OiBVc2UgNjQtYml0IGRpdmlzaW9uIG1hY3JvCj4gPiAgIHB3bTogcHdt
LWlteC10cG06IFVzZSA2NC1iaXQgZGl2aXNpb24gbWFjcm8KPiA+ICAgcHdtOiBpbXgyNzogVXNl
IDY0LWJpdCBkaXZpc2lvbiBtYWNybyBhbmQgZnVuY3Rpb24KPiA+ICAgcHdtOiBzaWZpdmU6IFVz
ZSA2NC1iaXQgZGl2aXNpb24gbWFjcm8KPiA+ICAgcHdtOiBzdW40aTogVXNlIG5zZWNzX3RvX2pp
ZmZpZXMgdG8gYXZvaWQgYSBkaXZpc2lvbgo+ID4gICBiYWNrbGlnaHQ6IHB3bV9ibDogVXNlIDY0
LWJpdCBkaXZpc2lvbiBmdW5jdGlvbgo+ID4gICBjbGs6IHB3bTogVXNlIDY0LWJpdCBkaXZpc2lv
biBmdW5jdGlvbgo+ID4gICBwd206IGNvcmU6IENvbnZlcnQgcGVyaW9kIGFuZCBkdXR5IGN5Y2xl
IHRvIHU2NAo+ID4gCj4gPiAgZHJpdmVycy9jbGsvY2xrLXB3bS5jICAgICAgICAgICAgICAgICAg
ICAgIHwgIDcgKysrKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bh
bmVsLmMgfCAgMiArLQo+ID4gIGRyaXZlcnMvaHdtb24vcHdtLWZhbi5jICAgICAgICAgICAgICAg
ICAgICB8ICAyICstCj4gPiAgZHJpdmVycy9tZWRpYS9yYy9pci1yeDUxLmMgICAgICAgICAgICAg
ICAgIHwgIDMgKy0KPiA+ICBkcml2ZXJzL3B3bS9jb3JlLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxNCArKysrLS0tLS0KPiA+ICBkcml2ZXJzL3B3bS9wd20tY2xwczcxMXguYyAgICAgICAg
ICAgICAgICAgfCAgMiArLQo+ID4gIGRyaXZlcnMvcHdtL3B3bS1pbXgtdHBtLmMgICAgICAgICAg
ICAgICAgICB8ICAyICstCj4gPiAgZHJpdmVycy9wd20vcHdtLWlteDI3LmMgICAgICAgICAgICAg
ICAgICAgIHwgNDggKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCj4gPiAgZHJpdmVycy9w
d20vcHdtLXNpZml2ZS5jICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiA+ICBkcml2ZXJzL3B3
bS9wd20tc3RtMzItbHAuYyAgICAgICAgICAgICAgICAgfCAgMiArLQo+ID4gIGRyaXZlcnMvcHdt
L3B3bS1zdW40aS5jICAgICAgICAgICAgICAgICAgICB8ICAyICstCj4gPiAgZHJpdmVycy9wd20v
c3lzZnMuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgIDggKystLS0KPiA+ICBkcml2ZXJzL3Zp
ZGVvL2JhY2tsaWdodC9wd21fYmwuYyAgICAgICAgICAgfCAgMyArLQo+ID4gIGluY2x1ZGUvbGlu
dXgvcHdtLmggICAgICAgICAgICAgICAgICAgICAgICB8IDEyICsrKystLS0tCj4gPiAgMTQgZmls
ZXMgY2hhbmdlZCwgNzcgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IC0t
IAo+IAo+IEhlbGxvIFRoaWVycnksIFV3ZSwgTGVlLAo+IAo+IEdlbnRsZSByZW1pbmRlciBmb3Ig
dGhpcyBwYXRjaCBzZXJpZXMgOikgRWFybGllciBkaXNjdXNzaW9ucyBvbiBuZXh0Cj4gc3RlcHMg
d2VyZSBhcyBwZXIgWzFdIGFuZCBbMl0uCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xrbWwvMjAyMDA1MjIxMjUwMjguR0cyMTYzODQ4QHVsbW8vCj4gWzJdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMjAyMDA1MjYwNjU5MzUuR0EzNjI4QGRlbGwvCgpOb3QgbXVjaCBoYXBw
ZW5zIGR1cmluZyB0aGUgbWVyZ2Utd2luZG93LgoKSSBkb24ndCBoYXZlIGluc2lkZXIgaW5mbyBv
biB0aGlzLCBidXQgbXkgYmVzdCBndWVzcyBpcyB0aGF0IFRoaWVycnkKd2lsbCBwaWNrIHRoaXMg
dXAgb25jZSAtcmMxIGhhcyBiZWVuIHJlbGVhc2VkLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pav
XQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
