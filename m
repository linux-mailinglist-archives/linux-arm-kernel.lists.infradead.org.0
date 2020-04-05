Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40919EC31
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 16:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PYLHLBAfSmQKypqgxgcUWu+fT7T6QV+jt6ioYz5ntw0=; b=o+OLkZZhgu1bcw
	2ZH62eL4S73E+l8YJ9dJI/Ae65lbxnclRdef+Fb8QgjPSnNQSsl/FRXJHEWtfkzWxdTu6XAaJDApq
	zIlQwrlJLAhE6mr6EMebj7965zozxLgT/DPDN0x/WN7KB1Qiqzvor9JM53k6tpY63UqTegZkp8r/R
	lVIQqU9QQjyqEaoe5dbEBQVOgIsrGRzXZtkbEuHrlh6eWWefw0JdZkYOJ26WF3nfOu2k3IeqCTBX+
	bDNZvoa0b1K+UYySsGkaapU9oVtUiBW/GyKrpPaBR13xMgGc6dGSkoTRZiPVSX95IplqBuWcsdEOK
	fEG/Kf4iMnn7Io6kYRyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6eV-0005M9-Et; Sun, 05 Apr 2020 14:53:35 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6eP-0005Ld-3G; Sun, 05 Apr 2020 14:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586098377;
 bh=IWmjjEUL/Po3O0D2P7+8NcxxH3nBfKDYaqcRWyNJMrM=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=UhA6bMM9VsnLGvDzXw1NLgZl+F/Mqy6qLaOGHYSrdDafRxgzMaB1f2oFjNg7uspat
 yVtLguCZ2al8TR4EBBzNOunaxMaTZLaA0DC3sMG+PWF8kIqq/ONKyiErYhrjZjfYrj
 /I9A5mb9m2/jhis+6ETSn5Gnn8L19QUiFirRnsto=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.131.99.70]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MV4bp-1joQHF43Ab-00YNPH; Sun, 05
 Apr 2020 16:52:57 +0200
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, Felix Fietkau <nbd@nbd.name>,
 Kalle Valo <kvalo@codeaurora.org>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Roy Luo <royluo@google.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Sean Wang <sean.wang@mediatek.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] mt7615: Delete an error message in mt7622_wmac_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <0b236ef3-45cb-b6bf-a3ca-fbe4fa4185da@web.de>
Date: Sun, 5 Apr 2020 16:52:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:4CIYD6qtluiIAwHgLtajt+xvxrAO9x7zNuFZyEBoG683vdNnJZz
 7lXXfuAxfvYwp1UqMehK+qb5gpV36uRLHwGmG6SAddGn0fpO+CunIF/PaCv6KuStdaiUN/e
 VaWbGgxngP5OH6aaZH1pr9aziNft51Nbg/SPM5ui40rJSLKfSmX+x/TnI429y+KESujfooC
 jMw4XdUoRRyGwMthmZ0wA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qCrWWl4L1ok=:ig3rLi2RPTVORwuPEDzpMF
 tvT/rRrmhOqo/lG7v9vjQQIXYJYMVtYkd6I43i6LOZqTuJ+3oO8EguUBJDJY8Xxjz1qKiupVg
 QkxpIw0a2GUAtsJ7PtZWa1X6POnUGxYzJ2eXpVmqMfd7nHMl6f3FhLzwO/RQ8fczVuSjQvrOU
 rRRVFcina73x7uUQCqImfq89OIQVjZgaACTVAw55ITVirr3F1f9aTQK9uTgRkmNJCRkLltfX/
 piyBqKEWW47+FVz4xpmjcT0Q69d2LhziXwcaP6kZU7koJgoepF6KpxzLtS+cZXf9/x4VpOpU8
 cYA7BjtrDSIdeSF2sUwqgMaes5FGwv0Er7rEi8J5ugaEAxRNJdyeXMX/VbIi+nqKiIWVK+mXI
 tgH0XeysJfSz55ytuSTbBA9MsA/UW2/9YaHQiMUogPAlgfFTl5nraUdaDE/991Pyk6Xqp+fGQ
 7wPqQ2Z2XqHBMEQ/rqamysegpUXpQuVwhanS6Clm2NX10JSwcp5PwSEyNGl/eSD0SwPda6peM
 rvXxN/y8ZXxg9KmhnBq0dKvr9EqCalbkVqq4h6iWXbCyEH+0hKh5rHLWggR+nGpjL4eifI1zd
 kYZ777n70jmQWbui71zg1JrF+m0Cff54LilaN10oonVP2eW8mfH88S1YMqQOFyBlyz8eKc/kS
 JHO2IBT+76fAvYzQwzdTBYX8TCb3309GQGpQCiu/q3ZPnPK5ajPq1jeRYnuIPYLpHqGJ1rrKy
 HnHyiK+Rij8ruTjJuRYIgvUFX0bKYLL8EzwEVHRWJBQM6DIwlCfpvu+EjKAkWuggPpz4eCBkr
 est+r+0Gcgv/3a4uENvlXTUnPcG+HrcYBWxKYIO+ci52o240NqMsR+vXZ2mhfBTWoI54H+52o
 AISr4jMnTlX1ZZriGjGDj1vJa8Dgu0EpIkWYVF5Bn8a7TwffnnQE1bJQpST8Dk4U6rmlY4o1A
 mC0xqXSuCP4Hb2FtoNsmOhM96lSLtJCUpPx4lQDpN2sowUX90KCQ3rRxg2mKVQ4jM5st66f3t
 VVizkOTOLejgRhHXywWAanrV8Crbi7RCYMlBKzE+oi18q0qj+MjfmecHUp2H3WJOqgJhpE+UT
 nc/UIddM31JxSgLruad+1FRi5Q/qmk0f4kMZepa5beQgAf30vDpDOE9wq5vc1g5nt5qbhut2S
 sIrH8GA3ALge6s8BTM3VVHokVybE+26NSE43VDwdEWguquvs4X2OG9jJ8T5ea5oPKoK8A97Ns
 TmMz3IWjzBMkW7BGv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_075329_477967_E40BC0B6 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.11 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBTdW4sIDUgQXByIDIwMjAgMTY6NDU6NDggKzAyMDAKClRoZSBmdW5jdGlvbiDigJxwbGF0Zm9y
bV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KVGh1cyBvbWl0IGEgcmVkdW5k
YW50IG1lc3NhZ2UgZm9yIHRoZSBleGNlcHRpb24gaGFuZGxpbmcgaW4gdGhlCmNhbGxpbmcgZnVu
Y3Rpb24uCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29jY2luZWxsZSBz
b2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210
NzYxNS9zb2MuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210
NzYvbXQ3NjE1L3NvYy5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2
MTUvc29jLmMKaW5kZXggNDNhYTQ5NzA2YzY2Li45YWE1MTgzYzdhNTYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L3NvYy5jCisrKyBiL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L3NvYy5jCkBAIC0zNiwxMCArMzYs
OCBAQCBzdGF0aWMgaW50IG10NzYyMl93bWFjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJaW50IGlycTsKCiAJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKLQlp
ZiAoaXJxIDwgMCkgewotCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJGYWlsZWQgdG8gZ2V0IGRldmlj
ZSBJUlFcbiIpOworCWlmIChpcnEgPCAwKQogCQlyZXR1cm4gaXJxOwotCX0KCiAJbWVtX2Jhc2Ug
PSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKIAlpZiAoSVNfRVJSKG1l
bV9iYXNlKSkgewotLQoyLjI2LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
