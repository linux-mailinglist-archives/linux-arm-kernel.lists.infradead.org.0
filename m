Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA1DDBE00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 09:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bU34hII4SFgbR5bhu07hjiebqNH3W1kq0xGyhT+CFzw=; b=N9YrxkpwkJi4Jc
	KJjw5RElQAtYgAfuxBPNkIOnOGP9rTbnooRDMT2svymveCDbiopbh0PUTQnzgZae3hM34XxlvMG1M
	JUHLMNce6YvrKjYulJT7CZOLYbPCkgrrYPtmm3EcFOq6IMjKpP0AK93mEDSIcslTvv3X3sRZDGwCc
	hTu8UbrFoLuxalwLDhYKzE/Xzc0aazvIKrGxOZDvhYOXiMUaf3dQS1i4uDuu+BbiLxKWwpBLxFoQH
	fKJyv7Vl1qpszIpjdzrusK/lJgKHHoMwHfW4wB0V5G9YLxAivVUx8QhEep3wJ9eaRFeKg6X7wUYSD
	JkcDl6YBdYLG2y1QdyeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLMKq-0000Zx-UH; Fri, 18 Oct 2019 07:06:04 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLMKi-0000Za-6H
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 07:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571382352;
 bh=3BZbPmFPPAO7+0U6MgcVQbBO3tWHd1O9cxxtmg54BBM=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=qeM5pkfz4ZaexVF5fWo2ZvIBj7/XrYPBpvK4ngKnFZpYwh2xYi3qgaJfqqBW2ig6w
 v25HuwSUaY3CN7OV5mOwkKvQ16HC37b40o+cdN0q4R2vCOjVYWth9bSkgb8hUgRktB
 V+Vj5OdIFXCyLUCJvdB/10fETYv/treYMugA3lhM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.164.145]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MODW0-1iQsYm1RmG-005Xd9; Fri, 18
 Oct 2019 09:00:16 +0200
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: iommu/rockchip: Checking a device_link_add() call in
 rk_iommu_add_device()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <c4a1fdd2-4383-dd0f-1d4b-f27ab62b383e@web.de>
Date: Fri, 18 Oct 2019 09:00:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:arHMSO7J7Lbq059QWI4APZnKfleWL2ALjonNGJQWyv0XlvhcHFc
 /wt6BcAF87ZKe+PY5KJhaqIyTCp5zWwqP4wNfPgeDGYwZcPWcDeaOi5OnRmqGjaN3nxVnod
 AG8WTaSiFFUmMvvZbkNKGWJlRvd7DZ+pSkyqyxJqIpZWXi4Luv35Uf9BECan/G7+eka2RiN
 RFhpEmGKfod4TxXorqUmQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4/QiMqwegRw=:lKRFzfOOtKdj4VANUtgDRZ
 tvlwojPEDSvnV76T1RVlw/3pa1vQedISTwvj6ew7CITBq7Ygo4UqlVIzVpai9lK6g+elp2HAK
 fEaFjlfDKWu3oqNe9vBb1ZlQqqFB3gjkC9ZNVuCU8ydL/r14ozRAXfLZFHQRFFy9to7pNqALM
 cMkn0yn7CviQU0YjBwWKWuy5jv4coYhB1KsmgGQiF374xPVH+NuvOUuVfAlYu74fuLK9wRv1t
 6Qt6FTLJRiaHsHhrK2viTyJ4DarSQ0HRg5sw0g48M7uLEUQ23IMXMPCkwZYboAM+fwmhfHZCn
 2urtH/XSrrSdQvQQRQoDElBcb/PHFk5Sl7Jo9ZpVvfjB4BqsiDJIFSQaUdmiECtVV6Am2xp0z
 QF39zyg1yNEO3CLhiYZlBjtipWLKCVaX8vBo63NiANNoXSOAM/233VQ3ZCiJJL4ahdeff0N5m
 PWIYfUX1JwdvZtAEI3u2f/sfwRhdVraDSkV46WQb9GSDpkxlR1KZmBReINNkvBmTSEkptgSEn
 MVIuBxmJ8x5SZg2yA9+8vMQytz3zCg4yEGShDBN7aSB2dJ6hIewrjeBIqW+Uh4ANyWO7YbMAV
 tPV/utWiWedmV/ZczDKMIwzAl7hCBXM7LtxwbeNWC2EC0a9qoV8J95LoIcufeENis7QQlMiuq
 wvP3frtcQ3Ah0rNnAJkH+M4EZ/vVFkLbrttsbyppqVU5eO4duxwo4RvA5/l/5phJhNboyID6e
 sWEncCqGRqcjgZzNJKvu5m/nthVM0B0Xm7bMjPB0uj7kU4kBuisrz9ErDutEeharf1Vqt9kBC
 B9HsGSq0imZa/hBJLEdQGETxI4Dvi2wDHWKCnjICsMSVQeCJHBE8moXoPb+qWWH3xGXKDrs/O
 iC765R/xD44R9vS44TNOCee8XLLj2iNO6W5RxxObCkywaKEXgzR/QtQWs2UebWMSKcR8lvNTm
 R4GAaq2hEjmgROzFupREKVK6/v98kEtdAIpH+sHjd98/YM9WSXb6nkaa6xfNNJH6+/pewtTY3
 +rpCVGFKCZCVjEJ1AA/Q/6BgmHtWpALlDohPUX2/26PSuA8wffDTgWlymgG0bpjeScqYIzDdc
 5IAgrpRQeN4KYBHM80w2ANc6lclhFUM39UFBL1X9R2aWVLz6KCuHDIAh78ODboStW652o1Ku6
 v7XJsJqL3L1dzKTVXFw8fixe+WTK2blMgavG+88CyCTUEbBu3NNhliZQ6s9ExcrpdKKeRB6F3
 v3JA2yqRf1rC/N59/evXh4NodNsevrZPgpegYRCnl4TSio40AYF1ldnrjKno=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_000556_524160_46DC8240 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
dGhhdCB0aGUgaW1wbGVtZW50YXRpb24Kb2YgdGhlIGZ1bmN0aW9uIOKAnHJrX2lvbW11X2FkZF9k
ZXZpY2XigJ0gY29udGFpbnMgc3RpbGwKYW4gdW5jaGVja2VkIGNhbGwgb2YgdGhlIGZ1bmN0aW9u
IOKAnGRldmljZV9saW5rX2FkZOKAnS4KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC90cmVlL2RyaXZlcnMvaW9tbXUvcm9j
a2NoaXAtaW9tbXUuYz9pZD0zZWY4NDVkYTNjM2IxODBkZGQzODZlMjI4YWMzMjI4ZDg0YTUyMmQz
I24xMDc1Cmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjQtcmMyL3NvdXJjZS9k
cml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMjTDEwNzEKCkhvdyBkbyB5b3UgdGhpbmsgYWJv
dXQgdG8gaW1wcm92ZSBpdD8KCldoaWNoIGVycm9yIGNvZGUgd291bGQgeW91IGxpa2UgdG8gcmV0
dXJuIGZvciBhIGZhaWxlZApkZXZpY2UgbGluayBhZGRpdGlvbiBhdCB0aGlzIHBsYWNlPwoKUmVn
YXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
