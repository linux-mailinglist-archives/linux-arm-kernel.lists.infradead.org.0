Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED64192C4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=euhF6dDOgguj13n2ZyfLE+byIkguBGp30SK6RPFqqTc=; b=lk6MhqaiOLDDF3j96Icwr95nQ
	Ux2cSCs5VP0uDBL/487ZGBvwnXgMVTCtS/UDlfud29ZH/V5ouLFYgnuB+e9lrZZ07CrPs8MSjvTeP
	T6c3VmtqyLnxkFIPpbpuvAMh1RTY6WIep+8314i35J5oOw2XdTxB86seMLT7LuU1v/KAufI+bXNku
	bBugdRErKCAO2/zQzGhTkGRP6MHRygE2iL04MxKrYdNjwpG4uuwno1QX75ihBMJ1/zS/iq5vwz1sO
	uU0pnJmCB01yEHl8jsnBPFP3GtOcoT9/1MxwC7j4Xc1pfCgZDMHpjgYRNRUT4FzwdCOAtMDJy0Wv4
	ik/ZQJ35g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7ta-0000wd-5z; Wed, 25 Mar 2020 15:24:42 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7tD-0000j7-A1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:24:21 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02PFO1sb013405; Wed, 25 Mar 2020 16:24:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=251aijJqzn9yU8MYctpjTqFbHgxmUCK4PXt+EtiJg48=;
 b=WKKjM5ybNsKQi5XoeHM7JN84FsIs3NlGRoaL4ek2paCb3OrTni7NtZm0fsCFTC6b3bkE
 aGz/X4HVmXYamniB8SgQIF7tOqG2Khi3EU2eSKSpyr1qhVS0AnBm/BI/vLMBY68mjnSm
 4H3PytXKQyJoTNUyCyMS3vB2b0Xkfb5iVZB1HLTvI+M+xRvFjriFCPcdee9xpsJYPeFy
 SE4LM/QnpLIW9knaM2tZzcBsCXU4ZKtW1zP/Gtd2Ie00nJvz6rIVdB05tEZZOrslDKhN
 0YjuL8//4iowC2Unc6oTr/4Dq4URKYht9MTo7erzejwzqpunFnLKms4LhJle22RLgi+6 +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995pgh8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Mar 2020 16:24:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0D0C510002A;
 Wed, 25 Mar 2020 16:24:05 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E9B3F2B5D06;
 Wed, 25 Mar 2020 16:24:04 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.51) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 25 Mar
 2020 16:24:03 +0100
Subject: Re: [PATCH 2/2] amba: Initialize dma_parms for amba devices
To: Ulf Hansson <ulf.hansson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Rafael J . Wysocki" <rafael@kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <20200325113407.26996-3-ulf.hansson@linaro.org>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <f73aac31-d243-dbc6-474e-95174444fe3a@st.com>
Date: Wed, 25 Mar 2020 16:24:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200325113407.26996-3-ulf.hansson@linaro.org>
Content-Language: fr
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-25_08:2020-03-24,
 2020-03-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_082419_660502_61199F99 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Haibo Chen <haibo.chen@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, stable@vger.kernel.org,
 dmaengine@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzLzI1LzIwIMOgIDEyOjM0IFBNLCBVbGYgSGFuc3NvbiBhIMOpY3JpdMKgOgo+IEl0J3Mg
Y3VycmVudGx5IHRoZSBhbWJhIGRyaXZlcidzIHJlc3BvbnNpYmlsaXR5IHRvIGluaXRpYWxpemUg
dGhlIHBvaW50ZXIsCj4gZG1hX3Bhcm1zLCBmb3IgaXRzIGNvcnJlc3BvbmRpbmcgc3RydWN0IGRl
dmljZS4gVGhlIGJlbmVmaXQgd2l0aCB0aGlzCj4gYXBwcm9hY2ggYWxsb3dzIHVzIHRvIGF2b2lk
IHRoZSBpbml0aWFsaXphdGlvbiBhbmQgdG8gbm90IHdhc3RlIG1lbW9yeSBmb3IKPiB0aGUgc3Ry
dWN0IGRldmljZV9kbWFfcGFyYW1ldGVycywgYXMgdGhpcyBjYW4gYmUgZGVjaWRlZCBvbiBhIGNh
c2UgYnkgY2FzZQo+IGJhc2lzLgo+IAo+IEhvd2V2ZXIsIGl0IGhhcyB0dXJuZWQgb3V0IHRoYXQg
dGhpcyBhcHByb2FjaCBpcyBub3QgdmVyeSBwcmFjdGljYWwuIE5vdAo+IG9ubHkgZG9lcyBpdCBs
ZWFkIHRvIG9wZW4gY29kaW5nLCBidXQgYWxzbyB0byByZWFsIGVycm9ycy4gSW4gcHJpbmNpcGxl
Cj4gY2FsbGVycyBvZiBkbWFfc2V0X21heF9zZWdfc2l6ZSgpIGRvZXNuJ3QgY2hlY2sgdGhlIGVy
cm9yIGNvZGUsIGJ1dCBqdXN0Cj4gYXNzdW1lcyBpdCBzdWNjZWVkcy4KPiAKPiBGb3IgdGhlc2Ug
cmVhc29ucywgbGV0J3MgZG8gdGhlIGluaXRpYWxpemF0aW9uIGZyb20gdGhlIGNvbW1vbiBhbWJh
IGJ1cyBhdAo+IHRoZSBkZXZpY2UgcmVnaXN0cmF0aW9uIHBvaW50LiBUaGlzIGFsc28gZm9sbG93
cyB0aGUgd2F5IHRoZSBQQ0kgZGV2aWNlcwo+IGFyZSBiZWluZyBtYW5hZ2VkLCBzZWUgcGNpX2Rl
dmljZV9hZGQoKS4KPiAKCnRlc3RlZCB3aXRoIG1tYzogbW1jaV9zZG1tYyBmaXgKVGVzdGVkLWJ5
OiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KCj4gU3VnZ2VzdGVkLWJ5OiBD
aHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiBDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBh
cm1saW51eC5vcmcudWs+Cj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPgo+IFNpZ25lZC1v
ZmYtYnk6IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPgo+IC0tLQo+ICAgZHJp
dmVycy9hbWJhL2J1cy5jICAgICAgIHwgMiArKwo+ICAgaW5jbHVkZS9saW51eC9hbWJhL2J1cy5o
IHwgMSArCj4gICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2FtYmEvYnVzLmMgYi9kcml2ZXJzL2FtYmEvYnVzLmMKPiBpbmRleCBmZTE1
MjM2NjQ4MTYuLjVlNjE3ODNjZTkyZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2FtYmEvYnVzLmMK
PiArKysgYi9kcml2ZXJzL2FtYmEvYnVzLmMKPiBAQCAtMzc0LDYgKzM3NCw4IEBAIHN0YXRpYyBp
bnQgYW1iYV9kZXZpY2VfdHJ5X2FkZChzdHJ1Y3QgYW1iYV9kZXZpY2UgKmRldiwgc3RydWN0IHJl
c291cmNlICpwYXJlbnQpCj4gICAJV0FSTl9PTihkZXYtPmlycVswXSA9PSAodW5zaWduZWQgaW50
KS0xKTsKPiAgIAlXQVJOX09OKGRldi0+aXJxWzFdID09ICh1bnNpZ25lZCBpbnQpLTEpOwo+ICAg
Cj4gKwlkZXYtPmRldi5kbWFfcGFybXMgPSAmZGV2LT5kbWFfcGFybXM7Cj4gKwo+ICAgCXJldCA9
IHJlcXVlc3RfcmVzb3VyY2UocGFyZW50LCAmZGV2LT5yZXMpOwo+ICAgCWlmIChyZXQpCj4gICAJ
CWdvdG8gZXJyX291dDsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hbWJhL2J1cy5oIGIv
aW5jbHVkZS9saW51eC9hbWJhL2J1cy5oCj4gaW5kZXggMjZmMGVjZjQwMWVhLi4wYmJmZDY0N2Y1
YzYgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9hbWJhL2J1cy5oCj4gKysrIGIvaW5jbHVk
ZS9saW51eC9hbWJhL2J1cy5oCj4gQEAgLTY1LDYgKzY1LDcgQEAgc3RydWN0IGFtYmFfZGV2aWNl
IHsKPiAgIAlzdHJ1Y3QgZGV2aWNlCQlkZXY7Cj4gICAJc3RydWN0IHJlc291cmNlCQlyZXM7Cj4g
ICAJc3RydWN0IGNsawkJKnBjbGs7Cj4gKwlzdHJ1Y3QgZGV2aWNlX2RtYV9wYXJhbWV0ZXJzIGRt
YV9wYXJtczsKPiAgIAl1bnNpZ25lZCBpbnQJCXBlcmlwaGlkOwo+ICAgCXVuc2lnbmVkIGludAkJ
Y2lkOwo+ICAgCXN0cnVjdCBhbWJhX2NzX3VjaV9pZAl1Y2k7Cj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
