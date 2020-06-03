Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38B41EC7B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MPcLACQxjgu8eo2tmQwciu4gXNvsb4kHDPDJRLpcVwo=; b=D5O1wqGeJtDLOTOCQkI0wSn26
	mz9yGWXKuruNWZXOOkCxI+mbKvgOFcOFcUeV98UQ1h7FAjsiTUtyIU2qKxmg6Myze9EBPpCRNAmf/
	xSvFd9m5rBu+AiM+g+Eeat4Ufnv4RhX7mRjau8wUig9fySjvl50/MRb4bFc1BVnTofToL4e2wX6Yi
	An0H5hzSUyuLnk3SVoOy9ioyeTXcF0eS5zfYcw2QHtvDOhaRq3M0/Atc4MgUK9uTHaHXQYO72aFwT
	WwITNkgjbiUdukRfhuWB40ZOe8A/Kscw+YV6WJOAvuNk7tGID3dNzgs98eecBEhXQas7cxH7yT4m8
	MsGXJyWPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgJnv-0001pw-PX; Wed, 03 Jun 2020 03:10:59 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgJnc-0001au-QD; Wed, 03 Jun 2020 03:10:43 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 022B71325;
 Wed,  3 Jun 2020 11:10:28 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.122] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P31254T139913132439296S1591153826661362_; 
 Wed, 03 Jun 2020 11:10:27 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <57c229d03dbe2bff381c71644df05028>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH] pwm: rockchip: simplify rockchip_pwm_get_state()
To: Thierry Reding <thierry.reding@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
References: <20190919091728.24756-1-linux@rasmusvillemoes.dk>
 <20200602123914.GA3360525@ulmo>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <2f860dba-26c7-c670-58e2-9ef502881522@rock-chips.com>
Date: Wed, 3 Jun 2020 11:10:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200602123914.GA3360525@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_201041_012358_E67F1523 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBjaGFuZ2UgaXMgdmVyeSBnb29kLCB0aGFuayB5b3UuIFRoZSBjb2RlIGNvbnRpbnVlcyBm
cm9tIHRoZSAKb3JpZ2luYWwgY29kZShnZXRfc3RhdGVfdjEgYW5kIGdldF9zdGF0ZV92MiksIGRp
ZG7igJl0IG1ha2UgYW55IGNoYW5nZXMgYXQgCnRoYXQgdGltZSwgYW5kIHNvcnJ5IEkgaGF2ZSBu
b3Qgc2VlbiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnIAptYWlsIHJlY2VudGx5
LgoK5ZyoIDIwMjAvNi8yIOS4i+WNiDg6MzksIFRoaWVycnkgUmVkaW5nIOWGmemBkzoKPiBPbiBU
aHUsIFNlcCAxOSwgMjAxOSBhdCAxMToxNzoyN0FNICswMjAwLCBSYXNtdXMgVmlsbGVtb2VzIHdy
b3RlOgo+PiBUaGUgd2F5IHN0YXRlLT5lbmFibGVkIGlzIGNvbXB1dGVkIGlzIHJhdGhlciBjb252
b2x1dGVkIGFuZCBoYXJkIHRvCj4+IHJlYWQgLSBib3RoIGJyYW5jaGVzIG9mIHRoZSBpZigpIGFj
dHVhbGx5IGRvIHRoZSBleGFjdCBzYW1lIHRoaW5nLiBTbwo+PiByZW1vdmUgdGhlIGlmKCksIGFu
ZCBmdXJ0aGVyIHNpbXBsaWZ5ICI8Ym9vbGVhbiBjb25kaXRpb24+ID8gdHJ1ZSA6Cj4+IGZhbHNl
IiB0byAiPGJvb2xlYW4gY29uZGl0aW9uPiIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFJhc211cyBW
aWxsZW1vZXMgPGxpbnV4QHJhc211c3ZpbGxlbW9lcy5kaz4KPj4gLS0tCj4+IEkgc3R1bWJsZWQg
b24gdGhpcyB3aGlsZSB0cnlpbmcgdG8gdW5kZXJzdGFuZCBob3cgdGhlIHB3bSBzdWJzeXN0ZW0K
Pj4gd29ya3MuIFRoaXMgcGF0Y2ggaXMgYSBzZW1hbnRpYyBuby1vcCwgYnV0IGl0J3MgYWxzbyBw
b3NzaWJsZSB0aGF0LAo+PiBzYXksIHRoZSBmaXJzdCBicmFuY2ggc2ltcGx5IGNvbnRhaW5zIGEg
ImRvdWJsZSBuZWdhdGl2ZSIgc28gZWl0aGVyCj4+IHRoZSAhPSBzaG91bGQgYmUgPT0gb3IgdGhl
ICJmYWxzZSA6IHRydWUiIHNob3VsZCBiZSAidHJ1ZSA6IGZhbHNlIi4KPj4KPj4gICBkcml2ZXJz
L3B3bS9wd20tcm9ja2NoaXAuYyB8IDcgKy0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBJJ3ZlIGFwcGxpZWQgdGhpcy4gSXJyZXNw
ZWN0aXZlIG9mIGFueSBmZWVkYmFjayBEYXZpZCB3b3VsZCBoYXZlIHRoaXMgaXMKPiBjb3JyZWN0
IGFuZCBhIG5pY2Ugc2ltcGxpZmljYXRpb24uCj4gCj4gVGhpZXJyeQo+IAoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
