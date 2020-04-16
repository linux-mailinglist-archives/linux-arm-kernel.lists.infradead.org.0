Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B49A1ABB92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9E1GrNuBZUjHypc+xJbixK0+x4S3ia4THGFukIg9aQ=; b=VGmZXfGIr1/v2u
	0szoiBkaS17w0XUf4OsVMGXSImYl/0BHfRrjbLf0Zg2C8bLOECsls5mxGH5Wp+RvEma1utjQpCPJp
	rOYpssUIViuvCi4dpqPQDSuuvo5PyhSCJDNt98rxK4+66N1tyWI8mbgEzcfkIN1opplMFuxL4GVaS
	VadIWOhzpTKtva1oWFcpMFHRz2tqf/7VF6Cs/LWxZrIzoIeBsQKqymv+G99U3DFHvI0FXIm6nlHRk
	yGbGWYEPHwp/xKw3SVBV4yGFYZ7KQXTrdQoFW+gIdYOBWx6fHSefMzBVEzABzidD2rPertzL38Dxu
	or27mdng2Sq9xK8cK01w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP09y-0006LN-Rs; Thu, 16 Apr 2020 08:46:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP09h-0006Dv-9b
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:45:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id u13so3854164wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7CCjqYtV5rZ1BPnB8xJbE2LOaBB1/4i0WAcySTW6iW4=;
 b=itp8ed87fWGbopVCacBwE3FdVL41GEKkFYSZwG2nBvg1yeGIFZDWITbHGxX+ZIc4++
 VIJYGeSbiOfjOQmSJI5J7y2+8QHmqlWFHnvdlAI1iJXxH6aJl09AvLpCHN72RC0/v73z
 rPNW/RviGMAZUAEVu+bLyRzexUY3dg/QaXeotAFdcnexqly7yj+rXOq2Cx3d0VmkOyd8
 Xv07Clm5SPK9NY+6HHuCKkw4sx/I9MwBANvuA1+yA3fE6mPbdtgxAL3obfE9Znh4IYPu
 so+60k1dtngnXw/obk3frg1N9vfu8bFB1d/nO1kEQoiDni9gxWZUEzZopQOoOVisxda9
 mwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7CCjqYtV5rZ1BPnB8xJbE2LOaBB1/4i0WAcySTW6iW4=;
 b=Rr5xuhymfVczRvKMnfCVTjQMSPr9b0Py/F0vfMs7BNrjO4m33yCU5LMIcTIno6btCq
 ITLWBrSw73GVeeYDL5ZJCyTAFt+scFQboeKyFduhwe8vQj3+05wVS1aAD2sEo00aKBTK
 r4PsaxV9dJ9tPRhBP4l9PVHotI1MkmHRW5YTxEI+qspHCCxJrfezQ3kRX5iZ6Rkvl5tt
 Vks/HnYuaMBHTnKXpUWRwOjwZnVahvCz/HvhWnhPgTr5fZkKFN+IMRXQ0ZxoN64QQi7R
 RKTLTLuWfslNU5llEfRvwWCUXyVyaqPbec4Lo8Dc1qMAqWFzE5iVNtFLD+YLfXFKXbA1
 QgdA==
X-Gm-Message-State: AGi0Pube7BBSqvdGWSW4cg+/7+UlAYO7XwOz2lGR7mAJLC72anPoaUrr
 wiJPKSuWJMTqYroSmGpZQqTpjQ==
X-Google-Smtp-Source: APiQypKwaGysG2hGUewJA7EWz2Xers7oN6ox2nLU1AuZfQ6/AeW4VTV34p40rICyZXOGugtKZ8RQdw==
X-Received: by 2002:a5d:4712:: with SMTP id y18mr3148011wrq.306.1587026751319; 
 Thu, 16 Apr 2020 01:45:51 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id n11sm28218236wrg.72.2020.04.16.01.45.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 01:45:50 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:46:51 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20200416084651.GW2167633@dell>
References: <20200107105959.18920-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107105959.18920-1-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_014553_871490_82487E6F 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNyBKYW4gMjAyMCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cgo+IGRtYV9yZXF1ZXN0
X3NsYXZlX2NoYW5uZWwoKSBpcyBhIHdyYXBwZXIgb24gdG9wIG9mIGRtYV9yZXF1ZXN0X2NoYW4o
KQo+IGVhdGluZyB1cCB0aGUgZXJyb3IgY29kZS4KPiAKPiBCeSB1c2luZyBkbWFfcmVxdWVzdF9j
aGFuKCkgZGlyZWN0bHkgdGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZAo+IHByb2Jpbmcg
YWdhaW5zdCBETUEuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVq
ZmFsdXNpQHRpLmNvbT4KPiAtLS0KPiBIaSwKPiAKPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gRmFs
bCBiYWNrIHRvIFBJTyBtb2RlIG9ubHkgaW4gY2FzZSBvZiBFTk9ERVYgYW5kIHJlcG9ydCBhbGwg
b3RoZXIgZXJyb3JzCj4gCj4gUmVnYXJkcywKPiBQZXRlcgo+IAo+ICBkcml2ZXJzL21mZC9zdG0z
Mi10aW1lcnMuYyB8IDMyICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKQXBvbG9naWVzIGZv
ciBub3Qgc3BvdHRpbmcgdGhpcyBwYXRjaCBzb29uZXIsIGl0IGhhZCBzbGlwcGVkIHRocm91Z2gK
dGhlIG5ldC4gIElmIHRoaXMgaGFwcGVucyBhZ2FpbiwgcGxlYXNlIGp1c3Qgc3VibWl0IGEgW1JF
U0VORF0uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9zdG0zMi10aW1lcnMuYyBiL2RyaXZl
cnMvbWZkL3N0bTMyLXRpbWVycy5jCj4gaW5kZXggZWZjZDRiOTgwYzk0Li5hZGQ2MDMzNTkxMjQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQvc3RtMzItdGltZXJzLmMKPiArKysgYi9kcml2ZXJz
L21mZC9zdG0zMi10aW1lcnMuYwo+IEBAIC0xNjcsMTAgKzE2NywxMSBAQCBzdGF0aWMgdm9pZCBz
dG0zMl90aW1lcnNfZ2V0X2Fycl9zaXplKHN0cnVjdCBzdG0zMl90aW1lcnMgKmRkYXRhKQo+ICAJ
cmVnbWFwX3dyaXRlKGRkYXRhLT5yZWdtYXAsIFRJTV9BUlIsIDB4MCk7Cj4gIH0KPiAgCj4gLXN0
YXRpYyB2b2lkIHN0bTMyX3RpbWVyc19kbWFfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LAo+ICtz
dGF0aWMgaW50IHN0bTMyX3RpbWVyc19kbWFfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LAo+ICAJ
CQkJICAgc3RydWN0IHN0bTMyX3RpbWVycyAqZGRhdGEpCj4gIHsKPiAgCWludCBpOwo+ICsJaW50
IHJldCA9IDA7Cj4gIAljaGFyIG5hbWVbNF07Cj4gIAo+ICAJaW5pdF9jb21wbGV0aW9uKCZkZGF0
YS0+ZG1hLmNvbXBsZXRpb24pOwo+IEBAIC0xNzksMTQgKzE4MCwyMyBAQCBzdGF0aWMgdm9pZCBz
dG0zMl90aW1lcnNfZG1hX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgCS8qIE9wdGlvbmFs
IERNQSBzdXBwb3J0OiBnZXQgdmFsaWQgRE1BIGNoYW5uZWwocykgb3IgTlVMTCAqLwo+ICAJZm9y
IChpID0gU1RNMzJfVElNRVJTX0RNQV9DSDE7IGkgPD0gU1RNMzJfVElNRVJTX0RNQV9DSDQ7IGkr
Kykgewo+ICAJCXNucHJpbnRmKG5hbWUsIEFSUkFZX1NJWkUobmFtZSksICJjaCUxZCIsIGkgKyAx
KTsKPiAtCQlkZGF0YS0+ZG1hLmNoYW5zW2ldID0gZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbChk
ZXYsIG5hbWUpOwo+ICsJCWRkYXRhLT5kbWEuY2hhbnNbaV0gPSBkbWFfcmVxdWVzdF9jaGFuKGRl
diwgbmFtZSk7Cj4gIAl9Cj4gLQlkZGF0YS0+ZG1hLmNoYW5zW1NUTTMyX1RJTUVSU19ETUFfVVBd
ID0KPiAtCQlkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKGRldiwgInVwIik7Cj4gLQlkZGF0YS0+
ZG1hLmNoYW5zW1NUTTMyX1RJTUVSU19ETUFfVFJJR10gPQo+IC0JCWRtYV9yZXF1ZXN0X3NsYXZl
X2NoYW5uZWwoZGV2LCAidHJpZyIpOwo+IC0JZGRhdGEtPmRtYS5jaGFuc1tTVE0zMl9USU1FUlNf
RE1BX0NPTV0gPQo+IC0JCWRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoZGV2LCAiY29tIik7Cj4g
KwlkZGF0YS0+ZG1hLmNoYW5zW1NUTTMyX1RJTUVSU19ETUFfVVBdID0gZG1hX3JlcXVlc3RfY2hh
bihkZXYsICJ1cCIpOwo+ICsJZGRhdGEtPmRtYS5jaGFuc1tTVE0zMl9USU1FUlNfRE1BX1RSSUdd
ID0gZG1hX3JlcXVlc3RfY2hhbihkZXYsICJ0cmlnIik7Cj4gKwlkZGF0YS0+ZG1hLmNoYW5zW1NU
TTMyX1RJTUVSU19ETUFfQ09NXSA9IGRtYV9yZXF1ZXN0X2NoYW4oZGV2LCAiY29tIik7Cj4gKwo+
ICsJZm9yIChpID0gU1RNMzJfVElNRVJTX0RNQV9DSDE7IGkgPCBTVE0zMl9USU1FUlNfTUFYX0RN
QVM7IGkrKykgewo+ICsJCWlmIChJU19FUlIoZGRhdGEtPmRtYS5jaGFuc1tpXSkpIHsKPiArCQkJ
LyogU2F2ZSB0aGUgZmlyc3QgZXJyb3IgY29kZSB0byByZXR1cm4gKi8KPiArCQkJaWYgKFBUUl9F
UlIoZGRhdGEtPmRtYS5jaGFuc1tpXSkgIT0gLUVOT0RFViAmJiAhcmV0KQo+ICsJCQkJcmV0ID0g
UFRSX0VSUihkZGF0YS0+ZG1hLmNoYW5zW2ldKTsKPiArCj4gKwkJCWRkYXRhLT5kbWEuY2hhbnNb
aV0gPSBOVUxMOwo+ICsJCX0KPiArCX0KCkluIG15IG1pbmQsIGl0IGRvZXNuJ3QgbWFrZSBzZW5z
ZSB0byBrZWVwIHJlcXVlc3RpbmcgY2hhbm5lbHMgaWYgYW4KZXJyb3IgaGFzIG9jY3VycmVkLiAg
UGxlYXNlIHJlbW92ZSBhbGwgb2YgdGhlIGFkZGVkIGNvbXBsZXhpdHkgY2F1c2VkCmJ5IHRoZSBm
b3IoKSBsb29wIGFuZCBzaW1wbHkgY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBhZnRlciBlYWNoIGNh
bGwgdG8KZG1hX3JlcXVlc3RfY2hhbigpLCByZXR1cm5pbmcgaW1tZWRpYXRlbHkgb24gZXJyb3Iu
Cgo+ICsJcmV0dXJuIHJldDsKPiAgfQoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
