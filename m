Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2B2D2672
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M0BAnvFVzMeLe8avBgYwx0G66u3Fjr09NHuUf4B2/L8=; b=urPzRMcVFiapNdXxk+oqL7EhS
	HCpC7Nrq/cOHTWcLqRCbZLWl8JlsjXjNy3eNapXqSd3DReh2Vm7vkE+bWo/dWYufJqZSt75Ow5DZO
	DhYA6vHOo3+Ln//5rpt8ZbpyE5NcUElgtwEZNgC1x8ezo2kV+r+HY/NbaHiJlUhTiVDUkKWhAZkfQ
	ZkBtw1ufxsION5OvKxqLQ/V2/Y8RaAuUfOsLNNgFH0CgOAyrJioADXQZE+9gyt7DHsGGrrJf2Hfyx
	uZLHm0nnnghrUbbdmtQadkYWVwYLB8rMUbB9mKmtarECE+tU+pqBzb9wtf9FPTuMoyyZxxJU3oWqb
	Vyh16O/6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUos-0001u1-JR; Thu, 10 Oct 2019 09:33:14 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUoj-0001sm-6w; Thu, 10 Oct 2019 09:33:06 +0000
Received: from localhost (unknown [192.168.167.225])
 by regular1.263xmail.com (Postfix) with ESMTP id C04F33FA;
 Thu, 10 Oct 2019 17:32:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P30352T139712782128896S1570699970516291_; 
 Thu, 10 Oct 2019 17:32:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0bc8cce9b6576d0427695f1204c0bf3e>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: CPUfreq fail on rk3399-firefly
To: Kevin Hilman <khilman@baylibre.com>, Heiko Stuebner <heiko@sntech.de>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk> <7hmugdynmk.fsf@baylibre.com>
 <2314814.WbdfqDVNqK@phil> <7hv9uq9wfe.fsf@baylibre.com>
 <c973d3fa-5f0d-c277-7c83-6227942a671a@rock-chips.com>
 <7hd0gvzuvw.fsf@baylibre.com> <7h8srjzuen.fsf@baylibre.com>
 <7hh84yisd3.fsf@baylibre.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3ed325e9-c958-c329-66b7-6eee8da06fde@rock-chips.com>
Date: Thu, 10 Oct 2019 17:32:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7hh84yisd3.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_023305_407807_81E0E545 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: kernel-build-reports@lists.linaro.org, linux-rockchip@lists.infradead.org,
 linux-next@vger.kernel.org, =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 =?UTF-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2V2aW4sCgogwqDCoMKgIEkgd2lsbCBzZW5kIHlvdSBhIEZpcmVmbHktcmszMzk5IGJvYXJk
IHRvIHlvdS4KCgpUaGFua3MsCgotIEtldmVyCgpPbiAyMDE5LzkvMjcg5LiK5Y2INjo1MSwgS2V2
aW4gSGlsbWFuIHdyb3RlOgo+IFRoaXMgaXMgbm93IGZhaWxpbmcgaW4gdGhlIHY1LjIgc3RhYmxl
IHRyZWUuCj4KPiBBbnkgc3VnZ2VzdGlvbnMgb24gd2hhdCB0byBkbz8gIG90aGVyd2lzZSwgSSds
bCBqdXN0IG5lZWQgdG8gZGlzYWJsZQo+IHRoaXMgYm9hcmQuCj4KPiBPciwgaWYgc29tZW9uZSB3
YW50cyB0byBkb25hdGUgYSBuZXcgcmszMzk5LWZpcmVmbHkgZm9yIG15IGxhYiwgSSdkIGJlCj4g
Z2xhZCB0byB0cnkgcmVwbGFjaW5nIGl0Lgo+Cj4gS2V2aW4KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
