Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037EB16F153
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 22:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0bXpeAPzjurMiSN5oeiKmdIqA6sBgZWg6NHgsJKSv0=; b=qU8VO5OW6+yyrh
	mExTlmnhr5WfDGlVeVo949XfVOSoCq5B/gkZ+nW85dkbXBKRQBXkM9IH6M7XyTDIJjLc3EOSqawGP
	1DXLBfUWD7oJ8BUr6qFgoXZwD9lRTfyLsA1K3P24tTgsJzDazFNih/TiVcryOUFLeqApx8oz7BUtO
	5gKsFpqtOapjyBJpJhJVq2wBlIzXze5TARnW2y9a6nkweKrLD6VbgUavzUprEvEe4QYgqx+3bEkSh
	KBZu36ryR339EzoEh4pZr21aqvpygziDKGqaDYBVWr5IxnNAns0Hiq+atZEHSz3mY/EEUO43CSrhn
	s1mj4QfnkkH8SrPUj81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hz3-0005kD-SE; Tue, 25 Feb 2020 21:43:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hyq-0005hh-Qi
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 21:43:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so821611wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 13:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=easyb-ch.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=kEVJ1n2NxQ1glfbZ9e15foebWC3MxMe0p/5A/jyD6H0=;
 b=oveJUVfN4mGmIby/KrplpWvi32NOCpmb1Fej6u+eU25j1sso9bxSCmnS1HYlP5k+TS
 MN55kLyOOXTrI5QiCGtP00bRnkJxE6q+aUpqdFsAsXwQh0dvu55FS/TXrAVS/ae6mu1l
 NAlvopKlSspPGtPCVj0mdTNuFv+ZfhgIinLqRNatsNKvQI8KxR0B1VAiDYp321L4gtUZ
 g8u+mkFIDr2NdhUV2f4JbQ3BTA7fhSsIoCINRAOSYNlefs7F0PuxzSG5YkiVtBklT+fO
 oaD/MUhWA0PqDh9MWO9s+RAgppI/P3ICunuQwVb2PDrJVH31q6jq8+vTKG+aECdrMlUL
 Kc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=kEVJ1n2NxQ1glfbZ9e15foebWC3MxMe0p/5A/jyD6H0=;
 b=P8XbCIciW4iLUV4DkeVAoMN8HCKWwCl+LKMeLKvQ9rG021AUHGXFLmNoa8z/Hk2/KB
 QH0wlATIu3AP+3dHiYmNCqMOF//8YuLQvQtzNO7Avs4KrG1+n4LzqG4uY8SFMBPpRpbx
 8E6PoPH5NgYY9blRT7FUHxdpxyLbVvSF+2c7ye2rKd9uv6RapwYbW0tCRj+OFLmBbnoQ
 GkZnFBjU3k/31oYeEbXgQzdsDNl7+GKw56n6FtOlQ40EmRtCprp7jy5Az5rS/qkKVFWG
 NiUi7uvI7dEn9LJsCUJiw25mf/UFNohObVwxeBax4venD0ogOjXEhLZLi5f2vPh2Ij1K
 KTRw==
X-Gm-Message-State: APjAAAW1Uztdwq2MLbWt+V8Eny1nTK/QqnMZx/+/HJ/ajR1Cx0HAVqKJ
 wz5cJi0FrBZiUI94n+mh/QrVRw==
X-Google-Smtp-Source: APXvYqzT6vU3uivqK3LFISSNim+ES8rBV5I3PSPpMQoyPtAT6binkjIz4QcxUjjxxm7ATqtLrWgIdA==
X-Received: by 2002:a1c:7ec5:: with SMTP id z188mr1188559wmc.52.1582666980570; 
 Tue, 25 Feb 2020 13:43:00 -0800 (PST)
Received: from ?IPv6:2001:1715:4e22:c580:ed96:156f:9663:e7e4?
 ([2001:1715:4e22:c580:ed96:156f:9663:e7e4])
 by smtp.gmail.com with ESMTPSA id f1sm212602wro.85.2020.02.25.13.42.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 13:43:00 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [RFC 00/25] arm64: realtek: Add Xnano X5 and implement
 TM1628/FD628/AiP1618 LED controllers
From: Ezra Buehler <ezra@easyb.ch>
In-Reply-To: <04e7d7cd-a8bc-621b-9205-1a058521cabe@arm.com>
Date: Tue, 25 Feb 2020 22:42:57 +0100
Message-Id: <E33E27B9-D33C-4182-A5B1-C72FA40470BC@easyb.ch>
References: <20191212033952.5967-1-afaerber@suse.de>
 <7110806f-ddbd-f055-e107-7a1f7e223102@arm.com>
 <c86c6bc0-b0e5-c46e-da87-9d910b95f9f3@suse.de>
 <04e7d7cd-a8bc-621b-9205-1a058521cabe@arm.com>
To: Robin Murphy <robin.murphy@arm.com>,
 =?utf-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_134305_017079_AAF4533D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, csd@princeton.com.tw,
 linux-realtek-soc@lists.infradead.org, sales@fdhisi.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 zypeng@titanmec.com, linux-amlogic@lists.infradead.org,
 Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCkhpIEFuZHJlYXMsCgo+IE9uIDEzIERlYyAyMDE5LCBhdCAxNTowNywgUm9iaW4g
TXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gCj4gSSBhbHNvIGhhdmUgb25l
IG9mIHRoZSBIOTYgTWF4IGJveGVzICh3aGljaCBJIHBpY2tlZCB1cCBvdXQgb2YgY3VyaW9zaXR5
Cj4gZm9yIHRoZSBteXN0ZXJpb3VzIFJLMzMxOCkgd2l0aCBhbiBGRDY1NTEsIGFsdGhvdWdoIEkn
dmUgbm90IGF0dGFja2VkCj4gdGhhdCBvbmUgd2l0aCB0aGUgbG9naWMgYW5hbHlzZXIgeWV0IHRv
IHNlZSBob3cgc2ltaWxhciBpdCBpcy4KCkkgaGF2ZSBhIFQ5IChSSzMzMjgpIFRWIGJveCB3aXRo
IHRoZSBzYW1lIGNoaXAgaW4gaXQuIFRoZSBGRDY1NTEgdXNlcyBhbgpJMkMtbGlrZSBwcm90b2Nv
bC4gRXZlcnkgZGlnaXQgKGFuZCB0aGUgc3ltYm9scykgaGF2ZSBhbiBJMkMgYWRkcmVzcywKYnV0
LCB0aGUgZGlzcGxheSBkb2VzIG5vdCBzaWduYWwgQUNLLiBBRkFJSyB0aGUgRkQ2NTAgYW5kIEZE
NjU1IHdoaWNoCmFyZSB1c2VkIGluIG90aGVyIGJveGVzIChBbWxvZ2ljKSBhcmUgdmVyeSBzaW1p
bGFyLgoKU28gZmFyLCBJIGhhdmUgd2hpcHBlZCB1cCBhIHByb29mLW9mLWNvY2VwdCBkcml2ZXIg
dGhhdCB1c2VzIGkyYy1ncGlvLgpUaGUgZGlnaXRzIHNlZW0gdG8gYmUgcm90YXRlZCBieSAxODAg
ZGVncmVlcy4gU28sIGluIG9yZGVyIHRvIHVzZQptYXBfdG9fN3NlZ21lbnQuaCBJIGhhZCB0byBk
ZWZpbmUgdGhlIEJJVF9TRUc3XyogY29uc3RhbnRzIGRpZmZlcmVudGx5LgpNeSBkaXNwbGF5IGFs
c28gaGFzIG11bHRpcGxlIHN5bWJvbHMgKFdJRkksIG5ldHdvcmssIHBhdXNlLCBwbGF5LCBVU0Is
CmFsYXJtKSB0aGF0IGFyZSBjb250cm9sbGVkIGJ5IHdyaXRpbmcgdG8gdGhlIHNhbWUgYWRkcmVz
cyBhcyBmb3IgdGhlCmNvbG9uLgoKSeKAmWQgbG92ZSB0byB3b3JrIG9uIGEgZHJpdmVyIChzaW1p
bGFyIHRvIEFuZHJlYXPigJkgU1BJIGJhc2VkIGRyaXZlcikgZm9yCnRoZXNlIEkyQyBjb25uZWN0
ZWQgY2hpcHMuCgpDaGVlcnMsCkV6cmEuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
