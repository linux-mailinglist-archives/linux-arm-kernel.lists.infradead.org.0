Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F1D116B6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fJJ3tg4TZLBdzlLeXkwF3vjLHatrk0NyQ1p3NABOC6Y=; b=OaZMMVPpglV/lB
	bfzXKhmJjfrBQsNsEu3jkGtktx+R9C0oRngFbXDxusKcDw0h8XKsbT+nhV+mfaw5w1jJKj4nTjvrY
	JmsaWLGvdr6t4kj3QFQH9G28GF+/uUnfGqitwzpQWN+JuvR8EG7Yb4Hjo5Taijud7zNBYKTH5fwye
	kKRy3DJUJiDJ6G3UO0JG2T3XEtm4tT8p+uW9As7TnK02Xmw8LnO50PZ95LbRC3myMqv1G81F8t2j6
	LyF+nppSAxeHrflm4lQTNULtt1BrYkM/uU+mbNyd8wgN2crQRdILBMQKQpx2yaDIqMnSo9rREvjxy
	vB7+w1btB6AeAU1iYqBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGcq-0003Hr-DQ; Mon, 09 Dec 2019 10:50:48 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGcd-0003FH-Dy
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:50:37 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191209105031euoutp01881387b2deba2c5c7c3ea36fe3de9355~erlxsU-HW0195201952euoutp01U
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Dec 2019 10:50:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191209105031euoutp01881387b2deba2c5c7c3ea36fe3de9355~erlxsU-HW0195201952euoutp01U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575888631;
 bh=tu/3vAqg2eZBipuQKDMS6XZM950MbyTsGIPOEwI9Cxc=;
 h=From:To:Cc:Subject:Date:References:From;
 b=WsXwm7n9TRXZfiiPfqvIqBLdcvV4E+LkkamsKUL15QNtL1ABO1zpXukwd46n8ZQ71
 CqxZu0sLRBKnAPn2ys58BN6H4tPOz0J64Gi/bGeOI/jPMy0W5/BPUid13+8mi+1DhE
 N1bqjEMSOw7lkOlWWblxIrfqCRwWodcxtExHKuoE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191209105031eucas1p27d021a0c350d9539165b612d26c6bce6~erlxazhQi1399213992eucas1p2J;
 Mon,  9 Dec 2019 10:50:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A2.46.61286.7F62EED5; Mon,  9
 Dec 2019 10:50:31 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105030eucas1p11e28297118da5a1d9f3a8c955584a4bf~erlxDvwK00759507595eucas1p15;
 Mon,  9 Dec 2019 10:50:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191209105030eusmtrp1a61aad405c47222845290cfa811b9435~erlxC9M7D2125621256eusmtrp1P;
 Mon,  9 Dec 2019 10:50:30 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-2a-5dee26f7d5a7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4C.C7.07950.6F62EED5; Mon,  9
 Dec 2019 10:50:30 +0000 (GMT)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191209105030eusmtip19583cc7dad07d17a1c8d1aa87ffc5a04~erlwRNiPp2957929579eusmtip1l;
 Mon,  9 Dec 2019 10:50:30 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v3 0/4] devfreq: Clean up exynos-bus driver
Date: Mon,  9 Dec 2019 11:48:58 +0100
Message-Id: <20191209104902.11904-1-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj229nZjqvJ5xR8UbOYZBdIk4q+SCK70H4G3dZl1cyDSU5lp+kM
 ymVpJt5aRLYiKi2XXVzLRAeZLm2p2VDJslgK2sVb5VTsXm7HLv+e73mf53kvfAwle0wHM4nJ
 B1ltsjpJLpIIqx99cS6ajPigWvykHpOei9mI3CmppMnz8Xc0MfYUC8kldwlNivqGKOJ0WsSk
 LWtYTMyuUZpY+7po0mm7ICJjBY2IlDjrBORWo0tMXh01i0jJ6QHRaqywVpwUKe6WZSrufKgR
 KAqrKpBizBq2kd4hiYlnkxLTWG3Uqr2S/S9HZ6UOztB3WX4gA3L75iGGAbwUPg8G5yFfRobN
 CPrGSR6STOFxBN2vDRT/GEPgGO4Ue1Qew/t6B80XyhG420rFfy32ZzdFHpUIx4LxTK+3EIiz
 EbQ7u71ZFG4RwPucLNqjCsArweQ2CT1YiOfCyKtJr1uKV0B9dhXi+82GG5Z6iuf9oflcv1dP
 TfHH7p33hgJuEUNBwzcBb1gHFb0nKR4HwKCjanrwUGg9nS/kMQdvanto3mxAYL3WOG1YCQ8d
 7bTnNBReAJW2KJ6OhVFTLcVfzA9ejPjzM/iBsfrsNC2F3BwZD+VgO+fHGwGybnRNZyvgU/VP
 b7YMq6C5SVmM5pj+28v0316mfxNcQlQFCmJ1nCaB5aKT2fRITq3hdMkJkftSNFY09b9afzrc
 NWiiI86OMIPkM6X6mBGVjFancRkaOwKGkgdKy04NqmTSeHXGIVabskerS2I5OwphhPIg6ZIr
 AyoZTlAfZA+wbCqr/VMVML7BBqQ84V+YGal5e7zp6+21L22ynVtU5stHIjY1apThFtdTUXXc
 +fuha2LzR+Zfab5qOPz9rM+KlN0q/UR6uMJnlzDs9YLSUOM8XBZSdOZIqq5ucxQbXWTXbxij
 K28NlePrDyY6+hXDDVlblcvvJbiWNa3PfdS3rWG0cFUrDlm/vfhX5ke5kNuvjl5IaTn1bzLn
 xVxbAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsVy+t/xu7rf1N7FGqx5bGJxf14ro8XGGetZ
 La5/ec5qMen+BBaLBZ9msFr0P37NbHH+/AZ2i7NNb9gtVtz9yGqx6fE1VovLu+awWXzuPcJo
 MeP8PiaLtUfuslvcblzBZjFj8ks2BwGPTas62Tw2L6n32PhuB5NH35ZVjB6fN8kFsEbp2RTl
 l5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZdz6KFvwirvi
 2oa/jA2Mnzi7GDk5JARMJF4cOM7axcjFISSwlFFi+pIXzBAJCYmP62+wQtjCEn+udbFBFH1i
 lGictBWsiE3AUWLS1AfsIAkRgU5GifXLpjOBOMwCN5gkmra8YwGpEhawlpj1aRaYzSKgKvH2
 9nc2EJtXwFLiQOsWRogV8hKrNxxghogLSpyc+QSongNokLrE+nlCIGFmoJLmrbOZJzDyz0JS
 NQuhahaSqgWMzKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECY23bsZ9bdjB2vQs+xCjAwajE
 w6tg9TZWiDWxrLgy9xCjBAezkgjvkomvYoV4UxIrq1KL8uOLSnNSiw8xmgK9MJFZSjQ5H5gG
 8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MGoufVIe1Mc44+/s
 xwq6U2P5efQ/r/r9Pur8kTJdHqmOjJJ9cRaP1n39xfzS4UXEczcXvt0394syLO5K76o9x7n/
 zHlnXdnPicb+fYn32yQs1HN4Tz0zUng/U0RKdrqA1/eEryuq6vM2+u9I0RNPYDv/Y0p18nXF
 rTMWGutF67CW/3soGhhvrMRSnJFoqMVcVJwIAFyRxV7LAgAA
X-CMS-MailID: 20191209105030eucas1p11e28297118da5a1d9f3a8c955584a4bf
X-Msg-Generator: CA
X-RootMTR: 20191209105030eucas1p11e28297118da5a1d9f3a8c955584a4bf
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191209105030eucas1p11e28297118da5a1d9f3a8c955584a4bf
References: <CGME20191209105030eucas1p11e28297118da5a1d9f3a8c955584a4bf@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_025035_677724_174BD795 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: b.zolnierkie@samsung.com, k.konieczny@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 kgene@kernel.org, myungjoo.ham@samsung.com, leonard.crestez@nxp.com,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBwYXRjaHNldCBpbmNvcnBvcmF0ZXMgdGhlIGZpcnN0IGZvdXIgcGF0Y2hl
cyBmcm9tIGEgYmlnZ2VyClJGQ1sxXS4gVGhlIHB1cnBvc2Ugb2YgdGhlc2UgcGF0Y2hlcyBpcyB0
byBpbXByb3ZlIHJlYWRhYmlsaXR5IG9mIHRoZSBjb2RlLAp3aXRoIHRoZSBtYWluIGZvY3VzIG9u
IHRoZSBleHlub3NfYnVzX3Byb2JlKCkgZnVuY3Rpb24uCgpUaGUgb3JpZ2luYWwgZXh5bm9zX2J1
c19wcm9iZSgpIGZ1bmN0aW9uIGhhcyAxMyBsb2NhbCB2YXJpYWJsZXMsIG92ZXIgMTQwCmxpbmVz
IG9mIGNvZGUsIGFuZCBtdWx0aXBsZSBnb3RvIHN0YXRlbWVudHMuIFBhdGNoZXMgMDEgYW5kIDAy
IGZyb20gdGhpcwpzZXJpZXMgZXh0cmFjdCB0d28gbXV0dWFsbHkgZXhjbHVzaXZlIGNvZGUgcGF0
aHMgaW50byBzZXBhcmF0ZSBmdW5jdGlvbnMsCmV4eW5vc19idXNfcHJvZmlsZV9pbml0W19wYXNz
aXZlXSgpLiBGdXJ0aGVybW9yZSwgcGF0Y2ggMDMgcmVkdWNlcyB0aGUKbnVtYmVyIG9mIGdvdG8g
c3RhdGVtZW50cyBieSBpbnRyb2R1Y2luZyBhbiBpZi1lbHNlIGNvbnN0cnVjdC4KClRoZSBsYXN0
IHBhdGNoIGFkZHMgb3RoZXIgbWlub3IgaW1wcm92ZW1lbnRzLCBpbmNsdWRpbmcgY2xlYW5pbmcg
dXAgaGVhZGVyCmluY2x1ZGVzLCB2YXJpYWJsZXMsIGFuZCByZXR1cm4gcGF0aHMuIFRoaXMgYWxz
byBhcHBsaWVzIHRvIGZ1bmN0aW9ucwppbnRyb2R1Y2VkIGJ5IHBhdGNoZXMgMDEgJiAwMiAtLSB0
byBhdm9pZCBtb3ZpbmcgYW5kIGNoYW5naW5nIGNvZGUgaW4gdGhlCnNhbWUgcGF0Y2guCgotLS0K
Q2hhbmdlcyBzaW5jZSBSRkN2MlsxXSAocGF0Y2hlcyAwMS4uMDQpOgoqIFJlYmFzZSBvbiBuZXh0
LTIwMTkxMjA5LgoqIERyb3Agc29tZSB1bm5lY2Vzc2FyeSBjaGFuZ2VzLCBjZi4gWzJdLgoKLS0t
CkFydHVyIMWad2lnb8WEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKU2Ftc3VuZyBFbGVj
dHJvbmljcwoKLS0tClJlZmVyZW5jZXM6ClsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L2NvdmVyLzExMTUyNTk1LwpbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8x
MTE1MjYzNy8KCkFydHVyIMWad2lnb8WEICg0KToKICBkZXZmcmVxOiBleHlub3MtYnVzOiBFeHRy
YWN0IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KCkKICBkZXZmcmVxOiBleHlub3MtYnVzOiBFeHRy
YWN0IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoKQogIGRldmZyZXE6IGV4eW5vcy1i
dXM6IENoYW5nZSBnb3RvLWJhc2VkIGxvZ2ljIHRvIGlmLWVsc2UgbG9naWMKICBkZXZmcmVxOiBl
eHlub3MtYnVzOiBDbGVhbiB1cCBjb2RlCgogZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8
IDE1NiArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDg0IGluc2VydGlvbnMoKyksIDcyIGRlbGV0aW9ucygtKQoKLS0KMi4xNy4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
