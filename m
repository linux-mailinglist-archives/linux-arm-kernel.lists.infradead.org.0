Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24D0218B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 14:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ay/AmjlBMlNJMiqMa+Y8GfgfbS4CrLD9FHCCym4jHpY=; b=HGaaXr5pJQXyHP
	yy1g/9e9WK6RO+KvqAieEBknwKo8gFuMez/8i1kES7MDF4on6BQNPFYtvVYqLRVLrbGVMKQ1er0Uz
	bK5reG33lmTHW4KgDnhBDm7pz7DBz/+xLb2hFgMJzQJhwc06qWvFow/qlxzwVrRbGhQbQ7luwr3sb
	JEMUcBDNmohaufmepunRklqOAsY1WIZpkHoKD3WbXkeJWEinN0xMt7IgxHtEd/sKj2ocBCwgh1amc
	6H/opfaomEfc1GkpGqJbXTivS6/yj9Cnch3crZgLKFTimEOYP5lnH0FQEm8qq8xOhi4Acg5Bgb4t+
	7W39Q1oE/3HWwLi9GpEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRcR3-0002tT-Lv; Fri, 17 May 2019 12:58:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRcQx-0002oD-TG
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 May 2019 12:57:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B0BDYcWms9hlMx7Is5X1/tX62nY7ZHeP27UxiFKo4Lg=; b=UNPrS+niCPE3jEAaQpobN+CBcQ
 O1egg7bcbo/k8Rimkm/Qga66GE+WluDyTuzcROrs4IZbt4QbFTjj3IpEA5zHYhHJbRJjSkrzFBXo5
 fZzw/LTlqjtbUAPMnhc/1jUJqSJeFglAnxrzuQflRNLghMNavfq+Wppnrwl10PHxJXCNHuDatQO9e
 geNPdWDzTBDBA0w/8jvfdEYCLLubTEOzlSpc7por7fDP7EXDcz+gZqouQFxUYKFAkleoP80i7fX4t
 K/zfTmlLteZ0bv0kRH29F6wi2FN9kuo+GpIJWZSQjFc+NLpubhZeBwtKg87p9NShiW33YX5fLbTpg
 FU2ZvizQ==;
Received: from mout.kundenserver.de ([217.72.192.73])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRcC7-0003DG-D1
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 12:42:41 +0000
Received: from [192.168.178.167] ([109.104.37.130]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MSLhm-1hGdqE0LbU-00Sbte; Fri, 17 May 2019 14:42:34 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
Subject: ARM: Possible memleak during i.MX6ULL probe
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Message-ID: <8b0e51fc-2b26-f98d-7afa-26c6b397d847@i2se.com>
Date: Fri, 17 May 2019 14:42:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:352IW74hB7ELwi6EROoThv5vmt+fhKBmYs46/0EwALwFoptS3si
 uGZ77IwmXUEHUdGXDp4ft0vWFoSv+1tLJ+g9oGQ2CpdZ/KYulC+4dOBmAOTZ7zdyzjvCtTj
 1/CJhxwHoE+MkVNFSmcbAh163La6ZLzbQgkZNCgw4o+yhMe/Tr+oFDPaxtmPQcz0nYANaZT
 L/qEFIRduWJbNpeeWhL/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YUCKPhdPr04=:jcAvAppZidBmdlvLRfdSrD
 zDsahpx/qYMhAqH7FiGXfvImcpantr/d6F2ooeZ6ouXkebY3dsn7GUZIr6et6p6z7vjRTbec7
 4rfLmfF+mICB8qvgKRKbJDw3hHjy/AVzA5SWGs6NUwj1cz5oFc7moGKT26dAbObKzMi5tSOrS
 t23lUMLNUbF9H3QcPcHWiDl3H2tHlDhgcC35UqqzjSDukuWzUa1+YWBVZI+Rjz+ouQMJ2+fHz
 m2pW7BW2K/Tg/tRCYinQDQvoprV4E8RU97nh9k0MUr8dyW19Gi+Q0wu47VOSjCR+WDBQLaFdl
 vJ0DGmtUFXPz4xyg1qd57ttMUUu1mwJ7Q3OS2V72FFYfyGUs2Lw871opCmilV1dGPQyHCvFQ4
 2qK445r7pSq1dk3O3xdUGN2xcmWhOwpMtDyxLJeQ6jm18EzwHp12dPxuONpuiUT79tEcsUoiQ
 ZXizGVdEWEJAAexwEn3DF6ofdKgVtMNhkdhg0B+XNKwkpjiGRvgw5rGc3ZgpPqwCUlyyukVMR
 8cshYK96l1McfY/k8vGFUmpdiRG5+sq01vDJ/9CZ4ephx8D2tg2CVL+/Vq9tHWiQPDOgcCDKH
 JGYWopb3oT4qahN/JNaD3+pAzOcBipC9Dnhau9H+VVpShCduoLy86SKiWtomcduOwva7lUHCZ
 EWgG2IAZg1ODN7j/8Pbl6MktIipBXqCpqx/ForCm4hqW6HksQg1gc3o+WHNDgap71dBerHo65
 IGk6OzFLVwW3cX+np4avA4ahjqaxSk9i8pjJDuZ4Xr9vQbB7wXl3oOPzaoo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_134239_503366_D973CD3C 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgp0b2RheSBpIHRlc3RlZCBjdXJyZW50IGxpbnVzLXRyZWUgKCBhNmE0YjY2YmQ4ZiApIHdp
dGggb3VyIGN1c3RvbQppLk1YNlVMTCBib2FyZCBhbmQgaSBub3RpY2VkIGEgcG9zc2libGUgbWVt
bGVhazoKCnVucmVmZXJlbmNlZCBvYmplY3QgMHhkODM2NjYwMCAoc2l6ZSA2NCk6CsKgIGNvbW0g
InN3YXBwZXIvMCIsIHBpZCAxLCBqaWZmaWVzIDQyOTQ5MzczNzAgKGFnZSA5MzMuMjIwcykKwqAg
aGV4IGR1bXAgKGZpcnN0IDMyIGJ5dGVzKToKwqDCoMKgIDY0IDc1IDZkIDZkIDc5IDJkIDY5IDZm
IDZkIDc1IDc4IDYzIDJkIDY3IDcwIDcywqAgZHVtbXktaW9tdXhjLWdwcgrCoMKgwqAgNDAgMzIg
MzAgNjUgMzQgMzAgMzAgMzAgMDAgZTMgZjMgYWIgZmUgZDEgMWIgZGTCoCBAMjBlNDAwMC4uLi4u
Li4uCsKgIGJhY2t0cmFjZToKwqDCoMKgIFs8YjA0MDJhZWM+XSBrYXNwcmludGYrMHgyYy8weDU0
CsKgwqDCoCBbPGE2ZmJhZDJjPl0gcmVnbWFwX2RlYnVnZnNfaW5pdCsweDdjLzB4MzFjCsKgwqDC
oCBbPDljOGQ5MWZhPl0gX19yZWdtYXBfaW5pdCsweGI1Yy8weGNmNArCoMKgwqAgWzw1YjFjM2Qy
YT5dIG9mX3N5c2Nvbl9yZWdpc3RlcisweDE2NC8weDJjNArCoMKgwqAgWzw1OTZhNWQ4MD5dIHN5
c2Nvbl9ub2RlX3RvX3JlZ21hcCsweDY0LzB4OTAKwqDCoMKgIFs8NDliZDU5N2I+XSBpbXg2dWxf
aW5pdF9tYWNoaW5lKzB4MzQvMHhhMArCoMKgwqAgWzwyNTBhNGRhYz5dIGN1c3RvbWl6ZV9tYWNo
aW5lKzB4MWMvMHgzMArCoMKgwqAgWzwyZDE5ZmRhZj5dIGRvX29uZV9pbml0Y2FsbCsweDdjLzB4
Mzk4CsKgwqDCoCBbPGU2MDg0NDY5Pl0ga2VybmVsX2luaXRfZnJlZWFibGUrMHgzMjgvMHg0NDgK
wqDCoMKgIFs8MTY4YzkxMDE+XSBrZXJuZWxfaW5pdCsweDgvMHgxMTQKwqDCoMKgIFs8OTEzMjY4
YWE+XSByZXRfZnJvbV9mb3JrKzB4MTQvMHgyMArCoMKgwqAgWzxjZTdiMTMxYT5dIDB4MAoKQmVz
dCByZWdhcmRzClN0ZWZhbiBXYWhyZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
