Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DB9197715
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 10:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXORriIEQTE1DVQCAhsSMQ1/fAdy2mWhCO2Q/GE9ehU=; b=a0XDHysil41INE
	eaaE5/tiyzLvK93ofwsPl5qZEhsyQoal4YWvFrEj2lr39lQOh96g/GArsbLqP4W44y0TUDJXfFFNN
	5nzdne1eizbOkhiU6H+TsiQzEeJqh6uaomkJvGnxKd7wp6j48Ia9IXQvbHCjA98D9jz7KsYOnEHgW
	Pck/IDkNzk7hDqTkqzHPKCQK9OP6i/+36eKNddNhTx6trUdRiSDBNR+09gXx+6hi5PPn1e+CbYVmB
	4d/snxM1BdW+gSdMhamlMHjC14CdSUW+tncfFgeFVnTEVahm6Wu5reo9UyqaWyuM8EY4u5lAXU9vd
	O3EzPYJrrkJpK5Gcmi1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIqAa-00028T-KG; Mon, 30 Mar 2020 08:53:20 +0000
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqAQ-00026W-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 08:53:12 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id E80042400FC
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 10:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1585558379; bh=n1xuKh66a44kQlniYMujMKktHlgYIiJ0zyokYI/9oDo=;
 h=From:Subject:To:Cc:Autocrypt:Date:From;
 b=ThGXuoJ05R0xoQclMwxeME6mfuANGbFqKulsj8Obzsqq2/IGLzAfBt8J1HySdTtFU
 ERZFd/I3ynrU6G93a2Ag11iPTQ40CbTkzPAuGcgntlMWSca6ktkP46KfCGCQUC4syt
 0lxHLopNrDcS9DwqeafBU/KkkjcssWTOc1M4pl44FlUD4RTBgcHyygQJMrfsQ5taWA
 wx2m5o7G5s/P37TdH+7f6MZz7zI6AU3SknZ6LjL68ZercgEshddUM8jwniWxKZvX03
 sTXYw/7sBCEM6I/MbirQkfPjD64lGllTnXR48GzLvh4zEio9HywQvLyhyxM5czPGC9
 jvTOubQv/HHhw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 48rR722jKyz9rxP;
 Mon, 30 Mar 2020 10:52:46 +0200 (CEST)
From: Martin Kepplinger <martink@posteo.de>
Subject: Re: [PATCH 0/8] interconnect: Add imx support via devfreq
To: =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <1ae21355-df95-44e5-b8f6-14af7aa4fcc3@posteo.de>
 <20200327113646.GA93181@bogon.m.sigxcpu.org>
Autocrypt: addr=martink@posteo.de; keydata=
 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
Message-ID: <9a84e745-3560-cb8a-4b1a-139b914c5a95@posteo.de>
Date: Mon, 30 Mar 2020 10:52:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200327113646.GA93181@bogon.m.sigxcpu.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_015311_159747_EAC3E78E 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcuMDMuMjAgMTI6MzYsIEd1aWRvIEfDvG50aGVyIHdyb3RlOgo+IEhpIE1hcnRpbiwKPiBP
biBUaHUsIE1hciAyNiwgMjAyMCBhdCAwMjo1NToyN1BNICswMTAwLCBNYXJ0aW4gS2VwcGxpbmdl
ciB3cm90ZToKPj4gT24gMjYuMDMuMjAgMDM6MTYsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPj4+
IFRoaXMgc2VyaWVzIGFkZHMgaW50ZXJjb25uZWN0IHNjYWxpbmcgc3VwcG9ydCBmb3IgaW14OG0g
c2VyaWVzIGNoaXBzLiBJdCB1c2VzIGEKPj4+IHBlci1TT0MgaW50ZXJjb25uZWN0IHByb3ZpZGVy
IGxheWVyZWQgb24gdG9wIG9mIG11bHRpcGxlIGluc3RhbmNlcyBvZiBkZXZmcmVxCj4+PiBmb3Ig
c2NhbGFibGUgbm9kZXMgYWxvbmcgdGhlIGludGVyY29ubmVjdC4KPj4+Cj4+PiBFeGlzdGluZyBx
Y29tIGludGVyY29ubmVjdCBwcm92aWRlcnMgbW9zdGx5IHRyYW5zbGF0ZSBiYW5kd2lkdGggcmVx
dWVzdHMgaW50bwo+Pj4gZmlybXdhcmUgY2FsbHMgYnV0IGVxdWl2YWxlbnQgZmlybXdhcmUgb24g
aW14OG0gaXMgbXVjaCB0aGlubmVyLiBTY2FsaW5nCj4+PiBzdXBwb3J0IGZvciBpbmRpdmlkdWFs
IG5vZGVzIGlzIGltcGxlbWVudGVkIGFzIGRpc3RpbmN0IGRldmZyZXEgZHJpdmVycwo+Pj4gaW5z
dGVhZC4KPj4+Cj4+PiBUaGUgaW14IGludGVyY29ubmVjdCBwcm92aWRlciBkb2Vzbid0IGNvbW11
bmljYXRlIHdpdGggZGV2ZnJlcSBkaXJlY3RseQo+Pj4gYnV0IHJhdGhlciBjb21wdXRlcyAibWlu
aW11bSBmcmVxdWVuY2llcyIgZm9yIG5vZGVzIGFsb25nIHRoZSBwYXRoIGFuZAo+Pj4gY3JlYXRl
cyBkZXZfcG1fcW9zIHJlcXVlc3RzLgo+Pj4KPj4+IFNpbmNlIHRoZXJlIGlzIG5vIHNpbmdsZSBk
ZXZpY2V0cmVlIG5vZGUgdGhhdCBjYW4gcmVwcmVzZW50IHRoZQo+Pj4gImludGVyY29ubmVjdCIg
dGhlIG1haW4gTk9DIGlzIHBpY2tlZCBhcyB0aGUgImludGVyY29ubmVjdCBwcm92aWRlciIgYW5k
Cj4+PiB3aWxsIHByb2JlIHRoZSBpbnRlcmNvbm5lY3QgcGxhdGZvcm0gZGV2aWNlIGlmICNpbnRl
cmNvbm5lY3QtY2VsbHMgaXMKPj4+IHByZXNlbnQuIFRoaXMgYXZvaWRzIGludHJvZHVjaW5nICJ2
aXJ0dWFsIiBkZXZpY2VzIGJ1dCBpdCBtZWFucyB0aGF0IERUCj4+PiBiaW5kaW5ncyBvZiBtYWlu
IE5PQyBpbmNsdWRlcyBwcm9wZXJ0aWVzIGZvciBib3RoIGRldmZyZXEgYW5kCj4+PiBpbnRlcmNv
bm5lY3QuCj4+Pgo+Pj4gT25seSB0aGUgZGRyYyBhbmQgbWFpbiBub2MgYXJlIHNjYWxhYmxlIHJp
Z2h0IG5vdyBidXQgbW9yZSBjYW4gYmUgYWRkZWQuCj4+Pgo+Pj4gQWxzbyBhdmFpbGFibGUgb24g
YSBnaXRodWIgYnJhbmNoICh3aXRoIHZhcmlvdXMgdW5yZWxhdGVkIGNoYW5nZXMpOgo+Pj4gCWh0
dHBzOi8vZ2l0aHViLmNvbS9jZGxlb25hcmQvbGludXgvdHJlZS9uZXh0Cj4+PiBUZXN0aW5nIGN1
cnJlbnRseSByZXF1aXJlcyBOWFAgYnJhbmNoIG9mIGF0Zit1Ym9vdAo+Pj4KPj4+IE1hcnRpbjog
SSBiZWxpZXZlIHlvdSBzaG91bGQgYmUgYWJsZSB0byB1c2UgdGhpcyB0byBjb250cm9sIERSQU0K
Pj4+IGZyZXF1ZW5jeSBmcm9tIHZpZGVvIGJ5IGp1c3QgYWRkaW5nIGludGVyY29ubmVjdCBjb25z
dW1lciBjb2RlIHRvCj4+PiBud2wtZHNpLiBTYW1wbGUgY29kZToKPj4+IAlodHRwczovL2dpdGh1
Yi5jb20vY2RsZW9uYXJkL2xpbnV4L2NvbW1pdC80Mzc3Mjc2MmFhNTA0NWYxY2U1NjIzNzQwZjlh
NGJhZWY5ODhkMDgzCj4+PiAJaHR0cHM6Ly9naXRodWIuY29tL2NkbGVvbmFyZC9saW51eC9jb21t
aXQvN2I2MDFlOTgxYjFmNTE3YjVkOThiNDNiZGUyOTI5NzJkZWQxMzA4Ngo+Pj4KPj4KPj4gVGhh
bmtzIGZvciB1cGRhdGluZyB0aGlzIHNlcmllcyBMZW9uYXJkISBBIGZldyBxdWVzdGlvbnMgZm9y
IG15Cj4+IHVuZGVyc3RhbmRpbmcgYmVmb3JlIHRyeWluZyB0byB0ZXN0Ogo+Pgo+PiBJc24ndCB0
aGUgZGRyY19vcHBfdGFibGUgbWlzc2luZyBpbiB0aGVzZSBhZGRpdGlvbnMgdG8gdGhlIERUPyBU
aGF0J3MKPj4gd2hhdCBJIHdhbnQgdG8gc2NhbGUgYWZ0ZXIgYWxsLgo+Pgo+PiBJZiBJIHdhbnQg
dG8ga2VlcCBjYWxsaW5nIHRoZSAicmVxdWVzdCIsIG5vdyBpY2Nfc2V0X2J3KCksIGluIG53bC1k
c2k6Cj4+IEknZCBhZGQgYW4gImludGVyY29ubmVjdHMiIHByb3BlcnR5IHRvIHRoZSBub2RlLCBi
dXQgd2hhdCB3b3VsZCBiZSBteQo+PiBpbnRlcmNvbm5lY3QgbWFzdGVyPyBpLmUuOiBpbnRlcmNv
bm5lY3RzID0gPCZub2MgbWFzdGVyPyAmbm9jCj4+IElNWDhNUV9JQ1NfRFJBTT47IEF0IGxlYXN0
IGl0J3Mgbm90IG9idmlvdXMgdG8gbWUgZnJvbQo+PiBpbnRlcmNvbm5lY3QvaW14L2lteDhtcS5j
Cj4gCj4gVGhlIE5XTCBEU0kgaG9zdCBjb250cm9sbGVyIGlzIGZlZCBieSBEQ1NTIG9yIG14c2Zi
IHNvIGFueSBiYW5kd2lkdGgKPiByZXF1aXJlbWVudHMgc2hvdWxkIChhcyBmYXIgYXMgSSB1bmRl
cnN0YW5kIHRoaW5ncykgZ28gaW50byB0aGUgZGlzcGxheQo+IGNvbnRyb2xsZXIgZHJpdmVyIHNp
bmNlIHRoYXQncyB3aGF0IGZldGNoZXMgZnJvbSBSQU0uCj4gQ2hlZXJzLAo+ICAtLSBHdWlkbwo+
IAoKSGksCgpUaGFua3MgYSBsb3QgTGVvbmFyZCBhbmQgR3VpZG8hIEhlcmUncyB0aGUgdHJlZSBJ
J20gcnVubmluZywgd2hpY2ggaXMKeW91ciBwYXRjaGVzIGJhc2VkIG9uIExpbnVzJyB0cmVlLCB3
aXRoIGljYyByZXF1ZXN0IGluIG14c2ZiOgoKaHR0cHM6Ly9zb3VyY2UucHVyaS5zbS9tYXJ0aW4u
a2VwcGxpbmdlci9saW51eC1uZXh0L2NvbW1pdHMvNS42LXJjNy9saWJyZW01X19pbnRlZ3JhdGlv
bl9kZXZmcmVxMQoKVGhlIHBhdGggZnJvbSBpY2MgdmlhIHBtX3FvcyB0byBkZXZmcmVxIGRvZXMg
d29yayAod2hpY2ggaXMgZ3JlYXQpIC0KaG93ZXZlciBvbmx5IGFmdGVyIHNldHRpbmcgdGhlIG1p
bmltdW0gZnJlcXVlbmNpZXMgdmlhIGEgZ292ZXJub3IgLSBJCnNldCB0aGUgInBvd2Vyc2F2ZSIg
Z292ZXJub3IuCgpBZnRlciB0aGF0LCBmcmVxdWVuY2llcyBhcmUgYm90aCBzZXQgdG8gaGlnaCAv
IGxvdyBjb3JyZWN0bHkuCgpNeSBpbXByZXNzaW9uIHdhcyB0aGF0IEkgc2hvdWxkIGJlIGFibGUg
dG8gdXNlIHRoZSAicGFzc2l2ZSIgZ292ZXJub3IgKGEKcGFzc2l2ZSBkZXZmcmVxIGRldmljZT8p
LiBXaGF0IGFtIEkgbWlzc2luZyB3aXRoIHVzaW5nIGRldmZyZXEKY29ycmVjdGx5PyBPciBkbyBJ
IGFscmVhZHk/CgpvdGhlciB0aGFuIHRoZSBhYm92ZSB1bmNlcnRhaW50eToKClRlc3RlZC1ieTog
TWFydGluIEtlcHBsaW5nZXIgPG1hcnRpbi5rZXBwbGluZ2VyQHB1cmkuc20+Cgp0aGFua3Mgc28g
ZmFyIQoKICAgICAgICAgICAgICAgICAgICAgICAgICBtYXJ0aW4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
