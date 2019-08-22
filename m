Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCF699075
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWYViBc54t+pOdR2pdfIhjwlMh034Oe9vXTHi68rKbI=; b=TVJVLa0Av5i395
	iANETp+0dGuQbKlUa8Pbp4XoiCCzWBiYQ06YiskuJ1p+/YzHaIfkEouJnVkCTYEMVF3+nL54AK0K9
	mm6J08prUM7EPvT/O+bCM8JHS04dvdfrfiIKvIfJLZpJ0l1AQ2s5s2fYpGDKkCg0VdJrUhZ38tRYt
	bsU+0ciuA2BRsZYDmNvHPraysYBK9eXtk28QcwFswGZkdjHa0bLxZPNE99FWbi0GuQWCHXQ/cU9Y2
	s33aWGBlKVbcfb822LCm17S+rI23qSvMs+japyUm1ZPLbUHTTsh2uDJiURQkwiQ/Wgc9TN1C9XBLJ
	u5kMF0GX+C9IOoZ5Wi0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0k3x-0002Ao-Qf; Thu, 22 Aug 2019 10:11:26 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0k3l-0002AH-Bx
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:11:15 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190822101110epoutp015fc622b091d54232ffc7ca4b40477d06~9NvTX_I8F3226832268epoutp01S
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:11:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190822101110epoutp015fc622b091d54232ffc7ca4b40477d06~9NvTX_I8F3226832268epoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566468670;
 bh=7Ntwkl1U2OuS6n5AJKvGWth4LuW/2agHt3V1L/sQU+g=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gR9wYDPgNJrwNge1k8dJeAj1uQzDgL9LhoIjv7JSJd9mEQNMW9v/7ki27b1oHynUa
 Q/Bg8IabbuHxZ0lKlLblZHdyJ0+smEUuRrFRwgoX4rW4ZCgXbu62eWZO/3XB3VEUhq
 vSt5eaGVRtnAdcvbODWLu2c8PKV1AunaCix/Znes=
Received: from epsnrtp6.localdomain (unknown [182.195.42.167]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190822101109epcas1p1ac77ac1aaea2dc11e99f105e475ed472~9NvScSQ6Y1668716687epcas1p1j;
 Thu, 22 Aug 2019 10:11:09 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.157]) by
 epsnrtp6.localdomain (Postfix) with ESMTP id 46DgKR2CYnzMqYkW; Thu, 22 Aug
 2019 10:11:07 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 79.23.04085.B3A6E5D5; Thu, 22 Aug 2019 19:11:07 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190822101106epcas1p4529de5a578a67294056eecb6db4b031f~9NvPakcfG0753007530epcas1p4T;
 Thu, 22 Aug 2019 10:11:06 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190822101106epsmtrp25655c16d854d66d02cd64e3f7df91714~9NvPZqICO0051100511epsmtrp2z;
 Thu, 22 Aug 2019 10:11:06 +0000 (GMT)
X-AuditID: b6c32a39-d03ff70000000ff5-94-5d5e6a3b2b1c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1D.AF.03706.A3A6E5D5; Thu, 22 Aug 2019 19:11:06 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190822101106epsmtip140efba1d8d4fb618e807ced4a86c0141~9NvPGflPc2300023000epsmtip1w;
 Thu, 22 Aug 2019 10:11:06 +0000 (GMT)
Subject: Re: [PATCH v3 1/2] PM / devfreq: Add dev_pm_qos support
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <cca5be9f-5552-2aa1-e428-540545b9bdd3@samsung.com>
Date: Thu, 22 Aug 2019 19:14:45 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB7023E05C5683C4392CEA5915EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Ta0wTWRT29jEzGKqXKnKtWcUxJEJs6QjFWxeQxNcYjcFojCFWnNAJIH2l
 06KoiawPVokYjFGEXQUTjIgmSqGKAlaKIrhal4gERYwRfuhmaVWswaCbbTsa+fed73znfOfc
 ByVV9hMqqtDi4O0WzkQT02U3uhLV6l937TBoP5+Pwd5uN4mDfz0E+J03EVd1uAj85Ml1Ej8+
 +C+JG4Y/yLFrZECOxyvuATz0WwOBr/g6CVzu/UbgpiCbpWADg0dIts7lZF2Nxwj25UA7wTbX
 H2Cb/K0SttPfLmFPtDQCdtw1Pzsqpyi9gOeMvD2et+RZjYWW/Ax6/ebclbm6NC2jZvR4GR1v
 4cx8Br1qQ7Z6TaEpNDQdX8yZnCEqmxMEOjkz3W51Ovj4AqvgyKB5m9Fk09s0AmcWnJZ8TZ7V
 vJzRapfqQsKdRQVt/gTbQbjn+afYUjAaXQ6iKART0dv+UVk5mE4pYStAbWMVcjH4GAqCfRIx
 +AxQoK9f9qOkynWfEBMdAJ3xXCbFIABQ83BAElbNglnI33YzopoNDwHk7hmL9JLCMSl69PgV
 GVYRMAl53g4SYTwTLkTPJkZAGCtgJmpo7JaHsQwmoO72vggfC7ehj6+75KImBvVWj0ZmioIG
 dKzMH9FIYRx6MVorEfECdMj9hzRsjKCLRI+e9nxfYhUKvqkFIp6F/nnQQopYhcb9HYSI96HL
 vfcIsfgoQC2ev+ViIgV5Lp4KOVAhh0R07XaySC9EtybPfe+pQKVNk6Q4xAzkDx6Xh+Vh/miZ
 UpQsQk9fD0sqwaKaKevUTFmhZsoKNT/N6oCsEczhbYI5nxcYm27qdbtA5EUn6VtBt2+DF0AK
 0NGKSrXBoJRzxUKJ2QsQJaVnK/b8mWNQKoxcyV7ebs21O0284AW60GmflKpi86yh/2Fx5DK6
 pSkpKTiVSdMxDB2nuDCBDUqYzzn4Ip638fYfdRIqSlUKlkcPXqDdHs3vdzbigC9zd2XWV0rv
 flg9UMFQYxlfhs6+SNjUs/3M3Pp1suSrmt5raQ2nf/mWrserR6renzr9aV61ytdrvLRNs2Ia
 WHJ3xdZm3/ZJmBpbZtIOxm2p+6/za5FxbX1MV8597YHDJT7dxIPdtYsDxftLio/HKWRDO++q
 aZlQwDFJUrvA/Q9RrMY35wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHIsWRmVeSWpSXmKPExsWy7bCSnK5VVlyswfr1PBaHjm1lt/h6+hSj
 xctDmhbT925iszh/fgO7xdmmN+wWK+5+ZLXY9Pgaq8Xn3iOMFrcbV7BZrD53kM2i69BfNouN
 Xz0ceD3e32hl91iwqdRj06pONo871/aweWxeUu+x8d0OJo+D7/YwefRtWcXo8XmTXABnFJdN
 SmpOZllqkb5dAlfG7neqBU0CFTe/iDYwPuHpYuTkkBAwkZi+6ShbFyMXh5DAbkaJp/1zWCAS
 khLTLh5l7mLkALKFJQ4fLoaoecso0fd0DRtIjbCAg8S73dvBmkUEWhkl7pz+AeYwC7xnlth0
 6BALRMsrJonrPyaDtbAJaEnsf3EDzOYXUJS4+uMxI4jNK2AnsWLVMVYQm0VAVeLYnotgcVGB
 CInDO2ZB1QhKnJz5BOw8ToFYic62d2BxZgF1iT/zLjFD2OISt57MZ4Kw5SWat85mnsAoPAtJ
 +ywkLbOQtMxC0rKAkWUVo2RqQXFuem6xYYFhXmq5XnFibnFpXrpecn7uJkZwrGpp7mC8vCT+
 EKMAB6MSD+8E3dhYIdbEsuLK3EOMEhzMSiK8FXOiYoV4UxIrq1KL8uOLSnNSiw8xSnOwKInz
 Ps07FikkkJ5YkpqdmlqQWgSTZeLglGpgVM5Wylhzic1Q7Yv7QUN3wSnirofu3LjfOsvqUfQf
 7aLS+2t+RURt2H2/5LTwy9OvDld94H/B+qR357ynv6/ufaNt1hm39Xntqp280z+rCAsvvqLl
 M7uwKuBliN70DTrajOLB13MTkvwX5kVxHI39/z41ruLChTk5L5PXvuT1kcnxeMQWdllJXIml
 OCPRUIu5qDgRAMbTWyfRAgAA
X-CMS-MailID: 20190822101106epcas1p4529de5a578a67294056eecb6db4b031f
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190820152410epcas4p214cadab5d2acfb2c659a777f2caa002b
References: <cover.1566314535.git.leonard.crestez@nxp.com>
 <CGME20190820152410epcas4p214cadab5d2acfb2c659a777f2caa002b@epcas4p2.samsung.com>
 <3b93af7e61a573ea2a123c353255645b5ad2a805.1566314535.git.leonard.crestez@nxp.com>
 <6134bb9e-9a16-b432-c191-c91f93844319@samsung.com>
 <VI1PR04MB7023E05C5683C4392CEA5915EEAA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_031113_921181_BE1AD0DB 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDguIDIxLiDsmKTtm4QgMTA6MDAsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBPbiAy
MS4wOC4yMDE5IDA0OjQwLCBDaGFud29vIENob2kgd3JvdGU6Cj4gCj4+IE9uIDE5LiA4LiAyMS4g
7Jik7KCEIDEyOjI0LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBBZGQgZGV2X3BtX3FvcyBu
b3RpZmllcyB0byBkZXZmcmVxIGNvcmUgaW4gb3JkZXIgdG8gc3VwcG9ydCBmcmVxdWVuY3kKPj4+
IGxpbWl0cyB2aWEgdGhlIGRldl9wbV9xb3NfYWRkX3JlcXVlc3QuCj4+Pgo+Pj4gK3N0YXRpYyB1
bnNpZ25lZCBsb25nIGdldF9lZmZlY3RpdmVfbWluX2ZyZXEoc3RydWN0IGRldmZyZXEgKmRldmZy
ZXEpCj4+Cj4+IEknbSBub3Qgc3VyZSB0aGF0ICdlZmZlY3RpdmUnIGV4cHJlc3Npb24gaXMgY29y
cmVjdC4KPj4gIEZyb20gdGhpcyBmdW5jdGlvbiwgdGhlIGRldmZyZXEgY2FuIGdldCB0aGUgZmlu
YWwgdGFyZ2V0IGZyZXF1ZW5jeS4KPj4KPj4gSSB0aGluayB0aGF0IHdlIG5lZWQgdG8gdXNlIHRo
ZSBtb3JlIGNvcnJlY3QgZXhwcmVzc2lvbgo+PiB0byBnaXZlIHRoZSBtZWFuaW5nIG9mIGZ1bmN0
aW9uIGFzIGZvbGxvd2luZzoKPj4KPj4gZ2V0X21pbl9mcmVxCj4+IGdldF9tYXhfZnJlcQo+IAo+
IE9LLCB3aWxsIHJlbmFtZSB0byBnZXRfbWluX2ZyZXEgYW5kIGdldF9tYXhfZnJlcQo+IAo+Pj4g
QEAgLTYzNiwyMSArNjg4LDQwIEBAIHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxX2FkZF9kZXZpY2Uo
c3RydWN0IGRldmljZSAqZGV2LAo+Pj4gICAJCWVyciA9IC1FTk9NRU07Cj4+PiAgIAkJZ290byBl
cnJfb3V0Owo+Pj4gICAJfQo+Pj4gICAKPj4+ICAgCW11dGV4X2luaXQoJmRldmZyZXEtPmxvY2sp
Owo+Pj4gLQltdXRleF9sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4KPj4gQmFzaWNhbGx5LCBJIHRo
aW5rIHRoYXQgaXQgaXMgc2FmZSB0byBsb2NrIHdoZW4gdG91Y2gKPj4gdGhlIHZhcmlhYmxlIG9m
IHRoZSBkZXZmcmVxLgo+Pgo+PiBpdCBpcyBub3QgcHJvcGVyIHdheSBmb3IgdGhlIGRldl9wbV9x
b3MgYmVjYXVzZQo+PiBpdCBicmVha3MgdGhlIGV4aXN0aW5nIGxvY2tpbmcgcmVhc29uIG9mIGRl
dmZyZXEncyB2YXJpYWJsZXMuCj4gCj4gSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4u
IEknbSBpbml0aWFsaXppbmcgc29tZSBzdHVmZiBvdXRzaWRlIAo+IHRoZSBsb2NrIHRvIGF2b2lk
IGNpcmN1bGFyIGxvY2sgd2FybmluZyBiZXR3ZWVuOgo+IAo+ICgmZGV2ZnJlcS0+bG9jayl7Ky4r
Ln0sIGF0OiBkZXZmcmVxX3Fvc19taW5fbm90aWZpZXJfY2FsbCsweDI0LzB4NDgKPiAoJihuKS0+
cndzZW0peysrKyt9LCBhdDogYmxvY2tpbmdfbm90aWZpZXJfY2FsbF9jaGFpbisweDNjLzB4NzgK
PiAKPiBJbiBnZW5lcmFsIHlvdSBkb24ndCBuZWVkIHRvIGxvY2sgYW4gb2JqZWN0IHdoaWxlIGlu
aXRpYWxpemluZyBleGNlcHQgCj4gYWZ0ZXIgaXQgYmVjb21lcyBhY2Nlc3NpYmxlIGZyb20gdGhl
IG91dHNpZGUgc28gZGV2ZnJlcV9hZGRfZGV2aWNlIAo+IGRvZXNuJ3QgbmVlZCB0byB0YWtlIHRo
ZSBsb2NrIHNvIGVhcmx5Lgo+IAo+IFRoZSBRT1Mgbm90aWZpZXJzIGFyZSByZWdpc3RlcmVkIG9u
IHRoZSBwYXJlbnQgZGV2aWNlIHNvIGluIHRoZW9yeSBpdCdzIAo+IHBvc3NpYmxlIGZvciBzb21l
Ym9keSB0byBhZGQgUU9TIHJlcXVlc3RzIHdoaWxlIGRldmZyZXFfYWRkX2RldmljZSBpcyAKPiBl
eGVjdXRpbmcuIE1heWJlIG5vdGlmaWVyIHJlZ2lzdHJhdGlvbiBzaG91bGQgYmUgbW92ZWQgYXQg
dGhlIGVuZCBhZnRlciAKPiB1bmxvY2s/CgpJIHRoaW5rIHRoYXQgaXQgaXMgbW9yZSBjbGVhciB0
byBhZGQgbm90aWZpZXIKYWZ0ZXIgbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKSBpZiB0aGVy
ZSBhcmUgbm8gYW55IGlzc3VlLgoKPiAKPiAtLQo+IFJlZ2FyZHMsCj4gTGVvbmFyZAo+IAoKCi0t
IApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
