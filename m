Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D13DBDAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 08:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F6qsLeH8tM1t1td/jZM4yOal9+h2I6ST0pWK4gSt3gc=; b=Seo/wfTkrLRkGV
	Ek6AmFGhomT/ElBa7C3ZAK8asITp6yzP+EXkjweGJOQ+nOWmllGkXV2CeZIcTv9ZCMjc+Mw1lgK9a
	QG8Vkeyp0BboYcn+xQ8cQBBhKfivvHd2b527m5pPle9nCekTX06tK2LQz1XaqmG2OobhysZZL4yhe
	l0PFSE0ODNXG0iJbBQudalsorVmIiwi+p1LtRKn9G7+dW/a18pGEqZxZN2QXzVPDoRGolSf2niQNH
	1sPoYcs+B6zAlHMs4iZW/v0yArV4+NU/mm105V0pRoZG+XRzTuSZJ8R/t6Nv8oeVWcJUhLj6lJctU
	YkS7yOmStQ5VQUvquDvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLLnH-0006F4-SK; Fri, 18 Oct 2019 06:31:23 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLLn8-0006EP-FT
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 06:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571380252;
 bh=p8mhWn/YrYMqYy6+4X9EL8V29BdU0woCBpW40cTEzHc=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=Lb5Q+5trUEQiuWSsc/FD3D9sXuiFEeEb78TkYvj3JWHEy5pAFFjgIHKZcIqVXM0wk
 EcpqmD5neoB+BG5TOb3P/aGhP0/v5VpeyYyRl7TtV41LCFGQJdamMrvd3+/+svjq5/
 t8zorEpweN5dJac+qFY5vBk2AAhHVgphNpJAutEM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.164.145]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MFtOY-1iIcEU19XS-00Ev3n; Fri, 18
 Oct 2019 08:30:52 +0200
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, =?UTF-8?B?SsO2cmcgUsO2ZGVs?=
 <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: iommu/exynos: Checking a device_link_add() call in
 exynos_iommu_add_device()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <dfb07352-877b-0ed2-ea1b-5a4885cd740b@web.de>
Date: Fri, 18 Oct 2019 08:30:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:Kz6Sq8uCDyYL9Ez0E32lMUJbvmecMdngPvik0NC9fOSKpwaCu/Z
 GHf7SqhybjsaEj4DjUJFvmknmkm6W7gVZB02ooERL9yygzF8OGdThEnp/Tfda20nwV0Kq5m
 4T/2U4ZTr8anhB+aj/oENyYdMcgEiW0AjOkE5k/igAWfO3w8P7mmUtW69U6LazhByxsh8NF
 IDYpGue7A/AIaWdOop6ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/3R1qhRFeWU=:lHE+wQICeMtc/QR2/JeDzr
 wJ8B0ISWyhsJrhy0bPfPrZ1+HCThx66JP5iXaqEl1IdF2VdvzMWIzYQBMGDwmVEFt1cVtd3Fh
 S8YMOyIHMA+VyjPAbCxK8vPPQjcmbK6pNW243Ga9N1wq96Bph71bzJZd7J4p/Z5CFXK+TfOs6
 V5cLO5pcp0Nortn3FyJGWrBSglMsVcoo6SiVcM/mXU1PnLA4i1X/9ynCdw+QDnXx/bYZxafYK
 5UjfyUsqtAfETx6M9j+x1TRoRwhPf5vtBdCCFajDwwc3X89zwl8LWDYKELVKQDZg7SyUy9eH2
 7kN1z69z1Qyxb9y54Wt2wW2G0PfAYjl/9zLqnNpQtReDIKvcertk13Ehv5gvgynNh2i9yvl3X
 kl9u966zgb9hP1M8QlQM8nT0dGVKPQIpkzhhcId10fJv2vdTdRKIxAeIKB8dGBTN7guaTtJi3
 fM0Yz3Rj9VFw2GxJ/Z4yopb4++ayk7S83sAEJDCvNQy/luSKP86lgrwWAkG2NP5uMjm1qYbV0
 pbh72TJhxj06ab+sxBf7hd4VxgFwg0AmgUf4OmbZV5Rw3Fg3smYHEtK9qsMFJIspWOJPbaKyH
 Hz817z3pW8zCogar/N+P+7/iwZ3t998byiJdkhR+UfyYYsf3xyMw5hukqMjW2JShzKo8I0Abj
 oU16da5E1e3yKhn97HLdwfYAUN8C4dbtHsWAOyounOSij6ajZKqN1TgjAAcxwK153BbyLA94C
 VkSZKitvfnymbcgWuXoXj6ukf8S7id7CoMoO0fDW8aAqckttEQ/FcbXXl2WTrDD2crr2PJ0jQ
 s8GH5fQM1c2mleTkJdc055US7X0taZ1RSZdCwfild9iohfouwCaVzcf3Xb5IE2qmrxNf2OJZE
 jfjOvRTvud6xtY50800RngNfQhBDwJtgvyGNlvbqscZ5TUpottmeyu5dUY2UbA1qFCh/6M/pi
 EqETrzXxGga9ZJax6aGbOcFKg1Bvz/xpVuw81cKvAwy11aCW/3y9HHYqBK4RWfMACSXZhRo+k
 vDnVGs5oyw2Pub3RsG498qpK6gOiM+zRx6kWgAZIh3WWq9f8k3r7ZwlCbaRpHE2LTOOzQpTVR
 nQkBvmGXBWZgqBouBbhD3djNv8A5ZB28l9t6iP1w/2MP6rPy4aQJ0f7Met9hUzSybGGQPuZNJ
 s9vOieRWSsH1xrY4ArIYRbENyRR1z+BhxLLHhEJBfibYt7SLPJCD9mA4YwgLrWTpx/Z0nxIae
 Te10wqPTNMAWVq1UOCjMwlkcShmhumWhujAEgRavTQJ7PVEZc+qv7tZhEvkw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_233115_203278_3FF80BD5 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, kernel-janitors@vger.kernel.org,
 Stephen McCamant <smccaman@umn.edu>, Kangjie Lu <kjlu@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Aditya Pakki <pakki001@umn.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpJIHRyaWVkIGFub3RoZXIgc2NyaXB0IGZvciB0aGUgc2VtYW50aWMgcGF0Y2ggbGFu
Z3VhZ2Ugb3V0LgpUaGlzIHNvdXJjZSBjb2RlIGFuYWx5c2lzIGFwcHJvYWNoIHBvaW50cyBvdXQg
dGhhdCB0aGUgaW1wbGVtZW50YXRpb24Kb2YgdGhlIGZ1bmN0aW9uIOKAnGV4eW5vc19pb21tdV9h
ZGRfZGV2aWNl4oCdIGNvbnRhaW5zIHN0aWxsCmFuIHVuY2hlY2tlZCBjYWxsIG9mIHRoZSBmdW5j
dGlvbiDigJxkZXZpY2VfbGlua19hZGTigJ0uCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvaW9tbXUv
ZXh5bm9zLWlvbW11LmM/aWQ9MGUyYWRhYjZjZjI4NWM0MWU4MjViNmM3NGEzYWE2MTMyNGQxMTMy
YyNuMTI1MwpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS40LXJjMi9zb3VyY2Uv
ZHJpdmVycy9pb21tdS9leHlub3MtaW9tbXUuYyNMMTI1MwoKSG93IGRvIHlvdSB0aGluayBhYm91
dCB0byBpbXByb3ZlIGl0PwoKKiBXaGljaCBlcnJvciBjb2RlIHdvdWxkIHlvdSBsaWtlIHRvIHJl
dHVybiBmb3IgYSBmYWlsZWQKICBkZXZpY2UgbGluayBhZGRpdGlvbiBhdCB0aGlzIHBsYWNlPwoK
KiBXaWxsIGl0IGJlIG5lZWRlZCB0byBkZWxldGUgYW55IGxpbmtzIGFzIGV4Y2VwdGlvbiBoYW5k
bGluZz8KClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
