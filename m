Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00D8379D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/vIhviXXk9HX/GOBANs9Ot6vutl0CAQ694ugmg5p2o=; b=p6GHX+1CssiiDZ
	ZxuvZ1GX/3yHUjERn212oW2gsSiVwKHngpE2YdhWoEXzRBvPxM/oP2T+qxd1y52EYLTjw1FmreGGE
	Ch4kqY0SLfLCYnRExqAV0rs8q2GJ8B5TAA+aiLMVRR48sqHOtLTSvhWedAEOwl9oEqncIU7Aa5Wuf
	rN3VxO4diTqDvuapMFmASGhqMkocl8Yod1c0Jfxs6V+K01pW4cW6sSO4bdDwBemQ/9UOoGii+BOOm
	di/dNrk+x7k0El1WxWfH0RsnRvDlBubqGyusg6yApkzNMDeV9vJWYYIl7PCucWve0nmcNbazSThVI
	cS9EdKQjxM7BLy6ruCQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvMy-0002sB-9Y; Thu, 06 Jun 2019 16:36:04 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvMr-0002ro-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:35:58 +0000
Received: by mail-it1-x144.google.com with SMTP id m3so989711itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kZVofKIX8cuevQT7Eo8t89U9uZvINfNqGUyEDzkiDB8=;
 b=ndP56wM7bylQINUrjIQ9Ij5CE71JfnJe0DB5gosPulnzn3aE4r5QN3rTOy7WFQK6jn
 C/Z0LF8GPKjaraty0LCA8Vxhoy4a5Z3JtA+ElqmXPo8GeU+M3OeJTe3JmDeStEw91rYS
 eviNeXiUJqwQ+zFFkygjdmWjxO942+BEbSdBYYBxxm5YzSeaRFj/Tl/n470l4anL1T8S
 R66T726U1G37tThzShIXtRsSjo52297Hf5sy0IgMcwg5VExLcdAPsgT1R6tqwSSEjc31
 O0qFBDdoExVgT18QuUyD6XNjF3Izh0tS+D/oWH5ZJtMVuvwpPqc+qZbl61m5joLHB5CO
 yRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kZVofKIX8cuevQT7Eo8t89U9uZvINfNqGUyEDzkiDB8=;
 b=k03oIjf1TJITxH8Jg9V9Q0WHlPNjnqJM8/urllcIfQgvdQerRxgl1UhqoLelTirqCh
 lLdETANlyOUMsOmDcAo2eRJ/xBVxksmTRfe8g3sR4g6Sm0zC4u7Y21YLVlXujZsRGM2L
 p8BY1+S/ofpa8H19lkilti//aXgqUU60q+DtvgyzXN9YWGTGT53EhBmhXeUVHm9sbQpf
 XIQJZflqkBLmGjICYNODEeJ7Uzs0Vyi7BcRBIrNV+70crxFk8V3M2/x9U3t/e4ofUerR
 GDtDcBtQuqVQIW2+e8mvnR4jkpkNNtccVvxiyM9rqInKsjOMNfP4PyUuF9TTAphPw3YM
 SloQ==
X-Gm-Message-State: APjAAAUg16ZIgNiQ2TP7gADjLEsOrrlFQ8/0LtZ68bgDL2tgaMaFTK4c
 HH5kw7lzHs1QBQRYszUrZos=
X-Google-Smtp-Source: APXvYqy5UJ1Ew/Rn199zv3Jda6+BDkgik9cm4AqeLCU1a8gIDZAzg15i4BGv0jZa74ArwP9AjTV/LA==
X-Received: by 2002:a02:1a86:: with SMTP id 128mr32154721jai.95.1559838953406; 
 Thu, 06 Jun 2019 09:35:53 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id 20sm798893iog.62.2019.06.06.09.35.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 09:35:53 -0700 (PDT)
Subject: Re: [PATCH V8 14/15] PCI: tegra: Add Tegra194 PCIe support
To: Vidya Sagar <vidyas@nvidia.com>, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
 catalin.marinas@arm.com, will.deacon@arm.com, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-15-vidyas@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <f30e7fc6-3f64-d321-c32c-5e273115a869@gmail.com>
Date: Thu, 6 Jun 2019 19:35:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190526043751.12729-15-vidyas@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_093557_150785_9261E3DF 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjYuMDUuMjAxOSA3OjM3LCBWaWR5YSBTYWdhciDQv9C40YjQtdGCOgo+IEFkZCBzdXBwb3J0IGZv
ciBTeW5vcHN5cyBEZXNpZ25XYXJlIGNvcmUgSVAgYmFzZWQgUENJZSBob3N0IGNvbnRyb2xsZXIK
PiBwcmVzZW50IGluIFRlZ3JhMTk0IFNvQy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWR5YSBTYWdh
ciA8dmlkeWFzQG52aWRpYS5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBzaW5jZSBbdjddOgo+ICogQWRk
cmVzc2VkIHJldmlldyBjb21tZW50cyBmcm9tIFRoaWVycnkKPiAKPiBDaGFuZ2VzIHNpbmNlIFt2
Nl06Cj4gKiBSZW1vdmVkIGNvZGUgYXJvdW5kICJudmlkaWEsZGlzYWJsZS1hc3BtLXN0YXRlcyIg
RFQgcHJvcGVydHkKPiAqIFJlZmFjdG9yZWQgY29kZSB0byByZW1vdmUgY29kZSBkdXBsaWNhdGlv
bgo+IAo+IENoYW5nZXMgc2luY2UgW3Y1XToKPiAqIEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMg
ZnJvbSBUaGllcnJ5Cj4gCj4gQ2hhbmdlcyBzaW5jZSBbdjRdOgo+ICogTm9uZQo+IAo+IENoYW5n
ZXMgc2luY2UgW3YzXToKPiAqIE5vbmUKPiAKPiBDaGFuZ2VzIHNpbmNlIFt2Ml06Cj4gKiBDaGFu
Z2VkICdudmlkaWEsaW5pdC1zcGVlZCcgdG8gJ252aWRpYSxpbml0LWxpbmstc3BlZWQnCj4gKiBD
aGFuZ2VkICdudmlkaWEscGV4LXdha2UnIHRvICdudmlkaWEsd2FrZS1ncGlvcycKPiAqIFJlbW92
ZWQgLnJ1bnRpbWVfc3VzcGVuZCgpICYgLnJ1bnRpbWVfcmVzdW1lKCkgaW1wbGVtZW50YXRpb25z
Cj4gCj4gQ2hhbmdlcyBzaW5jZSBbdjFdOgo+ICogTWFkZSBDT05GSUdfUENJRV9URUdSQTE5NCBh
cyAnbScgYnkgZGVmYXVsdCBmcm9tIGl0cyBwcmV2aW91cyAneScgc3RhdGUKPiAqIE1vZGlmaWVk
IGNvZGUgYXMgcGVyIGNoYW5nZXMgbWFkZSB0byBEVCBkb2N1bWVudGF0aW9uCj4gKiBSZWZhY3Rv
cmVkIGNvZGUgdG8gYWRkcmVzcyBCam9ybiAmIFRoaWVycnkncyByZXZpZXcgY29tbWVudHMKPiAq
IEFkZGVkIGdvdG8gdG8gYXZvaWQgcmVjdXJzaW9uIGluIHRlZ3JhX3BjaWVfZHdfaG9zdF9pbml0
KCkgQVBJCj4gKiBNZXJnZWQgLnNjYW5fYnVzKCkgb2YgZHdfcGNpZV9ob3N0X29wcyBpbXBsZW1l
bnRhdGlvbiB0byB0ZWdyYV9wY2llX2R3X2hvc3RfaW5pdCgpIEFQSQo+IAo+ICBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9LY29uZmlnICAgICAgICAgfCAgIDEwICsKPiAgZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvTWFrZWZpbGUgICAgICAgIHwgICAgMSArCj4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtdGVncmExOTQuYyB8IDE2MjEgKysrKysrKysrKysrKysrKysrKysK
PiAgMyBmaWxlcyBjaGFuZ2VkLCAxNjMyIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtdGVncmExOTQuYwo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvS2NvbmZpZwo+IGluZGV4IGE2Y2UxZWU1MWI0Yy4uODg0MTEyYWZjMTFi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnCj4gQEAgLTIyMCw2ICsyMjAsMTYg
QEAgY29uZmlnIFBDSV9NRVNPTgo+ICAJICBhbmQgdGhlcmVmb3JlIHRoZSBkcml2ZXIgcmUtdXNl
cyB0aGUgRGVzaWduV2FyZSBjb3JlIGZ1bmN0aW9ucyB0bwo+ICAJICBpbXBsZW1lbnQgdGhlIGRy
aXZlci4KPiAgCj4gK2NvbmZpZyBQQ0lFX1RFR1JBMTk0Cj4gKwl0cmlzdGF0ZSAiTlZJRElBIFRl
Z3JhMTk0IChhbmQgbGF0ZXIpIFBDSWUgY29udHJvbGxlciIKPiArCWRlcGVuZHMgb24gKFRFR1JB
X0JQTVAgJiYgQVJDSF9URUdSQSkgfHwgQ09NUElMRV9URVNUCgpURUdSQV9CUE1QIHdpbGwgYmUg
ZW5vdWdoIGhlcmUgYXMgaXQgZGVwZW5kcyBvbiBvdGhlciByZWxldmFudCBvcHRpb25zLgoKSGVu
Y2UgSSBtZWFuOgoKCWRlcGVuZHMgb24gVEVHUkFfQlBNUCB8fCBDT01QSUxFX1RFU1QKCgo+ICsJ
ZGVwZW5kcyBvbiBQQ0lfTVNJX0lSUV9ET01BSU4KCllvdSBwcm9iYWJseSB3YW50IHRvIHMvZGVw
ZW5kcyBvbi9zZWxlY3QvIFBDSV9NU0lfSVJRX0RPTUFJTiwgZG9uJ3QgeW91PwoKLS0gCkRtaXRy
eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
