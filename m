Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0FA3870B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPQsp0b0JEhs/wP5ukKqiQuQ4JkOL35P0iojeNyHZD4=; b=b3q1z8HOrZ5tsj
	IEXTS8rLdr9rlSoTssHZa+QgXBKsGnJGthiAYzIiAw1t6FYXklWI2EtxhA2p/qGE3IZM7TPzRgXUm
	AusM3lE3TFXM26OFgvMX4gBu3z+NNUQjfByMBC9PbvMD11IsmUHpJAHId7TphSPhByM+8HA8NGZlF
	VlHMwELGmsJ3OBWGDPJgD7rvJ8Ms4P54Qf6UlL4v20GSUri1n+er/jv2rJ8QFYei2l46sSsJKVtij
	Sj7ngmkScUrXQfqlzFOtdRsuOfQ7ywQqve748WGn1kQ6mL1COxhCV27HdSah+J37rjNC56apSO/s1
	gq/DWppEWxb/l2l9NvpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZB9c-0006KE-Ef; Fri, 07 Jun 2019 09:27:20 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZB9R-0006Jd-26; Fri, 07 Jun 2019 09:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559899609;
 bh=yn03fOF6r2SyvabnP4JYMrFm+Hg3kZ8i/XwXrvS283Q=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=le3QyRV5SCfUfnUTHDDx8KnwAJ1YcZZofGsaiENaa0S65QE9F4Df2PXJx195KBS1v
 KiLuApK3rCbGhgwoopsvnM49AmTGuemK/in+mjSTTdrzjcxxWW+JWquQhdeuWUCRRs
 QGUGSopxUBhdKOK9NdMaVD1vWXyVIuI2iwdARj4I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MNO33-1hSrTs2XyT-006yzg; Fri, 07
 Jun 2019 11:26:49 +0200
Subject: Re: [PATCH v2 2/7] clk: bcm283x: add driver interfacing with
 Raspberry Pi's firmware
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, stefan.wahren@i2se.com,
 linux-kernel@vger.kernel.org
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-3-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <3c4c8b56-eb02-be6f-9b3a-a94a895f10f0@gmx.net>
Date: Fri, 7 Jun 2019 11:26:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606142255.29454-3-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:9Gtr4vKtOR7f9jmvwWwAkSPUnTUPjTLfX0dp1Pf8fuXmf0dEfTv
 sYX87a56nfWjPnZ65c8C38ChUF4YP3EIs6NMJWI1eSMMZh7XsYSH5Zrh9pkcoVgo/nSAKHv
 l5il35Lc1dsKXeqt+WHXl2dsi6d412sVIr5FLEjxsqPIVcb6MWqj/gShhumCCM1Qa50r6E6
 8ZUYczb/ER9H95lF0i7AQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kybE1EZUeqU=:GdnVIzfNDYmg2Nph1GGsya
 A+e0FnzQ5HvHAf63DUuFKS2/O38aDgT1nJjz5bvRGtTqzEonDUx9geW0848X1O0cc6y+aAYFg
 0yGxpn1O8UbYRdehn6OQ5Sw965936qxrIb5ryXOHXdYhI5kGpmirrVV5IFXV+jypZkhDuYkBM
 pGZ+REtEQqwgYk49QId+QcpwYjYa0wTAzyXXR4Xlv1idjRUwyXeYqqNHFsowqca3bQ5UbNBn7
 6TO/3qf9a+RygSvgzgDhjGBL+Mka/u7WTb5GPj0C2iG/hbp4YU+B3EG8GLAhlkk95WZMoWa0s
 tiigh17spRDR1VaI+CzXlktvY01wOv7tnDxGVZ4XlBYxaRlblkRyyVvOqKjSt/JzgVbwl2vbs
 aE1r2T2wwF5mI+QnwrGe7IHynFORIKHcuYhZb9UnYys6tV+cuXISBIUrLwWC4L4KAcTt19H1T
 TOB+L33bXnkDJ97F0k6gJijEBfVKyVg3VhHp0b1hc0/fd1g1P5blM+jBo3HdL2oSJkKzVED+T
 t3wwL9cmDnem9QA7l+V9U3A0Ins5S6u7l8iMIVzxotJBci3j1yNOYnaCVwt+A/UMC+cJzEgE2
 0HDv0lHZ2nsHvTDWV1lmg6mxSQKKqvBPSpNwUmrVpI1Ms8G2LxRlDCMoCAPmVTEKGLm/NRXgU
 Xrpk8zkySwcytH2lWBFh8bC8oOzdTpnuwbV8Dr5ouaBg5kk65cXuinXhUj8qC0O7uBI8+9N9S
 G2HVhS6r0G0O7qMa+ujVkQHYXWnW1GOFkDrawwUu+SBW8dr5lBlQ5oiLrN6G4Oanb6HzUZu7K
 Gf9SKaJlK1TJ3sBZHDCa79GaKS20P+iwWr3IF35Kx7fPnIPAI4bczSEu4sUeYeObDwC0YkGXz
 TH/CgQIjOA69ugkmlH91/gdjuanZ7/2HyQ+WxslWIvh+05brGKcvffCABftEWzyC/LNaT9g6S
 EEdkr3mWE+TxcmVtQQe/cxcbObDAET+4nssRHEwulsELvQxOSsRW5/Y5tFit+0QjG1D2xmMVd
 cQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_022709_438022_FB90E92A 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, mbrugger@suse.de, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ssuloev@orpaltech.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTmljb2xhcywKCkFtIDA2LjA2LjE5IHVtIDE2OjIyIHNjaHJpZWIgTmljb2xhcyBTYWVueiBK
dWxpZW5uZToKPiBSYXNwYmVycnkgUGkncyBmaXJtd2FyZSBvZmZlcnMgYW4gaW50ZXJmYWNlIHRo
b3VnaCB3aGljaCB1cGRhdGUgaXQncwo+IGNsb2NrJ3MgZnJlcXVlbmNpZXMuIFRoaXMgaXMgc3Bl
Y2lhbGx5IHVzZWZ1bCBpbiBvcmRlciB0byBjaGFuZ2UgdGhlIENQVQo+IGNsb2NrIChwbGxiX2Fy
bSkgd2hpY2ggaXMgJ293bmVkJyBieSB0aGUgZmlybXdhcmUgYW5kIHdlJ3JlIHVuYWJsZSB0bwo+
IHNjYWxlIHVzaW5nIHRoZSByZWdpc3RlciBpbnRlcmZhY2UgcHJvdmlkZWQgYnkgY2xrLWJjbTI4
MzUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxp
ZW5uZUBzdXNlLmRlPgo+IEFja2VkLWJ5OiBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0Pgo+
Cj4gLS0tCj4KPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ICAgLSBVc2UgQklUKCkKPiAgIC0gQWRkIEtj
b25maWcgZW50cnksIHdpdGggY29tcGlsZSB0ZXN0Cj4gICAtIHJlbW92ZSBwcmVwYXJlL3VucHJl
cGFyZQo+ICAgLSBGaXggdW5pbml0aWFsaXplZCBpbml0Lm5hbWUgaW4gcGxsYiByZWdpc3RyYXRp
b24KPiAgIC0gQWRkIE1PRFVMRV9BTElBUygpCj4gICAtIFVzZSBkZXRlcm1pbmVfcmF0ZSgpIGlu
c3RlYWQgb2Ygcm91bmRfcmF0ZSgpCj4gICAtIEFkZCBzbWFsbCBpbnRyb2R1Y3Rpb24gZXhwbGFp
bmluZyBuZWVkIGZvciBkcml2ZXIKPgo+ICBkcml2ZXJzL2Nsay9iY20vS2NvbmZpZyAgICAgICAg
ICAgfCAgIDcgKwo+ICBkcml2ZXJzL2Nsay9iY20vTWFrZWZpbGUgICAgICAgICAgfCAgIDEgKwo+
ICBkcml2ZXJzL2Nsay9iY20vY2xrLXJhc3BiZXJyeXBpLmMgfCAzMDIgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzEwIGluc2VydGlvbnMoKykKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL2JjbS9jbGstcmFzcGJlcnJ5cGkuYwo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2JjbS9LY29uZmlnIGIvZHJpdmVycy9jbGsvYmNtL0tj
b25maWcKPiBpbmRleCAyOWVlN2I3NzZjZDQuLmE0YTI3NzVkNjVlMSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2Nsay9iY20vS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvY2xrL2JjbS9LY29uZmlnCj4g
QEAgLTY0LDMgKzY0LDEwIEBAIGNvbmZpZyBDTEtfQkNNX1NSCj4gIAlkZWZhdWx0IEFSQ0hfQkNN
X0lQUk9DCj4gIAloZWxwCj4gIAkgIEVuYWJsZSBjb21tb24gY2xvY2sgZnJhbWV3b3JrIHN1cHBv
cnQgZm9yIHRoZSBCcm9hZGNvbSBTdGluZ3JheSBTb0MKPiArCj4gK2NvbmZpZyBDTEtfUkFTUEJF
UlJZUEkKPiArCXRyaXN0YXRlICJSYXNwYmVycnkgUGkgZmlybXdhcmUgYmFzZWQgY2xvY2sgc3Vw
cG9ydCIKPiArCWRlcGVuZHMgb24gUkFTUEJFUlJZUElfRklSTVdBUkUgfHwgKENPTVBJTEVfVEVT
VCAmJiAhUkFTUEJFUlJZUElfRklSTVdBUkUpCj4gKwloZWxwCj4gKwkgIEVuYWJsZSBjb21tb24g
Y2xvY2sgZnJhbWV3b3JrIHN1cHBvcnQgZm9yIFJhc3BiZXJyeSBQaSdzIGZpcm13YXJlCj4gKwkg
IGRlcGVuZGVudCBjbG9ja3MKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYmNtL01ha2VmaWxl
IGIvZHJpdmVycy9jbGsvYmNtL01ha2VmaWxlCj4gaW5kZXggMDAyNjYxZDM5MTI4Li5lYjcxNTkw
OTlkODIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvYmNtL01ha2VmaWxlCj4gKysrIGIvZHJp
dmVycy9jbGsvYmNtL01ha2VmaWxlCj4gQEAgLTcsNiArNyw3IEBAIG9iai0kKENPTkZJR19DTEtf
QkNNX0tPTkEpCSs9IGNsay1iY20yMTY2NC5vCj4gIG9iai0kKENPTkZJR19DT01NT05fQ0xLX0lQ
Uk9DKQkrPSBjbGstaXByb2MtYXJtcGxsLm8gY2xrLWlwcm9jLXBsbC5vIGNsay1pcHJvYy1hc2l1
Lm8KPiAgb2JqLSQoQ09ORklHX0FSQ0hfQkNNMjgzNSkJKz0gY2xrLWJjbTI4MzUubwo+ICBvYmot
JChDT05GSUdfQVJDSF9CQ00yODM1KQkrPSBjbGstYmNtMjgzNS1hdXgubwo+ICtvYmotJChDT05G
SUdfQ0xLX1JBU1BCRVJSWVBJKQkrPSBjbGstcmFzcGJlcnJ5cGkubwo+ICBvYmotJChDT05GSUdf
QVJDSF9CQ01fNTM1NzMpCSs9IGNsay1iY201MzU3My1pbHAubwo+ICBvYmotJChDT05GSUdfQ0xL
X0JDTV9DWUdOVVMpCSs9IGNsay1jeWdudXMubwo+ICBvYmotJChDT05GSUdfQ0xLX0JDTV9IUjIp
CSs9IGNsay1ocjIubwoKbm90IHlvdXIgZmF1bHQgYnV0IHlvdSBiZXR0ZXIgcmViYXNlIHlvdXIg
bmV4dCB2ZXJzaW9uIG9uIGxpbnV4LW5leHQKYmVjYXVzZSBGbG9yaWFuJ3MgbGF0ZXN0IHBhdGNo
ZXMgKCJjbGs6IGJjbTogTWFrZSBCQ00yODM1IGNsb2NrIGRyaXZlcnMKc2VsZWN0YWJsZSIpIGNv
bGxpZGUgd2l0aCB0aGlzIHBhdGNoLgoKQ2hlY2twYXRjaCBnaXZlcyB0aGUgZm9sbG93aW5nIG91
dHB1dCBhYm91dCB0aGlzIHBhdGNoOgoKV0FSTklORzogJ2hhcndhcmUnIG1heSBiZSBtaXNzcGVs
bGVkIC0gcGVyaGFwcyAnaGFyZHdhcmUnPwoKIzU4OiBGSUxFOiBkcml2ZXJzL2Nsay9iY20vY2xr
LXJhc3BiZXJyeXBpLmM6NToKKyAqIEV2ZW4gdGhvdWdoIGNsay1iY20yODM1IHByb3ZpZGVzIGFu
IGludGVyZmFjZSB0byB0aGUgaGFyd2FyZQpyZWdpc3RlcnMgZm9yCgpFUlJPUjogY29kZSBpbmRl
bnQgc2hvdWxkIHVzZSB0YWJzIHdoZXJlIHBvc3NpYmxlCiMxOTc6IEZJTEU6IGRyaXZlcnMvY2xr
L2JjbS9jbGstcmFzcGJlcnJ5cGkuYzoxNDQ6CiteSV5JXkleScKgwqDCoMKgwqDCoMKgwqDCoMKg
IHN0cnVjdCBjbGtfcmF0ZV9yZXF1ZXN0ICpyZXEpJAoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
