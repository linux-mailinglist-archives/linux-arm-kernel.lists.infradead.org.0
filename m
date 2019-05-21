Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0EF258C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccf07U0SwqR74rIVrvTamh6kKbkTKeu6TmFg1eOsans=; b=JM4HpkC+azLOw+
	0CAbwM+4bJV5numY6dsCeuPpfoSAu2GAseZ6rcnGKkqK3VmTVJye1eDshB38cR6bLg0YLwMj3FUCo
	ylPR+ggwpqZhGQddCV+4pLaVnzQ+iM2p3Kw4JZOoab0iXjpWYP2Jp2he87Q8UdFHvfiOIKtIIlLCf
	rOy3Kis2NlIcmHCWcUbffmz8KVZX/LkQ4Vi2YCB/HNn3lnm3S7//eVdm5WlJ81uY9nicrBlmR84K6
	S/r0xsk9ZzgSYa1Z2oMoAj8rGdbFecXvZrPSuzFU3Bjh+csYTmCNVcZoA6oeRph4mtylxYh/YXRsC
	9U/fIgZgwY+DPaILao2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBCF-000662-F6; Tue, 21 May 2019 20:17:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBC7-00064R-Dd
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:17:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so19456pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 13:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=+U7EhkgNCx5N+/sbOp9r4l15ZHheGrRGlRzMptIRhaA=;
 b=HqgKPjcEMLYIhTFv4+lXOB6xsRwOq5dQVBJ7DwfcuN5QXB15HgJCGvWuPCM9HX/Njp
 6olL31mUpSBOQVIQv3KZ3dIlBQ0T0GyJCrx7wdg18OL7sdvNmQxRfnjZQUi6di9OfESr
 YKkrcHQMKBwZHPfqya4JADQu0hYZawl74107Qik8twu+G0YdVTzctrRxHJTt9odcNQiO
 y0wZjx94ShhngdQgPCjJ2ML17wMQ7KQ8BRqJwIG4aPbU+Y0UsjsvTXHbu1TO9GRA5txn
 iYCMr967kSpiYV9CbA7XO1M/68G7Lr1wQX1B7c5KqhgnDeDCOms6G9MIQrwrKpuYqdmA
 5cdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=+U7EhkgNCx5N+/sbOp9r4l15ZHheGrRGlRzMptIRhaA=;
 b=lQTO48ij7Vvn0OGoS002hNn4wDNPFP5fPM3C1eCejb9lq9sCdFI6ON+q0JJRZY7RGa
 Hc04EyEnoufAxOtYfQw3suYfNkqFqmCYN3Ag5MFDEXoH58LU0Fn4l1w2vQtob2fi0Dck
 r5Zfz0p29rIM1b8+rkl0xX/aIZpKQoX+W/V8lGvQq6qBhpn5d/rGcZ1QfVK4AYOcX7iL
 t5p6qzW7+QKnZGYjwTOQHNFp8ts0qKJw2A6vfr1/ms1yAXzb6aOf39s5IsGYAQW30fg/
 N3eZB4Kcnru9otVlc5WaYvcX0BlXlhVS3v+uugbOPO2XPBo+YXxbau33uqWuO9Z01ba6
 0zSg==
X-Gm-Message-State: APjAAAWZgZiRYmDXJJ60sTYSYPgIn4WlXAs2ps0ojJ2un3jVnYqxmWRX
 HmNMMaYDPSAc9jJyrcVBh9aowg==
X-Google-Smtp-Source: APXvYqyDm+21VAV1EKWAQN6SGykpfXphy7AS6UIfBbG7F2FB/TGrBZdTBYbfhc9xQUazNzi85VAuhA==
X-Received: by 2002:a63:d949:: with SMTP id e9mr84615322pgj.437.1558469826585; 
 Tue, 21 May 2019 13:17:06 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b1ca:3800:3284:d770])
 by smtp.googlemail.com with ESMTPSA id
 j22sm29870986pfn.121.2019.05.21.13.17.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 13:17:05 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH 08/10] ARM: dts: meson8b: update with SPDX Licence
 identifier
In-Reply-To: <CAFBinCB3Q9ZZP6UwiivWB_eb47vh6j2N9Og1qZWAi6hm4+17Tg@mail.gmail.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
 <20190520143812.2801-9-narmstrong@baylibre.com>
 <CAFBinCB3Q9ZZP6UwiivWB_eb47vh6j2N9Og1qZWAi6hm4+17Tg@mail.gmail.com>
Date: Tue, 21 May 2019 13:17:04 -0700
Message-ID: <7hsgt75zr3.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_131707_462791_5A88F2B0 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Hi Neil,
>
> On Mon, May 20, 2019 at 4:39 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  arch/arm/boot/dts/meson8b.dtsi | 42 +---------------------------------
>>  1 file changed, 1 insertion(+), 41 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
>> index 800cd65fc50a..c38b0828b7ec 100644
>> --- a/arch/arm/boot/dts/meson8b.dtsi
>> +++ b/arch/arm/boot/dts/meson8b.dtsi
>> @@ -1,47 +1,7 @@
>> +// SPDX-License-Identifier: GPL-2.0 OR X11
>
> the GPL text below states "either version 2 of the License, or (at
> your option) any later version" so I believe this should be GPL-2.0+

The "at your option" here is key.  IMO, we should stick to the more
common kernel practice of GPL-2.0 unless the original author (Carlo
now Cc'd) wants to make it GPL-2.0+

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
