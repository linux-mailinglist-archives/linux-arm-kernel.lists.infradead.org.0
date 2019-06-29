Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FAB5AA25
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 12:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFuvENVWWjN0A6IHE7FSngsrBM2+9Qz3KJjrNUJZkQ8=; b=JyuT0nnd87xMHx
	9jsCle6wfCGQulUi8zIdtBnbAzw7Hr+lSa5iNG3ooJg1UFEFTPVczVqXEUWsJcWSLeAJvbnZpIv3Y
	OADx4Za/4ANSUdBraIZRrYCKuxweBl91rHcjn/zm/qcYwRBuZc3f3V6jpr33UXy6l/uBrx/B9owXV
	ilO91j+Y8s9NkqaOG/4By/RmNmW+FrMz2IJ9RHi5V2g6kjreOxEeyrCV09MDeu0HKT+9azbfNwxxQ
	ghu4QOSZT7DkRpcSQf13e045kHaXUndXlBMmVIUWTCSj20bG9J5TQ3so0FxaQ8U6ENuYUOMTbeoys
	uP3NTM3icii4vPcaKazA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhAaj-0007CY-Kb; Sat, 29 Jun 2019 10:28:21 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhAaS-0007C3-7K; Sat, 29 Jun 2019 10:28:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561804068;
 bh=oj3lEsqwlc9HMeW13jPftORYX0fnnx2+Twl0l4AuHFg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=k37CiEiIHlkwg16x0k1F2sU04Pyc1H3qvzTUnNl7VyWNF9VpunMr0FJXWk4O332Bl
 CZzX22P8lodyJjI70cSPCiPsRrh5HIjnls1EoNVCmNoSdc+fG7FaWizYedzlYz9aAM
 D2gKjBKjKj8uIZKmsjfYtDAaMUx59+UV4OohJ4Mw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.111]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mj8qd-1iAhyj2EQX-00f7nI; Sat, 29
 Jun 2019 12:27:48 +0200
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Dave Stevenson <dave.stevenson@raspberrypi.org>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
 <24265b85-a12a-7a46-91d1-f20f5a133f8b@gmx.net>
 <CAAoAYcM6-xBEZfzpxchwh5z21HbFbu57a=7PZNoLB5J2vef7QA@mail.gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <3be8db2a-6960-b31f-3b3b-78b45733fe01@gmx.net>
Date: Sat, 29 Jun 2019 12:27:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAAoAYcM6-xBEZfzpxchwh5z21HbFbu57a=7PZNoLB5J2vef7QA@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:tdZvR7djPZcMZsZiH/C0lwP5pmG3QD72btjtp68x/Mn05o6Lxkr
 PV09oeH3/aNorWGsaQS/jmu72Fb8p2eX+FVR0gz/L0RQ2cN3xk9rE6cADdT+hVCeFQEhPt3
 FDKqljmC4cPUeL0b9JOGHH9OFG1eHjEh+FqjqBzkbRKBnxqncVLDzkDUs/7sG3754oo+hJn
 oB0IHloM/YrIK6VsF/0uw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PbD8h4eg1NM=:LibZowrsleCCevBF3eSeT7
 fbw1yjpxCxyTw5NefTa3oJBwCBxwj+xhm1b0B5vK0iY95xdY016j6lxgD1xl+7EsZl5CVss3Q
 GGAY/x6qJwQwarmexLcszUBZaSNhhRBPob2s+taDzfov9OKAFokOdepuem7BjIF5vwzUXIxBq
 6QUzy5Qke7+Da3W1NYKmoidxmjzZZrc26HWbeY8n3RLx0CZdzONQCofUCO/ABE/rpGkHQuh7W
 r3tnLTZopwwis981n9wA0ypzicLM4+xdK/jt0QW+a0vCSJCgq/3MNkAAOxzvd/4bm3pGmz/Dk
 E/Ie1rMH5hEvg/dbKwvk5Bzmb3vG6JxY6wwt0e3D2evA5vXNYHkGoIe7OIMIzJO+OuZsC0DZH
 rgz/r+r+PSde7pqI+SebKGeQKRJb5n9HDrFAbvIk2y1ZxAqi39hBZ2vaqDUAVy/XPq2lfGoeI
 pVUK9KkLCdg+Y7Z6VTv9EkIF6u6vyQxZoOKVdxszfg+l29fUMAfmQnKej85dEgnptHUkaPUQy
 NkJjF1PA65jOw1fyXELtTtWHf/xxmYREXMXRqfDJV8VZOk8toB1/3Gur3TdY+Iyh18/srY5HT
 bvQtl+z9AMX7PAcFLHkJs0h80qls5JzlkYUkyzYOtPOWKGZN62KUMlOV5Lq6rV3U0KROK9NAz
 fDfBxsBHMus0Rm3pKE7ez98cPxEPIc5w5Dmye8ZBzJszG4cdMbJJcOi17vTN64VdlxBSCzkS0
 U8clGuwRU58x14H6T7FgHWTmgjTnkfs0Ck2KOAwgFa992DDIPxDYdlO3sIPEyzRnpBUfNBobS
 ECchz4k1URDmIKrXcRRqwwnuwoNS3kNl2CVpAHSyitXweOVsJyDAcW+xtDE030Gsc6Ox9z7Zg
 XgNX9n40FWJKdOun0ZqPPIhun0CfrPRc33VPFhaf+3Nou7fDKUig5b2o0INBP0o842hhvnN36
 YVntu1fd3fCVq9poZJU6RuR/Z9M7HyHNB6Hbsblkfhi4Cv+HbuqQHDhEykPQH3NRs2RV+lZPG
 /ZeRY27JjYv+zIDe8aTxTv9VV7MpIWMAW54ep+V/ktB5cgR3jZ85iY2C0e2QPdbrzsGJmgtlM
 1KGhogxMLUMfW4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_032804_559585_BB7207DA 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, LMML <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGF2ZSwKCkFtIDI4LjA2LjE5IHVtIDE5OjI5IHNjaHJpZWIgRGF2ZSBTdGV2ZW5zb246Cj4g
SGkgU3RlZmFuCj4KPiBDb3VsZCB5b3UgdHJ5IHJ1bm5pbmcKPiB2NGwyLWN0bCAtdiB3aWR0aD02
NDAsaGVpZ2h0PTQ4MCxwaXhlbGZvcm1hdD1ZVTEyCj4gYmVmb3JlIHJ1bm5pbmcgdjRsMi1jb21w
bGlhbmNlPyBUaGUgZGVmYXVsdCBmb3JtYXQgaXMgSlBFRywgYW5kIEkganVzdAo+IHdvbmRlciBp
ZiB0aGVyZSBpcyBhbiBpc3N1ZSBsdXJraW5nIGluIHRoZSBjb21wcmVzc2lvbiBzaWRlLgoKeWVz
LCB0aGlzIGlzIG11Y2ggYmV0dGVyOgoKU3RyZWFtaW5nIGlvY3RsczoKwqDCoMKgIHRlc3QgcmVh
ZC93cml0ZTogT0sKwqDCoMKgIHRlc3QgYmxvY2tpbmcgd2FpdDogT0sKwqDCoMKgIHRlc3QgTU1B
UCAobm8gcG9sbCk6IE9LCsKgwqDCoCB0ZXN0IE1NQVAgKHNlbGVjdCk6IE9LCsKgwqDCoCB0ZXN0
IE1NQVAgKGVwb2xsKTogT0sKwqDCoMKgIHRlc3QgVVNFUlBUUiAobm8gcG9sbCk6IE9LCsKgwqDC
oCB0ZXN0IFVTRVJQVFIgKHNlbGVjdCk6IE9LCsKgwqDCoCB0ZXN0IERNQUJVRiAobm8gcG9sbCk6
IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBETUFCVUYgKHNlbGVjdCk6IE9LIChOb3Qg
U3VwcG9ydGVkKQoKVG90YWwgZm9yIGJtMjgzNSBtbWFsIGRldmljZSAvZGV2L3ZpZGVvMDogNTMs
IFN1Y2NlZWRlZDogNTMsIEZhaWxlZDogMCwKV2FybmluZ3M6IDAKCj4gSSdsbCBnZXQgYSBQaTMg
bWFpbmxpbmUgYnVpbGQgZ29pbmcgd2hlbiBJIGdldCBhIGNoYW5jZS4KPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
