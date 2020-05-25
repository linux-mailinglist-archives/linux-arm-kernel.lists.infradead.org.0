Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A5D1E0BED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgNxQ1AnI0/MekIUkHeU5awofvne+ewyDslbBSr4zmI=; b=GK8mbKrC6hAZzs
	nxKfSqhUb1xdloji3VACcSoW+v5ujpoT/pm+3uC+uVSqjAwAHpDxywjp8TI/oHcuaELudmuX12Vs+
	nf0ZuOvpsLSSg5DLBz4AMkZYifIVH91D0HPWa2KKNx51pj61Ba+xdGJTZaX/XEP7s+joIu1NEcqXb
	gZ4yEiOnLTBIoYo+uxHrXpX2YSNb1FQRREHrr8hukREdiIyxYRcNBHIwgr0Wr9vfFCY04E3SHaWQI
	Cd32kq/Pl+v8y49IJOzvuEVHQCK76fVrtNw8F7boWWQ8FTKQjoJ1ym1DCSRaiWEjBkW/sjSjyvRwD
	WiMeNcC32rM1/6XqWIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAUZ-0007Bt-7K; Mon, 25 May 2020 10:37:59 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAUG-0007AI-4b
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 10:37:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590403062; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=Xa+V2K2B+f2/pjJ0gvv7y9F+pJuL30zRLv90omb/sWY=;
 b=ABRXn8xlXjDuzRmm1OXSprLlc/3dVU2ULUPgOwUnQuEd4NLWz0fMaGl9apZUlcv3WwHt/+q9
 D+B2SkfBzCVve3OM2ixh1aJ0cnNhscTLenpdEJZ+hUWdLr9q2jbAEpZpsU9K4PRnntCKb8yt
 +33w9uYUqpEDcjElqSBdkTQCc+k=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5ecb9fde8075f6e58c928fa1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 25 May 2020 10:37:18
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 2E5F3C4339C; Mon, 25 May 2020 10:37:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7DCD1C433C9;
 Mon, 25 May 2020 10:37:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7DCD1C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Yuehaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] mt76: mt7915: Fix build error
References: <20200522034533.61716-1-yuehaibing@huawei.com>
 <87a720b7p7.fsf@codeaurora.org>
 <cf5a8e36-2fc6-3f3a-823f-a2fac6c11d30@huawei.com>
Date: Mon, 25 May 2020 13:37:10 +0300
In-Reply-To: <cf5a8e36-2fc6-3f3a-823f-a2fac6c11d30@huawei.com>
 (yuehaibing@huawei.com's message of "Fri, 22 May 2020 19:34:28 +0800")
Message-ID: <87k1109u7d.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_033742_213162_E0F1123D 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: ryder.lee@mediatek.com, linux-wireless@vger.kernel.org, yf.luo@mediatek.com,
 chih-min.chen@mediatek.com, linux-kernel@vger.kernel.org,
 matthias.bgg@gmail.com, yiwei.chung@mediatek.com,
 linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
 lorenzo.bianconi83@gmail.com, kuba@kernel.org, shayne.chen@mediatek.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org, nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WXVlaGFpYmluZyA8eXVlaGFpYmluZ0BodWF3ZWkuY29tPiB3cml0ZXM6Cgo+IE9uIDIwMjAvNS8y
MiAxODoxMSwgS2FsbGUgVmFsbyB3cm90ZToKPj4gWXVlSGFpYmluZyA8eXVlaGFpYmluZ0BodWF3
ZWkuY29tPiB3cml0ZXM6Cj4+IAo+Pj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9s
aW51eC9maXJtd2FyZS5oOjY6MCwKPj4+ICAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL25l
dC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzkxNS9tY3UuYzo0Ogo+Pj4gSW4gZnVuY3Rpb24g
4oCYX19tdDc5MTVfbWN1X21zZ19zZW5k4oCZLAo+Pj4gICAgIGlubGluZWQgZnJvbSDigJhtdDc5
MTVfbWN1X3NlbmRfbWVzc2FnZeKAmSBhdCBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9t
dDc2L210NzkxNS9tY3UuYzozNzA6NjoKPj4+IC4vaW5jbHVkZS9saW51eC9jb21waWxlci5oOjM5
NjozODogZXJyb3I6IGNhbGwgdG8g4oCYX19jb21waWxldGltZV9hc3NlcnRfNTQ14oCZIGRlY2xh
cmVkIHdpdGggYXR0cmlidXRlIGVycm9yOiBCVUlMRF9CVUdfT04gZmFpbGVkOiBjbWQgPT0gTUNV
X0VYVF9DTURfRUZVU0VfQUNDRVNTICYmIG1jdV90eGQtPnNldF9xdWVyeSAhPSBNQ1VfUV9RVUVS
WQo+Pj4gICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1l
X2Fzc2VydF8sIF9fQ09VTlRFUl9fKQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBeCj4+PiAuL2luY2x1ZGUvbGludXgvY29tcGlsZXIuaDozNzc6NDogbm90ZTogaW4g
ZGVmaW5pdGlvbiBvZiBtYWNybyDigJhfX2NvbXBpbGV0aW1lX2Fzc2VydOKAmQo+Pj4gICAgIHBy
ZWZpeCAjIyBzdWZmaXgoKTsgICAgXAo+Pj4gICAgIF5+fn5+fgo+Pj4gLi9pbmNsdWRlL2xpbnV4
L2NvbXBpbGVyLmg6Mzk2OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhfY29tcGls
ZXRpbWVfYXNzZXJ04oCZCj4+PiAgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2cs
IF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19DT1VOVEVSX18pCj4+PiAgIF5+fn5+fn5+fn5+fn5+
fn5+fn4KPj4+IC4vaW5jbHVkZS9saW51eC9idWlsZF9idWcuaDozOTozNzogbm90ZTogaW4gZXhw
YW5zaW9uIG9mIG1hY3JvIOKAmGNvbXBpbGV0aW1lX2Fzc2VydOKAmQo+Pj4gICNkZWZpbmUgQlVJ
TERfQlVHX09OX01TRyhjb25kLCBtc2cpIGNvbXBpbGV0aW1lX2Fzc2VydCghKGNvbmQpLCBtc2cp
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn5+Cj4+PiAuL2luY2x1ZGUvbGludXgvYnVpbGRfYnVnLmg6NTA6Mjogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmEJVSUxEX0JVR19PTl9NU0figJkKPj4+ICAgQlVJTERfQlVHX09OX01T
Ryhjb25kaXRpb24sICJCVUlMRF9CVUdfT04gZmFpbGVkOiAiICNjb25kaXRpb24pCj4+PiAgIF5+
fn5+fn5+fn5+fn5+fn4KPj4+IGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3
OTE1L21jdS5jOjI4MDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYQlVJTERfQlVH
X09O4oCZCj4+PiAgIEJVSUxEX0JVR19PTihjbWQgPT0gTUNVX0VYVF9DTURfRUZVU0VfQUNDRVNT
ICYmCj4+PiAgIF5+fn5+fn5+fn5+fgo+Pj4KPj4+IEJVSUxEX0JVR19PTiBpcyBtZWFuaW5nbGVz
cyBoZXJlLCBjaGFuZyBpdCB0byBXQVJOX09OLgo+Pj4KPj4+IEZpeGVzOiBlNTdiNzkwMTQ2OWYg
KCJtdDc2OiBhZGQgbWFjODAyMTEgZHJpdmVyIGZvciBNVDc5MTUgUENJZS1iYXNlZCBjaGlwc2V0
cyIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+
Cj4+IAo+PiBJJ20gY3VyaW91cyB3aHkgSSBkb24ndCBzZWUgdGhpcyBidWlsZCBlcnJvcj8gSSB3
YXMgYWJvdXQgdG8gc2VuZCBhIHB1bGwKPj4gcmVxdWVzdCB0byBEYXZlLCBzaG91bGQgSSBob2xk
IG9mZiB0aGUgcHVsbCByZXF1ZXN0IGR1ZSB0byB0aGlzIHByb2JsZW0/Cj4KPiBUaGUgY29uZmln
IGlzIGF0dGFjaGVkCj4KPiBnY2MgdmVyc2lvbiA3LjUuMCAoVWJ1bnR1IDcuNS4wLTN1YnVudHUx
fjE4LjA0KQoKVGhhbmtzLCBJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgZXJyb3Igd2l0aCBn
Y2MtMTAgdXNpbmcgeW91ciBjb25maWcKYnV0IGRpZG4ndCBoYXZlIHRpbWUgdG8gaW52ZXN0aWdh
dGUgd2hhdCB3YXMgZGlmZmVyZW50IGluIG15IGNvbmZpZyBhbmQKd2h5IEkgZGlkbid0IHNlZSBp
dC4KCi0tIApodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2Rv
Y3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
