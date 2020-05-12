Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0B91CF46C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=vuLJO/N/87abQVtjS57iLKHl0mTT5Wv+K65AjtY3rC0=; b=BOA26UI7M7oqsr
	YcSfGqw/OVAiUxfxfdN1D3bUerqoYBlbNrX/yqWsTl+trBBOa4k4JWCykfZHFRxo0SHo3fsdkr13C
	b3ejgy83NJwDfqgxN2e0XavuKSxgX8FN4n982FdN5cdjL95PKSSMOSMtqPXwtpr1pAiXmjNeYYjx8
	pIhDBuKRYdVxl+GEIpZhW4/lqMojyV5pplVBIRseI4l9cXqY53EEQS8fivGSn881qGsB4uh4YEiyp
	Mj+NWJcNAPbNbXYhgral4TLgIy9K/frnSCcwai34+ay7VKAyyXtfOti/nbHmopG4P0As/tiKgKJhE
	CFAlII2ITpGO2pg1YwVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYU5G-0004K9-3j; Tue, 12 May 2020 12:32:30 +0000
Received: from m177129.mail.qiye.163.com ([123.58.177.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYU52-0004Co-F4
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:32:18 +0000
Received: from vivo.com (wm-2.qy.internal [127.0.0.1])
 by m177129.mail.qiye.163.com (Hmail) with ESMTP id 3B81D5C342A;
 Tue, 12 May 2020 20:31:36 +0800 (CST)
Message-ID: <AA*AkABhCGTIpJhY0Or0Saq5.3.1589286695947.Hmail.bernard@vivo.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSCB2Ml0gbWVtb3J5L3NhbXN1bmc6IHJlZHVjZSB1bm5lY2Vzc2FyeSBtdXRleCBsb2NrIGFyZWE=?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 157.0.31.122
In-Reply-To: <c910fa00-c27b-9854-9ab2-6f37c28b87f6@arm.com>
MIME-Version: 1.0
Received: from bernard@vivo.com( [157.0.31.122) ] by ajax-webmail (
 [127.0.0.1] ) ; Tue, 12 May 2020 20:31:35 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Tue, 12 May 2020 20:31:35 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VLSU5LS0tLQk5ITUxPSFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhMTElPQk9ITUxMN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6OlE6EDo5Ezg8LzILMRMiSzQJSygaCk5VSFVKTkNCSUNNTUJCSUJDVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKTkxVS1VISlVKSUlZV1kIAVlBT09CTDcG
X-HM-Tid: 0a7208de753a6447kurs3b81d5c342a
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_053216_702366_F57FB20E 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.58.177.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Markus Elfring <Markus.Elfring@web.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpGcm9tOiBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4KRGF0ZTogMjAyMC0wNS0x
MiAxOTo1Njo0OQpUbzogIE1hcmt1cyBFbGZyaW5nIDxNYXJrdXMuRWxmcmluZ0B3ZWIuZGU+LEJl
cm5hcmQgWmhhbyA8YmVybmFyZEB2aXZvLmNvbT4sbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnLGxpbnV4LXBtQHZnZXIua2VybmVsLm9yZyxsaW51eC1zYW1zdW5nLXNvY0B2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6ICBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnLG9wZW5zb3VyY2Uu
a2VybmVsQHZpdm8uY29tLEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4sS3Vr
amluIEtpbSA8a2dlbmVAa2VybmVsLm9yZz4KU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gbWVtb3J5
L3NhbXN1bmc6IHJlZHVjZSB1bm5lY2Vzc2FyeSBtdXRleCBsb2NrIGFyZWE+Cj4KPk9uIDUvMTIv
MjAgMTI6NDAgUE0sIE1hcmt1cyBFbGZyaW5nIHdyb3RlOgo+Pj4gTWF5YmUgZG1jLT5kZi0+bG9j
ayBzZWVtcyBub3QgbmVlZGVkIHRvIHByb3RlY3QgImlmIChyZXQpCj4+PiAmIGRldl93YXJuIiBi
cmFuY2guIE1heWJlIHRoaXMgY2hhbmdlIHNwZWVkIHVwIHRoZSBjb2RlIGEgYml0Lgo+PiAKPj4g
SSBzdWdnZXN0IHRvIGltcHJvdmUgYWxzbyB0aGlzIGNvbW1pdCBtZXNzYWdlLgo+PiAKPj4gKiBQ
bGVhc2UgcmVkdWNlIHVuY2VydGFpbnR5Lgo+PiAKPj4gKiBBbiBpbXBlcmF0aXZlIHdvcmRpbmcg
aXMgcHJvYmFibHkgcHJlZmVycmVkLCBpc24ndCBpdD8KPj4gICAgaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9j
dW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3Q/aWQ9MTUyMDM2ZDEzNzlm
ZmQ2OTg1MjYyNzQzZGNmNmIwZjljNzVmODNhNCNuMTUxCj4+IAo+PiAqIFdpbGwgaXQgYmUgbW9y
ZSBhcHByb3ByaWF0ZSB0byByZWZlciB0byB0aGUgdHJhbnNmb3JtYXRpb24g4oCcUmVkdWNlIHRo
ZSBsb2NrIHNjb3Bl4oCdPwo+PiAKPj4gKiBXb3VsZCB5b3UgbGlrZSB0byBhZGQgdGhlIHRhZyDi
gJxGaXhlc+KAnSB0byB0aGUgY2hhbmdlIGRlc2NyaXB0aW9uPwo+PiAKPj4gUmVnYXJkcywKPj4g
TWFya3VzCj4+IAo+Cj5UaGFuayB5b3UgTWFya3VzIGZvciBwcm92aWRpbmcgdG8gQmVybmFyZCBo
ZWxwZnVsIHN1Z2dlc3Rpb25zLgo+Cj5AQmVybmFyZCBwbGVhc2UgcmVhZCB0aGUgbGluayBhYm92
ZSBhbmQgc2VuZCB2Mwo+Cj5Tb21ldGhpbmcgbGlrZTogJ21lbW9yeS9zYW1zdW5nOiByZWR1Y2Ug
cHJvdGVjdGVkIGNvZGUgYXJlYSBpbiBJUlEKPmhhbmRsZXInIGZvciB0aGUgc3ViamVjdCBoZWFk
ZXIgd291bGQgYmUgYmV0dGVyLgo+VGhlbiBpbiB0aGUgbWVzc2FnZSBleHBsYWluICh3aXRob3V0
ICdtYXliZScpIHRoYXQgaXQgd2lsbCBzcGVlZC11cCBhCj5iaXQgdGhpcyBJUlEgcHJvY2Vzc2lu
ZyBhbmQgdGhlcmUgaXMgbm8gbmVlZCB0byBwcm90ZWN0IHJldHVybiB2YWx1ZSBvcgo+cHJpbnRp
bmcuCj4KPlJlZ2FyZHMsCgo+THVrYXN6CgpTdXJlLCB0aGFuayB5b3UgYm90aCBNYXJrdXMgJiBM
dWthc3ogZm9yIHlvdXIgaGVscGZ1bCBzdWdnZXN0aW9ucywgSSB3aWxsIHJlYWQgdGhlIGNvbnRl
bnQKb2YgdGhlIGxpbmsgaW4gZGV0YWlsIGFuZCB1c2UgdGhhdCBwcmVmZXJyZWQgZm9ybWF0IGlu
IG15IGZ1dHVyZSBzdWJzZXF1ZW50IHN1Ym1pc3Npb25zLgoKUmVnYXJkcywKQmVybmFyZA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
