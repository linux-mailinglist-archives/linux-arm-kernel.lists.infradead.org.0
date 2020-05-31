Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C131E9622
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 09:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngrX03DAgky0SwwC4z+g80D/ETybMwb44GmWqXyVFvM=; b=bjrlRlXDCHSJ9J
	1EeIgWMxxDxVdt673WqfEMYhSoe17VnNk2uGky7qzoFrqHKCYJKTFYOPCPGTkve//7NtE/AM/XYIj
	a5FDXkzN74FGFku2YsbAOqyr3V2a39TqxUwOT6itDbLj+IbtnANvr55JDAtqRAAuGk4/jjpW1WfCn
	sULDzxcZeOcneLzPmzva+1I//pHg5/tTXYsjVvVGGYyxQoV6DN0XnYWFdTJbRqNMwdfPVm4xkGdmQ
	VwbQYWLLgvIy6LHiC7WQPJWgJpGuu1AKPVaRS5vwoc75D4L9qXC3NZ3UY3DwmC1an6ydzxs5Rz92E
	PnVEGPhTnj6To3NHzZtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfIGY-0004HR-Ho; Sun, 31 May 2020 07:20:18 +0000
Received: from mail.zju.edu.cn ([61.164.42.155] helo=zju.edu.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfIGF-00042Y-9A
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 07:20:01 +0000
Received: by ajax-webmail-mail-app4 (Coremail) ; Sun, 31 May 2020 15:19:51
 +0800 (GMT+08:00)
X-Originating-IP: [10.192.85.18]
Date: Sun, 31 May 2020 15:19:51 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: dinghao.liu@zju.edu.cn
To: "Markus Elfring" <Markus.Elfring@web.de>
Subject: Re: Re: [PATCH v2] i2c: imx-lpi2c: Fix runtime PM imbalance on
 error in lpi2c_imx_master_enable()
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190906(84e8bf8f)
 Copyright (c) 2002-2020 www.mailtech.cn zju.edu.cn
In-Reply-To: <845a11a9-51ed-cc7c-350f-b319111f32ee@web.de>
References: <845a11a9-51ed-cc7c-350f-b319111f32ee@web.de>
MIME-Version: 1.0
Message-ID: <1f6c3bbb.db553.1726999de41.Coremail.dinghao.liu@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cS_KCgC3WeSXWtNeXepiAA--.9453W
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAg0OBlZdtOWM2gAhsq
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJTRUUUbA0S07vEb7Iv0x
 C_Cr1lV2xY67kC6x804xWlV2xY67CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DMIAI
 bVAFxVCF77xC64kEw24lV2xY67C26IkvcIIF6IxKo4kEV4ylV2xY628lY4IE4IxF12IF4w
 CS07vE84x0c7CEj48ve4kI8wCS07vE84ACjcxK6xIIjxv20xvE14v26w1j6s0DMIAIbVA2
 z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWxJr0_GcWlV2xY628EF7xvwVC2z280aVAFwI0_Gc
 CE3s1lV2xY628EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wCS07vEe2I262IYc4CY6c8I
 j28IcVAaY2xG8wCS07vE5I8CrVACY4xI64kE6c02F40Ex7xfMIAIbVAv7VC0I7IYx2IY67
 AKxVWUJVWUGwCS07vEYx0Ex4A2jsIE14v26r1j6r4UMIAIbVAm72CE4IkC6x0Yz7v_Jr0_
 Gr1lV2xY64IIrI8v6xkF7I0E8cxan2IY04v7MIAIbVCjxxvEw4WlV2xY6xkI7II2jI8vz4
 vEwIxGrwCS07vE42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMIAIbVCF72vE77IF4wCS07vE
 4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lV2xY6I8I3I0E5I8CrVAFwI0_Jr0_Jr4lV2xY6I8I3I
 0E7480Y4vE14v26r106r1rMIAIbVC2zVAF1VAY17CE14v26r1q6r43MIAIbVCI42IY6xII
 jxv20xvE14v26r1j6r1xMIAIbVCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lV2xY6I
 IF0xvE42xK8VAvwI8IcIk0rVWrZr1j6s0DMIAIbVCI42IY6I8E87Iv67AKxVWUJVW8JwCS
 07vEIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_002000_241855_E43117AE 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Kangjie Lu <kjlu@umn.edu>,
 Sascha Hauer <s.hauer@pengutronix.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpLCBNYXJrdXMsIAoKPiAqIEhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gcmVwbGFjZSB0aGUg
d29yZCDigJxwYWlyaW5n4oCdIGJ5IOKAnGNvcnJlc3BvbmRpbmfigJ0/Cj4gCj4gKiBXaWxsIGl0
IGJlIGhlbHBmdWwgdG8gYWRkIGFuIGltcGVyYXRpdmUgd29yZGluZz8KPiAgIGh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90
cmVlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0P2lkPWZmZWI1
OTVkODQ4MTFkZGUxNmEyOGIzM2Q4YTdjZjI2ZDUxZDUxYjMjbjE1MQo+IAo+ICogV291bGQgeW91
IGxpa2UgdG8gYWRkIHRoZSB0YWcg4oCcRml4ZXPigJ0gdG8gdGhlIGNvbW1pdCBtZXNzYWdlPwo+
IAo+ICogQXJlIHlvdSBnb2luZyB0byB0YWtlIHN1Y2ggcG9zc2liaWxpdGllcyBpbnRvIGFjY291
bnQgZm9yIGFueSBtb3JlIHBhdGNoZXM/Cj4gCgpUaGFuayB5b3UgZm9yIHlvdXIgYWR2aWNlISBJ
IHdpbGwgZml4IHRoZW0gc29vbiBpbiB0aGUgbmV4dCB2ZXJzaW9uIG9mIHBhdGNoLgoKUmVnYXJk
cywKRGluZ2hhbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
