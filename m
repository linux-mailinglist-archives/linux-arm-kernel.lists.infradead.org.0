Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C591367E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dOESjuyfJ1g6atSLP675NtjBoX3I0uEgckP0Ev3kVI=; b=uQg8GH3Q2ljAoc
	zjpBlQC3tnvopPHPMk5uHIB+Nw5TP/ID5hn+Q6LiSGGuMhk7G+L+L0A4alidv3ICNDFxLSIjZ2X1B
	QPRNe34jtZHqKFKiRDDPhnjd0NB2iGTtP77Mdnc0MgUW3BbsU4lcDAozgBnMnfjSadfK7T6Pv4tuH
	dt0cyxGBUeHqb5IdvOLQ5u9SUUN1qGDBUrm51ObkegzgT3+Qpcfsb3ALTQiV1yCTc1iRiFg6Zbmxa
	1COiKL5ovAbb5X2DyHDHl3INEUppoeCdbwHVB7jacKpo9kHdXdTrRVSM1gZRTXxnjHQOOczSPi7e0
	HI3GkqhZlrEY/M9nBU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoMn-0005Ih-4P; Fri, 10 Jan 2020 07:05:57 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoMf-0005HQ-LS
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:05:51 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00A75cER115272;
 Fri, 10 Jan 2020 01:05:38 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578639938;
 bh=kpORGyTnFiUB2kyV4rh9SVQZSJpHZQmOr0++G25k5Oc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WqqWhJ008QHlSIDVi34sOqZuXoEJmGIeNFnfPWDFSCvpu1SlX7OMiEoPbYuK//T6Y
 oqiaD5ciDKWocqn9lJ8EJJEXDxHNCjhtc2JbLBbb7Y17fZ86Ek8WJceVPSc5pA5Zwp
 WIg1PC5VkRDWBFdqEJrl0uOG71YPeSNcjwcHhNjo=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00A75cYD031065;
 Fri, 10 Jan 2020 01:05:38 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 10
 Jan 2020 01:05:38 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 10 Jan 2020 01:05:38 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00A75ZF7099102;
 Fri, 10 Jan 2020 01:05:36 -0600
Subject: Re: [PATCH] media: xilinx: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20191217104235.23771-1-peter.ujfalusi@ti.com>
 <20200109164847.GF31792@pendragon.ideasonboard.com>
 <20200109165348.GG31792@pendragon.ideasonboard.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <1a58e0e2-b1c2-1b97-22a8-8c0f366882d3@ti.com>
Date: Fri, 10 Jan 2020 09:06:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200109165348.GG31792@pendragon.ideasonboard.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_230549_825458_BEEA53E6 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: hyun.kwon@xilinx.com, michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOS8wMS8yMDIwIDE4LjUzLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+IEhlbGxvIGFn
YWluLAo+IAo+IE9uIFRodSwgSmFuIDA5LCAyMDIwIGF0IDA2OjQ4OjQ3UE0gKzAyMDAsIExhdXJl
bnQgUGluY2hhcnQgd3JvdGU6Cj4+IE9uIFR1ZSwgRGVjIDE3LCAyMDE5IGF0IDEyOjQyOjM1UE0g
KzAyMDAsIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+Pj4gZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5l
bCgpIGlzIGEgd3JhcHBlciBvbiB0b3Agb2YgZG1hX3JlcXVlc3RfY2hhbigpCj4+PiBlYXRpbmcg
dXAgdGhlIGVycm9yIGNvZGUuCj4+Pgo+Pj4gQnkgdXNpbmcgZG1hX3JlcXVlc3RfY2hhbigpIGRp
cmVjdGx5IHRoZSBkcml2ZXIgY2FuIHN1cHBvcnQgZGVmZXJyZWQKPj4+IHByb2JpbmcgYWdhaW5z
dCBETUEuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFs
dXNpQHRpLmNvbT4KPj4KPj4gUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQu
cGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPj4KPj4gVmlub2QsIGNvdWxkIHlvdSBwbGVhc2Ug
cGljayB0aGlzIHVwID8KPiAKPiBJIHNwb2tlIHRvbyBmYXN0Lgo+IAo+Pj4gLS0tCj4+PiAgZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS94aWxpbngveGlsaW54LWRtYS5jIHwgNiArKystLS0KPj4+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3hpbGlueC94aWxpbngtZG1hLmMgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3hpbGlueC94aWxpbngtZG1hLmMKPj4+IGluZGV4IGIyMTEz
ODBhMTFmMi4uOWNlNTE1ZmY5YzBhIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS94aWxpbngveGlsaW54LWRtYS5jCj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3hpbGlueC94aWxpbngtZG1hLmMKPj4+IEBAIC03MjUsMTAgKzcyNSwxMCBAQCBpbnQgeHZpcF9k
bWFfaW5pdChzdHJ1Y3QgeHZpcF9jb21wb3NpdGVfZGV2aWNlICp4ZGV2LCBzdHJ1Y3QgeHZpcF9k
bWEgKmRtYSwKPj4+ICAKPj4+ICAJLyogLi4uIGFuZCB0aGUgRE1BIGNoYW5uZWwuICovCj4+PiAg
CXNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInBvcnQldSIsIHBvcnQpOwo+Pj4gLQlkbWEt
PmRtYSA9IGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoZG1hLT54ZGV2LT5kZXYsIG5hbWUpOwo+
Pj4gLQlpZiAoZG1hLT5kbWEgPT0gTlVMTCkgewo+Pj4gKwlkbWEtPmRtYSA9IGRtYV9yZXF1ZXN0
X2NoYW4oZG1hLT54ZGV2LT5kZXYsIG5hbWUpOwo+Pj4gKwlpZiAoSVNfRVJSKGRtYS0+ZG1hKSkg
ewo+Pj4gIAkJZGV2X2VycihkbWEtPnhkZXYtPmRldiwgIm5vIFZETUEgY2hhbm5lbCBmb3VuZFxu
Iik7CgphbmQgcHJpbnQgdGhpcyBvbmx5IGluIGNhc2Ugb2YgIUVQUk9CRV9ERUZFUgoKPj4+IC0J
CXJldCA9IC1FTk9ERVY7Cj4+PiArCQlyZXQgPSBQVFJfRVJSKGRtYS0+ZG1hKTsKPj4+ICAJCWdv
dG8gZXJyb3I7Cj4gCj4gQXQgdGhlIGVycm9yIGxhYmVsLCB3ZSBoYXZlCj4gCj4gZXJyb3I6Cj4g
CXh2aXBfZG1hX2NsZWFudXAoZG1hKTsKPiAJcmV0dXJuIHJldDsKPiAKPiBhbmQgeHZpcF9kbWFf
Y2xlYW51cCgpIGNvbnRhaW5zCj4gCj4gCWlmIChkbWEtPmRtYSkKPiAJCWRtYV9yZWxlYXNlX2No
YW5uZWwoZG1hLT5kbWEpOwo+IAo+IFlvdSBuZWVkIHRvIHR1cm4gdGhpcyBpbnRvCj4gCj4gCWlm
ICghSVNfRVJSX09SX05VTEwoZG1hLT5kbWEpKQoKSSBnZW5lcmFsbHkgdHJ5IHRvIGF2b2lkIElT
X0VSUl9PUl9OVUxMKCkKCj4gCj4gb3IgYWRkIGEKPiAKPiAJCWRtYS0+ZG1hID0gTlVMTDsKCkJ1
dCBpbiB0aGlzIGNhc2UgSSB0aGluayBpdCBsb29rcyBiZXR0ZXIgdGhhdCB3YXkuCgo+IAo+IGlu
IHRoZSBlcnJvciBjYXNlIGluIHh2aXBfZG1hX2luaXQoKS4KPiAKPj4+ICAJfQo+Pj4gIAo+IAoK
LSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIs
IDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFp
a2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
