Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6CC47100
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 17:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyZNscJQdGBZWeXCaX5i8i8fRBIBXVbiQ5/dDrHbmqM=; b=HfOPif+pQvMlMC
	TcvBTw7BBxHw28FzItWLN/Sz7ihHVPtpg5hByv4Ajg716/zaP8IPzidMja8cu4PZfHjIy8J9hOjKv
	0fGYQjeNeqD7ekSq5Ad1j0TrAYlJ5SQgtzIppGNBRl/RA2BYwDFjzQdbLztCQZnDqGn+ESy12RgHl
	1MIPnbH8S7mAZCv5ZwvvcstWLm/aDoMHnpuuALO3c8m+x+Nem6iDne8aKhsL3Ma9PmUPAfEhvaLFh
	peUoGGMirKCicDe8QeXLEAkMiazWMlbn9r/29vhzY8WOEVBwgHvsbsrXB9TdEeOwvSrqlVD9iblqW
	JveoJSP2No4d8fuO3V9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcApw-00049Y-Ij; Sat, 15 Jun 2019 15:43:24 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcApg-00048t-Hn
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 15:43:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=vmQiT47B7iuP+pBGI4QPqK4T6SL+9D+i09dO0tJaMPw=; 
 b=StIRNfqA3b0HwhkyL03TQS1Szupe8RMVlatYuRK24jqfPBymODFtmz9bC1Q2JNxKfBx8EgfbVjiFi3ZGNnCbA+BGdnXu1XFMHMjGxKyx4hqQsbm9nf8SzRFlyYoW9pyuFDzhxr7P/xY3owl6XzWvqHxqhjxmvmEIZxeikAzD1wfkUj9dcJv2pKwwT5T36v03/QdhKjoaynM+iItnLdcvvnPbmB0EAoL9QSHS1f8ffq28LQllEEnKytIh3EZkKZZtoPwBsns5ZI34mY1YiXdbldXml02JBmwO62rybqSgr47U5PUQwrPb6uY6Tp3mtg2Gd9pQDQarqcPMjcSAdIIRsg==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54329
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hcApe-0007lG-Kc; Sat, 15 Jun 2019 17:43:06 +0200
Subject: Re: [PATCH v4 12/12] drm/vc4: hdmi: Set default state margin at reset
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <a8f01d3653f3ed4166a4d88dcc5d6e905fa2e602.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <d1436630-928c-aca0-a874-50cb500b2220@tronnes.org>
Date: Sat, 15 Jun 2019 17:43:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a8f01d3653f3ed4166a4d88dcc5d6e905fa2e602.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_084308_764931_536A1002 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBOb3cgdGhhdCB0
aGUgVFYgbWFyZ2lucyBhcmUgcHJvcGVybHkgcGFyc2VkIGFuZCBmaWxsZWQgaW50bwo+IGRybV9j
bWRsaW5lX21vZGUsIHdlIGp1c3QgbmVlZCB0byBpbml0aWFsaXNlIHRoZSBmaXJzdCBzdGF0ZSBh
dCByZXNldCB0bwo+IGdldCB0aG9zZSB2YWx1ZXMgYW5kIHN0YXJ0IHVzaW5nIHRoZW0uCj4gCj4g
U2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4K
PiAtLS0KClJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
