Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAE21E0ABC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlxlXSfEsjZ6HkjtZjG1cS3c/v509Zd2galw9MfzSDQ=; b=ixjyP/f6EF0q3O
	omUBm6N31hdX4XQlQjiNeUVRZTmayhmfJIyjjTnd1O9vZnsGUte97uzCXLKqSk0d/NLgVNVip5GAy
	w3ZQrhtvdO7eZX6i9l57/hUhIKE9Qo3wqp8xcpxo5//NPVH4fQ1zY4Y34DsKfb+SDGfBIR3xCoA2L
	vxGMkeZv+cTkAif9iITZ7v6F5/70lBc3C9IKE3DDjhpHwe2vT+3e8R3ghORLn+Zw+JgFjQriir0zv
	HW0PcKONC5kEEhc8dyQ0x/UlnzXNSJgtDf1I84EwyQVjAXwXiEC2Ah1M4DPOfx+9SZqJZizsQuY+d
	XMGsMz4a60GLtJKVYJhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9XY-0007k7-No; Mon, 25 May 2020 09:37:00 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9XL-0007ix-Ct
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:36:49 +0000
Received: by mail-qt1-x842.google.com with SMTP id m44so13374016qtm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RrCJYv2CMkjmXgxh4luY1jGTleOro3sZ8PAwMM7JZE8=;
 b=fuRxqLaU5g8a+KV52JfO8iIc6Dpzv7xH8zEcUSQ/EPvQBP7xuZujlB1Zqe487JQ3Kq
 07LoVBHsy1UXVK+h1466jj5fLf4k0US9SOPw/xkahZeYDz6NXGm5hSOhNSrUBtmqhLWK
 KpGTM4RgelTirb7PDz/hSax3IAD2wQczpkOEfKXlM0XO/X+ySXMhXr8sWjHil9VXwp4a
 gjc6rD/Jhv2tYnFrfXg8taOWar/FQPrbAQeQRe+RXkie2tW8wVIJTOK74bsrPbGDoPrG
 lezjk7vKK6+6lpnEOFAUY+wGVeHzj2KdWfnZ/xg9pSOhTX2lpNrlKoV/wVcAJES3+lOl
 9t6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RrCJYv2CMkjmXgxh4luY1jGTleOro3sZ8PAwMM7JZE8=;
 b=ryxvMPYLzsNo5G3d4QtAlAUogJTZEH5E94TH5JVedHGfMfaQQSdoYVV2BbdZs3veJL
 gl+QdqcYUjNwbHVfeKx3EV0n8/0nZSNL8SaK13xdr77UE8nSAhYkVRXzI2WXOANeeBRT
 h9tji4zNfMQZNHgY3coOcSXg8Gi+aE3HAk0NPIyZWU+2Ht+UIaU6SnmJb1tMmrO1OP9W
 B97KXRRO8S+3SI/30UDHHLjxsm3WS0WwrzjXRPfcK13I8hzO0KgufTulLKGuv0KwLokG
 a3RIuN2sCXMOAkGEF+H07+vsFH6FxbwbuefhOaaVquYpkf2+2uw92ccY0iOCWRKgHMZB
 Lzlw==
X-Gm-Message-State: AOAM531B8a+X115clLsJTn7VbVrn3jswaeKqjVOlY7q56Xmc73OZI1nt
 /YWmVfm/V8T7WX/wkD2nNS1v9XikpgsufP1FZcFqyQ==
X-Google-Smtp-Source: ABdhPJxH6RRcuaHYqO3WxxeIfwE81GyLqMO/ChAPMvFcbjmN7sgsVd4B4nKXJegt6FTlMqeYNykQPLynPcScd/lVDDo=
X-Received: by 2002:aed:257c:: with SMTP id w57mr26966940qtc.208.1590399406112; 
 Mon, 25 May 2020 02:36:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590017578.git.syednwaris@gmail.com>
In-Reply-To: <cover.1590017578.git.syednwaris@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 25 May 2020 11:36:35 +0200
Message-ID: <CAMpxmJUrC270rgWcADYruqA_qVeh9-N8mCVPWgJkL-8kU2bO1A@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] Introduce the for_each_set_clump macro
To: Syed Nayyar Waris <syednwaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_023647_435739_DDECFEC5 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Amit Kucheria <amit.kucheria@verdurent.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio <linux-gpio@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, rrichter@marvell.com,
 linux-pm <linux-pm@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Zhang Rui <rui.zhang@intel.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

bmllZHouLCAyNCBtYWogMjAyMCBvIDA3OjAwIFN5ZWQgTmF5eWFyIFdhcmlzIDxzeWVkbndhcmlz
QGdtYWlsLmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBIZWxsbyBMaW51cywKPgo+IFNpbmNlIHRoaXMg
cGF0Y2hzZXQgcHJpbWFyaWx5IGFmZmVjdHMgR1BJTyBkcml2ZXJzLCB3b3VsZCB5b3UgbGlrZQo+
IHRvIHBpY2sgaXQgdXAgdGhyb3VnaCB5b3VyIEdQSU8gdHJlZT8KPgo+IFRoaXMgcGF0Y2hzZXQg
aW50cm9kdWNlcyBhIG5ldyBnZW5lcmljIHZlcnNpb24gb2YgZm9yX2VhY2hfc2V0X2NsdW1wLgo+
IFRoZSBwcmV2aW91cyB2ZXJzaW9uIG9mIGZvcl9lYWNoX3NldF9jbHVtcDggdXNlZCBhIGZpeGVk
IHNpemUgOC1iaXQKPiBjbHVtcCwgYnV0IHRoZSBuZXcgZ2VuZXJpYyB2ZXJzaW9uIGNhbiB3b3Jr
IHdpdGggY2x1bXAgb2YgYW55IHNpemUgYnV0Cj4gbGVzcyB0aGFuIG9yIGVxdWFsIHRvIEJJVFNf
UEVSX0xPTkcuIFRoZSBwYXRjaHNldCB1dGlsaXplcyB0aGUgbmV3IG1hY3JvCj4gaW4gc2V2ZXJh
bCBHUElPIGRyaXZlcnMuCj4KPiBUaGUgZWFybGllciA4LWJpdCBmb3JfZWFjaF9zZXRfY2x1bXA4
IGZhY2lsaXRhdGVkIGEKPiBmb3ItbG9vcCBzeW50YXggdGhhdCBpdGVyYXRlcyBvdmVyIGEgbWVt
b3J5IHJlZ2lvbiBlbnRpcmUgZ3JvdXBzIG9mIHNldAo+IGJpdHMgYXQgYSB0aW1lLgo+CgpUaGUg
R1BJTyBwYXJ0IGxvb2tzIGdvb2QgdG8gbWUuIExpbnVzOiBob3cgZG8gd2UgZ28gYWJvdXQgbWVy
Z2luZyBpdApnaXZlbiB0aGUgYml0b3BzIGRlcGVuZGVuY3k/CgpCYXJ0CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
