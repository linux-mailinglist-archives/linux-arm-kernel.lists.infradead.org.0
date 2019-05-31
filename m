Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F39F3120E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrepKVWopWuNTi+RWIunV9qQb+ap/Z75/M3KmHU0J+w=; b=Ex3GEs0npLBWW5
	+GTlPAYzKwac19KKiyYfEhtBh/KQRSCLCsPXgqaQfiG1KSABNJxKraIUg+SGZkYnIVz9cZv3nYSJX
	Y1lD8ZQaaNCiJ39evj/xnZwkrs0lNEV4D5FEDtA+5Jr71ns4me6ZqAHohDfabmY5TLPwV7yA6yg0k
	I0SPhK/6a4gIt6kN2kgdHcmLyoauwz02787o61RhLuYOu/gt67S3mQ1rQ2uTj37pz0FtpxrnC6J8H
	8tYQ+774lfSZkLiyWMP6S3EjRjc7pKyXW95SjTY+3zVcThCQYE7qwuETNtDfRsbU95q1/Jw1IstLf
	xRedzlhX9HZYUk+8s6+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkBs-0005Pg-PY; Fri, 31 May 2019 16:15:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkBl-0005Ob-TT
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:15:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6E218AE8D;
 Fri, 31 May 2019 16:15:24 +0000 (UTC)
Subject: Re: [PATCH v3 0/6] Prerequisites for NXP LS104xA SMMU enablement
To: laurentiu.tudor@nxp.com
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <d086216f-f3fc-c88a-3891-81e84e8bdb01@suse.de>
Date: Fri, 31 May 2019 18:15:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_091530_097218_DD8C8067 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Joakim.Tjernlund@infinera.com, iommu@lists.linux-foundation.org,
 camelia.groza@nxp.com, Mian Yousaf Kaukab <yousaf.kaukab@suse.com>,
 linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGF1cmVudGl1LAoKQW0gMzAuMDUuMTkgdW0gMTY6MTkgc2NocmllYiBsYXVyZW50aXUudHVk
b3JAbnhwLmNvbToKPiBUaGlzIHBhdGNoIHNlcmllcyBjb250YWlucyBzZXZlcmFsIGZpeGVzIGlu
IHByZXBhcmF0aW9uIGZvciBTTU1VCj4gc3VwcG9ydCBvbiBOWFAgTFMxMDQzQSBhbmQgTFMxMDQ2
QSBjaGlwcy4gT25jZSB0aGVzZSBnZXQgcGlja2VkIHVwLAo+IEknbGwgc3VibWl0IHRoZSBhY3R1
YWwgU01NVSBlbmFibGVtZW50IHBhdGNoZXMgY29uc2lzdGluZyBpbiB0aGUKPiByZXF1aXJlZCBk
ZXZpY2UgdHJlZSBjaGFuZ2VzLgoKSGF2ZSB5b3UgdGhvdWdodCB0aHJvdWdoIHdoYXQgd2lsbCBo
YXBwZW4gaWYgdGhpcyBwYXRjaCBvcmRlcmluZyBpcyBub3QKcHJlc2VydmVkPyBJbiBwYXJ0aWN1
bGFyLCBhIHVzZXIgaW5zdGFsbGluZyBhIGZ1dHVyZSBVLUJvb3QgdXBkYXRlIHdpdGgKdGhlIERU
QiBiaXRzIGJ1dCBib290aW5nIGEgc3RhYmxlIGtlcm5lbCB3aXRob3V0IHRoaXMgcGF0Y2ggc2Vy
aWVzIC0Kd291bGRuJ3QgdGhhdCByZWdyZXNzIGRwYWEgdGhlbiBmb3Igb3VyIGN1c3RvbWVycz8K
ClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIExpbnV4IEdtYkgsIE1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dp
bnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
