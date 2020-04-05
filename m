Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C42719EB6C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 15:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cwiJ5XaS6h+wxy6sA71RyVbpKQML1RUCtpHrFLkzJPw=; b=lnQP6UfQsg2dRA
	k2HHIP0p7wXA/n4KXq4VfcOXmeEVFXwOZfBzYBqFmzTukPnokpbwlC2PyC6+QxU7IRZ7EC3v1P7xp
	6Lmu6qsxwujsk+iqBLhOFNcZq0s1m4BfxL0FwsogRKzikFWOEEVBqD9RZba174HkuWFXwqX95N+7F
	8xOrTiDekYGH/FCom1xMmxnE9gVM91rLEnJ6Dkxru0dJ0/qXIJsgTPNGAPaAkXbyMoHLRRqXEr+/Z
	krLcs4JnV7J7XIcrZCFgDpQvNheGSahnHPLfhZmrOi2qqhtlWOAerRndz7DIIPeJ2FfoL6c7pwzRQ
	F9xvkhRVhN6wDLsLleyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL58T-0007bZ-Db; Sun, 05 Apr 2020 13:16:25 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL58L-0007aw-Mj
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 13:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586092563;
 bh=9Beys4kLGOHbOuw0x7kmogurLmOxK4u9ccKHN7On/LY=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=jbU7pKNlZdCR/e8SenKEvNHIcmbpJtjH0wwg0Db+wX1AUGv01vyxypSOEyc7MJuFr
 C6tmI2t+x2ki4miGaDX3zV8HUNe7/aOH0m4ijLoLVVTOcAFFG5dSs4LCdNM4iyVzW7
 +Zkuz+zV4WbUtYfMPddd1FxuDf8bjpGUMTzwJNKg=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.131.99.70]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LuuS5-1jBpz82XxZ-0105x8; Sun, 05
 Apr 2020 15:16:03 +0200
To: linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jassisinghbrar@gmail.com>, Michal Simek <michal.simek@xilinx.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] mailbox: ZynqMP IPI: Delete an error message in
 zynqmp_ipi_probe()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <28699a47-7770-7ce2-69fa-183a98c368b8@web.de>
Date: Sun, 5 Apr 2020 15:16:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:9bEHM/dgn/XicEMxkKuGFgTWMWUqZgIMLkq6m6qILSTAZyOhJ5C
 v1c/BacuI9E7uiSVrsYNk9qn3z6JCxrbiLbbfiDbHjVjpdycBuZXSfgSlh/fuUjEnGfM5lr
 hIQeeDJEm3aAZx7E29isykA//HZigcgN6kAivDarCI5lWgDHdzqnsjUuEvpOO8IW20Jg9tL
 ygFtYt8u2xJDBDcR5f1UQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GTgbxcYz7TQ=:3vtLeWCUmC3Y4RRx3zm3pc
 LUIokDr7BRO9prD12NDEn/ibt2c3DG/3SWp4WB6mbcIQHTCUP4iaEy6c5FOglOwj+tMt+nLZp
 ACEvcdFQEhPQrrU7VAO/BTMwNBn4pXcZLbxTavbNRRaYWPzu8Pxda9B+4MHD9Kik6gy+wDtlO
 0lpXxCzLS9ckBIQI+roQ2/63fewZTlet60c+vWROP99GVHoCKu3oEipclQnSxYp8qiGd4sxKs
 BUAuEeSe67WQx+HhQy7tA4AgqJ1wMRRq3rGsrGXjqp0L1UJShIRU7+qQ+Gh8fcXecz4wGr5qJ
 YzrSLkMQjIk+UI3LhCbjQqxPdUo0BOAUJ6wZuv5QCqUC06XOLBeiMN/bxvOaBXGJYZ3dxZcHL
 kA3BEUqfxwQF8t2qewvCdFsDGbNTzRSWTR2gucTnUlCRlRXrLkUrCcus6amdTJalCWvnMeS3V
 yxzxs4qFRtSef7jjr+V0mhDsWoMvkBnSPDGRDxspeSsftyj68dxXH8cWLCMiX48mR24dC8age
 X7GZAS4jYBvGuDpVHBhzZ8UslKU9NA9GqmeZqJpq0kc8wYBI5CGGNqtUIxTsRYPN9sA9yrjN2
 f0BMG2FHWhu0FjyCH8TDiIPiZFKyN2/KVTJsTL+zZrV8aJxPJJA/sVX/CCxetTN7Gd9A3m7eR
 YLbnvm7JqrtVSpJDQfceP7zDr8DKoQ3RBp8n4DtWa0VkBuvWZJki9bOHu3Juxou4Ii0ghwQEZ
 GJXKKJcl8m5zh2dvto18f9SdeRAUgbpx11z9o+YBeGJRlSYZgB6s0Nd6iJNhiMNx6QmB4EY+s
 mSyPBpTjjB435mrfMPGAVv9zE0y/sVDDY1BY6cCmsI6pbiTkUVL8UTVsAQkPdWAvol0Pi8eiH
 M4yKLz51Xc5MGn8NRgvQ0kpTWrfhb4GCy+BM9ubTmWOP8kAaGQDbo+uIB5sgB1yMgrb2FFPfn
 1qYCtSgSQaKVI3i6qkRmlGIHbyTIfJkDltCnkCAevmdJ/UQ20ibTjkKY/lIRTJL6tsU4d2qNi
 n7307Huiy59Do4igRnUpZK2ciZB8u+7FWUfmWEP2FUEHyG+TKbV19GoWM4G3aWmIeKqKZr+Ed
 kLDOPCiOFb/DxkXExhtajL2gbvIMUVhyxbN0nEmpKJMMZAjB6YneIJIHx52SrJqgPqDxTRw7h
 5R5bLyCkOsZeN13phyk6T4/k/bzDwku0pTuIXkF9bR00gocgEcgnoMSjMp9qD2/Jk+sC7lWsg
 3wxI0/QCC+ZfqWkNg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_061618_039289_D2136951 
X-CRM114-Status: GOOD (  11.37  )
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
OiBTdW4sIDUgQXByIDIwMjAgMTU6MTA6MTYgKzAyMDAKClRoZSBmdW5jdGlvbiDigJxwbGF0Zm9y
bV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KVGh1cyBvbWl0IGEgcmVkdW5k
YW50IG1lc3NhZ2UgZm9yIHRoZSBleGNlcHRpb24gaGFuZGxpbmcgaW4gdGhlCmNhbGxpbmcgZnVu
Y3Rpb24uCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29jY2luZWxsZSBz
b2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL21haWxib3gvenlucW1wLWlwaS1tYWlsYm94LmMg
fCA1ICsrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC96eW5xbXAtaXBpLW1haWxib3guYyBiL2Ry
aXZlcnMvbWFpbGJveC96eW5xbXAtaXBpLW1haWxib3guYwppbmRleCA4Njg4N2M5YTM0OWEuLmE0
ZDE3NmYxNjBiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tYWlsYm94L3p5bnFtcC1pcGktbWFpbGJv
eC5jCisrKyBiL2RyaXZlcnMvbWFpbGJveC96eW5xbXAtaXBpLW1haWxib3guYwpAQCAtNjY4LDEw
ICs2NjgsOSBAQCBzdGF0aWMgaW50IHp5bnFtcF9pcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKCiAJLyogSVBJIElSUSAqLwogCXJldCA9IHBsYXRmb3JtX2dldF9pcnEocGRl
diwgMCk7Ci0JaWYgKHJldCA8IDApIHsKLQkJZGV2X2VycihkZXYsICJ1bmFibGUgdG8gZmluZCBJ
UEkgSVJRLlxuIik7CisJaWYgKHJldCA8IDApCiAJCWdvdG8gZnJlZV9tYm94X2RldjsKLQl9CisK
IAlwZGF0YS0+aXJxID0gcmV0OwogCXJldCA9IGRldm1fcmVxdWVzdF9pcnEoZGV2LCBwZGF0YS0+
aXJxLCB6eW5xbXBfaXBpX2ludGVycnVwdCwKIAkJCSAgICAgICBJUlFGX1NIQVJFRCwgZGV2X25h
bWUoZGV2KSwgcGRhdGEpOwotLQoyLjI2LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
