Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EF094D13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HbEgfXtdwx9/6QQW/ofSMeBf4qX/IL1NpC3x+lLM9R8=; b=MkpGUVM31fnarE
	TijoVA/FnSMeRmmBQwuZb69j9TfzigYAwUgGv3ccxoS3dqq9PsTDYc/d+paYlaOWqc+JnQld9i9Jh
	oYepJ0pgMx125/Xy9APMg1gkvnu7MIPaH3vMVZRQwNTmm9bjSmgOTTWV1Zs3q2xlhbvhwPNGJDD7z
	pTZb6x+u3B2suGS+yX80ov/bVJ+c7YUa4Heu54Sf1fEU/xe8vvBXMQ4am7ej+kXxaEUAzQmlRdsef
	7GsEd0E3pRUCmf/5vQzTDB7xUg6DL/sAMbay3QPh5lDryU3GTFg1TSMJBD+243L3OyEp+tYH8e7sH
	OqbbP5poSdgrnvUOGN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmXH-0005hF-U8; Mon, 19 Aug 2019 18:37:44 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmWn-0005g7-Qx
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566239822;
 bh=1xCul6zwPmZZRQ4Hk0O8eMuvQRr/ezY6a8EcKhQqNwA=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=YRXAzjmuiTtjYs226IumoiPxsySwotZK2OAVcxl8Bj4egyVFpEK3UyzIIokOGcDLV
 lcoKmd2saAgp1zyQ6onkTFjbq+MojLreY93hfHadTT18xeItpaDLnYLyHaVHbEa+8d
 HVmWa65LMS1Hf3YZfU7tXb5AH+kWFzHZZ7SGyTFY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M7pI0-1iCnAj46Bk-00vNFT; Mon, 19
 Aug 2019 20:37:02 +0200
To: Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>
From: Stefan Wahren <wahrenst@gmx.net>
Subject: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
Message-ID: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
Date: Mon, 19 Aug 2019 20:37:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:PXSezvioHjOWM3FW5GhhO7bssXXU1pX4rHzuycJ4nabtUC1dPE1
 9yhxVGcmplCo15uXJUkoTo4q9ybWrK42A0QnQAhD6cBma6/a8mAaETBFkI5uCGC2/y42IeP
 tsMzID6cUVzvoJPmOHz+lco3L4zqyDK73uhBJlnx5QIdkKS/hCLo4IAz+PzIGsaTxejucNH
 Q2PuHjGVYwbWya0B6tp/A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ETOfyFohsCY=:xO2hAum5Mr5bkOoM1fi7Gv
 UONzQ74Wh/0lhBwosxbGx3v100p9dJTCd6ExSca8OSihTP2lZJ0hvKfhLJKYH7yo4fpnRiU08
 BemCoqmI/nuvdg9CjzMbR5qK8EwP5tmNbiHLqjiotKhnkGxJQ5VMuQnmuUn+dHeuzcaqziQub
 4es8KpzkMZeU9EIfFGdsvDtWFNfgjK9KEd4k8zvBBujiXHm6f+HXCbVZ4vOW7xwkj9c7+XM9m
 XEOHyRDY/I/aQUNq9OSlP4gdR9rd/c29gqiDtty6iimMht2OdAlEFQxtZ6ocq6T5Kyf6X8l9g
 oFs+Zayo+y0Y9mOLdQw3ltOU6IVYTEQ7f52DCdKlulNZRImDEIPHMN+zoDevMnBNspppjv9p/
 So3I5NJjkkm9sVN8ogK6wJlFgZpiv8t2r7/tWrgm7BUmWriNEOcSNkhLv5Lh91yBzyP/fMqFW
 yZJYyITllPfzaohnx5Hq33LbrTRZerCzv4g1+k0X/8anRtv/lMeEW1tqsNA7WfA8ss2JRwyc5
 hD7dehqTiO9qDlywbTyNnU8JLaTo2/OZK0zqpCs7n2cm1FwdaRmHVhl+q9lSUTYwUPRZjpVk8
 sct1MtYJ2xI7TUY3Np7aaSpLOvwtSqR+714+Tebq9AVGHNmbY8pmoCRfoiOaN9Xu2b9UkIo3Z
 UT6yTjfnXhEGiMnuymomKnZ2+w6Aaok64L8C/2f1u41TMQQIaDk9CMJb/cQqs0KGlyGPUaxFK
 tsD9suj7hfY/WC6u4/3SpyplG4IiY/QoZuGSPwndPpRFwe0NaoRM9hRx/Y8JxE0Q9pa5LdX7L
 8BJoAg6T07CzMkwZ6DwDKYneDLpM99fnoIhk73b+QP8R5CmWQoVGgoHHAG2CMZ1Fn1eoPAGHz
 h1w9AXZb16HHdBP0jjsIr60Do5wDV/ZO5kRq0BSCRHpgsqh5qS7Lpqr/QWILeTL5P9l1V1iB+
 DVwkZsUY/Baj9PC+Q+Ia/q9rVSl2CG+itr6ByfUeBzNyO1OogC197k68uE7i6cC/xESj7TY7d
 or6SbJseWGZv0+ftyei2S5XdX9gKgZdwVvm2R0U3fh0Vlbx0x4REFAF2NNc72vXlphjfTMtqI
 D6Bl9M2NjL4aXYbCXKW/5NpAQCd2XUiS7c4xy60TtszOUWRSdl0Abg2EUk7jOamujLQC5NgNg
 ++Ki0WRy43wegr+zbbjnqZUlydqIU0lHUf8NHJoXzBJwZsGA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_113714_335907_0EB839C8 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQoNCmkgdHJpZWQgdG8gY3Jvc3MgY29tcGlsZSBhcm0vbXVsdGlfdjdfZGVmY29uZmlnIHdp
dGggQ09ORklHX1hFTj15IHdpdGgNCkxpbnV4IDUuMy1yYzUgYW5kIGknbSBnZXR0aW5nIHRoaXM6
DQoNCmFyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6IEluIGZ1bmN0aW9uIOKAmGFyY2hfc2V0dXBf
ZG1hX29wc+KAmToNCmFyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6MjM0Nzo1OiBlcnJvcjog4oCY
c3RydWN0IGRldmljZeKAmSBoYXMgbm8gbWVtYmVyDQpuYW1lZCDigJhkbWFfY29oZXJlbnTigJkN
CsKgIGRldi0+ZG1hX2NvaGVyZW50ID0gY29oZXJlbnQ7DQrCoMKgwqDCoCBefg0KYXJjaC9hcm0v
bW0vZG1hLW1hcHBpbmcuYzogQXQgdG9wIGxldmVsOg0KYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcu
YzoyMzg1OjY6IGVycm9yOiByZWRlZmluaXRpb24gb2YNCuKAmGFyY2hfc3luY19kbWFfZm9yX2Rl
dmljZeKAmQ0KwqB2b2lkIGFyY2hfc3luY19kbWFfZm9yX2RldmljZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHBoeXNfYWRkcl90IHBhZGRyLA0KwqDCoMKgwqDCoCBefn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn4NCkluIGZpbGUgaW5jbHVkZWQgZnJvbSBhcmNoL2FybS9tbS9kbWEtbWFwcGluZy5jOjE4OjA6
DQouL2luY2x1ZGUvbGludXgvZG1hLW5vbmNvaGVyZW50Lmg6Njc6MjA6IG5vdGU6IHByZXZpb3Vz
IGRlZmluaXRpb24gb2YNCuKAmGFyY2hfc3luY19kbWFfZm9yX2RldmljZeKAmSB3YXMgaGVyZQ0K
wqBzdGF0aWMgaW5saW5lIHZvaWQgYXJjaF9zeW5jX2RtYV9mb3JfZGV2aWNlKHN0cnVjdCBkZXZp
Y2UgKmRldiwNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fg0KYXJjaC9hcm0vbW0vZG1hLW1hcHBpbmcuYzoyMzkyOjY6IGVycm9y
OiByZWRlZmluaXRpb24gb2YNCuKAmGFyY2hfc3luY19kbWFfZm9yX2NwdeKAmQ0KwqB2b2lkIGFy
Y2hfc3luY19kbWFfZm9yX2NwdShzdHJ1Y3QgZGV2aWNlICpkZXYsIHBoeXNfYWRkcl90IHBhZGRy
LA0KwqDCoMKgwqDCoCBefn5+fn5+fn5+fn5+fn5+fn5+fn4NCkluIGZpbGUgaW5jbHVkZWQgZnJv
bSBhcmNoL2FybS9tbS9kbWEtbWFwcGluZy5jOjE4OjA6DQouL2luY2x1ZGUvbGludXgvZG1hLW5v
bmNvaGVyZW50Lmg6Nzc6MjA6IG5vdGU6IHByZXZpb3VzIGRlZmluaXRpb24gb2YNCuKAmGFyY2hf
c3luY19kbWFfZm9yX2NwdeKAmSB3YXMgaGVyZQ0KwqBzdGF0aWMgaW5saW5lIHZvaWQgYXJjaF9z
eW5jX2RtYV9mb3JfY3B1KHN0cnVjdCBkZXZpY2UgKmRldiwNCsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIC4vYXJjaC9hcm0vaW5jbHVkZS9hc20vcGFnZS5oOjE0OTowLA0KwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSAuL2FyY2gvYXJtL2luY2x1ZGUvYXNtL3RocmVhZF9p
bmZvLmg6MTQsDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vaW5jbHVk
ZS9saW51eC90aHJlYWRfaW5mby5oOjM4LA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVyaWMvcHJlZW1wdC5oOjUsDQrCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBmcm9tIC4vYXJjaC9hcm0vaW5jbHVkZS9nZW5lcmF0ZWQvYXNt
L3ByZWVtcHQuaDoxLA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSAuL2lu
Y2x1ZGUvbGludXgvcHJlZW1wdC5oOjc4LA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZnJvbSAuL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaDo1MSwNCsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3NlcWxvY2suaDozNiwNCsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3RpbWUuaDo2
LA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSAuL2luY2x1ZGUvbGludXgv
c3RhdC5oOjE5LA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJvbSAuL2luY2x1
ZGUvbGludXgvbW9kdWxlLmg6MTAsDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBm
cm9tIGFyY2gvYXJtL21tL2RtYS1tYXBwaW5nLmM6OToNCg0KVGhlcmUgaXMgbm8gYnVpbGQgaXNz
dWUgd2l0aCBMaW51eCA1LjIsIHNvIHRoaXMgbXVzdCBiZSBpbnRyb2R1Y2VkIHdpdGgNCjUuMy1y
Yy4gSSBob3BlIHlvdSBoYXZlIGEgY2x1ZSB3aXRob3V0IGJpc2VjdGluZyB0aGlzLg0KDQpSZWdh
cmRzDQpTdGVmYW4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
