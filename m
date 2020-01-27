Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA2C14A577
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 14:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NjzvejqfqbQ9o3V2XVeUBUVzWI+gid1IcCG5eS2HdCQ=; b=LfV+nCjtUlABGoQPOfLdAqlUO
	vcakiZuPDobPbASWGu4aH45TqdzsL1wnS0d0kUlW9LlFh2Zk5r/ywGAJ7eNkW/9iDLDGC+eBe4Q61
	ZZB3JydTXAZNFlZgTrfQcRC7XXmm8WIPI5Hju9L3qHwKE7a4G2jZve27ZBo/ng+2m4pyNB61XtK2+
	j8fu7qpab5kXVDJKNkFGCSoFlksax+39HVNbYNYyKCrANvH8PCL7RBTH4OxOnnbUs2vXHPOkDSztv
	FrzoaFw+FWOpC795POCMiBH5RAYCW2H9qys3CH/HDRPEGJWOSQduyLs4mlf9ikmPWhIshvqfLUsdh
	nt0I2PP3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4ou-0002VC-EG; Mon, 27 Jan 2020 13:52:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4oj-0002Uj-Rm
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 13:52:43 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00RDqbnt009301; Mon, 27 Jan 2020 14:52:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=O6+dl2h2jXKNX+fyEpk/L/rLP8vjpdo1SJpvyPqDs8o=;
 b=X/iiA29CNOrjDNNUARjzkyJpC1jddl3AsBxKBhiHW+SWoftFjY8Gi4idGPQEkJG5183x
 krj9qylWMsE8A6gNOBlZqR6kDZrYQxmgYytDDj5hc2gFbkwdeZXnicL6BmcgfKUmlkS6
 48/Ua5wooQ/Z1K5UN5otgsaMIwZSvUyBejfnvh2CuMlSiLWsNZLH0Cue+aWsDbs2G+xe
 AqvY1Wu2uxfxnMhZ+I30pSzC53NG16S6S8pYprESRWtO5t6nIIDl1SFxMtvJIWY4ugk4
 qa1FE1Yehgv2YPYf1ZJdHV3obXWB/iF8jmS4pOEK97Bk4ybbfI35+Hs/KWOhFRNnm3vu Zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrdek90x4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 14:52:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 15257100038;
 Mon, 27 Jan 2020 14:52:30 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 00C312B2F22;
 Mon, 27 Jan 2020 14:52:29 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.49) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 27 Jan
 2020 14:52:29 +0100
Subject: Re: [PATCH 0/9] mmc: mmci: sdmmc: add sdr104 support
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <6d859def-351e-abd7-0d5f-962ad935dff2@st.com>
 <CAPDyKFo+4qTZbE=4Zgj3VN9BPYUHGskPSnYEJRo1TpARzg5zJg@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <cdc08d8d-ffb1-0fe9-377d-a1e5faf089ce@st.com>
Date: Mon, 27 Jan 2020 14:52:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFo+4qTZbE=4Zgj3VN9BPYUHGskPSnYEJRo1TpARzg5zJg@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_055242_190073_223049A8 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpMZSAxLzI0LzIwIMOgIDI6MTkgUE0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4g
T24gRnJpLCAyNCBKYW4gMjAyMCBhdCAxMzo1NSwgTHVkb3ZpYyBCQVJSRSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Pgo+PiBoaSBVbGYKPj4KPj4gSnVzdCBhICJnZW50bGVtYW4gcGlu
ZyIgb24gdGhpcyBzZXJpZXMKPj4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjAvMS8xMC8zOTIK
PiAKPiBJIHdhcyBqdXN0IHJldmlld2luZyA6LSkgVGhhbmtzIGZvciBwaW5naW5nIQo+IAo+IE9u
ZSBvdmVyYWxsIGNvbW1lbnQgaXMgdGhhdCBJIHRoaW5rIHlvdSBjYW4gdHJ5IHRvIHdvcmsgYSBi
aXQgb24gdGhlCj4gY2hhbmdlbG9ncy4gSW4gc29tZSBjYXNlcyB5b3UgZGVzY3JpYmVkIHdoYXQg
dGhlIHBhdGNoIGRvZXMsIHdoaWNoIGlzCj4gZ29vZCwgYnV0IGl0IG1heSBsYWNrIGluZm9ybWF0
aW9uIGFib3V0ICp3aHkqIHRoZSBjaGFuZ2UgaXMgd2FudGVkLgoKT2ssIEkgdHJ5IHRvIGFkZCBh
IGNvbW1lbnQgdG8gKndoeSoKCj4gCj4gT3ZlcmFsbCwgdGhlIHNlcmllcyBsb29rcyBuaWNlLgo+
IAo+IEtpbmQgcmVnYXJkcwo+IFVmZmUKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
