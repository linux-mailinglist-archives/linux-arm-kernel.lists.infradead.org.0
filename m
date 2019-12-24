Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2446129C52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 02:09:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwisfZclM7uYFOQBVkBpFc8YLLDHrkO/MpRs/0Eh7BA=; b=nJXDvsliggxnZL
	mfvDu/zutY9CLEYUFo1/YElL5ONvpS733ua0IStl3uWHKA31wSta8f8SQOfrjvXjcvtt4/ngUibJV
	j84gfSug/yG48tIi63TL7AzYfrqn1FZihZZx4tlKE2UwEPBUJjklal8DH8/TsUaPgt+i7Z/F2ek1d
	eqRCJf6D6jACRsxHugv0AzOaBC6mLr/7e699rYgWsiKjbSRNxz3HzE5fNUpXPo3OGStUXOPIhrIRM
	h5JrgDjYSX7C2T4ElwNg+rSKkBYj0+kzS2q47xUF+/Cdo1u4cTTJxppxfnPZTniqPUCr7TI7VuemW
	QBOloQ1BEi8A+MYqhGtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijYho-0000IK-JO; Tue, 24 Dec 2019 01:09:48 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijYhf-0000Hy-02
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 01:09:40 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3493CCB8EFC3D2449AF1;
 Tue, 24 Dec 2019 09:09:33 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Tue, 24 Dec 2019
 09:09:24 +0800
Subject: Re: [RFC PATCH 2/2] ACPI/IORT: Workaround for IORT ID count "minus
 one" issue
To: Pankaj Bansal <pankaj.bansal@nxp.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Erik Schmauss <erik.schmauss@intel.com>
References: <1577092997-9852-1-git-send-email-guohanjun@huawei.com>
 <1577092997-9852-2-git-send-email-guohanjun@huawei.com>
 <VI1PR0401MB2496B0F77AE0FBF4D24022B4F12E0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <cf662130-e690-d0d8-c678-f0ddb350cef9@huawei.com>
Date: Tue, 24 Dec 2019 09:08:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <VI1PR0401MB2496B0F77AE0FBF4D24022B4F12E0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_170939_198069_E7A58ACA 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS8xMi8yMyAyMDoxNywgUGFua2FqIEJhbnNhbCB3cm90ZToKPiDigIsKPiBDYW4gd2Ug
cHV0IGEgd2FybmluZyBvZiB0aGUgc29ydCB0byB1cGRhdGUgdGhlPiBBQ1BJIHRhYmxlIHdpdGgg
Y29ycmVjdCB2YWx1ZXM/CgpHb29kIHBvaW50LCBJIHdpbGwgYWRkIHRoZSBmaXJtd2FyZSBidWcg
d2FybmluZwppbiBpb3J0X2NoZWNrX2lkX2NvdW50X3dvcmthcm91bmQoKS4KCj4gZXZlbnR1YWxs
eSBpIHdvdWxkIGxpa2UgdGhhdCB0aGlzIHdvcmthcm91bmQgYmUgcmVtb3ZlZCBmcm9tCj4gbGlu
dXgsIHdoZW4gc3VmZmljaWVudCB0aW1lIGhhcyBwYXNzZWQgYW5kIGFsbCB0aGUKPiBwbGF0Zm9y
bXMnIEFDUEkgdGFibGVzIGhhdmUgYmVlbiB1cGRhdGVkLj8KCkkgYWdyZWUgd2l0aCB5b3UgYnV0
IGl0IHdpbGwgdGFrZSBtdWNoIGxvbmdlciB0aW1lIHRoYW4gZXhwZWN0ZWQuCgpUaGFua3MKSGFu
anVuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
