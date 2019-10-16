Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8029DD9D83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 23:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AwyZlUIz52FRU3ad2k48ksqVBP5fmwQFOqXcdBeJEA=; b=RWfU3g73GNDS51
	/QO8glPsY2J7D+8LqfeORyUijxmHf6Ljp43Ay9j8nN2EJqvc0kRAd7W8RFa8PQ8KPR//jd2LwWFP3
	Kb1ACVsteeBxICyr74SW0DKUgGGbK3pmbxyGeakF8BKJ8uRLn4fC4thVZn5QLXs9h2poWKLYLuUJs
	ZKzvRFynVdZL8Yaj1mKd3tKVRbiBewnotEvU63pCmedXBVsolffK+3U3WCH5WHrV6wP/BiYOP3XRJ
	HJbICdfNjx0x1d29cJv3sEdxzEJfQaW1rnyStU15pbkCetV1IaIB8bZpw4CStNmKV4U8gbWNpmACD
	fxhUUtqp27e27eXxUVKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqt0-0007vS-Gc; Wed, 16 Oct 2019 21:31:14 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqss-0007uh-HM
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 21:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201810;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YO4bstpSIjecSQN93QBK9/zVvOiMiUN5oIW04KmN4/A=; b=IcIeHDSRQuul79ivzJ+JabGJGu
 SsMJEgs7u1FZUKzHkg/s9uaBGl0b/wdJufUVoCFZxQ9OOYURsLGsfQ0bgP2XpQbdqC7DEUWBUAVhs
 2WxjuESz1+HAkLF7XJ9LA36DR6i41tqP2I2YaTTjinMD0NvCyVD5db6ZJunVzNrU/Wcszi4TiNs9k
 0CN5XRp5QGj5NacTZBzRCviic39kJuL03dOa7XY1kbfbotAqoWFm2yhmfS5QfuSuXeg2rLzXD8668
 M4UjgZgx0jFgIGu9qF4G9h4UIs+/ZnkrCFcPfzamzh2FCwtS9MteSX/MqzyJQhmMvHKuRtEIeA1A8
 vGdsHv7g==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:31020
 helo=[192.168.10.177])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1iKqsm-0007Mz-Ap; Wed, 16 Oct 2019 23:31:00 +0200
Subject: Re: [PATCH] spi: pxa2xx: Set controller->max_transfer_size in dma mode
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <36610873-fa30-a286-d05c-5eceb3cbcb57@tronnes.org>
Date: Wed, 16 Oct 2019 23:30:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_143106_585336_40BBF684 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Robert Jarzmik <robert.jarzmik@free.fr>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTYuMTAuMjAxOSAyMS41Nywgc2tyZXYgRGFuaWVsIFZldHRlcjoKPiBJbiBETUEgbW9k
ZSB3ZSBoYXZlIGEgbWF4aW11bSB0cmFuc2ZlciBzaXplLCBwYXN0IHRoYXQgdGhlIGRyaXZlcgo+
IGZhbGxzIGJhY2sgdG8gUElPIChzZWUgdGhlIGNoZWNrIGF0IHRoZSB0b3Agb2YgcHhhMnh4X3Nw
aV90cmFuc2Zlcl9vbmUpLgo+IEZhbGxpbmcgYmFjayB0byBQSU8gZm9yIGJpZyB0cmFuc2ZlcnMg
ZGVmZWF0cyB0aGUgcG9pbnQgb2YgYSBkbWEgZW5naW5lLAo+IGhlbmNlIHNldCB0aGUgbWF4IHRy
YW5zZmVyIHNpemUgdG8gaW5mb3JtIHNwaSBjbGllbnRzIHRoYXQgdGhleSBuZWVkCj4gdG8gZG8g
c29tZXRoaW5nIHNtYXJ0ZXIuCj4gCj4gVGhpcyB3YXMgdW5jb3ZlcmVkIGJ5IHRoZSBkcm1fbWlw
aV9kYmkgc3BpIHBhbmVsIGNvZGUsIHdoaWNoIGRvZXMKPiBsYXJnZSBzcGkgdHJhbnNmZXJzLCBi
dXQgc3RvcHBlZCBzcGxpdHRpbmcgdGhlbSBhZnRlcjoKPiAKPiBjb21taXQgZTE0MzM2NGI0YzE3
NzRmNjhlOTIzYTVhMGJiMGZjYTI4YWMyNTg4OAo+IEF1dGhvcjogTm9yYWxmIFRyw7hubmVzIDxu
b3JhbGZAdHJvbm5lcy5vcmc+Cj4gRGF0ZTogICBGcmkgSnVsIDE5IDE3OjU5OjEwIDIwMTkgKzAy
MDAKPiAKPiAgICAgZHJtL3Rpbnlkcm06IFJlbW92ZSB0aW55ZHJtX3NwaV9tYXhfdHJhbnNmZXJf
c2l6ZSgpCj4gCj4gQWZ0ZXIgdGhpcyBjb21taXQgdGhlIGNvZGUgcmVsaWVkIG9uIHRoZSBzcGkg
Y29yZSB0byBzcGxpdCB0cmFuc2ZlcnMKPiBpbnRvIG1heCBkbWEtYWJsZSBibG9ja3MsIHdoaWNo
IGFsc28gcGFwZXJlZCBvdmVyIHRoZSBQSU8gZmFsbGJhY2sgaXNzdWUuCj4gCj4gRml4IHRoaXMg
Ynkgc2V0dGluZyB0aGUgb3ZlcmFsbCBtYXggdHJhbnNmZXIgc2l6ZSB0byB0aGUgRE1BIGxpbWl0
LAo+IGJ1dCBvbmx5IHdoZW4gdGhlIGNvbnRyb2xsZXIgcnVucyBpbiBETUEgbW9kZS4KPiAKPiBG
aXhlczogZTE0MzM2NGI0YzE3ICgiZHJtL3Rpbnlkcm06IFJlbW92ZSB0aW55ZHJtX3NwaV9tYXhf
dHJhbnNmZXJfc2l6ZSgpIikKPiBDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgo+
IENjOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPiBDYzogQW5keSBTaGV2
Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BpbnRlbC5jb20+Cj4gUmVwb3J0ZWQtYW5kLXRlc3Rl
ZC1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BpbnRlbC5jb20+Cj4gQ2M6
IERhbmllbCBNYWNrIDxkYW5pZWxAem9ucXVlLm9yZz4KPiBDYzogSGFvamlhbiBaaHVhbmcgPGhh
b2ppYW4uemh1YW5nQGdtYWlsLmNvbT4KPiBDYzogUm9iZXJ0IEphcnptaWsgPHJvYmVydC5qYXJ6
bWlrQGZyZWUuZnI+Cj4gQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiBDYzog
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXNwaUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGZmd2xsLmNoPgo+IC0tLQo+ICBkcml2ZXJzL3NwaS9zcGktcHhhMnh4LmMgfCAxICsKPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Bp
L3NwaS1weGEyeHguYyBiL2RyaXZlcnMvc3BpL3NwaS1weGEyeHguYwo+IGluZGV4IGJiNmExNGQx
YWIwZi4uZjc3MjAxOTE1MDMzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3BpL3NwaS1weGEyeHgu
Ywo+ICsrKyBiL2RyaXZlcnMvc3BpL3NwaS1weGEyeHguYwo+IEBAIC0xNzA3LDYgKzE3MDcsNyBA
QCBzdGF0aWMgaW50IHB4YTJ4eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgCQl9IGVsc2Ugewo+ICAJCQljb250cm9sbGVyLT5jYW5fZG1hID0gcHhhMnh4X3NwaV9j
YW5fZG1hOwo+ICAJCQljb250cm9sbGVyLT5tYXhfZG1hX2xlbiA9IE1BWF9ETUFfTEVOOwo+ICsJ
CQljb250cm9sbGVyLT5tYXhfdHJhbnNmZXJfc2l6ZSA9IE1BWF9ETUFfTEVOOwoKQXMgQW5keSBt
ZW50aW9uZWQsIC0+bWF4X3RyYW5zZmVyX3NpemUgaXMgYSBjYWxsYmFjazoKCnN0cnVjdCBzcGlf
Y29udHJvbGxlciB7CgkvKgoJICogb24gc29tZSBoYXJkd2FyZSB0cmFuc2ZlciAvIG1lc3NhZ2Ug
c2l6ZSBtYXkgYmUgY29uc3RyYWluZWQKCSAqIHRoZSBsaW1pdCBtYXkgZGVwZW5kIG9uIGRldmlj
ZSB0cmFuc2ZlciBzZXR0aW5ncwoJICovCglzaXplX3QgKCptYXhfdHJhbnNmZXJfc2l6ZSkoc3Ry
dWN0IHNwaV9kZXZpY2UgKnNwaSk7CgooSSBsb29rZWQgYXQgaXRzIHVzZXJzIGFuZCB0aGV5IGFs
bCByZXR1cm4gYSBzdGF0aWMgb3IgcHJvYmUgdGltZSB2YWx1ZQpzbyBub3Qgc3VyZSB3aHkgaXQn
cyBhIGNhbGxiYWNrLikKCk5vcmFsZi4KCj4gIAkJfQo+ICAJfQo+ICAKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
