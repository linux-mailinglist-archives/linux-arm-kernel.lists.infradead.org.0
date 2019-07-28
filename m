Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFC778261
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOJ1zcqu8vnOmDZR59WmXxvahUBCN/DMJ0lwcS6YqqM=; b=FSDWnIHYTi3nSx
	yZoSAI3lYiR3nzEtbOA/BUZvBGUpWcUc2eThGYTLqdFx/rI448vDFL4ph2ymwVPPYh26GEzLEtSxG
	BRv+A8jnNV9WNHPLTDmeC1TGf5Q5xt23NFFVYljJPTZSucDwsBs0BnYiUd1g9tzgrr7VscX5858VY
	NM39sZJlQgIDvCx9D0EEf8HBnWwer79m5l+wS6SekKiLBUcAs2iV5QShDyMNCUrFXjNYn4YXnkdvV
	DXyTFe1NzBSInEIx9TQPwxJg7l6RdFH2/l/p2BBPu50EhA4od9xREEQBHKY+zfd/kVQNMb2MBW+tO
	1amR2ZIPAVf2pfKiO5ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsgL-00056T-4W; Sun, 28 Jul 2019 23:34:25 +0000
Received: from gateway31.websitewelcome.com ([192.185.143.39])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsg2-000512-7t
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:34:07 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 4705B9D32
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 18:34:05 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rsg1hQuPl2PzOrsg1hX1XS; Sun, 28 Jul 2019 18:34:05 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9+zKVXc82L60T55iugw5sTyhpsXMwmjUkecafHvnOh0=; b=I9cVymvbb92ub/7e3w17ynYUHk
 eW3RGXx2fBsT1yCzqyaJlOpBrDp1IZcEKskVozQhv2PBlOMYQVjfbOUuElMW4bLPzTwmHD7vPYTR/
 cPKO+Wf6wLQo8a3l+gyFj4vjuahsHr89PRlJKduvObpekIdGhKXGbaGt02QdpeX/sK67hlHSrWlQS
 xKFTl6faOfOUbDostxQ4uHSlZzXWoU3QxMQ6tujgUFjvfvIl6+B4CJ4fq8/df68R4+dCNTmDZIjpx
 +6PLxQtaacmFGPH0hmMOwCvcSgVWOp6pKW8DvTnjsqdDKExx9ged2anQZ0XmVB6LXTytlO6nY/8YD
 sExL/1bQ==;
Received: from [187.192.11.120] (port=35762 helo=[192.168.43.131])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrsg0-003cp6-TF; Sun, 28 Jul 2019 18:34:04 -0500
Subject: Re: [PATCH] arm64: hw_breakpoint: mark expected switch fall-through
To: Matteo Croce <mcroce@redhat.com>, linux-arm-kernel@lists.infradead.org
References: <20190728232706.7396-1-mcroce@redhat.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 mQINBFssHAwBEADIy3ZoPq3z5UpsUknd2v+IQud4TMJnJLTeXgTf4biSDSrXn73JQgsISBwG
 2Pm4wnOyEgYUyJd5tRWcIbsURAgei918mck3tugT7AQiTUN3/5aAzqe/4ApDUC+uWNkpNnSV
 tjOx1hBpla0ifywy4bvFobwSh5/I3qohxDx+c1obd8Bp/B/iaOtnq0inli/8rlvKO9hp6Z4e
 DXL3PlD0QsLSc27AkwzLEc/D3ZaqBq7ItvT9Pyg0z3Q+2dtLF00f9+663HVC2EUgP25J3xDd
 496SIeYDTkEgbJ7WYR0HYm9uirSET3lDqOVh1xPqoy+U9zTtuA9NQHVGk+hPcoazSqEtLGBk
 YE2mm2wzX5q2uoyptseSNceJ+HE9L+z1KlWW63HhddgtRGhbP8pj42bKaUSrrfDUsicfeJf6
 m1iJRu0SXYVlMruGUB1PvZQ3O7TsVfAGCv85pFipdgk8KQnlRFkYhUjLft0u7CL1rDGZWDDr
 NaNj54q2CX9zuSxBn9XDXvGKyzKEZ4NY1Jfw+TAMPCp4buawuOsjONi2X0DfivFY+ZsjAIcx
 qQMglPtKk/wBs7q2lvJ+pHpgvLhLZyGqzAvKM1sVtRJ5j+ARKA0w4pYs5a5ufqcfT7dN6TBk
 LXZeD9xlVic93Ju08JSUx2ozlcfxq+BVNyA+dtv7elXUZ2DrYwARAQABtCxHdXN0YXZvIEEu
 IFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPokCPQQTAQgAJwUCWywcDAIbIwUJ
 CWYBgAULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRBHBbTLRwbbMZ6tEACk0hmmZ2FWL1Xi
 l/bPqDGFhzzexrdkXSfTTZjBV3a+4hIOe+jl6Rci/CvRicNW4H9yJHKBrqwwWm9fvKqOBAg9
 obq753jydVmLwlXO7xjcfyfcMWyx9QdYLERTeQfDAfRqxir3xMeOiZwgQ6dzX3JjOXs6jHBP
 cgry90aWbaMpQRRhaAKeAS14EEe9TSIly5JepaHoVdASuxklvOC0VB0OwNblVSR2S5i5hSsh
 ewbOJtwSlonsYEj4EW1noQNSxnN/vKuvUNegMe+LTtnbbocFQ7dGMsT3kbYNIyIsp42B5eCu
 JXnyKLih7rSGBtPgJ540CjoPBkw2mCfhj2p5fElRJn1tcX2McsjzLFY5jK9RYFDavez5w3lx
 JFgFkla6sQHcrxH62gTkb9sUtNfXKucAfjjCMJ0iuQIHRbMYCa9v2YEymc0k0RvYr43GkA3N
 PJYd/vf9vU7VtZXaY4a/dz1d9dwIpyQARFQpSyvt++R74S78eY/+lX8wEznQdmRQ27kq7BJS
 R20KI/8knhUNUJR3epJu2YFT/JwHbRYC4BoIqWl+uNvDf+lUlI/D1wP+lCBSGr2LTkQRoU8U
 64iK28BmjJh2K3WHmInC1hbUucWT7Swz/+6+FCuHzap/cjuzRN04Z3Fdj084oeUNpP6+b9yW
 e5YnLxF8ctRAp7K4yVlvA7kCDQRbLBwMARAAsHCE31Ffrm6uig1BQplxMV8WnRBiZqbbsVJB
 H1AAh8tq2ULl7udfQo1bsPLGGQboJSVN9rckQQNahvHAIK8ZGfU4Qj8+CER+fYPp/MDZj+t0
 DbnWSOrG7z9HIZo6PR9z4JZza3Hn/35jFggaqBtuydHwwBANZ7A6DVY+W0COEU4of7CAahQo
 5NwYiwS0lGisLTqks5R0Vh+QpvDVfuaF6I8LUgQR/cSgLkR//V1uCEQYzhsoiJ3zc1HSRyOP
 otJTApqGBq80X0aCVj1LOiOF4rrdvQnj6iIlXQssdb+WhSYHeuJj1wD0ZlC7ds5zovXh+FfF
 l5qH5RFY/qVn3mNIVxeO987WSF0jh+T5ZlvUNdhedGndRmwFTxq2Li6GNMaolgnpO/CPcFpD
 jKxY/HBUSmaE9rNdAa1fCd4RsKLlhXda+IWpJZMHlmIKY8dlUybP+2qDzP2lY7kdFgPZRU+e
 zS/pzC/YTzAvCWM3tDgwoSl17vnZCr8wn2/1rKkcLvTDgiJLPCevqpTb6KFtZosQ02EGMuHQ
 I6Zk91jbx96nrdsSdBLGH3hbvLvjZm3C+fNlVb9uvWbdznObqcJxSH3SGOZ7kCHuVmXUcqoz
 ol6ioMHMb+InrHPP16aVDTBTPEGwgxXI38f7SUEn+NpbizWdLNz2hc907DvoPm6HEGCanpcA
 EQEAAYkCJQQYAQgADwUCWywcDAIbDAUJCWYBgAAKCRBHBbTLRwbbMdsZEACUjmsJx2CAY+QS
 UMebQRFjKavwXB/xE7fTt2ahuhHT8qQ/lWuRQedg4baInw9nhoPE+VenOzhGeGlsJ0Ys52sd
 XvUjUocKgUQq6ekOHbcw919nO5L9J2ejMf/VC/quN3r3xijgRtmuuwZjmmi8ct24TpGeoBK4
 WrZGh/1hAYw4ieARvKvgjXRstcEqM5thUNkOOIheud/VpY+48QcccPKbngy//zNJWKbRbeVn
 imua0OpqRXhCrEVm/xomeOvl1WK1BVO7z8DjSdEBGzbV76sPDJb/fw+y+VWrkEiddD/9CSfg
 fBNOb1p1jVnT2mFgGneIWbU0zdDGhleI9UoQTr0e0b/7TU+Jo6TqwosP9nbk5hXw6uR5k5PF
 8ieyHVq3qatJ9K1jPkBr8YWtI5uNwJJjTKIA1jHlj8McROroxMdI6qZ/wZ1ImuylpJuJwCDC
 ORYf5kW61fcrHEDlIvGc371OOvw6ejF8ksX5+L2zwh43l/pKkSVGFpxtMV6d6J3eqwTafL86
 YJWH93PN+ZUh6i6Rd2U/i8jH5WvzR57UeWxE4P8bQc0hNGrUsHQH6bpHV2lbuhDdqo+cM9eh
 GZEO3+gCDFmKrjspZjkJbB5Gadzvts5fcWGOXEvuT8uQSvl+vEL0g6vczsyPBtqoBLa9SNrS
 VtSixD1uOgytAP7RWS474w==
Message-ID: <763dd408-7ac0-436c-d952-1decff5c696e@embeddedor.com>
Date: Sun, 28 Jul 2019 18:34:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190728232706.7396-1-mcroce@redhat.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hrsg0-003cp6-TF
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [187.192.11.120]:35762
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 30
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_163406_404221_8470DBFF 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.143.39 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF0dGVvLAoKSSBzZW50IGEgcGF0Y2ggZm9yIHRoaXMgc29tZSBtaW51dGVzIGFnbzoKCmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMTA2NTg1LwoKSXQgc2VlbXMg
dGhlcmUgYXJlIG1vcmUgd2FybmluZ3MgaW4gdGhhdCBmaWxlIHRoYW4gdGhlIG9uZXMgeW91IGFy
ZQphZGRyZXNzaW5nLgoKVGhhbmtzCi0tCkd1c3Rhdm8KCk9uIDcvMjgvMTkgNjoyNyBQTSwgTWF0
dGVvIENyb2NlIHdyb3RlOgo+IE1hcmsgc3dpdGNoIGNhc2VzIHdoZXJlIHdlIGFyZSBleHBlY3Rp
bmcgdG8gZmFsbCB0aHJvdWdoLAo+IGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKPiAKPiAg
IENDICAgICAgYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5vCj4gYXJjaC9hcm02NC9r
ZXJuZWwvaHdfYnJlYWtwb2ludC5jOiBJbiBmdW5jdGlvbiDigJhod19icmVha3BvaW50X2FyY2hf
cGFyc2XigJk6Cj4gYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0MDo3OiB3YXJu
aW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJv
dWdoPV0KPiAgICAgaWYgKGh3LT5jdHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lOVF9MRU5fMSkKPiAg
ICAgICAgXgo+IGFyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQuYzo1NDI6Mzogbm90ZTog
aGVyZQo+ICAgIGNhc2UgMjoKPiAgICBefn5+Cj4gYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtw
b2ludC5jOjU0NDo3OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFst
V2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPiAgICAgaWYgKGh3LT5jdHJsLmxlbiA9PSBBUk1fQlJF
QUtQT0lOVF9MRU5fMikKPiAgICAgICAgXgo+IGFyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9p
bnQuYzo1NDY6Mzogbm90ZTogaGVyZQo+ICAgIGRlZmF1bHQ6Cj4gICAgXn5+fn5+fgo+IAo+IFNp
Z25lZC1vZmYtYnk6IE1hdHRlbyBDcm9jZSA8bWNyb2NlQHJlZGhhdC5jb20+Cj4gLS0tCj4gIGFy
Y2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9pbnQuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9od19i
cmVha3BvaW50LmMgYi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMKPiBpbmRleCBk
Y2ViODQ1MjA5NDguLjdkODQ2OTg1YjEzMyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5l
bC9od19icmVha3BvaW50LmMKPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50
LmMKPiBAQCAtNTM5LDEwICs1MzksMTIgQEAgaW50IGh3X2JyZWFrcG9pbnRfYXJjaF9wYXJzZShz
dHJ1Y3QgcGVyZl9ldmVudCAqYnAsCj4gIAkJCS8qIEFsbG93IHNpbmdsZSBieXRlIHdhdGNocG9p
bnQuICovCj4gIAkJCWlmIChody0+Y3RybC5sZW4gPT0gQVJNX0JSRUFLUE9JTlRfTEVOXzEpCj4g
IAkJCQlicmVhazsKPiArCQkJLyogZmFsbHRocm91Z2ggKi8KPiAgCQljYXNlIDI6Cj4gIAkJCS8q
IEFsbG93IGhhbGZ3b3JkIHdhdGNocG9pbnRzIGFuZCBicmVha3BvaW50cy4gKi8KPiAgCQkJaWYg
KGh3LT5jdHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lOVF9MRU5fMikKPiAgCQkJCWJyZWFrOwo+ICsJ
CQkvKiBmYWxsdGhyb3VnaCAqLwo+ICAJCWRlZmF1bHQ6Cj4gIAkJCXJldHVybiAtRUlOVkFMOwo+
ICAJCX0KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
