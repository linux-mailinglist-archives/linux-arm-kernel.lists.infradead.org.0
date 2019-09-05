Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A8BA9E5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+m2JB7em7GfB84fCdyW3bw53buUT/fBbS8Am6cyY94=; b=HGmDLhd7WPxJYp
	eJAzFBPt08tXh4f9b2uPjlWDReypVuQsDLuE69uxWmERF1J3YI7+rafKreV+j8QNX82mtHp+jwOO/
	z5JodNQXIFfU6uHkA5WZbYs3pHqAcQ6TL1vLa+JBtSZhBLY+g3M8+oyxg5HUUxNNDuZgmLI1E5Emd
	+l/0jf21bbUmgfgZ4HmI/Cozb+hk+xf2WCRm5ToemW8KJGsPBYNSrzhtrGTKO3D9u9EXwit2Pib77
	N6dIO0olGkrutoh6rFs2L9+heVHYUkGI1it2EbXlz5xccwpG/B0OgdMeSJXWJiKFKfy2/bzTJgiEX
	hCy23fnesvDfaYRlQlsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5o4B-0008Sr-16; Thu, 05 Sep 2019 09:28:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5o3z-0008Rf-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:28:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id l16so1828856wrv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 02:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ZSFUJO3Cl5xfTH0Oz2n3wB3n0rI8IaAXjOBMneGW988=;
 b=pfkV95Bv0UZfPijf04Lw+S5gWyPrZBf6nMW16xOvbNgBkOqbuTXKqhjFYAv9E+FprC
 642QNfMlNoxFq2F0pUWRVLDLWtQL7aLFtrD6IJKWfeyGn3AkKPJwPOFVJ8qunlmtFhMp
 GKKYEIOvFTsJKHXCODaxCEyFcLgMBLlDjFYCqomKC9NKxAyn9Q72U1ovQrgfqEmTUG8o
 cYVriYNXSKLlGpnAn4pKQiheoN5zetXQ5lk4piehoTmcslfppIi5ZIQJdodEIIMRMZTE
 uvjWfyt0nD1xjB3h3EBMWIFAJvJyWlLFfsoGRS4tTUQzwhypCN4lrWEl8Ms7o4ipyBNB
 Yn4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ZSFUJO3Cl5xfTH0Oz2n3wB3n0rI8IaAXjOBMneGW988=;
 b=U7JvAy+9H5MEQGsKCjo/Z9cLULHZGfrdtPIooe23zd9bYYDRgPuVxYrJ+PazLpuEgw
 Icg4ja6lJbUjSa60fX/ymCg7I7+HxH31BT8UjIZnQ/2Q63QnF3dhRxpP1xO7Hhj2KY8o
 QV9rLr18Gp5Oc+BALRfqlE1lrbl3CY1Lu7lgnld0BhkwST6aiZpZPTO0wohbSG8OXSg5
 bB0kPAlwiRvWA0rDxq4ydN1WcPQhZc1hoPUWNkaXyke+jIqrqWWW8xqZWeeSdhXQSHsO
 bCNKrMeK4faB591MQ1PpWroKRZJ4U3yohyAl3c9rl8oHwRWznpLk95C0BxSP0DR+o7VX
 4Qww==
X-Gm-Message-State: APjAAAX8q766Uo1JG1oeFMi5O39/JSc6sKpXWoXfHwqd6cRWxd9bpwUR
 Vl3knwgHqGSze+yK6h4iHk1znQ==
X-Google-Smtp-Source: APXvYqzXqv86R+TXN5EBeFSzsw4TbvqcdMpFUJoJuOdwhoetcsejRn2RxvT5UuPS+bGgwEyO0gPGzw==
X-Received: by 2002:adf:e7cc:: with SMTP id e12mr1706018wrn.299.1567675698218; 
 Thu, 05 Sep 2019 02:28:18 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id t7sm1796620wrr.37.2019.09.05.02.28.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 02:28:17 -0700 (PDT)
Date: Thu, 5 Sep 2019 10:28:16 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH 2/2] i2c: qcom-geni: Provide an option to disable DMA
 processing
Message-ID: <20190905092816.GD26880@dell>
References: <20190905075213.13260-1-lee.jones@linaro.org>
 <20190905075213.13260-2-lee.jones@linaro.org>
 <20190905091800.GD1157@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905091800.GD1157@kunai>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_022823_439001_643F05FA 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, vkoul@kernel.org,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwNSBTZXAgMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgoKPiAKPiA+IEZpeGVzOiA4
YmM1MjliMjUzNTQgKCJzb2M6IHFjb206IGdlbmk6IEFkZCBzdXBwb3J0IGZvciBBQ1BJIikKPiAK
PiBBcmUgeW91IHN1cmU/IEZyb20gdmlzdWFsIGluc3BlY3Rpb24sIEkgZG9uJ3Qgc2VlIGEgY29y
cmVsYXRpb24gYmV0d2Vlbgo+IHRoaXMgY29tbWl0IGFuZCB0aGUgZml4IGhlcmUuCgpUaGlzIHBh
dGNoIHNob3VsZCBoYXZlIGJlZW4gcGFydCBvZiB0aGUgY29tbWl0LCBvciBhdCB0aGUgdmVyeSBs
ZWFzdCwKcGFydCBvZiB0aGUgc2V0LCBhbGx1ZGVkIHRvIGFib3ZlLiAgVW5mb3J0dW5hdGVseSwg
SSB3YXMgY2FycnlpbmcKQmpvcm4ncyBoYWNrIHdoaWNoIHNpbXBseSByZXR1cm5lZCBlYXJseSBm
cm9tIGdlbmlfc2VfcnhfZG1hX3ByZXAoKQp3aXRoIGFuIGVycm9yLCBzbyBpdCBtYXNrZWQgdGhl
IGlzc3VlLgoKPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5v
cmc+Cj4gPiBSZXZpZXdlZC1ieTogVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMgfCAxNCArKysrKysrKysr
LS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmku
YyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMKPiA+IGluZGV4IGE4OWJmY2U1
Mzg4ZS4uODgyMmRlYTgyOTgwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2ky
Yy1xY29tLWdlbmkuYwo+ID4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmku
Ywo+ID4gQEAgLTM1MywxMyArMzUzLDE2IEBAIHN0YXRpYyB2b2lkIGdlbmlfaTJjX3R4X2ZzbV9y
c3Qoc3RydWN0IGdlbmlfaTJjX2RldiAqZ2kyYykKPiA+ICBzdGF0aWMgaW50IGdlbmlfaTJjX3J4
X29uZV9tc2coc3RydWN0IGdlbmlfaTJjX2RldiAqZ2kyYywgc3RydWN0IGkyY19tc2cgKm1zZywK
PiA+ICAJCQkJdTMyIG1fcGFyYW0pCj4gPiAgewo+ID4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
ID0gZ2kyYy0+c2UuZGV2LT5vZl9ub2RlOwo+ID4gIAlkbWFfYWRkcl90IHJ4X2RtYTsKPiA+ICAJ
dW5zaWduZWQgbG9uZyB0aW1lX2xlZnQ7Cj4gPiAtCXZvaWQgKmRtYV9idWY7Cj4gPiArCXZvaWQg
KmRtYV9idWYgPSBOVUxMOwo+ID4gIAlzdHJ1Y3QgZ2VuaV9zZSAqc2UgPSAmZ2kyYy0+c2U7Cj4g
PiAgCXNpemVfdCBsZW4gPSBtc2ctPmxlbjsKPiA+ICAKPiA+IC0JZG1hX2J1ZiA9IGkyY19nZXRf
ZG1hX3NhZmVfbXNnX2J1Zihtc2csIDMyKTsKPiA+ICsJaWYgKCFvZl9wcm9wZXJ0eV9yZWFkX2Jv
b2wobnAsICJxY29tLGdlbmktc2Utbm8tZG1hIikpCj4gPiArCQlkbWFfYnVmID0gaTJjX2dldF9k
bWFfc2FmZV9tc2dfYnVmKG1zZywgMzIpOwo+ID4gKwo+ID4gIAlpZiAoZG1hX2J1ZikKPiA+ICAJ
CWdlbmlfc2Vfc2VsZWN0X21vZGUoc2UsIEdFTklfU0VfRE1BKTsKPiA+ICAJZWxzZQo+ID4gQEAg
LTM5MiwxMyArMzk1LDE2IEBAIHN0YXRpYyBpbnQgZ2VuaV9pMmNfcnhfb25lX21zZyhzdHJ1Y3Qg
Z2VuaV9pMmNfZGV2ICpnaTJjLCBzdHJ1Y3QgaTJjX21zZyAqbXNnLAo+ID4gIHN0YXRpYyBpbnQg
Z2VuaV9pMmNfdHhfb25lX21zZyhzdHJ1Y3QgZ2VuaV9pMmNfZGV2ICpnaTJjLCBzdHJ1Y3QgaTJj
X21zZyAqbXNnLAo+ID4gIAkJCQl1MzIgbV9wYXJhbSkKPiA+ICB7Cj4gPiArCXN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnAgPSBnaTJjLT5zZS5kZXYtPm9mX25vZGU7Cj4gPiAgCWRtYV9hZGRyX3QgdHhf
ZG1hOwo+ID4gIAl1bnNpZ25lZCBsb25nIHRpbWVfbGVmdDsKPiA+IC0Jdm9pZCAqZG1hX2J1ZjsK
PiA+ICsJdm9pZCAqZG1hX2J1ZiA9IE5VTEw7Cj4gPiAgCXN0cnVjdCBnZW5pX3NlICpzZSA9ICZn
aTJjLT5zZTsKPiA+ICAJc2l6ZV90IGxlbiA9IG1zZy0+bGVuOwo+ID4gIAo+ID4gLQlkbWFfYnVm
ID0gaTJjX2dldF9kbWFfc2FmZV9tc2dfYnVmKG1zZywgMzIpOwo+ID4gKwlpZiAoIW9mX3Byb3Bl
cnR5X3JlYWRfYm9vbChucCwgInFjb20sZ2VuaS1zZS1uby1kbWEiKSkKPiA+ICsJCWRtYV9idWYg
PSBpMmNfZ2V0X2RtYV9zYWZlX21zZ19idWYobXNnLCAzMik7Cj4gPiArCj4gPiAgCWlmIChkbWFf
YnVmKQo+ID4gIAkJZ2VuaV9zZV9zZWxlY3RfbW9kZShzZSwgR0VOSV9TRV9ETUEpOwo+ID4gIAll
bHNlCgoKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNh
bCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpG
b2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
