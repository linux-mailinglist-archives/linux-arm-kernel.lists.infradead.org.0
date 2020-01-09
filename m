Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286151354CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3od2kv0kcYMtgBayEktuidHvHZWu+9r7+MxpqiTfIY=; b=PUaJ4QL3CrpYgu
	byluIERkPhmw/I7qL9MXy1ScRXyzA9fhyn9519C5RSksHzDuOA+qWHc/9U8QFc+Lvwwgc+CntGh98
	Op58ziIBBQEtU7FT74mM+vCz0NdZhpkj/rfbevZxGagHBa/cYEzRlPt6DyLpZ0j2P24ehbed0n9+c
	TmJQVyDXcFF+bii2sCKxlUFWdNIGK8lnRSrxWtApPpCcWgItp83UALMK+G694Kf86jMhfwhr/so97
	AN/hvWCrQNLbU0yn6s2rXsmZKBx6AF5uViPxrRK/XfQhbzqGjjnDBsoTNDnjok7Z6pjEXKQFJPVVX
	ApKu4Z9XcHWxmejlP5bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTYh-0005ob-B0; Thu, 09 Jan 2020 08:52:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYS-0005b0-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:52:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so1937518wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 00:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3UC+FyBaxdvKcy8S6MwxaGbPaUPYnnimn1+HUbTZZ1I=;
 b=qC64sf1xAlDktRkhCL5dnmg8OJ/xcLFfGXFkViGCkzMqD7YerY7tv7Fj/kwuLrA5r0
 LbHPdylWkUO1KBOqeNBpbmBzoKtMxlo8xybIqssvrvLwT/5OFap443Z/U9Q9j3DiSzFo
 9+aWnyTlLXvsgJvQ/jUsQCNfM3UyjqmcYUoiZ56zidYpQuFIF9a/QTUXjMa3C6UAFHXD
 VbhFznLTU7ktnO726IyRe2MFwVr1JZxDTq0Bt5Xpc3HH5/BZMIs9NH4ozwUc3rC99wIo
 4ukUk4X8gt7Ju1nDP1JpAGkWo9Yh+iipjqLJsxuytnRF+OuIm0Q7h/l0j64iRAmST1zW
 Wk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3UC+FyBaxdvKcy8S6MwxaGbPaUPYnnimn1+HUbTZZ1I=;
 b=qp5hVtGmMf5UOz8pNfA/jM9BXu6FlGpsZTfiM//msHWsLp0FnW86XvabrpN3m8+JNn
 BCzSVbmNgrYQ6ZWvZwreiage5A6vsdL4o8CJjdMMZrOFEI9hPoabNQwgmcnZ8n0Tatbz
 xnYMiKbizcRjNNiBDSoydea1M/702bQOTighz0HQj5jrZDcL4doXbzZyzW8n8B+X454v
 YvWjFzoaDTzgXScJMNw9SLPvMqeNZcqUFErC3/2TYiGjh1vT2M4Tk5VdHmZvUxHO2SNa
 fKM4zd5vdUJcty87Htr42EDYvoUkYJ5ynwmw7Kxm0+8MMNRgqhYf0294Ozy2WzKhDhcU
 RuBg==
X-Gm-Message-State: APjAAAXhir1B3rqj2TW2TC8LpCWc+Ztl/cxAOf3y5ZM30D2SLK8kYuIf
 TPiCECO6AIrJraqpGg4MoKs=
X-Google-Smtp-Source: APXvYqzYXWh8VSyjzGZqoZsWgKwcqDzfcvDVzynWCy3+JIXEn4rpC9McK/lf7GDfkBNH1GAubm6PyA==
X-Received: by 2002:a1c:6a07:: with SMTP id f7mr3488669wmc.171.1578559955600; 
 Thu, 09 Jan 2020 00:52:35 -0800 (PST)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id i5sm7422343wrv.34.2020.01.09.00.52.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 00:52:35 -0800 (PST)
Subject: Re: [PATCH] tty/serial: atmel: RS485 & ISO7816: wait for TXRDY before
 sending data
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200107111656.26308-1-codrin.ciubotariu@microchip.com>
 <b11e47c3-8b94-7915-ae5a-d9e8f5b02047@gmail.com>
 <20200109073305.yn5y6sgomjniwwj6@pengutronix.de>
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <0ea33918-2845-a750-faa7-fec729976136@gmail.com>
Date: Thu, 9 Jan 2020 09:52:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200109073305.yn5y6sgomjniwwj6@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005236_880122_4EABEFE7 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.genoud[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, Codrin.Ciubotariu@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMDkvMDEvMjAyMCDDoCAwODozMywgVXdlIEtsZWluZS1Lw7ZuaWcgYSDDqWNyaXTCoDoKPiBI
ZWxsbywKPiAKPiBPbiBXZWQsIEphbiAwOCwgMjAyMCBhdCAwMjo0NTowNVBNICswMTAwLCBSaWNo
YXJkIEdlbm91ZCB3cm90ZToKPj4gTkI6IE1TIGV4Y2hhbmdlIGhhcyBhZGRlZCBzb21lID0zRCBh
bmQgPTIwIGhlcmUgYW5kIHRoZXJlLCBidXQgZ2l0IGFtCj4+IGRvZXNuJ3Qgc2VlbXMgdG8gYmUg
Ym90aGVyZWQgYnkgdGhlbS4KPiAKPiBVbmxlc3MgSSBtaXNzZWQgc29tZXRoaW5nIEkgY2Fubm90
IGNvbmZpcm0uIEluIG11dHQgSSBkb24ndCBzZWUgYW55ID0zRAo+IG9yID0yMC4KSXQncyBzdHJh
bmdlIGluZGVlZC4gSSBkb3VibGUgY2hlY2sgdW5kZXIgdGh1bmRlcmJpcmQgYW5kIGRpcmVjdGx5
IG9uIG15CndlYm1haWwgKHBvc3Rlby5kZSksIHRoZXJlJ3JlID0zRCBseWluZyBhcm91bmQgaW4g
dGhlIG1lc3NhZ2Ugc291cmNlLgpCdXQgbm90IG9uIHRoZSBvdGhlciBwYXRjaGVzIGZyb20gbGlu
dXgtc2VyaWFsLgp3ZWlyZC4uLgoKPiAKPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
