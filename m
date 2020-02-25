Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0A016C32D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3Cl9TuSRCei4SvQHI1/WV2WwYhFy08YQtuMFK2IlEU=; b=gbKBSK2kaHCIL/
	0x+dBescWZs6RnFHL68B/v8L382pKPmauZA7CiDE7Bs8izpSJ3V80WOpV4/W0/3gju8v1KM6NtvLs
	P85SOIW6SVKH4o+SvOvkRV0Vip57pQxGYP0Qy4v5DefunvyoWjFZd1CMipt5ay6f/X7jzyJR9ACIS
	aAKQw80cFHZ2j8bL3lGIU5DEQdJF+PZA+g2iNBXMaYDsYEEI/yplYVJHl+Y+PZsxAqcWKeqN8b/8V
	mVd1YmyB3xuyKAIRUWa5eOtdjFbmsjS9p2SzNf60aXrw4nhobnCyXhFOOO2uqeeq63wAv4iNFNMOd
	ROMcd2/ygWm/ZeUr5Siw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6amX-0007Dn-Fq; Tue, 25 Feb 2020 14:01:53 +0000
Received: from gateway30.websitewelcome.com ([192.185.196.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6amM-0007Ci-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:01:46 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 9EB2C2C20
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:01:39 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 6amJjSXRiEfyq6amJjYg2b; Tue, 25 Feb 2020 08:01:39 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vMBlVPzaIiSjManqY0KCJvaCyM1jD85Wg0xf6rY5fno=; b=VeeT7ifCi+xO7jV1VQHyzhT9Cx
 jmcPu7R0Z9o+ePr+bK4oZp/KhqSZ/BzZrZILU0Go0NN66poiMvC2h0t1LKPI2jGafSWM+UJZG08Ju
 YgTDYRHJxEN6H/BQXI9qAnmj9pQrs8r5axg+0cA9yaBVJq2H8SpTfy0hJYdc05wfc/dJUJ7C4/tXl
 Y5fL+t6liOoWenNtRFz3vT5fkluk/6Mk/+iUMavq3g2dCqimGh3e46jE/ee7JTgVljconreRfbuwO
 +lWMlzfDoa5MoRma/YBF7bpg8BH85Us5n+i4uX+xOK+wCfUA61GW4foeWnoG8Qrenv2v2zji+Z89/
 +zgeSEOQ==;
Received: from [201.162.241.105] (port=21897 helo=[192.168.43.131])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j6amI-001OnG-Kx; Tue, 25 Feb 2020 08:01:38 -0600
Subject: Re: [PATCH] crypto: Replace zero-length array with flexible-array
 member
To: Horia Geanta <horia.geanta@nxp.com>, Aymen Sghaier
 <aymen.sghaier@nxp.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Atul Gupta
 <atul.gupta@chelsio.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?Q?Breno_Leit=c3=a3o?= <leitao@debian.org>,
 Nayna Jain <nayna@linux.ibm.com>,
 Paulo Flabiano Smorigo <pfsmorigo@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
References: <20200224162100.GA25697@embeddedor>
 <VI1PR0402MB3485175AB5B3092409DC26AA98ED0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 xsFNBFssHAwBEADIy3ZoPq3z5UpsUknd2v+IQud4TMJnJLTeXgTf4biSDSrXn73JQgsISBwG
 2Pm4wnOyEgYUyJd5tRWcIbsURAgei918mck3tugT7AQiTUN3/5aAzqe/4ApDUC+uWNkpNnSV
 tjOx1hBpla0ifywy4bvFobwSh5/I3qohxDx+c1obd8Bp/B/iaOtnq0inli/8rlvKO9hp6Z4e
 DXL3PlD0QsLSc27AkwzLEc/D3ZaqBq7ItvT9Pyg0z3Q+2dtLF00f9+663HVC2EUgP25J3xDd
 496SIeYDTkEgbJ7WYR0HYm9uirSET3lDqOVh1xPqoy+U9zTtuA9NQHVGk+hPcoazSqEtLGBk
 YE2mm2wzX5q2uoyptseSNceJ+HE9L+z1KlWW63HhddgtRGhbP8pj42bKaUSrrfDUsicfeJf6
 m1iJRu0SXYVlMruGUB1PvZQ3O7TsVfAGCv85pFipdgk8KQnlRFkYhUjLft0u7CL1rDGZWDDr
 NaNj54q2CX9zuSxBn9XDXvGKyzKEZ4NY1Jfw+TAMPCp4buawuOsjONi2X0DfivFY+ZsjAIcx
 qQMglPtKk/wBs7q2lvJ+pHpgvLhLZyGqzAvKM1sVtRJ5j+ARKA0w4pYs5a5ufqcfT7dN6TBk
 LXZeD9xlVic93Ju08JSUx2ozlcfxq+BVNyA+dtv7elXUZ2DrYwARAQABzSxHdXN0YXZvIEEu
 IFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPsLBfQQTAQgAJwUCWywcDAIbIwUJ
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
 e5YnLxF8ctRAp7K4yVlvA87BTQRbLBwMARAAsHCE31Ffrm6uig1BQplxMV8WnRBiZqbbsVJB
 H1AAh8tq2ULl7udfQo1bsPLGGQboJSVN9rckQQNahvHAIK8ZGfU4Qj8+CER+fYPp/MDZj+t0
 DbnWSOrG7z9HIZo6PR9z4JZza3Hn/35jFggaqBtuydHwwBANZ7A6DVY+W0COEU4of7CAahQo
 5NwYiwS0lGisLTqks5R0Vh+QpvDVfuaF6I8LUgQR/cSgLkR//V1uCEQYzhsoiJ3zc1HSRyOP
 otJTApqGBq80X0aCVj1LOiOF4rrdvQnj6iIlXQssdb+WhSYHeuJj1wD0ZlC7ds5zovXh+FfF
 l5qH5RFY/qVn3mNIVxeO987WSF0jh+T5ZlvUNdhedGndRmwFTxq2Li6GNMaolgnpO/CPcFpD
 jKxY/HBUSmaE9rNdAa1fCd4RsKLlhXda+IWpJZMHlmIKY8dlUybP+2qDzP2lY7kdFgPZRU+e
 zS/pzC/YTzAvCWM3tDgwoSl17vnZCr8wn2/1rKkcLvTDgiJLPCevqpTb6KFtZosQ02EGMuHQ
 I6Zk91jbx96nrdsSdBLGH3hbvLvjZm3C+fNlVb9uvWbdznObqcJxSH3SGOZ7kCHuVmXUcqoz
 ol6ioMHMb+InrHPP16aVDTBTPEGwgxXI38f7SUEn+NpbizWdLNz2hc907DvoPm6HEGCanpcA
 EQEAAcLBZQQYAQgADwUCWywcDAIbDAUJCWYBgAAKCRBHBbTLRwbbMdsZEACUjmsJx2CAY+QS
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
Message-ID: <1d4ae159-f45b-e12d-1fa1-e7671f76fefc@embeddedor.com>
Date: Tue, 25 Feb 2020 08:00:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <VI1PR0402MB3485175AB5B3092409DC26AA98ED0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.241.105
X-Source-L: No
X-Exim-ID: 1j6amI-001OnG-Kx
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [201.162.241.105]:21897
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 49
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_060142_367118_34EB4824 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.196.18 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyLzI1LzIwIDA3OjQ0LCBIb3JpYSBHZWFudGEgd3JvdGU6Cj4gT24gMi8yNC8yMDIwIDY6
MTggUE0sIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6Cj4+IFRoZSBjdXJyZW50IGNvZGViYXNl
IG1ha2VzIHVzZSBvZiB0aGUgemVyby1sZW5ndGggYXJyYXkgbGFuZ3VhZ2UKPj4gZXh0ZW5zaW9u
IHRvIHRoZSBDOTAgc3RhbmRhcmQsIGJ1dCB0aGUgcHJlZmVycmVkIG1lY2hhbmlzbSB0byBkZWNs
YXJlCj4+IHZhcmlhYmxlLWxlbmd0aCB0eXBlcyBzdWNoIGFzIHRoZXNlIG9uZXMgaXMgYSBmbGV4
aWJsZSBhcnJheSBtZW1iZXJbMV1bMl0sCj4+IGludHJvZHVjZWQgaW4gQzk5Ogo+Pgo+PiBzdHJ1
Y3QgZm9vIHsKPj4gICAgICAgICBpbnQgc3R1ZmY7Cj4+ICAgICAgICAgc3RydWN0IGJvbyBhcnJh
eVtdOwo+PiB9Owo+Pgo+PiBCeSBtYWtpbmcgdXNlIG9mIHRoZSBtZWNoYW5pc20gYWJvdmUsIHdl
IHdpbGwgZ2V0IGEgY29tcGlsZXIgd2FybmluZwo+PiBpbiBjYXNlIHRoZSBmbGV4aWJsZSBhcnJh
eSBkb2VzIG5vdCBvY2N1ciBsYXN0IGluIHRoZSBzdHJ1Y3R1cmUsIHdoaWNoCj4+IHdpbGwgaGVs
cCB1cyBwcmV2ZW50IHNvbWUga2luZCBvZiB1bmRlZmluZWQgYmVoYXZpb3IgYnVncyBmcm9tIGJl
aW5nCj4+IGluYWR2ZXJ0ZW50bHkgaW50cm9kdWNlZFszXSB0byB0aGUgY29kZWJhc2UgZnJvbSBu
b3cgb24uCj4+Cj4+IEFsc28sIG5vdGljZSB0aGF0LCBkeW5hbWljIG1lbW9yeSBhbGxvY2F0aW9u
cyB3b24ndCBiZSBhZmZlY3RlZCBieQo+PiB0aGlzIGNoYW5nZToKPj4KPj4gIkZsZXhpYmxlIGFy
cmF5IG1lbWJlcnMgaGF2ZSBpbmNvbXBsZXRlIHR5cGUsIGFuZCBzbyB0aGUgc2l6ZW9mIG9wZXJh
dG9yCj4+IG1heSBub3QgYmUgYXBwbGllZC4gQXMgYSBxdWlyayBvZiB0aGUgb3JpZ2luYWwgaW1w
bGVtZW50YXRpb24gb2YKPj4gemVyby1sZW5ndGggYXJyYXlzLCBzaXplb2YgZXZhbHVhdGVzIHRv
IHplcm8uIlsxXQo+Pgo+PiBUaGlzIGlzc3VlIHdhcyBmb3VuZCB3aXRoIHRoZSBoZWxwIG9mIENv
Y2NpbmVsbGUuCj4+Cj4+IFsxXSBodHRwczovL2djYy5nbnUub3JnL29ubGluZWRvY3MvZ2NjL1pl
cm8tTGVuZ3RoLmh0bWwKPj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vl
cy8yMQo+PiBbM10gY29tbWl0IDc2NDk3NzMyOTMyZiAoImN4Z2IzL2wydDogRml4IHVuZGVmaW5l
ZCBiZWhhdmlvdXIiKQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxn
dXN0YXZvQGVtYmVkZGVkb3IuY29tPgo+IFJldmlld2VkLWJ5OiBIb3JpYSBHZWFudMSDIDxob3Jp
YS5nZWFudGFAbnhwLmNvbT4KPiAKClRoYW5rIHlvdSwgSG9yaWEuCi0tCkd1c3Rhdm8KCj4gZm9y
IGNhYW0gZHJpdmVyOgo+IAo+PiAgZHJpdmVycy9jcnlwdG8vY2FhbS9jYWFtYWxnLmMgICAgICAg
ICAgICAgIHwgMiArLQo+PiAgZHJpdmVycy9jcnlwdG8vY2FhbS9jYWFtYWxnX3FpLmMgICAgICAg
ICAgIHwgNCArKy0tCj4+ICBkcml2ZXJzL2NyeXB0by9jYWFtL2NhYW1hbGdfcWkyLmggICAgICAg
ICAgfCA2ICsrKy0tLQo+PiAgZHJpdmVycy9jcnlwdG8vY2FhbS9jYWFtaGFzaC5jICAgICAgICAg
ICAgIHwgMiArLQo+IAo+IFRoYW5rcywKPiBIb3JpYQo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
