Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11771B97F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSHEJSoXqJ39lNphMsb0r3Mewdrozmv1uAtWfTNCiIU=; b=JX9WDCcs1PIBQN
	vPR1lWMGxgj63RJAtg6yWRwFDMwQZJYd1YHr6U4LB93PJaZdIVtWOLoMc1NT97ak/Ac1lVz5aVfCk
	7buT2/rDhhkbTB00uiLidrzb7UhiPMSCO1rv9VDQ2dVeNoZp38+57tXZ1drefnhIq/vsCLm9t3eCF
	82F7PKZL07xdSLD7dz3gX6Blw6IV4VYNWmXPXlTCgx24KZB41ndqMjWmgWCK9bJYvfCZBh/5BaC41
	EXnx7aFWDTkJK3Osj7LoLGdsfEmRx4Lpm0jILNgXxIQGLniCIHeOpLZU9pqWp2oEm7nvR7AoEKVHl
	im4xNnZlUWtkxyviuOBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxm5-0003HO-9t; Mon, 27 Apr 2020 07:01:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxls-0003FU-QW
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:01:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id h4so5003056wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 00:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QHAofsn8uU1kUPQWRssw/x34P9GiDf/VQqxTjU3liBY=;
 b=lxLMOkd1PYJiuXNbiS1a+eCzpOKElS/bsErxIHkznDJH5u6pIkk1E4X+4LqtwndjII
 eoJLlW2AwA1kBCEIU3pV2UTMMuCaBxuc+S+HbWL2IdklsTXEAnj7C4qO8ZVM0oJ1KCgg
 FfegEAT6rE7Rfwb72o5vN86xnJ3cIDBFa1wHdTXWhuQCIegoWHpUUq2YUV47/BMxPanm
 JwpSOt97R3sGlHkgClQopDUIliobBXJngq9kCSOA54w3UIBmslSEFwbQ7TxB/Ozvz1Sd
 Qwc+YTg3rcJePhkpF0S/sfuQkwPn7Cdv9ypurEQNp2H8MFVw83/Tx23Diw4qA0mjzNBg
 /W+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QHAofsn8uU1kUPQWRssw/x34P9GiDf/VQqxTjU3liBY=;
 b=RacBcAvL4w9YCgZLKIAR6M6Z6ajelG64CS1IQ4sATdZncMtSmuhb57IxOOEfkPzgWH
 ikUuLk5zgXcDJm5VIeXj2v+oWu+7fDwRi85VAz2jT4DxuuvXM1pdWEbmuWQrK6ezv+a5
 1kJEFjE+JyOIb46vJ5pc+vrdKtIj67p3fXyaJmX5USdQnrnCBDwNCfDITeuQtmFd6Lyk
 Pw8ErG5B0wKDfyXwrkpcIGobiv4QPngL1xGCTdUFfuV9Eml5sUEsgEFQMTuJagVJqmHO
 QUnOh0Ru4nivUqzJ3SI05TqLSXG0EMrAgibpJxDwDDlJrKtPPxH8Me8kJ1CeN9kag4cR
 C79A==
X-Gm-Message-State: AGi0PuYW2R5dmY0+bqD36vBWRYsE8gAACi0/kqZxKSwWpRRgPUoEa+Lh
 undLQ22vQx45x0SRR9HA7CySTg==
X-Google-Smtp-Source: APiQypIxdT2HUhgGkoWPlHuZswORpnAHJK6SShlkzX3VJ6JLRM5EuzMolS4/U7skbaaoQTdl+dh97Q==
X-Received: by 2002:a7b:c0cb:: with SMTP id s11mr26429338wmh.180.1587970898665; 
 Mon, 27 Apr 2020 00:01:38 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id k133sm15433186wma.0.2020.04.27.00.01.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 00:01:38 -0700 (PDT)
Subject: Re: [PATCH 00/14] Update omaps to use drivers/clocksource timers
To: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org
References: <20200417165519.4979-1-tony@atomide.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9cee6c42-781e-6897-abcc-a470732327a8@linaro.org>
Date: Mon, 27 Apr 2020 09:01:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417165519.4979-1-tony@atomide.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_000140_884133_532B35B0 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>, Adam Ford <aford173@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIFRvbnksCgpPbiAxNy8wNC8yMDIwIDE4OjU1LCBUb255IExpbmRncmVuIHdyb3RlOgo+IEhp
IGFsbCwKPiAKPiBIZXJlJ3MgYSBzZXJpZXMgb2YgY2hhbmdlcyB0byB1ZHBhdGUgb21hcHMgdG8g
dXNlIGRyaXZlcnMvY2xvY2tzb3VyY2UKPiB0aW1lcnMgZm9yIHRoZSAzMmsgY291bnRlciBhbmQg
ZG10aW1lciBhbmQgdG8gcmVtb3ZlIHRoZSBvbGQgbGVnYWN5Cj4gcGxhdGZvcm0gY29kZS4gUGxl
YXNlIHJldmlldyBhbmQgdGVzdC4KPiAKPiBEYW5pZWwsIGlmIHRoZSB0aGUgZmlyc3QgdHdvIHBh
dGNoZXMgbG9vayBPSyBhZnRlciByZXZpZXcsIG1heWJlIHlvdQo+IGNhbiBhZ2FpbiBzZXQgdXAg
YW4gaW1tdXRhYmxlIGJyYW5jaCBmb3IgdGhlIGZpcnN0IHR3byBwYXRjaGVzIGFnYWluc3QKPiB2
NS43LXJjMSB0aGF0IEkgY2FuIG1lcmdlIGluPwoKT2sgbGV0IG1lIHJldmlldyB0aGUgcGF0Y2hl
cy4KCgo+IFRvbnkgTGluZGdyZW4gKDE0KToKPiAgIGNsb2Nrc291cmNlL2RyaXZlcnMvdGltZXIt
dGktMzJrOiBBZGQgc3VwcG9ydCBmb3IgaW5pdGlhbGl6aW5nCj4gICAgIGRpcmVjdGx5Cj4gICBj
bG9ja3NvdXJjZS9kcml2ZXJzL3RpbWVyLXRpLWRtOiBBZGQgY2xvY2tldmVudCBhbmQgY2xvY2tz
b3VyY2UKPiAgICAgc3VwcG9ydAo+ICAgY2xrOiB0aTogZG04MTY6IGVuYWJsZSBzeXNjbGs2X2Nr
IG9uIGluaXQKPiAgIGJ1czogdGktc3lzYzogSWdub3JlIHRpbWVyMTIgb24gc2VjdXJlIG9tYXAz
Cj4gICBBUk06IE9NQVAyKzogQWRkIG9tYXBfaW5pdF90aW1lX29mKCkKPiAgIEFSTTogZHRzOiBD
b25maWd1cmUgc3lzdGVtIHRpbWVycyBmb3IgYW0zMzV4Cj4gICBBUk06IGR0czogQ29uZmlndXJl
IHN5c3RlbSB0aW1lcnMgZm9yIGFtNDM3eAo+ICAgQVJNOiBkdHM6IENvbmZpZ3VyZSBzeXN0ZW0g
dGltZXJzIGZvciBvbWFwNAo+ICAgQVJNOiBkdHM6IENvbmZpZ3VyZSBzeXN0ZW0gdGltZXJzIGZv
ciBvbWFwNSBhbmQgZHJhNwo+ICAgQVJNOiBkdHM6IENvbmZpZ3VyZSBzeXN0ZW0gdGltZXJzIGZv
ciBvbWFwMwo+ICAgQVJNOiBkdHM6IENvbmZpZ3VyZSBzeXN0ZW0gdGltZXJzIGZvciB0aTgxeHgK
PiAgIEFSTTogZHRzOiBDb25maWd1cmUgc3lzdGVtIHRpbWVycyBmb3Igb21hcDIKPiAgIEFSTTog
T01BUDIrOiBEcm9wIG9sZCB0aW1lciBjb2RlIGZvciBkbXRpbWVyIGFuZCAzMmsgY291bnRlcgo+
ICAgYnVzOiB0aS1zeXNjOiBUaW1lcnMgbm8gbG9uZ2VyIG5lZWQgbGVnYWN5IHF1aXJrIGhhbmRs
aW5nCj4gCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL3RpLHRpbWVyLnR4dCAgICB8
ICAgMiArCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2FtMzN4eC1sNC5kdHNpICAgICAgICAgICAgICB8
ICAgMiAtCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2FtMzN4eC5kdHNpICAgICAgICAgICAgICAgICB8
ICAxMiArCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2FtMzUxNy5kdHNpICAgICAgICAgICAgICAgICB8
ICAxNiArLQo+ICBhcmNoL2FybS9ib290L2R0cy9hbTQzNzIuZHRzaSAgICAgICAgICAgICAgICAg
fCAgMTIgKwo+ICBhcmNoL2FybS9ib290L2R0cy9hbTQzN3gtbDQuZHRzaSAgICAgICAgICAgICAg
fCAgIDMgLQo+ICBhcmNoL2FybS9ib290L2R0cy9kbTgxNHguZHRzaSAgICAgICAgICAgICAgICAg
fCAgNjYgKy0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvZG04MTZ4LmR0c2kgICAgICAgICAgICAgICAg
IHwgIDcwICsrLQo+ICBhcmNoL2FybS9ib290L2R0cy9kcmE3LWw0LmR0c2kgICAgICAgICAgICAg
ICAgfCAgIDUgLQo+ICBhcmNoL2FybS9ib290L2R0cy9kcmE3LmR0c2kgICAgICAgICAgICAgICAg
ICAgfCAgIDYgKwo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwMi5kdHNpICAgICAgICAgICAgICAg
ICAgfCAgMzggKy0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvb21hcDI0MjAuZHRzaSAgICAgICAgICAg
ICAgIHwgIDY1ICstCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL29tYXAyNDMwLmR0c2kgICAgICAgICAg
ICAgICB8ICA2NSArLQo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwMy1iZWFnbGUuZHRzICAgICAg
ICAgICAgfCAgMTYgKwo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwMy1kZXZraXQ4MDAwLmR0cyAg
ICAgICAgfCAgMTYgKwo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwMy5kdHNpICAgICAgICAgICAg
ICAgICAgfCAxMzAgKysrLQo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwNC1sNC5kdHNpICAgICAg
ICAgICAgICAgfCAgIDIgLQo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwNC5kdHNpICAgICAgICAg
ICAgICAgICAgfCAgIDYgKwo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwNS1sNC5kdHNpICAgICAg
ICAgICAgICAgfCAgIDIgLQo+ICBhcmNoL2FybS9ib290L2R0cy9vbWFwNS5kdHNpICAgICAgICAg
ICAgICAgICAgfCAgIDYgKwo+ICBhcmNoL2FybS9tYWNoLW9tYXAyL01ha2VmaWxlICAgICAgICAg
ICAgICAgICAgfCAgIDQgKy0KPiAgYXJjaC9hcm0vbWFjaC1vbWFwMi9ib2FyZC1nZW5lcmljLmMg
ICAgICAgICAgIHwgIDMyICstCj4gIGFyY2gvYXJtL21hY2gtb21hcDIvY29tbW9uLmggICAgICAg
ICAgICAgICAgICB8ICAgNyArCj4gIGFyY2gvYXJtL21hY2gtb21hcDIvb21hcF9od21vZF8yNDIw
X2RhdGEuYyAgICB8ICAyMCAtCj4gIGFyY2gvYXJtL21hY2gtb21hcDIvb21hcF9od21vZF8yNDMw
X2RhdGEuYyAgICB8ICAxOSAtCj4gIC4uLi9vbWFwX2h3bW9kXzJ4eHhfaW50ZXJjb25uZWN0X2Rh
dGEuYyAgICAgICB8ICAgOCAtCj4gIC4uLi9tYWNoLW9tYXAyL29tYXBfaHdtb2RfMnh4eF9pcGJs
b2NrX2RhdGEuYyB8ICA0NyAtLQo+ICAuLi4vb21hcF9od21vZF8zM3h4XzQzeHhfY29tbW9uX2Rh
dGEuaCAgICAgICAgfCAgIDIgLQo+ICAuLi4vb21hcF9od21vZF8zM3h4XzQzeHhfaW50ZXJjb25u
ZWN0X2RhdGEuYyAgfCAgIDggLQo+ICAuLi4vb21hcF9od21vZF8zM3h4XzQzeHhfaXBibG9ja19k
YXRhLmMgICAgICAgfCAgNjIgLS0KPiAgYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFwX2h3bW9kXzMz
eHhfZGF0YS5jICAgIHwgIDEwIC0KPiAgYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFwX2h3bW9kXzN4
eHhfZGF0YS5jICAgIHwgMTQ2ICstLS0tCj4gIGFyY2gvYXJtL21hY2gtb21hcDIvb21hcF9od21v
ZF80M3h4X2RhdGEuYyAgICB8ICA0NSAtLQo+ICBhcmNoL2FybS9tYWNoLW9tYXAyL29tYXBfaHdt
b2RfNDR4eF9kYXRhLmMgICAgfCAgOTAgLS0tCj4gIGFyY2gvYXJtL21hY2gtb21hcDIvb21hcF9o
d21vZF81NHh4X2RhdGEuYyAgICB8ICA4OSAtLS0KPiAgYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFw
X2h3bW9kXzd4eF9kYXRhLmMgICAgIHwgMTc2IC0tLS0tLQo+ICBhcmNoL2FybS9tYWNoLW9tYXAy
L29tYXBfaHdtb2RfODF4eF9kYXRhLmMgICAgfCAgNzQgLS0tCj4gIGFyY2gvYXJtL21hY2gtb21h
cDIvb21hcF9od21vZF9jb21tb25fZGF0YS5oICB8ICAgMyAtCj4gIGFyY2gvYXJtL21hY2gtb21h
cDIvdGltZXIuYyAgICAgICAgICAgICAgICAgICB8IDU2OCArLS0tLS0tLS0tLS0tLS0tLS0KPiAg
ZHJpdmVycy9idXMvdGktc3lzYy5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDI1ICstCj4g
IGRyaXZlcnMvY2xrL3RpL2Nsay04MTZ4LmMgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4g
IGRyaXZlcnMvY2xvY2tzb3VyY2UvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMSArCj4g
IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItdGktMzJrLmMgICAgICAgICAgICB8ICA0OCArLQo+
ICBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLXRpLWRtLXN5c3RpbWVyLmMgICAgfCA0NjggKysr
KysrKysrKysrKysrCj4gIGluY2x1ZGUvY2xvY2tzb3VyY2UvdGltZXItdGktZG0uaCAgICAgICAg
ICAgICB8ICAgMSArCj4gIDQ1IGZpbGVzIGNoYW5nZWQsIDEwMTYgaW5zZXJ0aW9ucygrKSwgMTQ3
OCBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xvY2tzb3VyY2Uv
dGltZXItdGktZG0tc3lzdGltZXIuYwo+IAoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4g
TGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cg
TGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sg
fAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3
LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
