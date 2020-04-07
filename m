Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955411A100C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 17:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CF6wZ2v4Fl+7Og7qyTcqnqTZdi6PGm7Obl4K6lzHytQ=; b=gRhn5QAX67O9IA+iT98r7R/EU
	E9fv8S4ZdWn7CJHcmYQiYwGacJVo2MvhLB4C1m2WqFtwWNYQlpiVRtncv27WWk9FDIvqrryYIekVc
	QkJaBxi3IbtQwBIGiOwB6islXHR7eNLnXYQjDm9fgKd8QQlJb0J0cSxmPvHWYpcMHb9V8f3zYLaiH
	t6LVxVzleUBNl/NeVJmGktEgfdEpVEZHKEFiyNjPMGTuvmhPIBiChk7S9s4KAVZSKWC7+nyQH6bDj
	CHETbAO/PGeHKsSuAEjqp8zxoHUA6Zm/smm0z3zIXYUKHmpiadx3NQusU0iiQIHSP39+SU3/8/2W2
	Yz9yJhiNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLq0H-0002Ck-6G; Tue, 07 Apr 2020 15:19:05 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLq09-0002CG-Rl
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 15:18:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586272737; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=MkHWeN7jEYivOg5ls6MEofDm2yhzyIloU6lj3iDRPEs=;
 b=YE+I/RA5EvgkU94B/H6mr+LfTnDo+GGlIRePo439Jrap65qdbIfQYr3uK65BG2SZpebExzEk
 A3sqFdG+2BLifR/q5J+4evgo5J9jSap50LCeF5++CEh3ufW3VFELyW4wAA0uz7KbWPNBWIXO
 EmBOIEODeongHf5h1kiUoFJ/7Ok=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c99e0.7fc3d97aef48-smtp-out-n03;
 Tue, 07 Apr 2020 15:18:56 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 29411C43636; Tue,  7 Apr 2020 15:18:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 63272C433D2;
 Tue,  7 Apr 2020 15:18:54 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 20:48:54 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
In-Reply-To: <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
 <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
 <bd05b31c2391edfff5044f22f2f83edf@codeaurora.org>
 <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
Message-ID: <a7074f44ebbde720b5e0189801eab7c9@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_081857_960295_3FF6CCD9 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

SGkgU3V6dWtpLAoKT24gMjAyMC0wNC0wNyAyMDoyMywgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBPbiAwNC8wNy8yMDIwIDAyOjU2IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+IEhp
IFN1enVraSwKPj4gCj4+IE9uIDIwMjAtMDQtMDcgMTg6MzgsIFN1enVraSBLIFBvdWxvc2Ugd3Jv
dGU6Cj4+PiBPbiAwNC8wNy8yMDIwIDEyOjI5IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6
Cj4+Pj4gSGkgU3V6dWtpLAo+Pj4+IAo+Pj4+IFRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMg
aXNzdWUuCj4+Pj4gCj4+Pj4gT24gMjAyMC0wNC0wNyAxNTo1NCwgU3V6dWtpIEsgUG91bG9zZSB3
cm90ZToKPj4+Pj4gT24gMDQvMDcvMjAyMCAxMDo0NiBBTSwgU2FpIFByYWthc2ggUmFuamFuIHdy
b3RlOgo+Pj4+PiAKPj4+Pj4gVGhlcmUgc2VlbXMgdG8gYmUgdHdvIHJlcGxpY2F0b3JzIGJhY2sg
dG8gYmFjayBoZXJlLiBXaGF0IGlzIAo+Pj4+PiBjb25uZWN0ZWQKPj4+Pj4gdG8gdGhlIG90aGVy
IG91dHB1dCBvZiBib3RoIG9mIHRoZW0gPyBBcmUgdGhlcmUgYW55IFRQSVVzID8gV2hhdCAKPj4+
Pj4gaGFwcGVucwo+Pj4+PiBpZiB5b3UgY2hvb3NlIGEgc2luayBvbiB0aGUgb3RoZXIgZW5kIG9m
ICJzd2FvX3JlcGxpY2F0b3IiIChFVEIgPykKPj4+Pj4gCj4+Pj4gCj4+Pj4gVGhlIG90aGVyIG91
dHBvcnQgb2Ygc3dhbyByZXBsaWNhdG9yIGlzIGNvbm5lY3RlZCB0byBFVUQgd2hpY2ggaXMgYQo+
Pj4+IFFDT00gc3BlY2lmaWMgSFcgd2hpY2ggY2FuIGJlIHVzZWQgYXMgYSBzaW5rIGxpa2UgVVNC
Lgo+Pj4+IEFuZCB0aGUgb3RoZXIgb3V0cG9ydCBvZiBvdGhlciByZXBsaWNhdG9yKHJlcGxpY2F0
b3Jfb3V0KSBpcyAKPj4+PiBjb25uZWN0ZWQgdG8KPj4+PiBUUElVLgo+Pj4+IAo+Pj4+PiBBZnRl
ciBib290LCB3aGF0IGRvIHRoZSBpZGZpbHRlciByZWdpc3RlcnMgcmVhZCBmb3IgYm90aCB0aGUg
Cj4+Pj4+IHJlcGxpY2F0b3JzID8KPj4+Pj4gCj4+Pj4gCj4+Pj4gQWRkZWQgc29tZSBwcmludHMg
aW4gcmVwbGljYXRvcl9wcm9iZS4KPj4+PiAKPj4+PiDCoMKgcmVwbGljYXRvciBwcm9iZSByZXQ9
LTUxNyBkZXZuYW1lPTYwNDYwMDAucmVwbGljYXRvciBpZGZpbHRlcjA9MHgwIAo+Pj4+IGlkZmls
dGVyMT0weDAKPj4+PiDCoMKgcmVwbGljYXRvciBwcm9iZSByZXQ9MCBkZXZuYW1lPTZiMDYwMDAu
cmVwbGljYXRvciBpZGZpbHRlcjA9MHhmZiAKPj4+PiBpZGZpbHRlcjE9MHhmZgo+Pj4+IMKgwqBy
ZXBsaWNhdG9yIHByb2JlIHJldD0wIGRldm5hbWU9NjA0NjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVy
MD0weGZmIAo+Pj4+IGlkZmlsdGVyMT0weGZmCj4+PiAKPj4+IEN1cmlvdXMgdG8gc2VlIGhvdyB0
aGUgaWRmaWx0ZXJYIGlzIHNldCB0byAwOgo+Pj4gwqDCoMKgwqAgaWYgdGhhdCBpcyBuZXZlciB1
c2VkLgo+Pj4gwqDCoMKgwqDCoMKgwqAgT3IKPj4+IMKgwqDCoMKgIGlmIHRoZSB1c2VyIGRvZXNu
J3QgcmVzZXQgaXQgYmFjayB0byAweGZmLgo+Pj4gCj4+IAo+PiBGb3IgYm90aCByZXBsaWNhdG9y
cywgdGhlIGRlZmF1bHQgdmFsdWUgc2VlbXMgdG8gYmUgMHgwLgo+PiAKPj4gIMKgcmVwbGljYXRv
ciBwcm9iZSBpbiByZXMgcmV0PTAgZGV2bmFtZT02MDQ2MDAwLnJlcGxpY2F0b3IgCj4+IGlkZmls
dGVyMD0weDAgaWRmaWx0ZXIxPTB4MAo+PiAgwqByZXBsaWNhdG9yIHByb2JlIHJldD0tNTE3IGRl
dm5hbWU9NjA0NjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVyMD0weDAgCj4+IGlkZmlsdGVyMT0weDAK
Pj4gIMKgcmVwbGljYXRvciBwcm9iZSBpbiByZXMgcmV0PTAgZGV2bmFtZT02YjA2MDAwLnJlcGxp
Y2F0b3IgCj4+IGlkZmlsdGVyMD0weDAgaWRmaWx0ZXIxPTB4MAo+PiAgwqByZXBsaWNhdG9yIHBy
b2JlIHJldD0wIGRldm5hbWU9NmIwNjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVyMD0weGZmIAo+PiBp
ZGZpbHRlcjE9MHhmZgo+PiAgwqByZXBsaWNhdG9yIHByb2JlIGluIHJlcyByZXQ9MCBkZXZuYW1l
PTYwNDYwMDAucmVwbGljYXRvciAKPj4gaWRmaWx0ZXIwPTB4MCBpZGZpbHRlcjE9MHgwCj4+ICDC
oHJlcGxpY2F0b3IgcHJvYmUgcmV0PTAgZGV2bmFtZT02MDQ2MDAwLnJlcGxpY2F0b3IgaWRmaWx0
ZXIwPTB4ZmYgCj4+IGlkZmlsdGVyMT0weGZmCj4gCj4gSSBhbSBub3Qgc3VyZSBob3cgeW91IGhh
dmUgYWRkZWQgdGhlIGRlYnVncywgYnV0IGl0IGxvb2tzIGxpa2UgdGhlCj4gZHJpdmVycyBzZXQg
MHhmZiBmb3IgYm90aCB0aGUgcG9ydCBmaWx0ZXJzIG9uIGEgc3VjY2Vzc2Z1bCBwcm9iZS4KPiAK
ClllcywgdGhhdHMgZG9uZSBieSByZXBsaWNhdG9yX3Jlc2V0IGluIHByb2JlIHJpZ2h0PyBCZWxv
dyBpcyB0aGUgZGlmZjoKCkBAIC0yNDIsNiArMjQ0LDkgQEAgc3RhdGljIGludCByZXBsaWNhdG9y
X3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgCnN0cnVjdCByZXNvdXJjZSAqcmVzKQogICAgICAg
ICAgICAgICAgIH0KICAgICAgICAgICAgICAgICBkcnZkYXRhLT5iYXNlID0gYmFzZTsKICAgICAg
ICAgICAgICAgICBkZXNjLmdyb3VwcyA9IHJlcGxpY2F0b3JfZ3JvdXBzOworICAgICAgICAgICAg
ICAgcHJfaW5mbygicmVwbGljYXRvciBwcm9iZSBpbiByZXMgcmV0PSVkIGRldm5hbWU9JXMgCmlk
ZmlsdGVyMD0lI2x4IGlkZmlsdGVyMT0lI2x4XG4iLAorICAgICAgICAgICAgICAgICAgICAgICBy
ZXQsIGRldl9uYW1lKGRldiksIChyZWFkbF9yZWxheGVkKGJhc2UgKyAKUkVQTElDQVRPUl9JREZJ
TFRFUjApKSwKKyAgICAgICAgICAgICAgICAgICAgICAgKHJlYWRsX3JlbGF4ZWQoYmFzZSArIFJF
UExJQ0FUT1JfSURGSUxURVIxKSkpOwogICAgICAgICB9CgogICAgICAgICBkZXZfc2V0X2RydmRh
dGEoZGV2LCBkcnZkYXRhKTsKQEAgLTI3Miw2ICsyNzcsMTIgQEAgc3RhdGljIGludCByZXBsaWNh
dG9yX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgCnN0cnVjdCByZXNvdXJjZSAqcmVzKQogIG91
dF9kaXNhYmxlX2NsazoKICAgICAgICAgaWYgKHJldCAmJiAhSVNfRVJSX09SX05VTEwoZHJ2ZGF0
YS0+YXRjbGspKQogICAgICAgICAgICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShkcnZkYXRh
LT5hdGNsayk7CisKKyAgICAgICBpZiAocmVzKQorICAgICAgICAgICAgICAgcHJfaW5mbygicmVw
bGljYXRvciBwcm9iZSByZXQ9JWQgZGV2bmFtZT0lcyAKaWRmaWx0ZXIwPSUjbHggaWRmaWx0ZXIx
PSUjbHhcbiIsCisgICAgICAgICAgICAgICAgICAgICAgIHJldCwgZGV2X25hbWUoZGV2KSwgKHJl
YWRsX3JlbGF4ZWQoYmFzZSArIApSRVBMSUNBVE9SX0lERklMVEVSMCkpLAorICAgICAgICAgICAg
ICAgICAgICAgICAocmVhZGxfcmVsYXhlZChiYXNlICsgUkVQTElDQVRPUl9JREZJTFRFUjEpKSk7
CisKICAgICAgICAgcmV0dXJuIHJldDsKICB9Cgo+PiAKPj4+IERvZXMgeW91ciB0ZXN0IGV2ZXIg
dG91Y2ggRVVEIChlbmFibGUgdGhlIHBvcnQgZm9yIEVVRCBhdAo+Pj4gc3dhby1yZXBsaWNhdG9y
KSA/IFdoYXQgYXJlIHRoZSB2YWx1ZXMgYmVmb3JlIHlvdSBydW4geW91ciB0ZXN0ID8KPj4+IAo+
Pj4gCj4+IAo+PiBObywgd2UgZG8gbm90IHVzZSBFVUQsIGRvd25zdHJlYW0gaXQgaXMgdXNlZCBh
cyBkdW1teSBzaW5rLgo+PiBBbmQgSSBqdXN0IHRyeSB0byBzZWxlY3QgdGhlIEVUUiBhcyB0aGUg
c2luayBhbmQgZW5hYmxlIEVUTTAgYXMgdGhlIAo+PiB0cmFjZSBzb3VyY2UuCj4+IAo+PiBlY2hv
IDEgPiAvc3lzL2J1cy9jb3Jlc2lnaHQvZGV2aWNlcy90bWNfZXRyMC9lbmFibGVfc2luawo+PiBl
Y2hvIDEgPiAvc3lzL2J1cy9jb3Jlc2lnaHQvZGV2aWNlcy9ldG0wL2VuYWJsZV9zb3VyY2UKPj4g
Cj4+IEFsc28gSSBzZWUgdGhlIEtBU0FOIHdhcm5pbmcgYnV0IHRoYXQgc2VlbXMgbGlrZSBzb21l
IG90aGVyIGlzc3VlLgo+PiAKPiAKPiBEb2VzIHlvdXIgZnVubmVsIGhhdmUgc3BhcnNlIGlucHV0
IGRlc2NyaWJlZCA/IEkgdGhpbmsgd2UgaGF2ZSBhbgo+IGlzc3VlIHdpdGggdGhlICJyZWZjbnQi
IHRyYWNraW5nIGZvciBmdW5uZWxzIChlc3BlY2lhbGx5KS4gV2hlbiB3ZQo+IGhhdmUgYSBzcGFy
c2UgaW5wdXQgcG9ydHMgZGVzY3JpYmVkIChpZS4gaWYgb25seSBpbnB1dCBwb3J0cyAwLCAzLAo+
IDUgYXJlIGRlc2NyaWJlZCB0byBwcm90ZWN0IHRoZSBzZWN1cmUgc2lkZSBjb25uZWN0aW9ucyks
IHdlIGNvdWxkCj4gZW5kIHVwIGFjY2Vzc2luZyBiZXlvbmQgdGhlIG1lbW9yeSBhbGxvY2F0ZWQg
Zm9yIGNzZGV2LT5yZWZjbnRzLgo+IGkuZSwgY3NkZXYtPnBkYXRhLT5ucl9pbnBvcnQgPSAzLCBh
bmQgd2UgY291bGQgYWNjZXNzIAo+IGNzZGV2LT5yZWZjbnRzWzVdLAo+IHdoaWxlIHNpemVvZihj
c2Rldi0+cmVmY250cykgPSBzaXplb2YoYXRvbWljX3QpICogMy4KPiAKPiBJIHdpbGwgc2VuZCBh
IHBhdGNoLgo+IAoKVGhhbmtzLCBJIGNhbiB0ZXN0IGl0IG91dC4KClRoYW5rcywKU2FpCgotLSAK
UVVBTENPTU0gSU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwg
SW5jLiBpcyBhIAptZW1iZXIKb2YgQ29kZSBBdXJvcmEgRm9ydW0sIGhvc3RlZCBieSBUaGUgTGlu
dXggRm91bmRhdGlvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
