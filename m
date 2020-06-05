Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9611EF520
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGLVw+iNye8Ctnsnn3keZ3K9oSTaC+huaOayTygWWuw=; b=UIAxcQOz/k+yme
	CV7XuqPUO3113E91h+eaxd2LqhtcY1aAL75xH2zU3JrXWn8JMJUnvG/ZxREykCHL9y7rMpxPEb+SF
	HN89ZGm101A8J75Pd7eq2q3BNpg8E33KK+lLwO3p19l7hQoRCeHDYyRf/tB4ML+pw5uBf2V0Ysy9V
	eHL3+e8+t4l4F9l9q9v0ZvYMsQX/H9fNpwUjEjBH99e0MnY4lW5FMJqJx2D7PT/83oSgfED1SilzB
	zxZoUNLaUx9RhiYf5DZwUsPViRNRfoOsMQZpApNsRonlK5XSSZOhfJtQaDeSLv6gQv6by8FjhVktW
	RGiIkIeN2/xAB9lL/MoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9OI-0006nB-Bd; Fri, 05 Jun 2020 10:15:58 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9OB-0006mZ-0S
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:15:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1591352135;
 bh=yywBzy7IlBWWqUGaVS7rm8tbU8bXI8UdPAJ+F0kmUj4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Vvu0MyIu6xVTOYAe9zDtUv+kec47dbOdiXep7f6LIpmGNTONfLEUBZLtkZ/yAFbCx
 OH12vfyMef45sVDuIPcZV/dtrnqJOf/jNswCSefsQq6z80+L4jqU99hkl+bSRd7A1A
 O6iaJfHctkj4G2yBbubPfswIL620GH/jOKdX/vwI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.131.102.114]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MQ6KJ-1jcSI93dlj-005JbL; Fri, 05
 Jun 2020 12:15:35 +0200
Subject: Re: ARM: imx6: add missing put_device() call in imx6q_suspend_init()
To: Yu Kuai <yukuai3@huawei.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
References: <cf810c93-297c-c02c-9bba-8c3d097b8e31@web.de>
 <2ab2cc9f-c720-75ca-e20c-0e4236ff45fd@huawei.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <1542979d-f7f6-bcf1-53c3-22b7c076ddc7@web.de>
Date: Fri, 5 Jun 2020 12:15:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <2ab2cc9f-c720-75ca-e20c-0e4236ff45fd@huawei.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:0FVJtvCytfg6Zx3l+WMfAdoOjp+2WiI53dYtZZSuTjDfkVgvGI4
 f16OD0Rbg5e4QGrXvwyxZOksKyvXRxLGebS4sB223RpVz/IM5SZGbr242LpeX1dQYoQxNsq
 ldsHC5egVY+Q7Su+J17N2OZERoj9eLOJu0KeY1YuijVKDWA/XczIU+3s4PtmKVI81ZD92ip
 xgLI24aShTvvJpgcmrmwQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gWzO+9+zM+4=:5ZtYMkGn6cTqu4NEjAigx4
 IQALEt6wTL5Mxz/Pe2SgLW3S1E5boEY5R7ji7YfeJlOyYBzOwZsRwULAf0EWPuvQXY+5QErSd
 1FbJ/EvJKsdQ57Pz0eHu6MyerGB2lgQNLpZGyhMWbEwPb970Lj/W8hNAzXqi9kegYJURxuwPi
 6xzQ/Tu12l9JmIoUyk/xhuAliXZaYObVp3jur+/BwEjwR3Y9TSv9MTv70OJWAXXMT0bTawjsQ
 0YgJgL3Sf9qVPjz+LgXn3h/7Y/km7oEElbxo0FxsvgBM8m5lwC0OEeC7d3ruhd3rpkt4YFVOu
 czjKdmnSinemmP5vqcppklpzYJQWkxuql1EOne8yk1jFvtSNgn7+PG7xWdMAg4GNrPppuqmkr
 i8u9PRCeH7vh9ihm3uJYvs25EauneuMIUzv7qJMxvHOkaqILm4Gg5EGbHOBDou3OnbTEpWMi4
 YXaYhpTfih/exSVKRlaCD23tV4yiLvD8BxFC8tDM1BBKgt0QgpCm2jppwpxKyKIAV3o0ccuw/
 LSVtHIqBdux5BxpZ7BUsPd8POr7CbE0UQgQOZECi289FNi9/p10YyQOQE02DJP67dC8jnxco8
 1lgf4rTZygu0DNiNe9Mu4G3U16P0kkXjEqVTi1cZCSh9Q3dyrsgIHVvp2p06yo27K5Ow5fEl0
 YJf3P2uhvABCoK6tQdCHSNL8Nj+1pBd9NthikLtVZF6wZRTfGYMmfdFGbK1Y91nZ6OSLYoiTV
 Iu8nZeSJdyiTupQsQ/Iop08ToOGRi1bWrob57unM0qkqsDGZcI809R4fI2/Ot5H++HdNeGyaO
 3WyJxMOmbMpwpglwIzWnXM0ZOLBazGGK386cEMa9X8tvi9GFHNw+bcOpH4Sqe0qvUAGRMFicI
 WkrvBR8hnm+1K/yol1PFY+N7sU4dMOvW6MPI4cQEmSWt/e0wQpaInYClvvh6p2OZ3VISbFnTZ
 ukLptyZDk8wL/impQAQPiIwgrr9lIldhLMnIwmCsNyqeCc/GNjHECxXXhMWKQlFOMYm8Tzdf5
 KITVoYcyrp8z6+y6DOJvHrON8dMdtJsCVY17iQlVB0/sCJCRKUIteTFSlCe6zRtNLfK29Lw/R
 /l4GKwmhqO1Hb/zQh0JLdneRvs+pGLL4k3idJ9XAFf3pjH3yufp4VkZjhUxt1WXDRDec0Qwjz
 0ReCFNFuMFmE1YCw6Gk7J3TH9Y3FOhJQIGSLCjIFzAG8/gfmII2YTNnw3H2ubUdvkZJpZCLXu
 nVsBQ1d2agAzE57Yl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_031551_468981_BFC32A77 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Anson Huang <Anson.Huang@nxp.com>, Yi Zhang <yi.zhang@huawei.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel-janitors@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4gRG8geW91IGZpbmQgYSBwcmV2aW91cyB1cGRhdGUgc3VnZ2VzdGlvbiB1c2VmdWw/Cj4+Cj4+
IEFSTTogaW14NjogQWRkIG1pc3NpbmcgcHV0X2RldmljZSgpIGNhbGwgaW4gaW14NnFfc3VzcGVu
ZF9pbml0KCkKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC81YWNk
NzMwOC1mNmUxLTRiMWUtYzc0NC1iYjJlNWZkY2ExYmVAd2ViLmRlLwo+PiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTE1MTE1OC8KPj4gaHR0cHM6Ly9sa21sLm9yZy9s
a21sLzIwMTkvMTEvOS8xMjUK4oCmCj4gSXQgaXMgdXNlZnVsIGluZGVlZC4KClRoYW5rcyBmb3Ig
eW91ciBwb3NpdGl2ZSBmZWVkYmFjay4KCgo+IEFsdGhvdWdoIEkgZGlkbid0IHJ1biBjb2NjaSBz
Y3JpcHQsIHNpbmNlIGl0IGNhbiBwcm9kdWNlIHRvbyBtYW55IGZhbHNlIHJlc3VsdAo+IHdoaWNo
IGlzIGhhcmQgdG8gZmlsdGVyIG91dC4KCldvdWxkIHlvdSBsaWtlIHRvIGNsYXJpZnkgYW55IGNv
cnJlc3BvbmRpbmcgc29mdHdhcmUgYW5hbHlzaXMgb3B0aW9ucz8KCgo+IEJUVywgSSBzZWUgeW91
IGhhdmVyIGRvbmUgdGhlIHdvcmsgYWxyZWFkeSwgSSBndWVzcyBJIHdvbid0IHNlbmQgYW55IHBh
dGNoZXMKPiByZWxhdGVkIHRvICdtaXNzaW5nIHB1dF9kZXZpY2UgYWZ0ZXIgb2ZfZmluZF9kZXZp
Y2VfYnlfbm9kZSgpJy4KCllvdSBtYXkgY29udGludWUgYWxzbyB3aXRoIGNvbnRyaWJ1dGlvbnMg
aW4gc3VjaCBhIGRpcmVjdGlvbi4KSSB3b3VsZCBsaWtlIHRvIHBvaW50IG91dCB0aGF0IG90aGVy
IGRldmVsb3BlcnMgb2NjYXNpb25hbGx5IGdvdCBpbnRvIHRoZSBtb29kCnRvIGltcHJvdmUgaW1w
bGVtZW50YXRpb24gZGV0YWlscyBpbiBzaW1pbGFyIHdheXMgYWxyZWFkeS4KCgo+IEFueSBpZGVh
IHdoeSB0aGVzZSBwYXRoZXMgZGlkbid0IGdldCBhcHBsaWVkID8KCkkgY2FuIG1ha2UgYXNzdW1w
dGlvbnMgYWJvdXQgdGhlIHJlYXNvbnMgZm9yIHRoZSBwb3NzaWJseSBxdWVzdGlvbmFibGUgaGFu
ZGxpbmcKb2Ygc3VjaCBwYXRjaGVzLgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
