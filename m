Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E378AD6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 06:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZurGWXijmOJ5OnaE3DG65ife7nLIOKvJ7V6myC+Iys4=; b=ctSDJnlE+dUdB6
	W5zHmcStOV60tWCNY5pEUpyql00cPQFn60ZqIc/ruMJH4lFMmc9Oimyo5OnPMogen5F/oSOO4g87M
	XY4klWQvXkYCV05LfqO1QPQCo+y+VQOGpAOoPuFOzqRUnbZAQKIIQcIVX6dRSxL3p7W+J/gIcexEq
	SImRXEGjXHNS9oXuREES2Fs7cMJDWrHimU0uXfLa4jRZpuRZLFqlolsya4hs8OIrULV6JdKVmAPJh
	39OceCSZUhyOaFVz38aM3V+V8f7Rr8afHKpo+jM5u9lyD0OqfbiSoRfgtOMi5nWKuG8DOdxc69b5l
	kHPyt4E92rImtJ0SWQ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOIC-0000dk-Ig; Tue, 13 Aug 2019 04:20:16 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOHu-0000a2-Cw
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 04:20:00 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20190813041941epoutp0160a16b72af84cf924612c3022d40ebb6~6YI2eR70e0171501715epoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 04:19:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20190813041941epoutp0160a16b72af84cf924612c3022d40ebb6~6YI2eR70e0171501715epoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565669981;
 bh=07b7XUHda9WrEg1bmfF4iuDAMyHk6cA/OSKVvjSJkUU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Cl1zwdvFaSPWESLWkf2AzT6INysMEqH+8wYsSp8VyFYVKGeacAHO0+PgJdOehAS9E
 kXV0fsq0VoB7lAfkMlElab/UWra+y4vnx6YXLrDt9/OExRRg6Cqm6/yCorerSMod5s
 PABQMNJ41Y95Kg7muw2NhlbCWZu5+K2bxcM8A+II=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20190813041941epcas1p4dbcf1ea21ec5a2c25e811f79955168b9~6YI10RW3S0854308543epcas1p43;
 Tue, 13 Aug 2019 04:19:41 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.152]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 466zy250zJzMqYkY; Tue, 13 Aug
 2019 04:19:38 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 88.53.04085.A5A325D5; Tue, 13 Aug 2019 13:19:38 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190813041937epcas1p3d80d80932d7240a07937737279e54f8c~6YIyv9mxc2852628526epcas1p3k;
 Tue, 13 Aug 2019 04:19:37 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190813041937epsmtrp1ccd83c1bfa681e68e24e7bfd0638b280~6YIyvCUTz2769827698epsmtrp1H;
 Tue, 13 Aug 2019 04:19:37 +0000 (GMT)
X-AuditID: b6c32a39-cebff70000000ff5-cd-5d523a5a19bb
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 50.FA.03706.95A325D5; Tue, 13 Aug 2019 13:19:37 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190813041937epsmtip1c134ada5e8ba8ec2cdec25946e1444a3~6YIyZps391930419304epsmtip1q;
 Tue, 13 Aug 2019 04:19:37 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: passive: Use non-devm notifiers
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <9ddb0fc0-5cdf-19a7-fac4-3c70002404b2@samsung.com>
Date: Tue, 13 Aug 2019 13:23:23 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <38b77bb80d12aa788d4e234e399780a27dcd9e9f.1565282993.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEJsWRmVeSWpSXmKPExsWy7bCmvm6UVVCswYIHyhaHjm1lt/h6+hSj
 xen971gsdj3Yxmbx8pCmxdzZkxgtmhevZ7M4f34Du8XZpjfsFrcaZCxW3P3IarHp8TVWi8+9
 RxgtbjeuYLOY+2Uqs0XXob9sDgIe72+0snssvnab1WPiWV2PBZtKPTat6mTzuHNtD5vH/rlr
 2D02L6n32PhuB5PHwXd7mDz6tqxi9Pi8SS6AJyrbJiM1MSW1SCE1Lzk/JTMv3VbJOzjeOd7U
 zMBQ19DSwlxJIS8xN9VWycUnQNctMwfoIyWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVJq
 QUpOgWWBXnFibnFpXrpecn6ulaGBgZEpUGFCdsaUi2tYCnrEK67en8XSwNgp3MXIySEhYCKx
 YN5Xli5GLg4hgR2MEm83HmaFcD4xSvy8f5cZwvnGKNFy5CMrTMvtNW/ZIBJ7GSX6vv1mhHDe
 M0o8enAUyOHgEBZwkphzTAMkLiLQzCix9cRbJhCHWWAfi8SPWa/ARrEJaEnsf3GDDcTmF1CU
 uPrjMSOIzStgJ3H+2TGwGhYBVYnZd/eC2aICERKfHhxmhagRlDg58wkLiM0pECcx58ZssF5m
 AXGJW0/mM0HY8hLNW2eD/SAhcI9d4t6/n8wQP7hIXH5/hw3CFpZ4dXwLO4QtJfGyvw3KrpZY
 efIIG0RzB6PElv0XoAFgLLF/6WQmkDeZBTQl1u/ShwgrSuz8PZcRwuaVaNj4mx3iCD6Jd197
 WEHKQeIdbUIQJcoSlx/cZZrAqDwLyTuzkLwwC8kLsxCWLWBkWcUollpQnJueWmxYYIoc35sY
 weldy3IH47FzPocYBTgYlXh4KxICY4VYE8uKK3MPMUpwMCuJ8F4yCYoV4k1JrKxKLcqPLyrN
 SS0+xGgKDO2JzFKiyfnA3JNXEm9oamRsbGxhYmhmamioJM678IdFrJBAemJJanZqakFqEUwf
 EwenVANj5r1zEw8lJXbkn5LN35x4rlDw7IWlC35a3llye0X8cVGVwumzLBiXNtRcFjLqF36o
 Fnx+Uc7uyZI9OVc79sVfjjjl+HmZQo6id4Cgs43HDp/vIceS1suJPnBuY3mpcYMn74J7seOB
 m8c3yuZl7dqm67kprDgubWfW77d9pUWqmeERio06b6WVWIozEg21mIuKEwGTdpmiBQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsWy7bCSnG6kVVCswZZlmhaHjm1lt/h6+hSj
 xen971gsdj3Yxmbx8pCmxdzZkxgtmhevZ7M4f34Du8XZpjfsFrcaZCxW3P3IarHp8TVWi8+9
 RxgtbjeuYLOY+2Uqs0XXob9sDgIe72+0snssvnab1WPiWV2PBZtKPTat6mTzuHNtD5vH/rlr
 2D02L6n32PhuB5PHwXd7mDz6tqxi9Pi8SS6AJ4rLJiU1J7MstUjfLoErY8rFNSwFPeIVV+/P
 Ymlg7BTuYuTkkBAwkbi95i1bFyMXh5DAbkaJS20/mCESkhLTLh4FsjmAbGGJw4eLIWreMkq8
 W/0TLC4s4CQx55gGSFxEoJVR4s7pH2CDmAUOsUi0dvZATd3IKLGm/ycLyFQ2AS2J/S9usIHY
 /AKKEld/PGYEsXkF7CTOPzvGCmKzCKhKzL67F8wWFYiQOLxjFlSNoMTJmU/A5nAKxEnMuTEb
 LM4soC7xZ94lZghbXOLWk/lMELa8RPPW2cwTGIVnIWmfhaRlFpKWWUhaFjCyrGKUTC0ozk3P
 LTYsMMxLLdcrTswtLs1L10vOz93ECI5zLc0djJeXxB9iFOBgVOLhrUgIjBViTSwrrsw9xCjB
 wawkwnvJJChWiDclsbIqtSg/vqg0J7X4EKM0B4uSOO/TvGORQgLpiSWp2ampBalFMFkmDk6p
 BkbhQPZdTsv65zgqbJzbkaReUSEgMTmWu+fW25l3L5noqblq8vdJ37koOUNlperPH/1MP53j
 Zh870u4ndLiXQSBv6uPKjTtMNPjOnHq7XV1n1hYh9yKr8n+b/h+w/dU/P7T3jWysxME/1qzu
 HvYn+W52Tp0TfNnHVKkvZmrY4YsnNNY/ET505L0SS3FGoqEWc1FxIgAYDPHH7wIAAA==
X-CMS-MailID: 20190813041937epcas1p3d80d80932d7240a07937737279e54f8c
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190808165416epcas5p24d8b4688357cd0985592e457c107d98b
References: <CGME20190808165416epcas5p24d8b4688357cd0985592e457c107d98b@epcas5p2.samsung.com>
 <38b77bb80d12aa788d4e234e399780a27dcd9e9f.1565282993.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_211958_603153_3B9F4B3A 
X-CRM114-Status: GOOD (  28.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Saravana Kannan <saravanak@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "cpgs \(cpgs@samsung.com\)" <cpgs@samsung.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxOS4gOC4gOS4g7Jik7KCEIDE6NTQsIExlb25hcmQgQ3Jlc3RleiB3cm90ZToKPiBU
aGUgZGV2ZnJlcSBwYXNzaXZlIGdvdmVybm9yIHJlZ2lzdGVycyBhbmQgdW5yZWdpc3RlcnMgZGV2
ZnJlcQo+IHRyYW5zaXRpb24gbm90aWZpZXJzIG9uIERFVkZSRVFfR09WX1NUQVJUL0dPVl9TVE9Q
IHVzaW5nIGRldm0gd3JhcHBlcnMuCj4gCj4gSWYgZGV2ZnJlcSBpdHNlbGYgaXMgcmVnaXN0ZXJl
ZCB3aXRoIGRldm0gdGhlbiBhIHdhcm5pbmcgaXMgdHJpZ2dlcmVkIG9uCj4gcm1tb2QgZnJvbSBk
ZXZtX2RldmZyZXFfdW5yZWdpc3Rlcl9ub3RpZmllci4gQ2FsbCBzdGFjayBsb29rcyBsaWtlIHRo
aXM6Cj4gCj4gCWRldm1fZGV2ZnJlcV91bnJlZ2lzdGVyX25vdGlmaWVyKzB4MzAvMHg0MAo+IAlk
ZXZmcmVxX3Bhc3NpdmVfZXZlbnRfaGFuZGxlcisweDRjLzB4ODgKPiAJZGV2ZnJlcV9yZW1vdmVf
ZGV2aWNlLnBhcnQuOCsweDZjLzB4OWMKPiAJZGV2bV9kZXZmcmVxX2Rldl9yZWxlYXNlKzB4MTgv
MHgyMAo+IAlyZWxlYXNlX25vZGVzKzB4MWIwLzB4MjIwCj4gCWRldnJlc19yZWxlYXNlX2FsbCsw
eDc4LzB4ODQKPiAJZGV2aWNlX3JlbGVhc2VfZHJpdmVyX2ludGVybmFsKzB4MTAwLzB4MWMwCj4g
CWRyaXZlcl9kZXRhY2grMHg0Yy8weDkwCj4gCWJ1c19yZW1vdmVfZHJpdmVyKzB4N2MvMHhkMAo+
IAlkcml2ZXJfdW5yZWdpc3RlcisweDJjLzB4NTgKPiAJcGxhdGZvcm1fZHJpdmVyX3VucmVnaXN0
ZXIrMHgxMC8weDE4Cj4gCWlteF9kZXZmcmVxX3BsYXRkcnZfZXhpdCsweDE0LzB4ZDQwIFtpbXhf
ZGV2ZnJlcV0KPiAKPiBUaGlzIGhhcHBlbnMgYmVjYXVzZSBkZXZyZXNfcmVsZWFzZV9hbGwgd2ls
bCBmaXJzdCByZW1vdmUgYWxsIHRoZSBub2Rlcwo+IGludG8gYSBzZXBhcmF0ZSB0b2RvIGxpc3Qg
c28gdGhlIG5lc3RlZCBkZXZyZXNfcmVsZWFzZSBmcm9tCj4gZGV2bV9kZXZmcmVxX3VucmVnaXN0
ZXJfbm90aWZpZXIgd29uJ3QgZmluZCBhbnl0aGluZy4KPiAKPiBGaXggdGhlIHdhcm5pbmcgYnkg
Y2FsbGluZyB0aGUgbm9uLWRldm0gQVBJUyBmb3IgZnJlcXVlbmN5IG5vdGlmaWNhdGlvbi4KPiBV
c2luZyBkZXZtIHdyYXBwZXJzIGlzIG5vdCBhY3R1YWxseSB1c2VmdWwgZm9yIGEgZ292ZXJub3Ig
YW55d2F5OiBpdAo+IHJlbGllcyBvbiB0aGUgZGV2ZnJlcSBjb3JlIHRvIGNvcnJlY3RseSBtYXRj
aCB0aGUgR09WX1NUQVJUL0dPVl9TVE9QCj4gbm90aWZpY2F0aW9ucy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IAo+IC0tLQo+
ICBkcml2ZXJzL2RldmZyZXEvZ292ZXJub3JfcGFzc2l2ZS5jIHwgNiArKystLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBUaGUgb25seSBj
dXJyZW50IHVzZXIgb2YgcGFzc2l2ZSBnb3Zlcm5vciBpcyBleHlub3MtYnVzOyBkb2VzIHJtbW9k
IHdvcmsKPiBmb3IgeW91PyBNYXliZSBJJ20gbWlzc2luZyBzb21ldGhpbmcuCj4gCj4gSXQgYWxz
byBzZWVtcyB0aGF0IG5vIGF0dGVtcHQgaXMgbWFkZSB0byBpbmNyZWFzZSB0aGUgcmVmIGNvdW50
IG9mCj4gdGhlIHBhc3NpdmUgInBhcmVudCIgc28gaW4gdGhlb3J5IGRldmljZXMgY2FuIGJlIHJl
bW92ZWQgd2hpbGUgc3RpbGwKPiByZWZlcmVuY2VkLiBIb3dldmVyIHRoYXQgd291bGQgYmUgYSBz
ZXBhcmF0ZSBpc3N1ZS4KPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2dvdmVybm9y
X3Bhc3NpdmUuYyBiL2RyaXZlcnMvZGV2ZnJlcS9nb3Zlcm5vcl9wYXNzaXZlLmMKPiBpbmRleCA1
ODMwODk0OGI4NjMuLmRhNDg1NDc3MDY1YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEv
Z292ZXJub3JfcGFzc2l2ZS5jCj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2dvdmVybm9yX3Bhc3Np
dmUuYwo+IEBAIC0xNjMsMTYgKzE2MywxNiBAQCBzdGF0aWMgaW50IGRldmZyZXFfcGFzc2l2ZV9l
dmVudF9oYW5kbGVyKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxLAo+ICAJY2FzZSBERVZGUkVRX0dP
Vl9TVEFSVDoKPiAgCQlpZiAoIXBfZGF0YS0+dGhpcykKPiAgCQkJcF9kYXRhLT50aGlzID0gZGV2
ZnJlcTsKPiAgCj4gIAkJbmItPm5vdGlmaWVyX2NhbGwgPSBkZXZmcmVxX3Bhc3NpdmVfbm90aWZp
ZXJfY2FsbDsKPiAtCQlyZXQgPSBkZXZtX2RldmZyZXFfcmVnaXN0ZXJfbm90aWZpZXIoZGV2LCBw
YXJlbnQsIG5iLAo+ICsJCXJldCA9IGRldmZyZXFfcmVnaXN0ZXJfbm90aWZpZXIocGFyZW50LCBu
YiwKPiAgCQkJCQlERVZGUkVRX1RSQU5TSVRJT05fTk9USUZJRVIpOwo+ICAJCWJyZWFrOwo+ICAJ
Y2FzZSBERVZGUkVRX0dPVl9TVE9QOgo+IC0JCWRldm1fZGV2ZnJlcV91bnJlZ2lzdGVyX25vdGlm
aWVyKGRldiwgcGFyZW50LCBuYiwKPiAtCQkJCQlERVZGUkVRX1RSQU5TSVRJT05fTk9USUZJRVIp
Owo+ICsJCVdBUk5fT04oZGV2ZnJlcV91bnJlZ2lzdGVyX25vdGlmaWVyKHBhcmVudCwgbmIsCj4g
KwkJCQkJREVWRlJFUV9UUkFOU0lUSU9OX05PVElGSUVSKSk7Cj4gIAkJYnJlYWs7Cj4gIAlkZWZh
dWx0Ogo+ICAJCWJyZWFrOwo+ICAJfQo+ICAKPiAKCkxvb2tzIGdvb2QgdG8gbWUuIEJ1dCwgeW91
IGhhdmUgdG8gYWRkIHRoZSBmb2xsb3dpbmcgZml4ZXMgdGFnCmFuZCBzZW5kIGl0IHRvIHN0YWJs
ZSBtYWlsaW5nIGxpc3QgdG8gZml4IHRoZSBidWcuCi0gRml4ZXM6IDk5NjEzMzExOWY1NyAoIlBN
IC8gZGV2ZnJlcTogQWRkIG5ldyBwYXNzaXZlIGdvdmVybm9yIikKCkFja2VkLWJ5OiBDaGFud29v
IENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4gCgotLSAKQmVzdCBSZWdhcmRzLApDaGFud29v
IENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
