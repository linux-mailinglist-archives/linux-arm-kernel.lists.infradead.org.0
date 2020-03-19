Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AA918B85B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:49:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=N3FVEFhSpAtP0YssCjXYCTD2JjTf7CYTDENaqGA+SXY=; b=VUk9bjY+5zWoOpAesmBAn9dED/
	40lDFaiNLGWZ32eNkocQzKORwao7NB58KXHPYrivTO832WleSxOzRlastvD/3DRTL34JN4nGXbzMo
	+kDlk1IDM9dSg8jh3+Qiteo9zsM0+QsH08qBAYD3BQVg0Tk9n15ISO9MOzifQuCucVOPIb+qCtMGL
	45muChjHRS0jQAW7N8e13mTyNTiVET/ypx1UmEbBqeUSB+3DOra80cUrIjDbm9b+bAX+JGExVKTTY
	GYVUbC6Sk04w7ZBN4s9mt7wL+ousVwG2CHwOWjyzBz53iNm1KImxDYl7aIirDLPUOqRZuHQDpVn11
	PN5d+eIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvYT-0007V8-Rz; Thu, 19 Mar 2020 13:49:49 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEvYJ-0007TJ-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:49:42 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 47DB16AAA082909C29D6;
 Thu, 19 Mar 2020 21:49:16 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.205) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0;
 Thu, 19 Mar 2020 21:49:05 +0800
From: "chengjian (D)" <cj.chengjian@huawei.com>
Subject: Why is text_mutex used in jump_label_transform for x86_64
To: <andrew.murray@arm.com>, <bristot@redhat.com>,
 <jakub.kicinski@netronome.com>, Kees Cook <keescook@chromium.org>
Message-ID: <f7f686f2-4f28-1763-dd19-43eff6a5a8f2@huawei.com>
Date: Thu, 19 Mar 2020 21:49:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.133.217.205]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_064940_192446_A918C4E4 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "chengjian \(D\)" <cj.chengjian@huawei.com>,
 "Xiexiuqi \(Xie XiuQi\)" <xiexiuqi@huawei.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bobo.shaobowang@huawei.com, Li Bin <huawei.libin@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGnvvIxldmVyeW9uZQoKSSdtIHNvcnJ5IHRvIGRpc3R1cmIgeW91LiBJIGhhdmUgYSBwcm9ibGVt
IGFib3V0IGp1bXBfbGFiZWwsIGFuZCBhIGJpdCAKY29uZnVzZWQgYWJvdXQgdGhlIGNvZGUKCkkg
bm90aWNlZCB0aGF0IHRleHRfbXV0ZXggaXMgdXNlZCBpbiB0aGlzIGZ1bmN0aW9uIHVuZGVyIHg4
Nl82NCAKYXJjaGl0ZWN0dXJlLApidXQgb3RoZXIgYXJjaGl0ZWN0dXJlcyBkbyBub3QuCgppbiBh
cmNoL3g4Ni9rZXJuZWwvanVtcF9sYWJlbC5jCiDCoMKgwqDCoMKgwqDCoCBzdGF0aWMgdm9pZCBf
X3JlZiBqdW1wX2xhYmVsX3RyYW5zZm9ybShzdHJ1Y3QganVtcF9lbnRyeSAqZW50cnksCiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBqdW1wX2xhYmVsX3R5cGUgdHlwZSwKIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpbnQgaW5pdCkKIMKgwqDCoMKgwqDCoMKgIHsKIMKgwqDCoMKgwqDC
oMKgwqAgbXV0ZXhfbG9jaygmdGV4dF9tdXRleCk7CiDCoMKgwqDCoMKgwqDCoMKgIF9fanVtcF9s
YWJlbF90cmFuc2Zvcm0oZW50cnksIHR5cGUsIGluaXQpOwogwqDCoMKgwqDCoMKgwqDCoCBtdXRl
eF91bmxvY2soJnRleHRfbXV0ZXgpOwoKaW4gYXJjaC9hcm02NC9rZXJuZWwvanVtcF9sYWJlbC5j
CgogwqDCoMKgwqDCoMKgwqAgdm9pZCBhcmNoX2p1bXBfbGFiZWxfdHJhbnNmb3JtKHN0cnVjdCBq
dW1wX2VudHJ5ICplbnRyeSwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBqdW1wX2xhYmVsX3R5
cGUgdHlwZSkKIMKgwqDCoMKgwqDCoMKgIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB2b2lkICphZGRyID0gKHZvaWQgKilqdW1wX2VudHJ5X2NvZGUoZW50cnkpOwogwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiBpbnNuOwoKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAodHlwZSA9PSBKVU1QX0xBQkVMX0pNUCkgewogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnNuID0gCmFhcmNoNjRfaW5zbl9nZW5fYnJh
bmNoX2ltbShqdW1wX2VudHJ5X2NvZGUoZW50cnkpLApqdW1wX2VudHJ5X3RhcmdldChlbnRyeSks
CkFBUkNINjRfSU5TTl9CUkFOQ0hfTk9MSU5LKTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB9IGVsc2UgewogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpbnNuID0gYWFyY2g2NF9pbnNuX2dlbl9ub3AoKTsKIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB9CgogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFhcmNoNjRfaW5z
bl9wYXRjaF90ZXh0X25vc3luYyhhZGRyLCBpbnNuKTsKIMKgwqDCoMKgwqDCoMKgIH0KCgpJcyB0
aGVyZSBhbnl0aGluZyB3cm9uZyB3aXRoIHg4NgoKb3IKCmlzIHRoaXMgbWlzc2luZyBmb3Igb3Ro
ZXIgYXJjaGl0ZWN0dXJlcz8KCgpUaGFua3MKCi0tLS0gQ2hlbmcgSmlhbgoKCgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
