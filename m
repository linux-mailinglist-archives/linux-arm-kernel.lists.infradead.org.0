Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C43A46F22
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 10:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5y7mi+gMDVq5wPyIZ2NEGDdZxbEoiPI+xJX3IGvdbM=; b=ZUD9Zd2KGDyR1T
	z+knY5q316GeHdiANecRCwkiD0GGNRR9k4DPoqNdXTIcs5cebg9evILTpOs0sCM9UgPv4jSOjfz78
	f8K+sQV4b+na8Etp2FLMyP00gAY7etKflgUyY3v4CculPuJTwCogINbyfx23B+ONWJuVGHM5EGp4B
	fEvpNQzU/aq8xYpK/CQG916/ecBYcD8cqJCO/YUxu7fr4Zo6gdq1ggvL3y/e9PrpLA0zzQgg2MyBc
	yYp5DYGtnM3TDmS6EkB1zonNI7ZH9J5zc0kYpebkaFnpEw4GBEZHq+iyS8rLRROBBczSHSxXg8e66
	GHOStEKteFZJmjBb66cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4XG-0001bl-6E; Sat, 15 Jun 2019 08:59:42 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4X4-0001bM-4j
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 08:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=Z9U4z0yC0a4n8Tlv13Qd+yMJXazaf0NPHuDR+LLnpqw=; 
 b=cbeIulousTi7N/4aXIebVb6fKOy7hhH1/WsCu+NxhhGWQmT9FMuRw6WsiBXPKzELgVROctzVcmo9YIZoIHt72AhBgA4fP8wGXIrcwDnlFu/1JMntM/4fOrRl+zgU8gs7J+ji74EJMtDgM2mMAeTQ+wctfXpeUddx5nEuL8gii+9IoBgG83HKh6LCF7gAMdf+CBDVGrYWAR0yHTYe+Ql2D7GbheELLZZRqY1+DTf1T9WfFHN8KkL5n+0JWbsBeqSsM/ers0bC1orze8OpY7MEk/es6D7E0QtSYaCmeAtyGnkq6ckPXXF05arQgOPJ4V5eVVAfF5grpx/i0+fA30K1eg==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:52479
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hc4X2-0003Jn-8r; Sat, 15 Jun 2019 10:59:28 +0200
Subject: Re: [PATCH v4 03/12] drm/client: Restrict the rotation check to the
 rotation itself
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <4b1a140ab66dc31571e07c0881f9d9dc6397f403.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <d11f49ec-4834-4c13-ca28-156edc34c7d5@tronnes.org>
Date: Sat, 15 Jun 2019 10:59:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4b1a140ab66dc31571e07c0881f9d9dc6397f403.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_015930_356035_FD26171B 
X-CRM114-Status: UNSURE (   8.45  )
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
aWVudF9yb3RhdGlvbiBoYXMgYSBjaGVjayBvbiB0aGUgcm90YXRpb24gdmFsdWUsIGJ1dCB0aGUK
PiByZWZsZWN0aW9ucyBhcmUgYWxzbyBzdG9yZWQgaW4gdGhlIHNhbWUgdmFyaWFibGUsIGFuZCB0
aGUgY2hlY2sgZG9lc24ndAo+IHRha2UgdGhpcyBpbnRvIGFjY291bnQuCj4gCj4gVGhlcmVmb3Jl
LCBldmVuIHRob3VnaCB3ZSBtaWdodCBoYXZlIGEgdmFsaWQgcm90YXRpb24sIGlmIHdlJ3JlIGFs
c28gdXNpbmcKPiBhIHJlZmxlY3Rpb24gcGFyYW1ldGVyLCB0aGUgdGVzdCB3aWxsIGZhaWwgZm9y
IG5vIHBhcnRpY3VsYXIgcmVhc29uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQg
PG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Cj4gLS0tCgpSZXZpZXdlZC1ieTogTm9yYWxmIFRy
w7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
