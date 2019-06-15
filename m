Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF57A46F1F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 10:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRpqZfrSTHGxmlipHYcJ8ch+bOeCusBDszn5R04uPn8=; b=QKhnBJu4ou6358
	/ERYkC9IXTh0YhLyDjceX6m96EQBKkD1Nd9LFd9pHQl1OIWKo525bO/2/rRRqfkNFB9MwAt6fKjLU
	SvIsfBdbS/gdCl5nKEdZ102s24xKtL2yOQIEkK/Wg823BEdy6xP/nRhDBkgJobMrIds+oQuyGGGEZ
	XN2l4OEmI2M15ut4jtpo9U1haEM4MuRH4QYw2/2HOFZXPjm5HoucVIaxHfOW6qEBCOkwpPML1URsy
	IMiFsyM7iv9/SedVGkFXhHNpJfpoh83q8QpWZDtXiEaeA8LP7mmxFh/2aCqZEyOluSBoUeDfzqTKF
	FRhgih3LLrb4/miSDe7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4QO-0008JP-AE; Sat, 15 Jun 2019 08:52:36 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4Q3-0008GB-6A
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 08:52:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=9ksoxJcU3paxkChs1tqUSzvjMpIhGgaa2Xjsz02iul4=; 
 b=MqCrW/j5oqGKYRIG7R0ryROZHUyBwfSSEkv3wLRMyWTKE/3rrhsxGgTJH+SU2MjPj/kTrnNQtMikd3u9iJSgTNhbq/2wXBpPe0GKbtEHTEFKT14aoXEsx768A02BeZgex0FpkHKN/O6C4JMG0p8zv9Y/69qilQOzqQWOOlwjalPqP2cBXE7+VtBqXA8F78zTanvcjRx1hHSmr0dn6vqCnN3SBRQCNywJtorWB6LzDuSyfuGXvY0wsL5mjaEu0uQnqVFDoqz10Wpy+5XZGIzR2QUZZa7kANPaf3K0FsCizQByf6EuukplbZoDYYySfyDzH8326hE8ROLBmapA4eKjwA==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:52445
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hc4Q1-0001jN-9H; Sat, 15 Jun 2019 10:52:13 +0200
Subject: Re: [PATCH v4 02/12] drm/client: Restrict the plane_state scope
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <4f6344cb770047cf5808791d849bbc0cbd330e54.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <304ac11f-766e-9140-2b5a-d1be9fd73e46@tronnes.org>
Date: Sat, 15 Jun 2019 10:52:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4f6344cb770047cf5808791d849bbc0cbd330e54.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_015215_488654_DB9F0D30 
X-CRM114-Status: UNSURE (   9.46  )
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

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBUaGUgZHJtX2Ns
aWVudF9tb2Rlc2V0X2NvbW1pdF9hdG9taWMgZnVuY3Rpb24gdXNlcyB0d28gdGltZXMgdGhlCj4g
cGxhbmVfc3RhdGUgdmFyaWFibGUgaW4gaW5uZXIgYmxvY2tzIG9mIGNvZGUsIGJ1dCB0aGUgdmFy
aWFibGUgaGFzIGEgc2NvcGUKPiBnbG9iYWwgdG8gdGhpcyBmdW5jdGlvbi4KPiAKPiBUaGlzIHdp
bGwgbGVhZCB0byBpbmFkdmVydGVudCBkZXZzIHRvIHJldXNlIHRoZSB2YXJpYWJsZSBpbiB0aGUg
c2Vjb25kCj4gYmxvY2sgd2l0aCB0aGUgdmFsdWUgbGVmdCBieSB0aGUgZmlyc3QsIHdpdGhvdXQg
YW55IHdhcm5pbmcgZnJvbSB0aGUKPiBjb21waWxlciBzaW5jZSB2YWx1ZSB3b3VsZCBoYXZlIGJl
ZW4gaW5pdGlhbGl6ZWQuCj4gCj4gRml4IHRoaXMgYnkgbW92aW5nIHRoZSB2YXJpYWJsZSBkZWNs
YXJhdGlvbiB0byB0aGUgcHJvcGVyIHNjb3BlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBS
aXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4gLS0tCgpSZXZpZXdlZC1ieTogTm9y
YWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
