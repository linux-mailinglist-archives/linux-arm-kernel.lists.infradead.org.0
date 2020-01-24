Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94EF148576
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 13:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/D1+63+LKbmVLfpO6TJ8xsfbOvbJvX09OTGUN7r1N4c=; b=mZlA0TFQoK/jvyExq2N3W8SZt
	UsqmQdFQdHrMqqJPgIvv4D31txcOfkuHcFOW5w4uAlWTpFaV4Jm5U6q5vziS1zchMu+3zgnB0bh/l
	/bkVN4Rn1EhxLKmByITOV5aDLe1hLVAOxp5QMhCf30OGEXOaAbkv1pTyDg3H0kefSBGc79OszgX+s
	ffufApLwUVGGTmbZQH6Rk27nPy4Li7i4mbXmhLKhCQRWtyKReR5pZ6V8OIF78gjxDWXaDzfOcWnVC
	cCCqUR8hdJ8V0Vc8XvGoPlvFbNvf6RrXGezWjyzRAOKGVTMHbBd5NIR6D0qeI+lXty/E/Dr9RzSD1
	c4s2l9ZXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuyUv-0007ES-TU; Fri, 24 Jan 2020 12:55:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuyUl-0007Df-W4
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 12:55:33 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00OCsTCw012368; Fri, 24 Jan 2020 13:55:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=HsT5XOh0k0Oip5e4q1QwfFV3XVw3YKpi81ECZxj8y6Q=;
 b=aqxG94s1vaUPEi7oDUwgOsYy3ksvsgGOaWryEalFEw+6Zgdpn66PA45Wk9YnaG06YC0O
 aBklNAsLyjk63X/6JayBKfFWnPoajK64SDY5dhXmGZ5SYJXnDEuGIwkrxaDGKW7Lqoxu
 5imLP6Ba6rd3VLxeGfE5eELqunxfwIp/TEo6qOT1oIRrHt8ADdzIe97YYl01EGefCZ68
 8tbO7EMpd0mYn/mc8D923WscSRyQv2abfuiZbik1+S7JawA9NuI1C8Ct9ZKLLcp5B7N1
 ApvOKGuEbrfLmwvcTx3KpafV0loMaKPLNCmf9fnU1DQyWTdhTUdaAVSVhzPPor7hJXBG Cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrc5g12e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 24 Jan 2020 13:55:24 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CE8E310002A;
 Fri, 24 Jan 2020 13:55:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B75A72A847D;
 Fri, 24 Jan 2020 13:55:23 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.48) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 24 Jan
 2020 13:55:23 +0100
Subject: Re: [PATCH 0/9] mmc: mmci: sdmmc: add sdr104 support
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
References: <20200110134823.14882-1-ludovic.barre@st.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <6d859def-351e-abd7-0d5f-962ad935dff2@st.com>
Date: Fri, 24 Jan 2020 13:55:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
Content-Language: fr
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-24_03:2020-01-24,
 2020-01-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_045532_518233_9F49A919 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpKdXN0IGEgImdlbnRsZW1hbiBwaW5nIiBvbiB0aGlzIHNlcmllcwpodHRwczovL2xr
bWwub3JnL2xrbWwvMjAyMC8xLzEwLzM5MgoKUmVnYXJkcwpMdWRvCgpMZSAxLzEwLzIwIMOgIDI6
NDggUE0sIEx1ZG92aWMgQmFycmUgYSDDqWNyaXTCoDoKPiBUbyBzdXBwb3J0IHRoZSBzZHIxMDQg
bW9kZSwgc2RtbWMgdmFyaWFudCBuZWVkczoKPiAtSGFyZHdhcmUgZGVsYXkgYmxvY2sgc3VwcG9y
dCBmb3Igc2RtbWMgdmFyaWFudAo+ICAgd2l0aCB0dW5pbmcgcHJvY2VkdXJlCj4gLVZvbHRhZ2Ug
c3dpdGNoIGNhbGxiYWNrcwo+IC1zZG1tYyByZXZpc2lvbiAyLjAKPiAKPiBMdWRvdmljIEJhcnJl
ICg5KToKPiAgICBtbWM6IG1tY2k6IHNkbW1jOiByZXBsYWNlIHNnX2RtYV94eHggbWFjcm9zCj4g
ICAgbW1jOiBtbWNpOiBzZG1tYzogcmVuYW1lIHNkbW1jX3ByaXYgc3RydWN0IHRvIHNkbW1jX2lk
bWEKPiAgICBtbWM6IG1tY2k6IGFkZCBhIHJlZmVyZW5jZSBhdCBtbWNfaG9zdF9vcHMgaW4gbW1j
aSBzdHJ1Y3QKPiAgICBtbWM6IG1tY2k6IGFkZCBwcml2YXRlIHBvaW50ZXIgZm9yIHZhcmlhbnQK
PiAgICBkdC1iaW5kaW5nczogbW1jOiBtbWNpOiBhZGQgZGVsYXkgYmxvY2sgYmFzZSByZWdpc3Rl
ciBmb3Igc2RtbWMKPiAgICBtbWM6IG1tY2k6IHNkbW1jOiBhZGQgZXhlY3V0ZSB0dW5pbmcgd2l0
aCBkZWxheSBibG9jawo+ICAgIG1tYzogbW1jaTogYWRkIHZvbHRfc3dpdGNoIGNhbGxiYWNrcwo+
ICAgIG1tYzogbW1jaTogc2RtbWM6IGFkZCB2b2x0YWdlIHN3aXRjaCBmdW5jdGlvbnMKPiAgICBt
bWM6IG1tY2k6IGFkZCBzZG1tYyB2YXJpYW50IHJldmlzaW9uIDIuMAo+IAo+ICAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbW1jL21tY2kudHh0ICAgICAgICAgIHwgICAyICsKPiAgIGRyaXZlcnMv
bW1jL2hvc3QvbW1jaS5jICAgICAgICAgICAgICAgICAgICAgICB8ICAzOSArKysrCj4gICBkcml2
ZXJzL21tYy9ob3N0L21tY2kuaCAgICAgICAgICAgICAgICAgICAgICAgfCAgIDggKwo+ICAgZHJp
dmVycy9tbWMvaG9zdC9tbWNpX3N0bTMyX3NkbW1jLmMgICAgICAgICAgIHwgMTk5ICsrKysrKysr
KysrKysrKysrLQo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAyNDEgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
