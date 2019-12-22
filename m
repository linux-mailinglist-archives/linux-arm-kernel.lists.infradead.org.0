Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE90128EEE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 17:50:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4tyKic0fhrP9afkEBIReG4eHvktHrlIMdcNxS1WiSE=; b=dC62gvZJxJ96yJ
	xwL7y2mqCdYWZB1I1jn9AzKB5Y39J50PmMSoN+2RXha/t2hfETaEFWx5qVM8Z1AHW2JcZJbjICcHS
	Pz14LkUyZ2tKxiOB7nqMIVyp0a/3FgEM+f8yVOHQZoHFVaYFLX6PxgUElCbI1+3RSOcnjLfppJZRV
	D6bBB/s7JD2R32xlP880cuxNuK8W7yKtPpnKFmbCWKCYVke2PpFMiiK7SvXox2PeYLbzynXANCYcP
	tTG9mVGHmooBNY0RoiHXEP+1EqciBNz/j8wjAuLmAAMCbKcvp1K2z1eun377NcrAnZHPXgcuhof3A
	LDaMJtwJb6OxVBp512Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij4QR-0004JN-00; Sun, 22 Dec 2019 16:49:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij4QI-0004IJ-MQ
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 16:49:44 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3D6E207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 16:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577033379;
 bh=zNwV6UcRWYyXPEtNmmpVjDoWHyX7Z1gcx8eFJmze8mg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vN8JKvGkzksyrw89mHx9OlHvUd0LycPcjZaUyTuUjq/zOUwFgJiuhBdp6er1+4UuO
 cK7xli8w5p/m2qWrAtC37IsPEwVUsi5QualC7kLvcp9qxWZd+aYxv3DNRTAmkNWPX3
 4yboEnmNlEcEKjThBtEH4itYHw4hxPI7ns6z7/nI=
Received: by mail-lj1-f169.google.com with SMTP id m26so13078629ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 08:49:38 -0800 (PST)
X-Gm-Message-State: APjAAAUcFxagIuR8hircJKd2irR9vrHCZvaq5kWu/GX4nPlTk8G3Kodt
 90dmSbEKOASkSPdrxo6ugqvMOB/EzBbAdP7KEfQ=
X-Google-Smtp-Source: APXvYqw+7LsTvhfr17gQzvZhmz8/LnvcJbjWww+1BqNZBdSt5pyypiA6KMl3+4MaQAGBhgU3LpIiXqsY+ypdKUkPeTo=
X-Received: by 2002:a2e:8551:: with SMTP id u17mr10521487ljj.165.1577033376732; 
 Sun, 22 Dec 2019 08:49:36 -0800 (PST)
MIME-Version: 1.0
References: <20191221181855.31380-1-tiny.windzz@gmail.com>
In-Reply-To: <20191221181855.31380-1-tiny.windzz@gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Mon, 23 Dec 2019 01:49:00 +0900
X-Gmail-Original-Message-ID: <CAGTfZH1aObSb5oWnVzp_WaGALFfC9VQpRKQ+AWTauPVL7VPOSg@mail.gmail.com>
Message-ID: <CAGTfZH1aObSb5oWnVzp_WaGALFfC9VQpRKQ+AWTauPVL7VPOSg@mail.gmail.com>
Subject: Re: [PATCH 1/2] PM / devfreq: rk3399_dmc: Add missing
 devfreq_event_disable_edev
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_084942_773612_EDA77F5B 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoyMDE564WEIDEy7JuUIDIy7J28ICjsnbwpIOyYpOyghCAzOjIxLCBZYW5ndGFvIExpIDx0
aW55LndpbmR6ekBnbWFpbC5jb20+64uY7J20IOyekeyEsToKPgo+IFRoZSBwcm9iZSBwcm9jZXNz
IG1heSBmYWlsLCBidXQgdGhlIGRldmZyZXEgZXZlbnQgZGV2aWNlIHJlbWFpbnMKPiBlbmFibGVk
LiBDYWxsIGRldmZyZXFfZXZlbnRfZGlzYWJsZV9lZGV2IG9uIHRoZSBlcnJvciByZXR1cm4gcGF0
aC4KPgo+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYyB8IDE3ICsrKysrKysrKysrKy0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMgYi9kcml2ZXJzL2Rl
dmZyZXEvcmszMzk5X2RtYy5jCj4gaW5kZXggMmYxMDI3YzViNjQ3Li40ZjRlN2MwNDE4ODggMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYwo+ICsrKyBiL2RyaXZlcnMv
ZGV2ZnJlcS9yazMzOTlfZG1jLmMKPiBAQCAtMzY0LDcgKzM2NCw4IEBAIHN0YXRpYyBpbnQgcmsz
Mzk5X2RtY2ZyZXFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBpZiAocmVzLmEwKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBzZXQgZHJhbSBwYXJhbTogJWxkXG4iLAo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXMuYTApOwo+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZXQgPSAtRUlOVkFMOwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZ290byBlcnJfZGlzYWJsZV9lZGV2OwoKQWZ0ZXIganVtcGluZyBlcnJfZGlz
YWJsZV9lZGV2LCBpdCBjYWxscyB0aGUgZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoKS4KaXQg
aXMgd3JvbmcuIEl0IGRvZXNuJ3QgbmVlZCB0byByZW1vdmUgdGhlIHRhYmxlLgoKPiAgICAgICAg
ICAgICAgICAgICAgICAgICB9Cj4gICAgICAgICAgICAgICAgIH0KPiAgICAgICAgIH0KPiBAQCAt
MzczLDggKzM3NCwxMCBAQCBzdGF0aWMgaW50IHJrMzM5OV9kbWNmcmVxX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBpZiAobm9kZSkgewo+ICAgICAgICAgICAg
ICAgICBkYXRhLT5yZWdtYXBfcG11ID0gc3lzY29uX25vZGVfdG9fcmVnbWFwKG5vZGUpOwo+ICAg
ICAgICAgICAgICAgICBvZl9ub2RlX3B1dChub2RlKTsKPiAtICAgICAgICAgICAgICAgaWYgKElT
X0VSUihkYXRhLT5yZWdtYXBfcG11KSkKPiAtICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
UFRSX0VSUihkYXRhLT5yZWdtYXBfcG11KTsKPiArICAgICAgICAgICAgICAgaWYgKElTX0VSUihk
YXRhLT5yZWdtYXBfcG11KSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IFBUUl9F
UlIoZGF0YS0+cmVnbWFwX3BtdSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJf
ZGlzYWJsZV9lZGV2OwoKZGl0dG8uCgpBZnRlciBqdW1waW5nIGVycl9kaXNhYmxlX2VkZXYsIGl0
IGNhbGxzIHRoZSBkZXZfcG1fb3BwX29mX3JlbW92ZV90YWJsZSgpLgppdCBpcyB3cm9uZy4gSXQg
ZG9lc24ndCBuZWVkIHRvIHJlbW92ZSB0aGUgdGFibGUuCgo+ICsgICAgICAgICAgICAgICB9Cj4g
ICAgICAgICB9Cj4KPiAgICAgICAgIHJlZ21hcF9yZWFkKGRhdGEtPnJlZ21hcF9wbXUsIFJLMzM5
OV9QTVVHUkZfT1NfUkVHMiwgJnZhbCk7Cj4gQEAgLTM5Miw3ICszOTUsOCBAQCBzdGF0aWMgaW50
IHJrMzM5OV9kbWNmcmVxX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAg
ICAgICAgICAgICAgIGRhdGEtPm9kdF9kaXNfZnJlcSA9IGRhdGEtPnRpbWluZy5scGRkcjRfb2R0
X2Rpc19mcmVxOwo+ICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgIGRlZmF1bHQ6Cj4g
LSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsgICAgICAgICAgICAgICByZXQgPSAt
RUlOVkFMOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9kaXNhYmxlX2VkZXY7CgpkaXR0by4K
Cj4gICAgICAgICB9Owo+Cj4gICAgICAgICBhcm1fc21jY2Nfc21jKFJPQ0tDSElQX1NJUF9EUkFN
X0ZSRVEsIDAsIDAsCj4gQEAgLTQyNiw3ICs0MzAsOCBAQCBzdGF0aWMgaW50IHJrMzM5OV9kbWNm
cmVxX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgKi8KPiAg
ICAgICAgIGlmIChkZXZfcG1fb3BwX29mX2FkZF90YWJsZShkZXYpKSB7Cj4gICAgICAgICAgICAg
ICAgIGRldl9lcnIoZGV2LCAiSW52YWxpZCBvcGVyYXRpbmctcG9pbnRzIGluIGRldmljZSB0cmVl
LlxuIik7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsgICAgICAgICAgICAg
ICByZXQgPSAtRUlOVkFMOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9kaXNhYmxlX2VkZXY7
CgpkaXR0by4KCj4gICAgICAgICB9Cj4KPiAgICAgICAgIG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5w
LCAidXB0aHJlc2hvbGQiLAo+IEBAIC00NjQsNiArNDY5LDggQEAgc3RhdGljIGludCByazMzOTlf
ZG1jZnJlcV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Cj4gICAgICAgICBy
ZXR1cm4gMDsKPgo+ICtlcnJfZGlzYWJsZV9lZGV2Ogo+ICsgICAgICAgZGV2ZnJlcV9ldmVudF9k
aXNhYmxlX2VkZXYoZGF0YS0+ZWRldik7CgpJdCBpcyB3cm9uZy4gSXQgaGF2ZSB0byBiZSBjYWxs
ZWQgdW5kZXIgZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoKS4KSXQgaWdub3JlcyB0aGUgc2Vx
dWVuY2Ugb2YgZXhjZXB0aW9uIGhhbmRsaW5nLgoKPiAgZXJyX2ZyZWVfb3BwOgo+ICAgICAgICAg
ZGV2X3BtX29wcF9vZl9yZW1vdmVfdGFibGUoJnBkZXYtPmRldik7Cj4gICAgICAgICByZXR1cm4g
cmV0Owo+IC0tCj4gMi4xNy4xCj4KCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
