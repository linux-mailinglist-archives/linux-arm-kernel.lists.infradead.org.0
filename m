Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E7919E4A0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 12:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OttznZKGF9TSfOeAb9qdgJ85wE8/GFwjCTHW6A9JIc=; b=AYP+mnOQ8OVe5v
	gZnFgEvqbv8SxcDkD1Z+sZuhZsLrfguy01LOX0vS0CaFMMr2I9qhaT6sFBAUU2ocvRzN7ZOuFJb2N
	6oN5WWnAQACT0ilSXPgsTPkobTH718OwSs7xicqf4OXTMtNZRtzLYzBKWOgWtY/SaU5qlfwoOzayx
	l5Dt79t3Nr6ri4h5NvoOeknfNuGWoCCM6z1wrtecI93gjC5k5x6ZnYVXPVQnIV/gimzqVd+iw9Nuz
	YlzuEqGgPYi08FJSU4OQlLJ69/ITozkLN+IFyx8olgVJU2BdHHHKGGQzq1mfkHLGphX/0ffyCf+06
	TUCvZpuF/YsJxqOcx8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKgTc-00063K-AC; Sat, 04 Apr 2020 10:56:36 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKgTV-0005r1-Mw
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 10:56:31 +0000
Received: by mail-ed1-x544.google.com with SMTP id z65so12553602ede.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 03:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=S5LRbjaBzwgm2Bw+4kytwllkzAVVFFIjueHCZ7wjG1s=;
 b=Yww78VAiDL77AaN5cYqIRNsvvUV8nwXUoefxnxGstSo0m2fVatHUqOZhP9JOSVIjuH
 8i1VdNgrp8dTxbow0ryzOu2X7IyMQcGKJmoK69WqlKDM2icO54QBLFhFPWbIBFTR9RDJ
 wuXUFfAkRuHQCX7m1C58H7OAMNnzS6CFYrcq4HBbxdJTPJppKHzkKAEOs9FQc4FBUVvm
 58sph/1Nc9sdbsORfS+1XqcVy+NGjnTS4cYf47ggDEuLgNRuyzuC8GowLEo2jGX2G5H/
 FeBx55crRc8G3Bqo9pbiFfhupkdYHch2sNlaZMN/gODyihX5grzmE4hOpJsnLYfFHSg1
 hfOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=S5LRbjaBzwgm2Bw+4kytwllkzAVVFFIjueHCZ7wjG1s=;
 b=CAjE2aDApyK6QocWigTSqbGwVMhD4IwKTzu0jOdf4m3oxwQiI3Upl8/C8RUg19Vddo
 zTXJ3gDW5bKVevFvh85pOHjbqkK8qgV4oeWukqpPhEBMfTOWET4Tkb1HONJAeNaX1A3n
 1mblw2nsm+grIM/uw3VuFl9kqPiA+ylbk3nejAAwvp3XvXE0jW+MDi2rrAe/SWAqxVuf
 3WIZo6yXd3QzVGlTYbxMUWibxvg41H7hs68o8aOrQeP0YIga+KlD/UjtTSE9stZg26O1
 wHjD9yIoxyuV3XUjPcBy0mSOrzPcN0bUKb1VwobNsg/2FwMJjz9uVZOt5XCOR4kCEWwS
 Meng==
X-Gm-Message-State: AGi0PuYyt1F2biDYplrfuG1lZ8+CgA1V7cwW/DSecOKNNwSAu9JwAtVr
 f4xW6DWlLyKxgp8RTHHnocyoqGwsoIuT4F8PqRY=
X-Google-Smtp-Source: APiQypKj5GKI+9i8bsRx4M0EERlfHWLSCALPhiuqVUvjby+E3w7SdQwuY9XfI9pACWF4KdnltYUDlxgPCmnFBVJy9Co=
X-Received: by 2002:a17:906:1603:: with SMTP id
 m3mr12822766ejd.205.1585997783064; 
 Sat, 04 Apr 2020 03:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <a5aa527c2cd66b55b4246b9c122c702a279b37f0.1585928032.git.angelo.ribeiro@synopsys.com>
In-Reply-To: <a5aa527c2cd66b55b4246b9c122c702a279b37f0.1585928032.git.angelo.ribeiro@synopsys.com>
From: Adrian Pop <pop.adrian61@gmail.com>
Date: Sat, 4 Apr 2020 13:56:11 +0300
Message-ID: <CAP-HsdSKR8SB2UY2W33Xn8157Via30cD8wntXrvV0LEVmxgpRg@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config through
 debugfs
To: Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_035629_785328_E63EA716 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 daniel@ffwll.ch, airlied@linux.ie,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>, philippe.cornu@st.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 yannick.fertre@st.com, alexandre.torgue@st.com, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gQW5nZWxvLAoKSSBnZXQgYSBjb21waWxlIGVycm9yOiBlcnJvcjog4oCYVklEX01PREVf
VlBHX01PREXigJkgdW5kZWNsYXJlZC4gSSBhbQpxdWl0ZSBuZXcgdG8gdGhlIG1haWxpbmcgbGlz
dCwgbWF5YmUgSSBtaXNhcHBsaWVkIHRoZSBwYXRjaC4KClJlZ2FyZHMsCkFkcmlhbgoKCk9uIEZy
aSwgQXByIDMsIDIwMjAgYXQgNjozNyBQTSBBbmdlbG8gUmliZWlybwo8QW5nZWxvLlJpYmVpcm9A
c3lub3BzeXMuY29tPiB3cm90ZToKPgo+IEFkZCBzdXBwb3J0IGZvciB0aGUgdmlkZW8gcGF0dGVy
biBnZW5lcmF0b3IgKFZQRykgQkVSIHBhdHRlcm4gbW9kZSBhbmQKPiBjb25maWd1cmF0aW9uIGlu
IHJ1bnRpbWUuCj4KPiBUaGlzIGVuYWJsZXMgdXNpbmcgdGhlIGRlYnVnZnMgaW50ZXJmYWNlIHRv
IG1hbmlwdWxhdGUgdGhlIFZQRyBhZnRlcgo+IHRoZSBwaXBlbGluZSBpcyBzZXQuCj4gQWxzbywg
ZW5hYmxlcyB0aGUgdXNhZ2Ugb2YgdGhlIFZQRyBCRVIgcGF0dGVybi4KPgo+IENjOiBHdXN0YXZv
IFBpbWVudGVsIDxndXN0YXZvLnBpbWVudGVsQHN5bm9wc3lzLmNvbT4KPiBDYzogSm9hbyBQaW50
byA8anBpbnRvQHN5bm9wc3lzLmNvbT4KPiBDYzogSm9zZSBBYnJldSA8am9zZS5hYnJldUBzeW5v
cHN5cy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvIFJpYmVpcm8gPGFuZ2Vsby5yaWJlaXJv
QHN5bm9wc3lzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9k
dy1taXBpLWRzaS5jIHwgOTcgKysrKysrKysrKysrKysrKysrKysrKysrLS0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYwo+IGluZGV4IGIxODM1MWIuLjUx
MmM5MjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1t
aXBpLWRzaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBp
LWRzaS5jCj4gQEAgLTIyMSw2ICsyMjEsMjEgQEAKPiAgI2RlZmluZSBQSFlfU1RBVFVTX1RJTUVP
VVRfVVMgICAgICAgICAgMTAwMDAKPiAgI2RlZmluZSBDTURfUEtUX1NUQVRVU19USU1FT1VUX1VT
ICAgICAgMjAwMDAKPgo+ICsjaWZkZWYgQ09ORklHX0RFQlVHX0ZTCj4gKyNkZWZpbmUgVlBHX0RF
RlMobmFtZSwgZHNpKSBcCj4gKyAgICAgICAoKHZvaWQgX19mb3JjZSAqKSYoKCpkc2kpLnZwZ19k
ZWZzLm5hbWUpKQo+ICsKPiArI2RlZmluZSBSRUdJU1RFUihuYW1lLCBtYXNrLCBkc2kpIFwKPiAr
ICAgICAgIHsgI25hbWUsIFZQR19ERUZTKG5hbWUsIGRzaSksIG1hc2ssIGRzaSB9Cj4gKwo+ICtz
dHJ1Y3QgZGVidWdmc19lbnRyaWVzIHsKPiArICAgICAgIGNvbnN0IGNoYXIgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAqbmFtZTsKPiArICAgICAgIGJvb2wgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAqcmVnOwo+ICsgICAgICAgdTMyICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIG1hc2s7Cj4gKyAgICAgICBzdHJ1Y3QgZHdfbWlwaV9kc2kgICAgICAg
ICAgICAgICAgICAgICAgKmRzaTsKPiArfTsKPiArI2VuZGlmIC8qIENPTkZJR19ERUJVR19GUyAq
Lwo+ICsKPiAgc3RydWN0IGR3X21pcGlfZHNpIHsKPiAgICAgICAgIHN0cnVjdCBkcm1fYnJpZGdl
IGJyaWRnZTsKPiAgICAgICAgIHN0cnVjdCBtaXBpX2RzaV9ob3N0IGRzaV9ob3N0Owo+IEBAIC0y
MzgsOSArMjUzLDEyIEBAIHN0cnVjdCBkd19taXBpX2RzaSB7Cj4KPiAgI2lmZGVmIENPTkZJR19E
RUJVR19GUwo+ICAgICAgICAgc3RydWN0IGRlbnRyeSAqZGVidWdmczsKPiAtCj4gLSAgICAgICBi
b29sIHZwZzsKPiAtICAgICAgIGJvb2wgdnBnX2hvcml6b250YWw7Cj4gKyAgICAgICBzdHJ1Y3Qg
ZGVidWdmc19lbnRyaWVzICpkZWJ1Z2ZzX3ZwZzsKPiArICAgICAgIHN0cnVjdCB7Cj4gKyAgICAg
ICAgICAgICAgIGJvb2wgdnBnOwo+ICsgICAgICAgICAgICAgICBib29sIHZwZ19ob3Jpem9udGFs
Owo+ICsgICAgICAgICAgICAgICBib29sIHZwZ19iZXJfcGF0dGVybjsKPiArICAgICAgIH0gdnBn
X2RlZnM7Cj4gICNlbmRpZiAvKiBDT05GSUdfREVCVUdfRlMgKi8KPgo+ICAgICAgICAgc3RydWN0
IGR3X21pcGlfZHNpICptYXN0ZXI7IC8qIGR1YWwtZHNpIG1hc3RlciBwdHIgKi8KPiBAQCAtNTMw
LDkgKzU0OCwxMSBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV92aWRlb19tb2RlX2NvbmZpZyhz
dHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkKPiAgICAgICAgICAgICAgICAgdmFsIHw9IFZJRF9NT0RF
X1RZUEVfTk9OX0JVUlNUX1NZTkNfRVZFTlRTOwo+Cj4gICNpZmRlZiBDT05GSUdfREVCVUdfRlMK
PiAtICAgICAgIGlmIChkc2ktPnZwZykgewo+ICsgICAgICAgaWYgKGRzaS0+dnBnX2RlZnMudnBn
KSB7Cj4gICAgICAgICAgICAgICAgIHZhbCB8PSBWSURfTU9ERV9WUEdfRU5BQkxFOwo+IC0gICAg
ICAgICAgICAgICB2YWwgfD0gZHNpLT52cGdfaG9yaXpvbnRhbCA/IFZJRF9NT0RFX1ZQR19IT1JJ
Wk9OVEFMIDogMDsKPiArICAgICAgICAgICAgICAgdmFsIHw9IGRzaS0+dnBnX2RlZnMudnBnX2hv
cml6b250YWwgPwo+ICsgICAgICAgICAgICAgICAgICAgICAgVklEX01PREVfVlBHX0hPUklaT05U
QUwgOiAwOwo+ICsgICAgICAgICAgICAgICB2YWwgfD0gZHNpLT52cGdfZGVmcy52cGdfYmVyX3Bh
dHRlcm4gPyBWSURfTU9ERV9WUEdfTU9ERSA6IDA7Cj4gICAgICAgICB9Cj4gICNlbmRpZiAvKiBD
T05GSUdfREVCVUdfRlMgKi8KPgo+IEBAIC05NjEsNiArOTgxLDY4IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcyBkd19taXBpX2RzaV9icmlkZ2VfZnVuY3MgPSB7Cj4KPiAg
I2lmZGVmIENPTkZJR19ERUJVR19GUwo+Cj4gK3NzaXplX3QgZHdfbWlwaV9kc2lfZGVidWdmc193
cml0ZSh2b2lkICpkYXRhLCB1NjQgdmFsKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZGVidWdmc19l
bnRyaWVzICp2cGcgPSBkYXRhOwo+ICsgICAgICAgc3RydWN0IGR3X21pcGlfZHNpICpkc2k7Cj4g
KyAgICAgICB1MzIgbW9kZV9jZmc7Cj4gKwo+ICsgICAgICAgaWYgKCF2cGcpCj4gKyAgICAgICAg
ICAgICAgIHJldHVybiAtRU5PREVWOwo+ICsKPiArICAgICAgIGRzaSA9IHZwZy0+ZHNpOwo+ICsK
PiArICAgICAgICp2cGctPnJlZyA9IChib29sKXZhbDsKPiArCj4gKyAgICAgICBtb2RlX2NmZyA9
IGRzaV9yZWFkKGRzaSwgRFNJX1ZJRF9NT0RFX0NGRyk7Cj4gKwo+ICsgICAgICAgaWYgKCp2cGct
PnJlZykKPiArICAgICAgICAgICAgICAgbW9kZV9jZmcgfD0gdnBnLT5tYXNrOwo+ICsgICAgICAg
ZWxzZQo+ICsgICAgICAgICAgICAgICBtb2RlX2NmZyAmPSB+dnBnLT5tYXNrOwo+ICsKPiArICAg
ICAgIGRzaV93cml0ZShkc2ksIERTSV9WSURfTU9ERV9DRkcsIG1vZGVfY2ZnKTsKPiArCj4gKyAg
ICAgICByZXR1cm4gMDsKPiArfQo+ICsKPiArc3NpemVfdCBkd19taXBpX2RzaV9kZWJ1Z2ZzX3No
b3codm9pZCAqZGF0YSwgdTY0ICp2YWwpCj4gK3sKPiArICAgICAgIHN0cnVjdCBkZWJ1Z2ZzX2Vu
dHJpZXMgKnZwZyA9IGRhdGE7Cj4gKwo+ICsgICAgICAgaWYgKCF2cGcpCj4gKyAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PREVWOwo+ICsKPiArICAgICAgICp2YWwgPSAqdnBnLT5yZWc7Cj4gKwo+
ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiArCj4gK0RFRklORV9ERUJVR0ZTX0FUVFJJQlVURShm
b3BzX3gzMiwgZHdfbWlwaV9kc2lfZGVidWdmc19zaG93LAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICBkd19taXBpX2RzaV9kZWJ1Z2ZzX3dyaXRlLCAiJWxsdVxuIik7Cj4gKwo+ICtzdGF0aWMg
dm9pZCBkZWJ1Z2ZzX2NyZWF0ZV9maWxlcyh2b2lkICpkYXRhKQo+ICt7Cj4gKyAgICAgICBzdHJ1
Y3QgZHdfbWlwaV9kc2kgKmRzaSA9IGRhdGE7Cj4gKyAgICAgICBzdHJ1Y3QgZGVidWdmc19lbnRy
aWVzIGRlYnVnZnNbXSA9IHsKPiArICAgICAgICAgICAgICAgUkVHSVNURVIodnBnLCBWSURfTU9E
RV9WUEdfRU5BQkxFLCBkc2kpLAo+ICsgICAgICAgICAgICAgICBSRUdJU1RFUih2cGdfaG9yaXpv
bnRhbCwgVklEX01PREVfVlBHX0hPUklaT05UQUwsIGRzaSksCj4gKyAgICAgICAgICAgICAgIFJF
R0lTVEVSKHZwZ19iZXJfcGF0dGVybiwgVklEX01PREVfVlBHX01PREUsIGRzaSksCj4gKyAgICAg
ICB9Owo+ICsgICAgICAgaW50IGk7Cj4gKwo+ICsgICAgICAgZHNpLT5kZWJ1Z2ZzX3ZwZyA9IGtt
YWxsb2Moc2l6ZW9mKGRlYnVnZnMpLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmICghZHNpLT5k
ZWJ1Z2ZzX3ZwZykKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsKPiArICAgICAgIG1lbWNw
eShkc2ktPmRlYnVnZnNfdnBnLCBkZWJ1Z2ZzLCBzaXplb2YoZGVidWdmcykpOwo+ICsKPiArICAg
ICAgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGRlYnVnZnMpOyBpKyspCj4gKyAgICAgICAg
ICAgICAgIGRlYnVnZnNfY3JlYXRlX2ZpbGUoZHNpLT5kZWJ1Z2ZzX3ZwZ1tpXS5uYW1lLCAwNjQ0
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRzaS0+ZGVidWdmcywgJmRz
aS0+ZGVidWdmc192cGdbaV0sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
JmZvcHNfeDMyKTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZGVidWdmc19p
bml0KHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+ICB7Cj4gICAgICAgICBkc2ktPmRlYnVnZnMg
PSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoZGV2X25hbWUoZHNpLT5kZXYpLCBOVUxMKTsKPiBAQCAtOTY5
LDE0ICsxMDUxLDEzIEBAIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RlYnVnZnNfaW5pdChzdHJ1
Y3QgZHdfbWlwaV9kc2kgKmRzaSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAgICAgICAg
fQo+Cj4gLSAgICAgICBkZWJ1Z2ZzX2NyZWF0ZV9ib29sKCJ2cGciLCAwNjYwLCBkc2ktPmRlYnVn
ZnMsICZkc2ktPnZwZyk7Cj4gLSAgICAgICBkZWJ1Z2ZzX2NyZWF0ZV9ib29sKCJ2cGdfaG9yaXpv
bnRhbCIsIDA2NjAsIGRzaS0+ZGVidWdmcywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
JmRzaS0+dnBnX2hvcml6b250YWwpOwo+ICsgICAgICAgZGVidWdmc19jcmVhdGVfZmlsZXMoZHNp
KTsKPiAgfQo+Cj4gIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RlYnVnZnNfcmVtb3ZlKHN0cnVj
dCBkd19taXBpX2RzaSAqZHNpKQo+ICB7Cj4gICAgICAgICBkZWJ1Z2ZzX3JlbW92ZV9yZWN1cnNp
dmUoZHNpLT5kZWJ1Z2ZzKTsKPiArICAgICAgIGtmcmVlKGRzaS0+ZGVidWdmc192cGcpOwo+ICB9
Cj4KPiAgI2Vsc2UKPiAtLQo+IDIuNy40Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
