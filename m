Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8A046F37
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 11:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNeBFsxhkhvf0VHLbbIzMtSTGC3aMtTQ7muwPa8ToYA=; b=J2M1c3ZqGMZptd
	AHmZgRXjjGaYVkd7bGd0YOdWgeN9dUf1gT/JLtkIdNSb1MmYRIj/atriY+Wrkg4DOWmqOcfiQjaCm
	PwS7iKbCSVa1TiQ7MIuj6L6c4Non9NyxPoKGlwcCg7m++csbGrCDngiyKhPKvBIqFi57YozXpcIuR
	r1x3mbfMqQOB1Pgz+a+XfFXw3bCPCD1wsNLlp8y1aZarcDTkzNcDA/XSfWEh9SoULgJm+R3+chUcZ
	DmLwOi3c+m71R9qXH6Ll4248bBCe8MfDOsI73byEdByhHNhJevVYKuFg8h4pRhuld023dAHrjbLf9
	BFzNpxNyTuoj7T9Lu4ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4jb-0007jE-T1; Sat, 15 Jun 2019 09:12:27 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4jA-0007Zv-5V
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 09:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=e/kZhpg6kkfRn25npvfInWEOHg2V7w40nfvL+KiiOtY=; 
 b=CAnZf3SLCQOho+SRb2fgzfagkMvGD07X9i+qPrDUXy6cXpqqgvaW0h9rzbOb/dGlU5+NNuu8GOODFOkny+s5FZ5M9yE63NaBhxnrE9mQo1SrV22XQo6lDptc9XoPOwCOq4ThkxI99H7sjX/hwHSeBdkR5v2ZUTSPVzqIZFZhIBhJIhGKzFhk+jYTL6gjqrg9U4tpmnO2uS0FUM1PCPIAinW3n6gYvQ18G6pMiI7pLV7IfRrwUsP0jL/xfVDs/Jsa8pBtrj/SzisYvPyP856WBUIEOkf/sn1j9KieDoSQam5uzXPTrThPvv17trr+x/De/gD4o/BdCE2XjdMNHg/IPw==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:52545
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hc4j8-00063R-5e; Sat, 15 Jun 2019 11:11:58 +0200
Subject: Re: [PATCH v4 05/12] drm/modes: Rewrite the command line parser
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <0797f942f8c79a3825974fe9584e810e515ab8e0.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <f333d42a-96bb-05a3-18f8-c8ebdcfec51d@tronnes.org>
Date: Sat, 15 Jun 2019 11:11:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0797f942f8c79a3825974fe9584e810e515ab8e0.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_021200_447862_7BCC5915 
X-CRM114-Status: UNSURE (   8.53  )
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
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBGcm9tOiBNYXhp
bWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGZyZWUtZWxlY3Ryb25zLmNvbT4KPiAKPiBSZXdyaXRl
IHRoZSBjb21tYW5kIGxpbmUgcGFyc2VyIGluIG9yZGVyIHRvIGdldCBhd2F5IGZyb20gdGhlIHN0
YXRlIG1hY2hpbmUKPiBwYXJzaW5nIHRoZSB2aWRlbyBtb2RlIGxpbmVzLgo+IAo+IEhvcGVmdWxs
eSwgdGhpcyB3aWxsIGFsbG93IHRvIGV4dGVuZCBpdCBtb3JlIGVhc2lseSB0byBzdXBwb3J0IG5h
bWVkIG1vZGVzCj4gYW5kIC8gb3IgcHJvcGVydGllcyBzZXQgZGlyZWN0bHkgb24gdGhlIGNvbW1h
bmQgbGluZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJk
QGZyZWUtZWxlY3Ryb25zLmNvbT4KPiAtLS0KClJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5uZXMg
PG5vcmFsZkB0cm9ubmVzLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
