Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F2CBD876
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwBMH+GoE4SpvP0+dkjxhe47xxaLUfF2P4YXdjibySs=; b=TM0+2eaPbRXO1d
	UC2486dVw51dhRdoDsKRJVKh+VIpwUrKMvheTFJCJ+2j+EZP3as1Od1LH2ruytoMSKjAM/A3pwiCx
	UKdLRNU4MbGdMK//tiHCs5Udleso9OwwYSiedcVPB5tl7yUVjHtklygfmcuSEf6XaY4+0/hWnvtDv
	8Y7Z6k4MYpFjUZKS2LZyMKfI9hmKiYQg7F6vky+zdFXVRaOAwXtOg3T0MRbLQgF1ZVxNtnU0W8zAH
	iMD0EnQ7YyfeKb5keHSM5707Ykr39ne1ctjgxeNb8x2LglemjJszNl0OFC7yP5oTSvAnmlYXj/kpN
	e85xEJkjOUV4Y4rlaHSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD122-0002RI-OE; Wed, 25 Sep 2019 06:44:11 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD11p-0002Qp-O3
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:43:59 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190925064354epoutp03c619e2408a2cc900c130840f12d7c3b1~Hm2CqjKOO0945909459epoutp03H
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 06:43:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190925064354epoutp03c619e2408a2cc900c130840f12d7c3b1~Hm2CqjKOO0945909459epoutp03H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569393834;
 bh=+JpzzFEUrnJs0JI9sfHqt4mDY6SihNpazCRDDuuxnqc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=mbnzAqDlc1S29P09isyvJxv5jVu8uGyJPaVdeJyE5e3gtNo6tZKmOUzsgdQtfaZKy
 92c0ZD6aFn1Andc3d89LhuxK0dk6PA7zNQD/vaezqlk9jU+MEnxisMIlVE3Sx2saRr
 V1sQw9vshIpKF623n2evQAZqD7XqSZZzDh3ktLX4=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925064354epcas1p15fa7beede2a32f761933630c8bcb760a~Hm2CU5QE71046210462epcas1p1c;
 Wed, 25 Sep 2019 06:43:54 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.157]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46dT6c0V7TzMqYkg; Wed, 25 Sep
 2019 06:43:52 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 65.10.04224.7AC0B8D5; Wed, 25 Sep 2019 15:43:52 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190925064351epcas1p2df5dc331f1e34dbfc566a24025b99b71~Hm1-8uJp80166701667epcas1p2F;
 Wed, 25 Sep 2019 06:43:51 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190925064351epsmtrp29cec484d2c24ded04a197cbb7477629c~Hm1-728eC1880118801epsmtrp29;
 Wed, 25 Sep 2019 06:43:51 +0000 (GMT)
X-AuditID: b6c32a38-d5bff70000001080-f0-5d8b0ca78022
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5C.5E.04081.7AC0B8D5; Wed, 25 Sep 2019 15:43:51 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190925064351epsmtip21ca5b376c3e110dda0e2585d909829bf~Hm1-hd9mk2763927639epsmtip2r;
 Wed, 25 Sep 2019 06:43:51 +0000 (GMT)
Subject: Re: [RFC PATCH v2 00/11] Simple QoS for exynos-bus driver using
 interconnect
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <a5ff844f-12c6-4e82-6364-cad22dc852b0@samsung.com>
Date: Wed, 25 Sep 2019 15:48:14 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f7387513d3c11cea7a7d35652457c1e7d7fed009.camel@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIJsWRmVeSWpSXmKPExsWy7bCmge4Knu5YgwmrmCzuz2tltNg4Yz2r
 xctDmhbzj5xjtbjy9T2bxfS9m9gsJt2fwGKx4NMMVovz5zewW6y4+5HVYtPja6wWl3fNYbP4
 3HuE0WLG+X1MFmuP3GW3uN24gs1ixuSXbA6CHptWdbJ53Lm2h83jfvdxJo/NS+o9Nr7bweTR
 t2UVo8fnTXIB7FHZNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+
 AbpumTlADygplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL89L1kvNz
 rQwNDIxMgQoTsjM+XDnHWtBnUzF79RzmBsaThl2MnBwSAiYSM/Y0s4DYQgI7GCUOLgvoYuQC
 sj8xSrR9es8E4XxjlDi36w47TMeK4yA2SGIvo8TkJR3MEM57RokDnUtZQaqEBcIl5r5+wAqS
 EBH4zyhxetlKMIdZoJ9JouvZW7CNbAJaEvtf3GADsfkFFCWu/njMCGLzCthJtDR0g01iEVCV
 aHvZwARiiwpESHx6cJgVokZQ4uTMJ2BzOAU8JR5NPwsWZxYQl7j1ZD4ThC0v0bx1Nth5EgKn
 2CUmPbsM9YSLRNvWycwQtrDEq+NboOJSEp/f7WWDsKslVp48wgbR3MEosWX/BVaIhLHE/qWT
 gTZwAG3QlFi/Sx8irCix8/dcRgibV6Jh4292iCP4JN597WEFKQeJd7QJQZQoS1x+cJdpAqPy
 LCTvzELywiwkL8xCWLaAkWUVo1hqQXFuemqxYYEJcnxvYgQnby2LHYx7zvkcYhTgYFTi4XVg
 7YoVYk0sK67MPcQowcGsJMI7SwYoxJuSWFmVWpQfX1Sak1p8iNEUGNoTmaVEk/OBmSWvJN7Q
 1MjY2NjCxNDM1NBQSZzXI70hVkggPbEkNTs1tSC1CKaPiYNTqoFxRrvtGkmPikDdeHGXF18W
 Miislap7yb/CckHCo9+nn3+Wlirdwbdnbvn7Ao6ZLWFbV9dsF2pvteHd6Ptii4qmu9bG+axm
 mkvKgv6zyOwLSZudn9n/xuDjY+ZTfX97zju88Fi20Jzjt8eWIuHqFbyu2XdiUmbHvZTM3aAY
 7c2aGcL5htud76cSS3FGoqEWc1FxIgA4TQHO9AMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsWy7bCSvO5ynu5Yg6kT1Szuz2tltNg4Yz2r
 xctDmhbzj5xjtbjy9T2bxfS9m9gsJt2fwGKx4NMMVovz5zewW6y4+5HVYtPja6wWl3fNYbP4
 3HuE0WLG+X1MFmuP3GW3uN24gs1ixuSXbA6CHptWdbJ53Lm2h83jfvdxJo/NS+o9Nr7bweTR
 t2UVo8fnTXIB7FFcNimpOZllqUX6dglcGR+unGMt6LOpmL16DnMD40nDLkZODgkBE4kVx++w
 dzFycQgJ7GaUuL39FBNEQlJi2sWjzF2MHEC2sMThw8UQNW8ZJVYces4OUiMsEC4x9/UDVpCE
 iMB/RomHbccYQRxmgX4micZn/awQLSuZJdoO7mQGaWET0JLY/+IGG4jNL6AocfXHY0YQm1fA
 TqKloZsVxGYRUJVoe9kAdoaoQITE4R2zoGoEJU7OfMICYnMKeEo8mn4WrJ5ZQF3iz7xLzBC2
 uMStJ/OZIGx5ieats5knMArPQtI+C0nLLCQts5C0LGBkWcUomVpQnJueW2xYYJiXWq5XnJhb
 XJqXrpecn7uJERzHWpo7GC8viT/EKMDBqMTD68DaFSvEmlhWXJl7iFGCg1lJhHeWDFCINyWx
 siq1KD++qDQntfgQozQHi5I479O8Y5FCAumJJanZqakFqUUwWSYOTqkGxvr9vTtZ7/iaPzzC
 dYH3vfYxLYE8sQuehuyfHjPHHX7VtJXNyfXleYPEb0/+9e0seJMzqeiShe67pOeKbW4PJ7np
 Mc4pvp28dN+kSUpSTIeK5U/LJ8f5N/V8cI+NVw9fLBs68eubtcc/1s+KjUuIKT/b22WQ/Hut
 qq1I6nGtIz1T1ve7ZVXYK7EUZyQaajEXFScCADENxkDfAgAA
X-CMS-MailID: 20190925064351epcas1p2df5dc331f1e34dbfc566a24025b99b71
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
References: <CGME20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec@eucas1p1.samsung.com>
 <20190919142236.4071-1-a.swigon@samsung.com>
 <fe6d026d-71b5-438d-6932-6a2234fc72c2@samsung.com>
 <d8550f93-d4cf-f215-c083-8ecad267d430@samsung.com>
 <c06ca89f2b40e0282f19727b95da5e5b0158d7e3.camel@samsung.com>
 <0cceb46a-fca1-62ae-c2cc-fb0f9b9bd132@samsung.com>
 <f7387513d3c11cea7a7d35652457c1e7d7fed009.camel@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_234357_956993_EDCEABB7 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 krzk@kernel.org, inki.dae@samsung.com, myungjoo.ham@samsung.com,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>, leonard.crestez@nxp.com,
 georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOS4gMjUuIOyYpO2bhCAzOjM3LCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiBP
biBXZWQsIDIwMTktMDktMjUgYXQgMTU6MTIgKzA5MDAsIENoYW53b28gQ2hvaSB3cm90ZToKPj4g
SGksCj4+Cj4+IE9uIDE5LiA5LiAyNS4g7Jik7ZuEIDI6NDcsIEFydHVyIMWad2lnb8WEIHdyb3Rl
Ogo+Pj4gSGksCj4+Pgo+Pj4gT24gRnJpLCAyMDE5LTA5LTIwIGF0IDExOjE0ICswOTAwLCBDaGFu
d29vIENob2kgd3JvdGU6Cj4+Pj4gSGkgQXJ0dXIsCj4+Pj4KPj4+PiBJIHRyaWVkIHRvIGp1c3Qg
YnVpbGQgdGhpcyBwYXRjaCBvbiBtYWlubGluZSBrZXJuZWwgb3IgbGludXgtbmV4dC4KPj4+PiBC
dXQsIHdoZW4gSSBhcHBsaWVkIHRoZW0sIG1lcmdlIGNvbmZsaWN0IGhhcHBlbnMuIFlvdSBkaWRu
J3QgZGV2ZWxvcAo+Pj4+IHRoZW0gb24gbGF0ZXN0IHZlcnNpb24uIFBsZWFzZSByZWJhc2UgdGhl
bSBiYXNlZCBvbiBsYXRlc3QgbWFpbmxpbmUga2VybmVsLgo+Pj4KPj4+IEkgZGV2ZWxvcGVkIG9u
IHRvcCBvZiBuZXh0LTIwMTkwOTE4IG9uIHdoaWNoIEkgYXBwbGllZAo+Pj4gaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTE0OTQ5Ny8gYXMgSSBtZW50aW9uZWQgaW4gdGhlIGNv
dmVyCj4+PiBsZXR0ZXIuIFRoZSBkZXZfcG1fcW9zIHBhdGNoZXMgYW5kIG15IFJGQyBoYXZlIGp1
c3QgY2xlYW5seSByZWJhc2VkIHRvZ2V0aGVyIG9uCj4+PiB0b3Agb2YgbmV4dC0yMDE5MDkyMC4g
Q291bGQgeW91IGNoZWNrIGlmIHlvdSBoYXZlIHRoZSBkZXZfcG1fcW9zIHBhdGNoZXMgKHY1LAo+
Pj4gdGhlIHZlcnNpb24gbnVtYmVyIGlzIG1pc3NpbmcgaW4gdGhpcyBvbmU7IGxpbmsgYWJvdmUp
IGFuZCBpZiBzbywgd2hlcmUgZG9lcyB0aGUKPj4+IGNvbmZsaWN0IGFwcGVhcj8KPj4KPj4gSSBm
YWNlZCBvbiB0aGUgbWVyZ2UgY29uZmxpY3Qgb2YgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMu
Yy4KPj4gSSB0aGluayB0aGF0IEl0IGlzIG5vdCByZWxhdGVkIHRvIHRvIGRldl9wbV9xb3MgcGF0
Y2guCj4gCj4gSSB0aGluayB0aGF0IGl0IGlzIGFjdHVhbGx5IHJlbGF0ZWQgdG8gdGhlIHNwZWNp
ZmljIHZlcnNpb24gb2YgZGV2X3BtX3FvcyAodjUpIHRoYXQKPiBJIHVzZWQgYmVjYXVzZSBwYXRj
aCAwOC8wOCBvZiBkZXZfcG1fcW9zIHNlcmllcyBtb2RpZmllcyBleHlub3NfYnVzX3Byb2JlKCkg
aW4KPiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIChodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzExMTQ5NTA3LykuCj4gCj4gSSB3aWxsIHJlYmFzZSB0aGUgbmV4dCBSRkMg
KHYzKSBvbiBsYXRlc3QgZGV2X3BtX3FvcyBwYXRjaGVzIGZyb20gTGVvbmFyZCBhbmQgdGhlCj4g
bGF0ZXN0IExpbnV4LW5leHQga2VybmVsLgoKTXkgbWlzdGFrZS4gSSBvbmx5IGNoZWNrZWQgdGhl
IExlb25hcmQncyBsYXRlc3QgcGF0Y2hlcyh2OCkKd2hpY2ggZG9lc24ndCBjb250YWluIHRoaXMg
cGF0Y2guIE9LLiBJJ2xsIHRyeSBhZ2Fpbi4gVGhhbmtzLgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMTE0OTUwNy8KLSBQTSAvIGRldmZyZXE6IE1vdmUgb3BwIG5vdGlm
aWVyIHJlZ2lzdHJhdGlvbiB0byBjb3JlCgo+IAo+PiBNYXliZSwgS2FtaWwncyBwYXRjaGVzWzFd
IGNoYW5nZWQgdGhlIG1hbnkgdGhpbmdzIG9mIGV4eW5vcy1idXMuYwo+PiBJZiB5b3VyIHRlc3Qg
YnJhbmNoIGRvZXNuJ3QgY29udGFpbiBmb2xsb3dpbmcgcGF0Y2hlcywgCj4+IHlvdSBuZWVkIHRv
IHJlYmFzZSB5b3VyIHBhdGNoZXMgYmFzZWQgb24gbGF0ZXN0IG1haW5saW5lIGtlcm5lbCAKPj4g
ZnJvbSBMaW51cyBUb3J2YWxkLgo+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9j
b3Zlci8xMTA4MzY2My8KPj4gLSBbUkVTRU5EIFBBVENIIHY1IDAvNF0gYWRkIGNvdXBsZWQgcmVn
dWxhdG9ycyBmb3IgRXh5bm9zNTQyMi81ODAwCj4gCj4gWWVzLCByZXF1aXJpbmcgS2FtaWwncyBw
YXRjaGVzIGlzIG9uZSBvZiB0aGUgY2hhbmdlcyBpbiB0aGlzIFJGQyAodjIpLCBzaW5jZSB0aGV5
Cj4gYXJlIGFscmVhZHkgbWVyZ2VkLgo+IAo+PiBUb2RheSwgSSB0cmllZCB0byBhcHBseSB0aGVz
ZSBwYXRjaCBhZ2FpbiBiYXNlZCBvbiBsYXRlc3QgbWFpbmxpbmUga2VybmVsLgo+PiBUaGUgbWVy
Z2UgY29uZmxpY3QgaGFwcGVuIHN0aWxsLgo+Pgo+PiAtIG1lcmdlIGNvbmZsaWN0IGxvZwo+PiBB
cHBseWluZzogZGV2ZnJlcTogZXh5bm9zLWJ1czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVf
aW5pdCgpCj4+IGVycm9yOiBwYXRjaCBmYWlsZWQ6IGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVz
LmM6MzM0Cj4+IGVycm9yOiBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jOiBwYXRjaCBkb2Vz
IG5vdCBhcHBseQo+PiBQYXRjaCBmYWlsZWQgYXQgMDAwMSBkZXZmcmVxOiBleHlub3MtYnVzOiBF
eHRyYWN0IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KCkKPj4KPj4KPj4+Cj4+Pj4gT24gMTkuIDku
IDIwLiDsmKTsoIQgMTA6MDcsIENoYW53b28gQ2hvaSB3cm90ZToKPj4+Pj4gSGkgQXJ0dXIsCj4+
Pj4+Cj4+Pj4+IE9uIHYxLCBJIG1lbnRpb25lZCB0aGF0IHdlIG5lZWQgdG8gZGlzY3VzcyBob3cg
dG8gY2hhbmdlCj4+Pj4+IHRoZSB2MiBmb3IgdGhpcy4gQnV0LCBJIGhhdmUgbm90IHJlY2VpdmVk
IGFueSByZXBseSBmcm9tIHlvdSBvbiB2MS4KPj4+Pj4gQW5kLCB3aXRob3V0IHlvdXIgcmVwbHkg
ZnJvbSB2MSwgeW91IGp1c3Qgc2VuZCB2Mi4KPj4+Pj4KPj4+Pj4gSSB0aGluayB0aGF0IGl0IGlz
IG5vdCBwcm9wZXIgZGV2ZWxvcG1lbnQgc2VxdWVuY2UuCj4+Pj4+IEkgaGF2ZSBzcGVudCBtYW55
IHRpbWVzIHRvIHJldmlldyB5b3VyIHBhdGNoZXMKPj4+Pj4gYW5kIGFsc28gSSdsbCByZXZpZXcg
eW91ciBwYXRjaGVzLiBZb3UgaGF2ZSB0byB0YWtlIGNhcmUKPj4+Pj4gdGhlIHJlcGx5IG9mIHJl
dmlld2VyIGFuZCBhbmQga2VlcCB0aGUgYmFzaWMgcnVsZQo+Pj4+PiBvZiBtYWlsaW5nIGNvbnRy
aWJ1dGlvbiBmb3IgZGlzY3Vzc2lvbi4KPj4+Pj4KPj4+Pj4gT24gMTkuIDkuIDE5LiDsmKTtm4Qg
MTE6MjIsIEFydHVyIMWad2lnb8WEIHdyb3RlOgo+Pj4+Pj4gVGhlIGZvbGxvd2luZyBwYXRjaHNl
dCBhZGRzIGludGVyY29ubmVjdFsxXVsyXSBmcmFtZXdvcmsgc3VwcG9ydCB0byB0aGUKPj4+Pj4+
IGV4eW5vcy1idXMgZGV2ZnJlcSBkcml2ZXIuIEV4dGVuZGluZyB0aGUgZGV2ZnJlcSBkcml2ZXIg
d2l0aCBpbnRlcmNvbm5lY3QKPj4+Pj4+IGNhcGFiaWxpdGllcyBzdGFydGVkIGFzIGEgcmVzcG9u
c2UgdG8gdGhlIGlzc3VlIHJlZmVyZW5jZWQgaW4gWzNdLiBUaGUKPj4+Pj4+IHBhdGNoZXMgY2Fu
IGJlIHN1YmRpdmlkZWQgaW50byBmb3VyIGxvZ2ljYWwgZ3JvdXBzOgo+Pj4+Pj4KPj4+Pj4+IChh
KSBSZWZhY3RvcmluZyB0aGUgZXhpc3RpbmcgZGV2ZnJlcSBkcml2ZXIgaW4gb3JkZXIgdG8gaW1w
cm92ZSByZWFkYWJpbGl0eQo+Pj4+Pj4gYW5kIGFjY29tbW9kYXRlIGZvciBhZGRpbmcgbmV3IGNv
ZGUgKHBhdGNoZXMgMDEtLTA0LzExKS4KPj4+Pj4+Cj4+Pj4+PiAoYikgVHdlYWtpbmcgdGhlIGlu
dGVyY29ubmVjdCBmcmFtZXdvcmsgdG8gc3VwcG9ydCB0aGUgZXh5bm9zLWJ1cyB1c2UgY2FzZQo+
Pj4+Pj4gKHBhdGNoZXMgMDUtLTA3LzExKS4gRXhwb3J0aW5nIG9mX2ljY19nZXRfZnJvbV9wcm92
aWRlcigpIGFsbG93cyB1cyB0bwo+Pj4+Pj4gYXZvaWQgaGFyZGNvZGluZyBldmVyeSBzaW5nbGUg
Z3JhcGggZWRnZSBpbiB0aGUgRFQgb3IgZHJpdmVyIHNvdXJjZSwgYW5kCj4+Pj4+PiByZWxheGlu
ZyB0aGUgcmVxdWlyZW1lbnQgY29udGFpbmVkIGluIHRoYXQgZnVuY3Rpb24gcmVtb3ZlcyB0aGUg
bmVlZCB0bwo+Pj4+Pj4gcHJvdmlkZSBkdW1teSBub2RlIElEcyBpbiB0aGUgRFQuIEFkanVzdGlu
ZyB0aGUgbG9naWMgaW4KPj4+Pj4+IGFwcGx5X2NvbnN0cmFpbnRzKCkgKGRyaXZlcnMvaW50ZXJj
b25uZWN0L2NvcmUuYykgYWNjb3VudHMgZm9yIHRoZSBmYWN0Cj4+Pj4+PiB0aGF0IGV2ZXJ5IGJ1
cyBpcyBhIHNlcGFyYXRlIGVudGl0eSBhbmQgdGhlcmVmb3JlIGEgc2VwYXJhdGUgaW50ZXJjb25u
ZWN0Cj4+Pj4+PiBwcm92aWRlciwgYWxiZWl0IGNvbnN0aXR1dGluZyBhIHBhcnQgb2YgYSBsYXJn
ZXIgaGllcmFyY2h5Lgo+Pj4+Pj4KPj4+Pj4+IChjKSBJbXBsZW1lbnRpbmcgaW50ZXJjb25uZWN0
IHByb3ZpZGVycyBpbiB0aGUgZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZlcgo+Pj4+Pj4gYW5kIGFk
ZGluZyByZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZvciBvbmUgc2VsZWN0ZWQgcGxhdGZvcm0sIG5h
bWVseQo+Pj4+Pj4gRXh5bm9zNDQxMiAocGF0Y2hlcyAwOC0tMDkvMTEpLiBEdWUgdG8gdGhlIGZh
Y3QgdGhhdCB0aGlzIGFpbXMgdG8gYmUgYQo+Pj4+Pj4gZ2VuZXJpYyBkcml2ZXIgZm9yIHZhcmlv
dXMgRXh5bm9zIFNvQ3MsIG5vZGUgSURzIGFyZSBnZW5lcmF0ZWQgZHluYW1pY2FsbHkKPj4+Pj4+
IHJhdGhlciB0aGFuIGhhcmRjb2RlZC4gVGhpcyBoYXMgYmVlbiBkZXRlcm1pbmVkIHRvIGJlIGEg
c2ltcGxlciBhcHByb2FjaCwKPj4+Pj4+IGJ1dCBkZXBlbmRzIG9uIGNoYW5nZXMgZGVzY3JpYmVk
IGluIChiKS4KPj4+Pj4+Cj4+Pj4+PiAoZCkgSW1wbGVtZW50aW5nIGEgc2FtcGxlIGludGVyY29u
bmVjdCBjb25zdW1lciBmb3IgZXh5bm9zLW1peGVyIHRhcmdldGVkCj4+Pj4+PiBhdCB0aGUgaXNz
dWUgcmVmZXJlbmNlZCBpbiBbM10sIGFnYWluIHdpdGggRFQgaW5mbyBvbmx5IGZvciBFeHlub3M0
NDEyCj4+Pj4+PiAocGF0Y2hlcyAxMC0tMTEvMTEpLgo+Pj4+Pj4KPj4+Pj4+IEludGVncmF0aW9u
IG9mIGRldmZyZXEgYW5kIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXRpZXMgaXMgYWNoaWV2ZWQg
YnkKPj4+Pj4+IHVzaW5nIGRldl9wbV9xb3NfKigpIEFQSVs1XS4gQWxsIG5ldyBjb2RlIHdvcmtz
IGVxdWFsbHkgd2VsbCB3aGVuCj4+Pj4+PiBDT05GSUdfSU5URVJDT05ORUNUIGlzICduJyAoYXMg
aW4gZXh5bm9zX2RlZmNvbmZpZykgaW4gd2hpY2ggY2FzZSBhbGwKPj4+Pj4+IGludGVyY29ubmVj
dCBBUEkgZnVuY3Rpb25zIGFyZSBuby1vcHMuCj4+Pj4+Pgo+Pj4+Pj4gVGhpcyBwYXRjaHNldCBk
ZXBlbmRzIG9uIFs1XS4KPj4+Pj4+Cj4+Pj4+PiAtLS0gQ2hhbmdlcyBzaW5jZSB2MSBbNl06Cj4+
Pj4+PiAqIFJlYmFzZSBvbiBbNF0gKGNvdXBsZWQgcmVndWxhdG9ycykuCj4+Pj4+PiAqIFJlYmFz
ZSBvbiBbNV0gKGRldl9wbV9xb3MgZm9yIGRldmZyZXEpLgo+Pj4+Pj4gKiBVc2UgZGV2X3BtX3Fv
c18qKCkgQVBJWzVdIGluc3RlYWQgb2Ygb3ZlcnJpZGluZyBmcmVxdWVuY3kgaW4KPj4+Pj4+ICAg
ZXh5bm9zX2J1c190YXJnZXQoKS4KPj4+Pj4+ICogVXNlIElEUiBmb3Igbm9kZSBJRCBhbGxvY2F0
aW9uLgo+Pj4+Pj4gKiBBdm9pZCBnb3RvIGluIGZ1bmN0aW9ucyBleHRyYWN0ZWQgaW4gcGF0Y2hl
cyAwMSAmIDAyIChjZi4gcGF0Y2ggMDQpLgo+Pj4+Pj4gKiBSZXZlcnNlIG9yZGVyIG9mIG11bHRp
cGxpY2F0aW9uIGFuZCBkaXZpc2lvbiBpbgo+Pj4+Pj4gICBtaXhlcl9zZXRfbWVtb3J5X2JhbmR3
aWR0aCgpIChwYXRjaCAxMSkgdG8gYXZvaWQgaW50ZWdlciBvdmVyZmxvdy4KPj4+Pj4+Cj4+Pj4+
PiAtLS0KPj4+Pj4+IEFydHVyIMWad2lnb8WECj4+Pj4+PiBTYW1zdW5nIFImRCBJbnN0aXR1dGUg
UG9sYW5kCj4+Pj4+PiBTYW1zdW5nIEVsZWN0cm9uaWNzCj4+Pj4+Pgo+Pj4+Pj4gLS0tCj4+Pj4+
PiBSZWZlcmVuY2VzOgo+Pj4+Pj4gWzFdIERvY3VtZW50YXRpb24vaW50ZXJjb25uZWN0L2ludGVy
Y29ubmVjdC5yc3QKPj4+Pj4+IFsyXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
aW50ZXJjb25uZWN0L2ludGVyY29ubmVjdC50eHQKPj4+Pj4+IFszXSBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3BhdGNoLzEwODYxNzU3LyAob3JpZ2luYWwgaXNzdWUpCj4+Pj4+PiBbNF0g
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA4MzY2My8gKGNvdXBsZWQgcmVn
dWxhdG9yczsgbWVyZ2VkKQo+Pj4+Pj4gWzVdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
Y292ZXIvMTExNDk0OTcvIChkZXZfcG1fcW9zIGZvciBkZXZmcmVxKQo+Pj4+Pj4gWzZdIGh0dHBz
Oi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEwNTQ0MTcvICh2MSBvZiB0aGlzIFJGQykK
Pj4+Pj4+Cj4+Pj4+PiBBcnR1ciDFmndpZ2/FhCAoMTApOgo+Pj4+Pj4gICBkZXZmcmVxOiBleHlu
b3MtYnVzOiBFeHRyYWN0IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KCkKPj4+Pj4+ICAgZGV2ZnJl
cTogZXh5bm9zLWJ1czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKCkK
Pj4+Pj4+ICAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQ2hhbmdlIGdvdG8tYmFzZWQgbG9naWMgdG8g
aWYtZWxzZSBsb2dpYwo+Pj4+Pj4gICBkZXZmcmVxOiBleHlub3MtYnVzOiBDbGVhbiB1cCBjb2Rl
Cj4+Pj4+PiAgIGludGVyY29ubmVjdDogRXhwb3J0IG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigp
Cj4+Pj4+PiAgIGludGVyY29ubmVjdDogUmVsYXggcmVxdWlyZW1lbnQgaW4gb2ZfaWNjX2dldF9m
cm9tX3Byb3ZpZGVyKCkKPj4+Pj4+ICAgaW50ZXJjb25uZWN0OiBSZWxheCBjb25kaXRpb24gaW4g
YXBwbHlfY29uc3RyYWludHMoKQo+Pj4+Pj4gICBhcm06IGR0czogZXh5bm9zOiBBZGQgcGFyZW50
cyBhbmQgI2ludGVyY29ubmVjdC1jZWxscyB0byBFeHlub3M0NDEyCj4+Pj4+PiAgIGRldmZyZXE6
IGV4eW5vcy1idXM6IEFkZCBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0eSB0byBleHlub3MtYnVz
Cj4+Pj4+PiAgIGFybTogZHRzOiBleHlub3M6IEFkZCBpbnRlcmNvbm5lY3RzIHRvIEV4eW5vczQ0
MTIgbWl4ZXIKPj4+Pj4+Cj4+Pj4+PiBNYXJlayBTenlwcm93c2tpICgxKToKPj4+Pj4+ICAgZHJt
OiBleHlub3M6IG1peGVyOiBBZGQgaW50ZXJjb25uZWN0IHN1cHBvcnQKPj4+Pj4+Cj4+Pj4+PiAg
Li4uL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpICAgIHwgICAxICsKPj4+
Pj4+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgICAgICAgICAgICAgfCAgMTAg
Kwo+Pj4+Pj4gIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgICAgICAgICAgICAgICAgICB8
IDMxOSArKysrKysrKysrKysrLS0tLS0KPj4+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4
eW5vc19taXhlci5jICAgICAgICAgfCAgNzEgKysrLQo+Pj4+Pj4gIGRyaXZlcnMvaW50ZXJjb25u
ZWN0L2NvcmUuYyAgICAgICAgICAgICAgICAgICB8ICAxMiArLQo+Pj4+Pj4gIGluY2x1ZGUvbGlu
dXgvaW50ZXJjb25uZWN0LXByb3ZpZGVyLmggICAgICAgICB8ICAgNiArCj4+Pj4+PiAgNiBmaWxl
cyBjaGFuZ2VkLCAzMjcgaW5zZXJ0aW9ucygrKSwgOTIgZGVsZXRpb25zKC0pCj4+Pj4+Pgo+IAo+
IAo+IAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9u
aWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
