Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A15F1A31DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o6SDkyLrdhmQsU5O3jNMsQjiQQ+3HXToAIuLUK7Mtd4=; b=J/rOOtHn8bW/Qj1EIZLvx7DOf
	BcWsRokXtOvB2ceA9OqB4VnVX9ribo/b15rp7ifp9IMfPFfrw54zuTP4LiVfZ2pjYB88o047o5WRP
	h63mnNFbNmBgFbSKZ4iwdWdXpSzHzNAYpb2tDdrhcQSxc9O+/o9coPoNnY3ExhuOqEN+Qbt97IIeD
	8MLNupkT71q24HZJhwhBWMYj+K7+mOnOVmCEZFFoGpb4SQ8ajOVClQSxkOtUpmyin0z6RKodUIdf2
	xJ3WREqtRGJvFo/yPbIREmwhIirlCZYLGLOACiTK53VwQJ1wt+eFzpl6w7N3vfcGF+IQ5x/cp63Q8
	14XziKP+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTa8-0003oA-UW; Thu, 09 Apr 2020 09:34:44 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTZz-0003nU-K7
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:34:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586424876; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=FawigcI4otjknp22YFn6zSI5pcdBGoJv9cwzgd6qVCA=;
 b=wtAC5nzJgAGfSNBSQZdkNbtmCM44kBTk34t7UlipE7aw8wbaGNAguQOEcjtSdNqO49WcFMv+
 EssZtuAMRYhOWLn3dj8IfBlRyVvJyhCMfj1ysOVFLwT5lcCd6NJW09fL8UhhdgXcj/0Qd83C
 qZWu/LBGO7IF0ZWUmyWP3o6S1sE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8eec24.7fb1ff134dc0-smtp-out-n05;
 Thu, 09 Apr 2020 09:34:28 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 74ABFC4478F; Thu,  9 Apr 2020 09:34:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7A32DC433D2;
 Thu,  9 Apr 2020 09:34:27 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 09 Apr 2020 15:04:27 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
In-Reply-To: <671892c3-b90d-73f0-4706-b74b40002260@arm.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
 <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
 <bd05b31c2391edfff5044f22f2f83edf@codeaurora.org>
 <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
 <a7074f44ebbde720b5e0189801eab7c9@codeaurora.org>
 <20200408224347.GA388414@ewhatever.cambridge.arm.com>
 <9ad167836b0a22694d58d24f39db89a6@codeaurora.org>
 <671892c3-b90d-73f0-4706-b74b40002260@arm.com>
Message-ID: <fd20605ba5b98b5c1120e24f0f330166@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_023436_261248_BCFB5CB0 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMjAyMC0wNC0wOSAxNDo0NywgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBIaSBTYWksCj4gCj4gCj4gVGhhbmtzIGZvciB0aGUgcXVpY2sgdGVzdGluZyAhIFBsZWFzZSBz
ZWUgYmVsb3cgZm9yIHRoZQo+IHRtY19ldHIgcHJvYmUgZmFpbHVyZS4KPiAKPiBPbiAwNC8wOS8y
MDIwIDA4OjUxIEFNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+IEhpIFN1enVraSwKPj4g
Cj4+IE9uIDIwMjAtMDQtMDkgMDQ6MTMsIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4+PiBPbiBU
dWUsIEFwciAwNywgMjAyMCBhdCAwODo0ODo1NFBNICswNTMwLCBTYWkgUHJha2FzaCBSYW5qYW4g
d3JvdGU6Cj4+PiAKPj4+IFBsZWFzZSBmaW5kIHRoZSB1bnRlc3RlZCBwYXRjaCBiZWxvdy4KPj4+
IAo+Pj4gLS0tOD4tLS0KPj4+IAo+Pj4gW3VudGVzdGVkXSBjb3Jlc2lnaHQ6IEZpeCBzdXBwb3J0
IGZvciBzcGFyc2UgcG9ydCBudW1iZXJzCj4+PiAKPj4+IE9uIHNvbWUgc3lzdGVtcyB0aGUgZmly
bXdhcmUgbWF5IG5vdCBkZXNjcmliZSBhbGwgdGhlIHBvcnRzCj4+PiBjb25uZWN0ZWQgdG8gYSBj
b21wb25lbnQgKGUuZywgZm9yIHNlY3VyaXR5IHJlYXNvbnMpLiBUaGlzCj4+PiBjb3VsZCBiZSBl
c3BlY2lhbGx5IHByb2JsZW1hdGljIGZvciAiZnVubmVscyIgd2hlcmUgd2UgY291bGQKPj4+IGVu
ZCB1cCBpbiBtb2RpZnlpbmcgbWVtb3J5IGJleW9uZCB0aGUgYWxsb2NhdGVkIHNwYWNlIGZvcgo+
Pj4gcmVmY291bnRzLgo+Pj4gCj4+PiBlLmcsIGZvciBhIGZ1bm5lbCB3aXRoIGlucHV0IHBvcnRz
IGxpc3RlZCAwLCAzLCA1LCBucl9pbnBvcnQgPSAzLgo+Pj4gSG93ZXZlciB0aGUgd2UgY291bGQg
YWNjZXNzIHJlZmNudHNbNV0gd2hpbGUgY2hlY2tpbmcgZm9yCj4+PiByZWZlcmVuY2VzLgo+Pj4g
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTdXp1a2kgSyBQb3Vsb3NlIDxzdXp1a2kucG91bG9zZUBhcm0u
Y29tPgo+Pj4gLS0tCj4+PiDCoC4uLi9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0
Zm9ybS5jwqAgfCA3NCAKPj4+ICsrKysrKysrKysrKy0tLS0tLS0KPj4+IMKgZHJpdmVycy9od3Ry
YWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC5jwqDCoMKgwqDCoMKgIHzCoCA4ICstCj4+PiDCoDIg
ZmlsZXMgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCj4+PiAKPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXBsYXRm
b3JtLmMKPj4+IGIvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0Zm9y
bS5jCj4+PiBpbmRleCAzYzViZWU0MjkxMDUuLjFjNjEwZDZlOTQ0YiAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYwo+Pj4gKysr
IGIvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jCj4+PiBA
QCAtNjcsNiArNjcsNyBAQCBzdGF0aWMgdm9pZCBvZl9jb3Jlc2lnaHRfZ2V0X3BvcnRzX2xlZ2Fj
eShjb25zdAo+IAo+IFsuLi5dCj4gCj4+PiBAQCAtNjg0LDggKzcwMiwxMyBAQCBzdGF0aWMgaW50
IGFjcGlfY29yZXNpZ2h0X3BhcnNlX2dyYXBoKHN0cnVjdAo+Pj4gYWNwaV9kZXZpY2UgKmFkZXYs
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByYzsKPj4+IAo+Pj4gwqDCoMKgwqAgLyogQ29w
eSB0aGUgY29ubmVjdGlvbiBpbmZvcm1hdGlvbiB0byB0aGUgZmluYWwgbG9jYXRpb24gKi8KPj4+
IC3CoMKgwqAgZm9yIChpID0gMDsgaSA8IHBkYXRhLT5ucl9vdXRwb3J0OyBpKyspCj4+PiAtwqDC
oMKgwqDCoMKgwqAgcGRhdGEtPmNvbm5zW2ldID0gY29ubnNbaV07Cj4+PiArwqDCoMKgIGZvciAo
aSA9IDA7IGNvbm5zICsgaSA8IHB0cjsgaSsrKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaW50IHBv
cnQgPSBjb25uc1tpXS5vdXRwb3J0Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIC8qIER1cGxp
Y2F0ZSBvdXRwdXQgcG9ydCAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgIFdBUk5fT04ocGRhdGEtPmNv
bm5zW3BvcnRdLmNoaWxkX2Z3bm9kZSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcGRhdGEtPmNvbm5z
W3BvcnRdID0gY29ubnNbaV07Cj4+PiArwqDCoMKgIH0KPj4+IAo+Pj4gwqDCoMKgwqAgZGV2bV9r
ZnJlZSgmYWRldi0+ZGV2LCBjb25ucyk7Cj4+PiDCoMKgwqDCoCByZXR1cm4gMDsKPj4+IEBAIC03
ODcsNiArODEwLDcgQEAgY29yZXNpZ2h0X2dldF9wbGF0Zm9ybV9kYXRhKHN0cnVjdCBkZXZpY2Ug
KmRldikKPj4+IMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJvcjsKPj4+IAo+Pj4gwqDCoMKgwqAg
cGRhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBkYXRhKSwgR0ZQX0tFUk5FTCk7Cj4+
PiArwqDCoMKgIHBkYXRhLT5ucl9vdXRwb3J0ID0gcGRhdGEtPm5yX2lucG9ydCA9IC0xOwo+IAo+
IAo+IFBsZWFzZSBjb3VsZCB5b3UgcmVtb3ZlIHRoaXMgaHVuayBhbmQgdGVzdCBpdCA/IEkgZm9y
Z290IHRvIHVwZGF0ZSB0aGUKPiBjb21taXQgYmVmb3JlIEkgc2VudCB0aGlzIG92ZXIuCj4gCgpJ
IGRvbid0IHNlZSB0aGUgRVRSIHByb2JlIGZhaWx1cmUgYW5kIHRoZSBLQVNBTiB3YXJuaW5nIGFu
eW1vcmUgd2l0aCAKdGhpcyBjaGFuZ2UuCgpUZXN0ZWQtYnk6IFNhaSBQcmFrYXNoIFJhbmphbiA8
c2FpcHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5vcmc+CgpUaGFua3MsClNhaQoKLS0gClFVQUxD
T01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVhbGNvbW0gSW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4g
aXMgYSAKbWVtYmVyCm9mIENvZGUgQXVyb3JhIEZvcnVtLCBob3N0ZWQgYnkgVGhlIExpbnV4IEZv
dW5kYXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
