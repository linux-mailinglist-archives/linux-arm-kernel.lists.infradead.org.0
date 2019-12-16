Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A293412098D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rak6u5dzZ4o9d4JrXulwKcJeRsXzCbZBlL9jDGA5mqY=; b=Z76QgHWguj/gWs
	fZek4q7TfNpfbDS1g/7hhG42eqL6nxbYZXg8IC+A6JtI3+x/eKJZQShlWWrm8LkoyeSF+DhoUFZbP
	QTlc9riHru64p2tybiNNB/JioO2j5J0mJiHLhX+eoYCCNJiMg9y2BX5mo/ijBMSq0zAR8Zdk+Hyjt
	rUmipF/DWsfx+FKrnK99dxzJHHQ3jJTWCH9d6vv+npgbjr2nYqPRYlwSuPliaG2P76ry91EOz0R3w
	k8N07oRr/CL1g1sgWFp6JdtVLgqo7P01ZItu0qtVhl1LM2cuaiyKjId+gqoNqaqhYeFnCJQ0/zPJf
	ATEcQjUtso2bgqjsIHnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsC6-0005tw-BD; Mon, 16 Dec 2019 15:21:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsBq-0005rb-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:21:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so7768918wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 07:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qLW85+iCakysrIL3d9ahlxs/+0bq3c8q3dQkkBI+mAY=;
 b=l9eRHG6cELj/1PPW5EMQL8KGSpML40lgI42oonoObgVkQJpwcUpAhOzugGJ1YzDVh/
 Xn+g5HPMl+dLsYUrlg7312P/+FNbj9QEnm2kVtOKCQdPOD447fXhj6oyX5lGi6hArYGI
 ORKa/zBvvQR/ijSqhhv+sdOOlpsJpm4PmFmwb3UgJplzSokAD8u8b9pQ7kaUsCXJ9f9m
 Lv/bhO/Swr+5cFJ21U8uk/Jd33llMPn0xeTlVRk8bVjXZJZrg3/QC8m5DHrKlgB4M0QV
 osHGkfb8Z2PSqzmCGeUX3qd3TpPIq2QDjMGPHvZoY2oInrkzLxNL6LEBL8zZzqTbZKg1
 pYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qLW85+iCakysrIL3d9ahlxs/+0bq3c8q3dQkkBI+mAY=;
 b=iknjIZfsWNxftoLs7Waf8r0EKShe0vGSxx9Xvy2GPAzdQ8tf+BKR6MuYAsjaXkaAKd
 zTqAoTtksVQVU6Z1VPKTILyWS2I6o8lA3FFIGgQP7OmCHokoaqwhlbmM3As37nU0dXrH
 9jkdDrwrSdQkkI6+HnW0JjtkbvBEYeTVl72omrjXnLtK29y7Sa+u4e5DPyVE5j6JwVmB
 igogdvenQMygODr3I4Fi7U8smPzaOP/9PbHCICPt6ZVw5EBky6XADuzaclhYfOKIkj7q
 GOvTRyW1YJFyCCYY4fHCIOhmXbOrxQkTpBtRAp6lBNcv5H4e3a1N3df+0gDCBcjJ96Us
 hL1w==
X-Gm-Message-State: APjAAAWZQYVv0x0fkvGjQaUkhzuBdbOpsKbrbSHz1r8jftNEkS1/mvKE
 YbB09guUhFYw7qPRoswU99m9eA==
X-Google-Smtp-Source: APXvYqweC7S5MEqLKn13rfYs2+xIpXzL1Op8mNT8o+RON6KKvlXrllfQ92Cbjp2t7tj6nFBRu6VFaw==
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr32672267wrt.100.1576509699617; 
 Mon, 16 Dec 2019 07:21:39 -0800 (PST)
Received: from dell ([185.17.149.202])
 by smtp.gmail.com with ESMTPSA id x10sm22076901wrv.60.2019.12.16.07.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 07:21:39 -0800 (PST)
Date: Mon, 16 Dec 2019 15:21:38 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v7 6/6] rtc: Add support for the MediaTek MT6358 RTC
Message-ID: <20191216152138.GF2369@dell>
References: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1576057435-3561-7-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576057435-3561-7-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_072142_237444_ACEB08E1 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tianping Fang <tianping.fang@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMSBEZWMgMjAxOSwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gRnJvbTogUmFu
IEJpIDxyYW4uYmlAbWVkaWF0ZWsuY29tPgo+IAo+IFRoaXMgYWRkIHN1cHBvcnQgZm9yIHRoZSBN
ZWRpYVRlayBNVDYzNTggUlRDLiBEcml2ZXIgdXNpbmcKPiBjb21wYXRpYmxlIGRhdGEgdG8gc3Rv
cmUgZGlmZmVyZW50IFJUQ19XUlRHUiBhZGRyZXNzIG9mZnNldC4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBSYW4gQmkgPHJhbi5iaUBtZWRpYXRlay5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSHNpbi1Ic2l1
bmcgV2FuZyA8aHNpbi1oc2l1bmcud2FuZ0BtZWRpYXRlay5jb20+Cj4gQWNrZWQtYnk6IEFsZXhh
bmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ydGMvcnRjLW10NjM5Ny5jICAgICAgIHwgMjQgKysrKysrKysrKysrKysrKy0tLS0tLS0t
Cgo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmggfCAxNiArKysrKysrKysrKysrKyst
CgpBY2tlZC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9u
ZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNl
Ym9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
