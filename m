Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882E3180755
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:48:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LUIZJZYXPgsoLxZmRhyoo4+uA8KweQ+/bKp5ADSYYNc=; b=kM2g1HrBlB1+DM
	ebALa43Nv1DwlzvNU+3RxHrJaveXUTjWmOdJm90vnPG3BZZPG5iIhKRZVfLISFz1GVxLLdg4VLLjB
	gJiJsB/8cf3IRjbBTW9GKyfCiW6HaDx5BO/BiIfYhREs3eGrfqTSuElArQocsWc7dFTYdMncBLiEy
	y1aM7Z14d8ekXi84dzSKrdtTG6jRSBvytiMRLZF0kDelvDeGow0Et1f9W4/tGNXy5qza9jyHKQr2c
	VDQLuyOjCsq8Mxa8E5i3zxB2pON+PVhfAzcQvKS7cRSyDEBdwOf0V7LeqkQdFS6K7Ld4BsmtyvWrd
	SbGyLWs7EgtsXA8HW0/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjvc-0006wS-Ge; Tue, 10 Mar 2020 18:48:32 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjmJ-00040P-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:38:57 +0000
Received: from lhreml706-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 273686508D9D73721EED;
 Tue, 10 Mar 2020 18:38:51 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml706-cah.china.huawei.com (10.201.108.47) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 10 Mar 2020 18:38:50 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Tue, 10 Mar
 2020 18:38:50 +0000
From: John Garry <john.garry@huawei.com>
Subject: arm64 system corruption on linux-next?
To: "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-ID: <8c018ee5-de2a-d948-fcae-feaf1303e160@huawei.com>
Date: Tue, 10 Mar 2020 18:38:49 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113855_724865_25830FD2 
X-CRM114-Status: UNSURE (   4.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgYWxsLAoKT24gbXkgYXJtNjQgSHVhd2VpIEQwNiBkZXYgYm9hcmQsIEkgc2VlIHRoaXMgb24g
c29tZXRpbWVzIG9uIGxpbnV4LW5leHQgCjIwMjAwMzEwIGp1c3QgYXMgdGhlIGJvb3QgY29tcGxl
dGVzOgoKWyAgIDQ4LjQ1MjY3NF0gcGNpZXBvcnQgMDAwMDpiNDowMS4wOiBBZGRpbmcgdG8gaW9t
bXUgZ3JvdXAgNDAKWyAgIDQ4LjQ3MzQyNl0gcnRjLWVmaSBydGMtZWZpLjA6IHNldHRpbmcgc3lz
dGVtIGNsb2NrIHRvIAoyMDIwLTAzLTEwVDE4OjMxOjI5IFVUQyAoMTU4Mzg2NTA4OSkKWyAgIDQ4
LjQ3MzQyNl0gcnRjLWVmaSBydGMtZWZpLjA6IHNldHRpbmcgc3lzdGVtIGNsb2NrIHRvIAoyMDIw
LTAzLTEwVDE4OjMxOjI5IFVUQyAoMTU4Mzg2NTA4OSkKWyAgIDQ4LjQ4Njc1NV0gaGlkLWdlbmVy
aWMgMDAwMzoxMkQxOjAwMDMuMDAwMTogaW5wdXQ6IFVTQiBISUQgdjEuMTAgCktleWJvYXJkIFtL
ZXlib2FyZC9Nb3VzZSBLVk0gMS4xLjBdIG9uIHVzYi0wMDAwOjdhOjAxLjAtMS4xL2lucHV0MApb
ICAgNDguNDg2NzU1XSBoaWQtZ2VuZXJpYyAwMDAzOjEyRDE6MDAwMy4wMDAxOiBpbnB1dDogVVNC
IEhJRCB2MS4xMCAKS2V5Ym9hcmQgW0tleWJvYXJkL01vdXNlIEtWTSAxLjEuMF0gb24gdXNiLTAw
MDA6N2E6MDEuMC0xLjEvaW5wdXQwClsgICA0OC40OTEwMzNdIEFMU0EgZGV2aWNlIGxpc3Q6Clsg
ICA0OEEgZGV2aWNlIGxpc3Q6ClsgICA0OC41MjIzMDRdICAgTm8gc291bmRjYXJkcyBmb3VuZC4K
WyAgIDQ4LjUyMjMwNF0gICBObyBzb3VuZGNhcmRzIGZvdW5kLgpbICAgNDguNTI2MzE5XSBpbnB1
dDogS2V5Ym9hcmQvTW91c2UgS1ZNIDEuMS4wIGFzIAovZGV2aWNlcy9wY2kwMDAwOjdhLzAwMDA6
N2E6MDEuMC91c2IxLzEtMS8xLTEuMS8xLTEuMToxLjEvMDAwMzoxMkQxOjAwMDMuMDAwMi9pbnB1
dC9pbnB1dDIKWyAgIDQ4LjUyNjMxOV0gaW5wdXQ6IEtleWJvYXJkL01vdXNlIEtWTSAxLjEuMCBh
cyAKL2RldmljZXMvcGNpMDAwMDo3YS8wMDAwOjdhOjAxLjAvdXNiMS8xLTEvMS0xLjEvMS0xLjE6
MS4xLzAwMDM6MTJEMTowMDAzLjAwMDIvaW5wdXQvaW5wdXQyClt8VXoK77+977+977+9cCBYNG4w
Smog0KxILHB+d3bvv71eO++/vX5UdO+/vWvvv71277+977+9Iu+/ve+/vcKx77+9CiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIO+/vXJa77+9LO+/vSDvv70g77+977+9SGvv
v73vv70KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHY377+9QyAo77+977+977+977+9INW577+9RV7vv70tIHoKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDv
v70KwrHvv70gCiAg77+9IO+/ve+/ve+/vSDvv71cIO+/ve+/ve+/vXAgWDRuMEpqIHDvv71ILHB+
d3bvv71eOyt+VHTvv71r77+9du+/vSAi77+9Cnfvv71i77+977+977+9UO+/vWvvv71o77+9UO+/
ve+/vS7vv71w77+977+977+9Tu+/vVAgUO+/vVjvv73vv70577+9IDDvv70g77+9a++/vWjvv71Q
77+9aS7vv71w77+977+977+9Tu+/ve+/vSbvv73vv73vv73vv73vv70uwqzvv71qUO+/vVbvv712
IAp077+9We+/ve+/vSrvv71277+977+977+977+9IO+/vUY577+9CgoKVGhlIHN5c3RlbSBpcyBz
dGlsbCBhbGl2ZSwgYXMga2V5cHJlc3NlcyByZXNwb25kIHdpdGggZ2FyYmFnZS4KCkZ1bGwgZG1l
c2c6Cmh0dHBzOi8vcGFzdGViaW4uY29tL0MyWHkweVVXCgoKdjUuNi1yYzQgaXMgb2sgZnJvbSBt
eSBhdHRlbXB0cy4KCkFueW9uZSBlbHNlIHNlZSBzdWNoIGFuIGlzc3VlPwoKVGhhbmtzLApKb2hu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
