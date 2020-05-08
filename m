Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97FC1CA69B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PylCNUBkpQeaPry386S4S9wU3pK0u6JMqs05G0Tj4A4=; b=pUrtu0MfyriCwDbfVde2T5705
	Gn8p5iNYGMQi+EtCyjXLBGX0n9AOAiik5Ie9kXhPhVV4kY/CgQaYFSsSx32LXqRPKleAkYnkcxklp
	EBcJPpspae7Y1O0fpXmVHlzysbR3iL3Nu4fKmqT2tqHJCzNc/NN01zq4/ByhTG6swM2p2upgkqpuo
	Pir4TZdc2kqm/8FN2zEj32xqBYuuA41qR80vWj4/ag/Vf2x5+xnVgWZJNPGpXEqp8uVAjiE3U7jy6
	lPyzSaF5zgDUAcpnA14n673PWYgl8ePEXGeGBrg7Y8QNg+GKxhLK4FlEdsi1cC/DlDPo6O4cZf64/
	ehUTOUUGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWylI-00053E-8k; Fri, 08 May 2020 08:53:40 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyl9-00052k-QL
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:53:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588928011; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=izonpifA+1EYd8UgQ+Vm38HVhqg6VLQAcixpWCMi9fg=;
 b=JPIgS0b5FJE6+ow0dXAOC6JPv5Vp0rxf1OwzfNFWtPX8gu3jLTb/IocKWT5lLu6dbPFqjKaQ
 l/MOt++xMH/uD+UIoWB9tdIB8l2wWuhaubY1APuA/PIpv8WbLQ5Lihv+heziA+yU5+VQfJxx
 hiFa1UXa1ru1j981hipFt02DQEQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb51e08.7f9782d58928-smtp-out-n01;
 Fri, 08 May 2020 08:53:28 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A6C45C432C2; Fri,  8 May 2020 08:53:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D608EC433F2;
 Fri,  8 May 2020 08:53:27 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 08 May 2020 14:23:27 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>, Suzuki K Poulose
 <suzuki.poulose@arm.com>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
 <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
 <CAJ9a7VgEiX19ukjwakNHBHDeZJ05f5Z7pAYG9iEnpXCuuDfBqg@mail.gmail.com>
 <a4bba03d41a2b0145b3c6c19d48698eb@codeaurora.org>
 <CAJ9a7Vj4eyv1n=RxuqfV=pdBN3SDG+ShYS5J4s40KJtqOnR7vw@mail.gmail.com>
 <ae0fe2050be01cc1403c7d53a0da8cb8@codeaurora.org>
 <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
Message-ID: <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_015331_916458_5EE35732 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, linux-arm-msm@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLCBNaWtlLAoKT24gMjAyMC0wNS0wNiAxMzowNSwgU2FpIFByYWthc2ggUmFuamFu
IHdyb3RlOgpbLi4uXQoKPj4+PiAKPj4+IE9LIC0gc29ycnkgSSByZWFkIHlvdXIgc3RhdGVtZW50
IHNheWluZyB0aGF0IHJlcGxpY2F0b3IxIHdhcyAwIGFmdGVyCj4+PiB0aGUgcmVzZXQgaW4gcHJv
YmUoKSwgcmF0aGVyIHRoYW4gbG9vayBhdCB0aGUgbG9ncy4KPj4+IAo+Pj4gRnJvbSB0aGUgbG9n
cyBpdCBpcyB3b3JraW5nIGF0IHRoZSB0aW1lIHByb2JlKCkgb2NjdXJzLCBidXQgYnkgdGhlCj4+
PiB0aW1lIHdlIGNvbWUgdG8gZW5hYmxlIHRoZSByZXBsaWNhdG9yIGxhdGVyLCBzb21ldGhpbmcg
aGFzIHJlc2V0IAo+Pj4gdGhlc2UKPj4+IHJlZ2lzdGVycyAvIGhhcmR3YXJlIG91dHNpZGUgdGhl
IGNvbnRyb2wgb2YgdGhlIHJlcGxpY2F0b3IgZHJpdmVyLgo+Pj4gCj4+IAo+PiBZZXMsIEkgd2ls
bCB0cnkgdG8gZ2V0IHNvbWUgbW9yZSBpbmZvcm1hdGlvbiBmcm9tIHRoZSBmaXJtd2FyZSBzaWRl
IGlmCj4+IHRoZXJlIGlzIGFueXRoaW5nIG1lc3NpbmcgdXAuCj4+IAo+IAo+IFRoaXMgdHVybmVk
IG91dCB0byBiZSBhIGNsb2NrL3BtIGlzc3VlLiBUbyBjb25maXJtLCBJIGp1c3QgbWFya2VkIGNs
awo+IGFzIGNyaXRpY2FsCj4gc28gdGhhdCBpdCB3b24ndCBiZSBnYXRlZCBhbmQgSSBzYXcgdGhl
IHJlcGxpY2F0b3IxKHN3YW9fcmVwbGljYXRvcikgCj4gcmVnaXN0ZXJzCj4gaW50YWN0IGFmdGVy
IHByb2JlLiBBbHNvIGFsdGVybmF0aXZlbHksIEkgdHJpZWQgdG8gY29tbWVudCBvdXQgCj4gZGlz
YWJsaW5nIHBjbGsKPiB0byBjaGVjayBpZiB0aGVyZSBpcyBzb21ldGhpbmcgd3JvbmcgaW4gYW1i
YSBwbSBhbmQgdGhpcyBrZWVwcyB0aGUgCj4gcmVnaXN0ZXJzCj4gaW50YWN0IGFzIHdlbGwuCj4g
Cj4gQEAgLTI4OCw3ICsyOTUsNyBAQCBzdGF0aWMgaW50IGFtYmFfcHJvYmUoc3RydWN0IGRldmlj
ZSAqZGV2KQo+ICAgICAgICAgICAgICAgICBwbV9ydW50aW1lX3NldF9zdXNwZW5kZWQoZGV2KTsK
PiAgICAgICAgICAgICAgICAgcG1fcnVudGltZV9wdXRfbm9pZGxlKGRldik7Cj4gCj4gLSAgICAg
ICAgICAgICAgIGFtYmFfcHV0X2Rpc2FibGVfcGNsayhwY2Rldik7Cj4gKyAgICAgICAgICAgICAg
IC8vYW1iYV9wdXRfZGlzYWJsZV9wY2xrKHBjZGV2KTsKPiAgICAgICAgICAgICAgICAgZGV2X3Bt
X2RvbWFpbl9kZXRhY2goZGV2LCB0cnVlKTsKPiAgICAgICAgIH0gd2hpbGUgKDApOwo+IAoKSSBj
aGVja2VkIHdpdGggdGhlIGRlYnVnIHRlYW0gYW5kIHRoZXJlIGlzIGEgbGltaXRhdGlvbiB3aXRo
CnRoZSByZXBsaWNhdG9yKHN3YW9fcmVwbGljYXRvcikgaW4gdGhlIEFPU1MgZ3JvdXAgd2hlcmUg
aXQKbG9zZXMgdGhlIGlkZmlsdGVyIHJlZ2lzdGVyIGNvbnRleHQgd2hlbiB0aGUgY2xvY2sgaXMg
ZGlzYWJsZWQuClRoaXMgaXMgbm90IGp1c3QgaW4gU0M3MTgwIFNvQyBidXQgYWxzbyByZXBvcnRl
ZCBvbiBzb21lIGxhdGVzdAp1cGNvbWluZyBRQ09NIFNvQ3MgYXMgd2VsbCBhbmQgd2lsbCBuZWVk
IHRvIGJlIHRha2VuIGNhcmUgaW4Kb3JkZXIgdG8gZW5hYmxlIGNvcmVzaWdodCBvbiB0aGVzZSBj
aGlwc2V0cy4KCkhlcmUncyB3aGF0J3MgaGFwcGVuaW5nIC0gIEFmdGVyIHRoZSByZXBsaWNhdG9y
IGlzIGluaXRpYWxpemVkLAp0aGUgY2xvY2sgaXMgZGlzYWJsZWQgaW4gYW1iYV9wbV9ydW50aW1l
X3N1c3BlbmQoKSBhcyBhIHBhcnQgb2YKcG0gcnVudGltZSB3b3JrcXVldWUgd2l0aCB0aGUgYXNz
dW1wdGlvbiB0aGF0IHRoZXJlIHdpbGwgYmUgbm8KbG9zcyBvZiBjb250ZXh0IGFmdGVyIHRoZSBy
ZXBsaWNhdG9yIGlzIGluaXRpYWxpemVkLiBCdXQgaXQgZG9lc24ndApob2xkIGdvb2Qgd2l0aCB0
aGUgcmVwbGljYXRvcnMgd2l0aCB0aGVzZSB1bmZvcnR1bmF0ZSBsaW1pdGF0aW9uCmFuZCB0aGUg
aWRmaWx0ZXIgcmVnaXN0ZXIgY29udGV4dCBpcyBsb3N0LgoKWyAgICA1Ljg4OTQwNl0gYW1iYV9w
bV9ydW50aW1lX3N1c3BlbmQgZGV2bmFtZT02YjA2MDAwLnJlcGxpY2F0b3IgcmV0PTAKWyAgICA1
LjkxNDUxNl0gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsKWyAgICA1LjkxODY0OF0gQ2Fs
bCB0cmFjZToKWyAgICA1LjkyMTE4NV0gIGR1bXBfYmFja3RyYWNlKzB4MC8weDFkMApbICAgIDUu
OTI0OTU4XSAgc2hvd19zdGFjaysweDJjLzB4MzgKWyAgICA1LjkyODM4Ml0gIGR1bXBfc3RhY2sr
MHhjMC8weDEwNApbICAgIDUuOTMxODk2XSAgYW1iYV9wbV9ydW50aW1lX3N1c3BlbmQrMHhkOC8w
eGUwClsgICAgNS45MzY0NjldICBfX3JwbV9jYWxsYmFjaysweGUwLzB4MTQwClsgICAgNS45NDAz
MzJdICBycG1fY2FsbGJhY2srMHgzOC8weDk4ClsgICAgNS45NDM5MjZdICBycG1fc3VzcGVuZCsw
eGVjLzB4NjE4ClsgICAgNS45NDc1MjJdICBycG1faWRsZSsweDVjLzB4M2Y4ClsgICAgNS45NTA4
NTFdICBwbV9ydW50aW1lX3dvcmsrMHhhOC8weGMwClsgICAgNS45NTQ3MThdICBwcm9jZXNzX29u
ZV93b3JrKzB4MWY4LzB4NGMwClsgICAgNS45NTg4NDhdICB3b3JrZXJfdGhyZWFkKzB4NTAvMHg0
NjgKWyAgICA1Ljk2MjYyM10gIGt0aHJlYWQrMHgxMmMvMHgxNTgKWyAgICA1Ljk2NTk1N10gIHJl
dF9mcm9tX2ZvcmsrMHgxMC8weDFjCgpUaGlzIGlzIGEgcGxhdGZvcm0vU29DIHNwZWNpZmljIHJl
cGxpY2F0b3IgaXNzdWUsIHNvIHdlIGNhbiBlaXRoZXIKaW50cm9kdWNlIHNvbWUgRFQgcHJvcGVy
dHkgZm9yIHJlcGxpY2F0b3JzIHRvIGlkZW50aWZ5IHdoaWNoIHJlcGxpY2F0b3IKaGFzIHRoaXMg
bGltaXRhdGlvbiwgY2hlY2sgaW4gcmVwbGljYXRvcl9lbmFibGUoKSBhbmQgcmVzZXQgdGhlIApy
ZWdpc3RlcnMKb3IgaGF2ZSBzb21ldGhpbmcgbGlrZSBiZWxvdyBkaWZmIHRvIGNoZWNrIHRoZSBp
ZGZpbHRlciByZWdpc3RlcnMgaW4KcmVwbGljYXRvcl9lbmFibGUoKSBhbmQgdGhlbiByZXNldCB3
aXRoIGNsZWFyIGNvbW1lbnQgc3BlY2lmeWluZyBpdOKAmXMgCnRoZQpoYXJkd2FyZSBsaW1pdGF0
aW9uIG9uIHNvbWUgUUNPTSBTb0NzLiBQbGVhc2UgbGV0IG1lIGtub3cgeW91ciB0aG91Z2h0cyAK
b24KdGhpcz8KCmRpZmYgLS1naXQgYS9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNp
Z2h0LXJlcGxpY2F0b3IuYyAKYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0
LXJlcGxpY2F0b3IuYwppbmRleCBlN2RjMWMzMWQyMGQuLmE5YzAzOWM5NDRlYiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1yZXBsaWNhdG9yLmMKKysr
IGIvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1yZXBsaWNhdG9yLmMKQEAg
LTY4LDYgKzY4LDE3IEBAIHN0YXRpYyBpbnQgZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZShzdHJ1
Y3QgCnJlcGxpY2F0b3JfZHJ2ZGF0YSAqZHJ2ZGF0YSwKICAgICAgICAgaW50IHJjID0gMDsKICAg
ICAgICAgdTMyIHJlZzsKCisgICAgICAgLyoKKyAgICAgICAgKiBPbiBzb21lIFFDT00gU29DcyB3
aXRoIHJlcGxpY2F0b3JzIGluIEFsd2F5cy1PbiBkb21haW4sIApkaXNhYmxpbmcKKyAgICAgICAg
KiBjbG9jayB3aWxsIHJlc3VsdCBpbiByZXBsaWNhdG9yIGxvc2luZyBpdHMgY29udGV4dC4gQ3Vy
cmVudGx5CisgICAgICAgICogYXMgYSBwYXJ0IG9mIHBtX3J1bnRpbWUgd29ya3F1ZXVlLCBhbWJh
X3BtX3J1bnRpbWVfc3VzcGVuZCAKZGlzYWJsZXMKKyAgICAgICAgKiBjbG9jayBhc3N1bWluZyB0
aGUgY29udGV4dCBpcyBub3QgbG9zdCB3aGljaCBpcyBub3QgdHJ1ZSBmb3IgCmNhc2VzCisgICAg
ICAgICogd2l0aCBoYXJkd2FyZSBsaW1pdGF0aW9ucyBhcyB0aGUgYWJvdmUuCisgICAgICAgICov
CisgICAgICAgaWYgKChyZWFkbF9yZWxheGVkKGRydmRhdGEtPmJhc2UgKyBSRVBMSUNBVE9SX0lE
RklMVEVSMCkgPT0gMCkgCiYmCisgICAgICAgICAgIChyZWFkbF9yZWxheGVkKGRydmRhdGEtPmJh
c2UgKyBSRVBMSUNBVE9SX0lERklMVEVSMSkgPT0gMCkpCisgICAgICAgICAgICAgICBkeW5hbWlj
X3JlcGxpY2F0b3JfcmVzZXQoZHJ2ZGF0YSk7CisKICAgICAgICAgc3dpdGNoIChvdXRwb3J0KSB7
CiAgICAgICAgIGNhc2UgMDoKICAgICAgICAgICAgICAgICByZWcgPSBSRVBMSUNBVE9SX0lERklM
VEVSMDsKCgoKVGhhbmtzLApTYWkKCi0tIApRVUFMQ09NTSBJTkRJQSwgb24gYmVoYWxmIG9mIFF1
YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgCm1lbWJlcgpvZiBDb2RlIEF1cm9y
YSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
