Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D455116F5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:44:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qJ8lnyovWNLB2zMsff+5ZX3JM2ChhzLDhCXggudlqlU=; b=XCzG1hPXbBEd5yYCX5bW7QYTR
	VsWSJZnYGHnWYkblwYjDEtE9wmvoWSzp/SMKqPoCMkjB32sdcYDdVeu3C/Gmxb/+rcc4PTAKmesvU
	EevbnO4V9mTGkBPfn6DAREQCOHYFcGj1cvpNefma94fEm20fig3AcypOptB39kqCNveLiHYd9nOXW
	+4uyyioTymU1VhUFaZKCflJjdV79Fh54MRh9kT2e9FTluoKDyhLDtcTmJrdl6VL5XeYl0HeM2KSnC
	tqrWEqlukTh0ixsYui4yeXP3MwwRpPsheC7UnHdytekUEkxF12IJQi8Yy/+hY29Ogz1ML8tqhWfnh
	VDK9ckdQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKGl-000453-PT; Mon, 09 Dec 2019 14:44:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKGb-00044A-IB
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:44:07 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB9Egjpg017551; Mon, 9 Dec 2019 15:43:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=vKx6OPdSeYJTuRGa0bHCD2tYSeg+UtY9A3haTmI2eKA=;
 b=c6ntOlc126VLKeqyu4GAC4nsRoo7L/y/wpleFu9k1K+1s90MlQADGV2W+omSCJCO3CvN
 EyJtnea6Ee3WS9nY/7HUgXOMnAg1Q+E2DGu5F7gHrOtsvZ9pbKRa3nD5kYUmbOR5pt2x
 ah1hkDXaCytdccqyyaH++WgfekYbeVLs76peteDiSzhFC/LaCP31IocckHdvEOA/Xx+X
 Aa4o3Nhws5Np5oqMvE85guQd3c5PJmv/Jwvm91G2SGNdt+7tbr0awKQOFHZkDxxT2G+A
 T6soWnVEfm7PhN1YgDLqZuruHnHt+7AcTziV0LU+HJ8+ZRhQE465zo4K4C/C5hBq7fKu vQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wradh7xe1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 09 Dec 2019 15:43:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6C39910002A;
 Mon,  9 Dec 2019 15:43:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3CA812D3765;
 Mon,  9 Dec 2019 15:43:51 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 9 Dec
 2019 15:43:50 +0100
Subject: Re: [PATCH 5/5] ARM: dts: stm32: add phy-names to usbotg_hs on
 stm32mp157c-ev1
To: Amelie Delaunay <amelie.delaunay@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>,
 Russell King <linux@armlinux.org.uk>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
References: <20191121161259.25799-1-amelie.delaunay@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <181a4a40-f54c-3559-aaa9-9443fb2153ac@st.com>
Date: Mon, 9 Dec 2019 15:43:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121161259.25799-1-amelie.delaunay@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-09_04:2019-12-09,2019-12-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_064406_029162_DF585A99 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW3DqWxpZSwKCk9uIDExLzIxLzE5IDU6MTIgUE0sIEFtZWxpZSBEZWxhdW5heSB3cm90ZToK
PiBwaHktbmFtZXMgaXMgcmVxdWlyZWQgYnkgdXNib3RnX2hzIGRyaXZlciB0byBnZXQgdGhlIHBo
eSwgb3RoZXJ3aXNlLCBpdAo+IGNvbnNpZGVycyB0aGF0IHRoZXJlIGlzIG5vIHBoeXMgcHJvcGVy
dHkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW1lbGllIERlbGF1bmF5IDxhbWVsaWUuZGVsYXVuYXlA
c3QuY29tPgo+IC0tLQo+ICAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZXYxLmR0cyB8
IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMgYi9hcmNoL2FybS9ib290L2R0
cy9zdG0zMm1wMTU3Yy1ldjEuZHRzCj4gaW5kZXggMjAxMGY2MjkyYTc3Li4yMjhlMzVlMTY4ODQg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZXYxLmR0cwo+ICsr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMKPiBAQCAtMzU1LDYgKzM1
NSw3IEBACj4gICAmdXNib3RnX2hzIHsKPiAgIAlkcl9tb2RlID0gInBlcmlwaGVyYWwiOwo+ICAg
CXBoeXMgPSA8JnVzYnBoeWNfcG9ydDEgMD47Cj4gKwlwaHktbmFtZXMgPSAidXNiMi1waHkiOwo+
ICAgCXN0YXR1cyA9ICJva2F5IjsKPiAgIH07Cj4gICAKPiAKCgpTZXJpZXMgYXBwbGllZCBvbiBz
dG0zMi1uZXh0LgoKTm90ZTogZHVlIHRvIG5ldyBTVE0zMiBkaXZlcnNpdHkgSSByZW5hbWVkIHNv
bWUgcGF0Y2hlcy4KClJlZ2FyZHMKQWxleAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
