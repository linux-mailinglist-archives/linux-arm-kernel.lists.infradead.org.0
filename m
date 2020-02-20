Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E205165B77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5TQ9gcNLjc4eSBpyNerUtDM0WNCPSe11+GZ/gauy+o=; b=Ilsw0gfmM7jcmY
	sdKkes8LjwWNtw7NAvcf0yc5jG7EZCYml9PHYUdhPUKSFoRFchwD7fDkTnLIY7Fj1gCOgkEG4BI+8
	MF6M/M67PzPbx98/LkrNP/DNSfBmg2XWiZN81WYqlJB+h+7wQUsK+bE0d++Quss+KBGDNWuNcNS91
	Gb8HkL8Fg1GhRmx05Wo98ZhrGXewcsm8E6HCwbonho4lh9XzuHC4HoAFfRrBfcwdn3OhluyonSdVr
	OSIpt05VmrAHIgXDnhr9Pfu39lPr/KjDlw47zTzXq198EINK+5dNN0Uvp7DrLWziK4ABovOYyTZvk
	0CXjL0qv75HsYHfdgOCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4j2x-0006LN-DI; Thu, 20 Feb 2020 10:27:07 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4j2e-00069K-Qd
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:26:51 +0000
Received: by mail-qk1-x742.google.com with SMTP id c20so3071719qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 02:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XW0RVUOafRWzBn6AHPCLH2bW11TB9C9eIVtZb1rn20I=;
 b=GOTeP2csS3xkcJ6a9/1t+PpPHy/Ce5CQ2FHQlbIQWzc6QcNwzZC8jt2NT60YL088wR
 1BCx6egwQ3pNCKjmdgReg7Kl2q5LvlvYnNxc1XaXce3ERZQtiahMXw1w7dP9a84Md942
 W9aAH1ejPT2Snn/8pyDsMUgdkFJoF1XTKUTaQ/k7TDslqU/EhmCFYGw+A27naDMfucF7
 Do1mqV5OT4OQTjJatcSu4w4ZEX8E/8ot6knRdCQmnpNi+uncCzvGqHm9nlU0sXSrysMd
 6Z42C8aoVna0JGz9bxdP/n0V/VbUNyIpL4lQt4IhnokFtUQpLSWtYQan0p+fSBtKnCgt
 FGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XW0RVUOafRWzBn6AHPCLH2bW11TB9C9eIVtZb1rn20I=;
 b=R3ZX9nyhFKpp1F45jhJCcfPThYBSFZ17XIVFUi7jsSEHLY//6Hg6GQYkrnuJWROiJY
 hEX1VVIPLRa3zikBSapOGcj67zu24PK3IOTFAauLny4YNUlYk0CTCPbB2xkodMJJZCmo
 Z+Jbx1IVSLSNrmO0pJ+R8cbzAThOmuePhlXeLTDvDES7WR9lkMQlcYTEuQ777j2I8b2i
 q56tMdlTpk2WPcV5mu0UQycICVtGXA5s4JMz8xxzLNHoQitr8YRWfxuPTteBOBzqniyH
 rOWXWj2mbdi+IyKzX2K4VDnN6zmtVdOQL3p4/IRJA5ZgmPxMC+hy3i6ujkCa9NsRc5KS
 kywQ==
X-Gm-Message-State: APjAAAUIk4fBIIeD75gqH6Bh5yrHrsw2iEp58IvSXqH1ZBJobI6VJlYL
 kX5m7B+aZADJ6dph0doTv1u3WHjcVnqzjTNsK4zVNQ==
X-Google-Smtp-Source: APXvYqxZ/p9N0WN3fKI6WmMbU+UuLuuiId4wUYvQin8O/qYIMdHBWbfAsTzerfcyHk8G256I9CsY4ittloiK3eWs0hA=
X-Received: by 2002:a37:a488:: with SMTP id
 n130mr26958458qke.120.1582194407546; 
 Thu, 20 Feb 2020 02:26:47 -0800 (PST)
MIME-Version: 1.0
References: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
 <1581942793-19468-4-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1581942793-19468-4-git-send-email-srinivas.neeli@xilinx.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 20 Feb 2020 11:26:36 +0100
Message-ID: <CAMpxmJWshBbSxL1FrOrb=Rq2bRvvijoaLn5xq5HxA01k0qX7BA@mail.gmail.com>
Subject: Re: [PATCH V3 3/7] devicetree-binding: Add pmc gpio node
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_022648_882108_BFC2E798 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, shubhrajyoti.datta@xilinx.com,
 Michal Simek <michal.simek@xilinx.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, git@xilinx.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMTcgbHV0IDIwMjAgbyAxMzozMyBTcmluaXZhcyBOZWVsaSA8c3Jpbml2YXMubmVlbGlA
eGlsaW54LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBGcm9tOiBTaHViaHJhanlvdGkgRGF0dGEgPHNo
dWJocmFqeW90aS5kYXR0YUB4aWxpbnguY29tPgo+Cj4gQWRkIHRoZSBwbWMgZ3BpbyBub2RlIHRv
IHRoZSBkZXZpY2UgdHJlZS4KPgoKU2FtZSBoZXJlOiBJIGRvbid0IGtub3cgd2hhdCBwbWMgZ3Bp
byBub2RlIGlzIG5vciBkbyBJIG5lZWQgdG8uIFBsZWFzZQptYWtlIHlvdXIgY29tbWl0IG1lc3Nh
Z2VzIG1vcmUgdmVyYm9zZS4KCkJhcnRvc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
