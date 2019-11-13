Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84357FAF4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 12:07:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpHB0DmS/3KIekNHRnT1tPnXJqkx5A+Hn6fb54xsrZQ=; b=SDSzHNn5nAVXRE
	Rd95YZMsDu9vk94UwB1Xbok38laEU7Jl/wUySLbk2gnR5+2Ijc54ymwv41955qCXpZb+IdeCeoikV
	9sFBb+te10tzeVEaG40EXluPNMeX9EZkdOlKBqUF2KStOQy9BLAI2NQtk7cDknOEOYcStnxveuZ1H
	iwhFKLgutYaAYBP9efXQO5c60IAYLSjDFa9xmg5S69kS7bIGdHCqgiUWWpBwEH9ITodmwu7fwd7GY
	5b429DrhJC8X8Ud/Ud7TEYDU5slMh6TM1YAlMxRHj5l85C9hzK5UBV4TRUx/PG1y67uL/NppS5Cou
	7eMm9ByBxsyoD5iTNqsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqUM-00071B-II; Wed, 13 Nov 2019 11:07:06 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqU7-00070f-AW
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 11:06:53 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xADB6XsH114264;
 Wed, 13 Nov 2019 05:06:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573643193;
 bh=gSAJ+1KpkGy+Q87mlI/tRdXnYA0Fp4XtcaHY6UfujOc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=X8HMahfV7qdJsgEfNTulOHlp4TJPpj8nc0CC/YuUcqC+GwSC256cdrxmxhENY2e04
 61oz5VO/LASJhQ6t8VoztScF/KDh/y35LJ2aiXKQVOJyZT17XY2kNpp2lcswkz8cfF
 dRgCdPrCHiN/hq8y1ejhy1NM/P4Z2Pqh2ELfzubI=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xADB6Wu9096144
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 Nov 2019 05:06:32 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 05:06:15 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 05:06:15 -0600
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xADB6T5G127091;
 Wed, 13 Nov 2019 05:06:29 -0600
Subject: Re: [PATCH] irqchip/ti-sci-inta: Use ERR_CAST inlined function
 instead of ERR_PTR(PTR_ERR(...))
To: Marc Zyngier <maz@kernel.org>
References: <776b7135-26af-df7d-c3a9-4339f7bf1f15@web.de>
 <670cd9a2-2083-bb5e-7bfc-58d5c90ec756@ti.com>
 <29a69991ec7726d133e54a2891159e86@www.loen.fr>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <3642882b-edab-1667-f370-47e8358edc82@ti.com>
Date: Wed, 13 Nov 2019 16:35:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <29a69991ec7726d133e54a2891159e86@www.loen.fr>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_030651_462982_BE1E6D31 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Jason Cooper <jason@lakedaemon.net>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Markus Elfring <markus.elfring@web.de>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8xOSAzOjQ1IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAxOS0xMS0x
MSAwNDo0NSwgTG9rZXNoIFZ1dGxhIHdyb3RlOgo+PiBPbiAwNS8xMS8xOSA1OjAwIFBNLCBNYXJr
dXMgRWxmcmluZyB3cm90ZToKPj4+IEZyb206IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJz
LnNvdXJjZWZvcmdlLm5ldD4KPj4+IERhdGU6IFR1ZSwgNSBOb3YgMjAxOSAxMjoxOTozOSArMDEw
MAo+Pj4KPj4+IEEgY29jY2ljaGVjayBydW4gcHJvdmlkZWQgaW5mb3JtYXRpb24gbGlrZSB0aGUg
Zm9sbG93aW5nLgo+Pj4KPj4+IGRyaXZlcnMvaXJxY2hpcC9pcnEtdGktc2NpLWludGEuYzoyNTA6
OS0xNjogV0FSTklORzogRVJSX0NBU1QgY2FuIGJlIHVzZWQKPj4+IHdpdGggdmludF9kZXNjLgo+
Pj4KPj4+IEdlbmVyYXRlZCBieTogc2NyaXB0cy9jb2NjaW5lbGxlL2FwaS9lcnJfY2FzdC5jb2Nj
aQo+Pj4KPj4+IFRodXMgYWRqdXN0IHRoZSBleGNlcHRpb24gaGFuZGxpbmcgaW4gb25lIGlmIGJy
YW5jaC4KPj4+Cj4+PiBGaXhlczogOWYxNDYzYjg2YzEzMjc3ZDBiZDg4ZDVlZTM1OTU3N2VmNDBm
NGRhNyAoImlycWNoaXAvdGktc2NpLWludGE6IEFkZAo+Pj4gc3VwcG9ydCBmb3IgSW50ZXJydXB0
IEFnZ3JlZ2F0b3IgZHJpdmVyIikKPj4KPj4gRml4ZXM6IDlmMTQ2M2I4NmMxMyAoImlycWNoaXAv
dGktc2NpLWludGE6IEFkZCBzdXBwb3J0IGZvciBJbnRlcnJ1cHQKPj4gQWdncmVnYXRvciBkcml2
ZXIiKQo+IAo+IEkgZnVuZGFtZW50YWxseSBkaXNhZ3JlZSB3aXRoIHRoZSAiRml4ZXM6IiB0YWcu
IFRoaXMgaXNuJ3QgYSBmaXgsCj4ganVzdCBhIG1pbm9yIHJlYWRhYmlsaXR5IGltcHJvdmVtZW50
LiBGbGFnZ2luZyB0aGluZ3MgYXMgIkZpeGVzOiIKPiBlbmRzIHVwIHRyaWdnZXJpbmcgYWxsIGtp
bmQgb2YgdW5uZWNlc3NhcnkgYmFja3BvcnRzIHRvIC1zdGFibGUuCj4gCj4+IFdpdGggdGhpczoK
CkZpbmUgd2l0aCBtZS4gUGxlYXNlIGRyb3AgdGhlIGZpeGVzIHRhZy4KClRoYW5rcyBhbmQgcmVn
YXJkcy4KTG9rZXNoCgo+Pgo+PiBSZXZpZXdlZC1ieTogTG9rZXNoIFZ1dGxhIDxsb2tlc2h2dXRs
YUB0aS5jb20+Cj4gCj4gSSdsbCBvdGhlcndpc2UgdGFrZSB0aGlzIHBhdGNoIGluIC1uZXh0Lgo+
IAo+IFRoYW5rcywKPiAKPiDCoMKgwqDCoMKgwqDCoCBNLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
