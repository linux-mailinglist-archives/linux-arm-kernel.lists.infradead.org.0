Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215761BDFD4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1MJhPKqODqXg6n0j6LmY8jxyGMUVauAuVe/22ZxnCu4=; b=iWoskm0pbC62qxSZyXzPcGkoF
	MKYXIoP9HyZxg3Y6SKweAocimNNDrnB3CuPXRrHaKhNqQ4IvFRNT16qMewBiXfynMzT2Ommh59zB6
	mJfvZb67CpcDIVa5jdXOSln7TdW89hrGLTsiKlIdq8uYFNV0y2OYqQUVKToXGcqHTJvO39dbEKwDU
	a2UHS4FkEAzrasRzv7jtJ4tTLpZex4kmv6gdHMcRz+voD+XZi1c6D8mqPpfbUKDFqtzTMR37tAZfg
	nQ5eLtpDnEuNoXhbhYSLdRPpSLK2Gr9egVU4xvvNwN/qeBhaxC+3ReDSxUiYG1nu2G3lMRpx8X79E
	iAsxdIGvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnFn-0002jO-9q; Wed, 29 Apr 2020 13:59:59 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnFd-0002hV-IC
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:59:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588168788; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=dy1iDvMw3gJYPoh1J9Wwrp627qECY08lDEDYIsBE0wA=;
 b=NoOmGC37LJz0jnFwPHgJMq2SMxEadDF9bVai1IMUJ4JHR4FlhcRuh2hMj5zrGhC/MsWAAXYS
 bkNbqMrQ37RinwkMHRucqF/+NEv/nRSiCU1l91W+3h5FTkAHwQ63NQHNYuGDXBaapeW7Tt2A
 n2N0iHjl056aRWUlShJuvlK5oj0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea98852.7f5ff6f5a8b8-smtp-out-n02;
 Wed, 29 Apr 2020 13:59:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 926FAC432C2; Wed, 29 Apr 2020 13:59:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BE7C6C433D2;
 Wed, 29 Apr 2020 13:59:45 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 29 Apr 2020 19:29:45 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
Message-ID: <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_065949_662438_F72BB0B7 
X-CRM114-Status: GOOD (  22.52  )
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
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, swboyd@chromium.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0yOSAxOToxOSwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKPiBPbiAwNC8yOS8y
MDIwIDEyOjQ3IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+IE9uIDIwMjAtMDQtMjgg
MTc6NTMsIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPj4+IE9uIDIwMjAtMDQtMjcgMTk6MjMs
IFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4+Pj4gT24gMDQvMjcvMjAyMCAxMDo0NSBBTSwgTWlr
ZSBMZWFjaCB3cm90ZToKPj4+IFsuLi5dCj4+Pj4+PiAKPj4+Pj4+IFRoaXMgaXMgbm90IHN1ZmZp
Y2llbnQuIFlvdSBtdXN0IHByZXZlbnQgYW5vdGhlciBzZXNzaW9uIHRyeWluZyB0bwo+Pj4+Pj4g
ZW5hYmxlIHRoZSBvdGhlciBwb3J0IG9mIHRoZSByZXBsaWNhdG9yIGFzIHRoaXMgY291bGQgc2ls
ZW50bHkgCj4+Pj4+PiBmYWlsCj4+Pj4+PiB0aGUgIm9uLWdvaW5nIiBzZXNzaW9uLiBOb3QgaWRl
YWwuIEZhaWwgdGhlIGF0dGVtcHQgdG8gZW5hYmxlIGEgCj4+Pj4+PiBwb3J0Cj4+Pj4+PiBpZiB0
aGUgb3RoZXIgcG9ydCBpcyBhY3RpdmUuIFlvdSBjb3VsZCB0cmFjayB0aGlzIGluIHNvZnR3YXJl
IGFuZAo+Pj4+Pj4gZmFpbCBlYXJseS4KPj4+Pj4+IAo+Pj4+Pj4gU3V6dWtpCj4+Pj4+IAo+Pj4+
PiBXaGlsZSBJIGhhdmUgbm8gaXNzdWUgaW4gcHJpbmNpcGxlIHdpdGggbm90IGVuYWJsaW5nIGEg
cGF0aCB0byBhIAo+Pj4+PiBzaW5rCj4+Pj4+IHRoYXQgaXMgbm90IGluIHVzZSAtIGluZGVlZCBp
biBzb21lIGNhc2VzIGF0dGFjaGluZyB0byB1bnVzZWQgc2lua3MKPj4+Pj4gY2FuIGNhdXNlIGJh
Y2stcHJlc3N1cmUgdGhhdCBzbG93cyB0aHJvdWdocHV0IChjZiBUUElVKSAtIEkgYW0KPj4+Pj4g
Y29uY2VybmVkIHRoYXQgdGhpcyBtb2RpZmljYXRpb24gaXMgbWFza2luZyBhbiB1bmRlcmx5aW5n
IGlzc3VlIAo+Pj4+PiB3aXRoCj4+Pj4+IHRoZSBwbGF0Zm9ybSBpbiBxdWVzdGlvbi4KPj4+Pj4g
Cj4+Pj4+IFNob3VsZCB3ZSBkZWNpZGUgdG8gZW5hYmxlIHRoZSBkaXZlcnNpb24gb2YgZGlmZmVy
ZW50IElEcyB0byAKPj4+Pj4gZGlmZmVyZW50Cj4+Pj4+IHNpbmtzIG9yIGFsbG93IGRpZmZlcmVu
dCBzZXNzaW9ucyBnbyB0byBkaWZmZXJlbnQgc2lua3MsIHRoZW4gdGhpcyAKPj4+Pj4gaGFzCj4+
Pj4+IHBvdGVudGlhbCB0byBmYWlsIG9uIHRoZSBTQzcxODAgU29DIC0gYW5kIGl0IHdpbGwgYmUg
ZGlmZmljdWx0IGluCj4+Pj4+IGZ1dHVyZSB0byBhc3NvY2lhdGUgYSBwcm9ibGVtIHdpdGggdGhp
cyBkaXNjdXNzaW9uLgo+Pj4+IAo+Pj4+IE1pa2UsCj4+Pj4gCj4+Pj4gSSB0aGluayB0aGF0cyBh
IGdvb2QgcG9pbnQuCj4+Pj4gU2FpLCBwbGVhc2UgY291bGQgd2UgbmFycm93IGRvd24gdGhpcyB0
byB0aGUgcmVhbCBwcm9ibGVtIGFuZCBtYXkgYmUKPj4+PiB3b3JrIGFyb3VuZCBpdCBmb3IgdGhl
ICJkZXZpY2UiID8gRG8gd2Uga25vdyB3aGljaCBzaW5rIGlzIGNhdXNpbmcgCj4+Pj4gdGhlCj4+
Pj4gYmFjayBwcmVzc3VyZSA/IFdlIGNvdWxkIHRoZW4gcHVzaCB0aGUgIndvcmsgYXJvdW5kIiB0
byB0aGUgCj4+Pj4gcmVwbGljYXRvcgo+Pj4+IGl0IGlzIGNvbm5lY3RlZCB0by4KPj4+PiAKPj4+
PiBTdXp1a2kKPj4+IAo+Pj4gSGkgU3V6dWtpLCBNaWtlLAo+Pj4gCj4+PiBUbyBhZGQgc29tZSBt
b3JlIHRvIHRoZSBpbmZvcm1hdGlvbiBwcm92aWRlZCBlYXJsaWVyLAo+Pj4gc3dhb19yZXBsaWNh
dG9yKDZiMDYwMDApIGFuZCBldGYgYXJlCj4+PiBpbiBBT1NTIChBbHdheXMtT24tU3ViU3lzdGVt
KSBncm91cC4gQWxzbyBUUElVKGNvbm5lY3RlZCB0bwo+Pj4gcWRzc19yZXBsaWNhdG9yKSBhbmQg
RVVEKGNvbm5lY3RlZAo+Pj4gdG8gc3dhb19yZXBsaWNhdG9yKSBzaW5rcyBhcmUgdW51c2VkLgo+
Pj4gCj4+PiBQbGVhc2UgaWdub3JlIHRoZSBpZCBmaWx0ZXIgdmFsdWVzIHByb3ZpZGVkIGVhcmxp
ZXIuCj4+PiBIZXJlIGFyZSBJRCBmaWx0ZXIgdmFsdWVzIGFmdGVyIGJvb3QgYW5kIGJlZm9yZSBl
bmFibGluZyByZXBsaWNhdG9yLiAKPj4+IEFzIHBlcgo+Pj4gdGhlc2UgaWRmaWx0ZXIgdmFsdWVz
LCB3ZSBzaG91bGQgbm90IHRyeSB0byBlbmFibGUgcmVwbGljYXRvciBpZiBpdHMgCj4+PiBhbHJl
YWR5Cj4+PiBlbmFibGVkIChpbiB0aGlzIGNhc2UgZm9yIHN3YW9fcmVwbGljYXRvcikgcmlnaHQ/
Cj4+PiAKPj4+IGxvY2FsaG9zdCB+ICMgY2F0Cj4+PiAvc3lzL2J1cy9hbWJhL2RldmljZXMvNmIw
NjAwMC5yZXBsaWNhdG9yL3JlcGxpY2F0b3IxL21nbXQvaWRmaWx0ZXIwCj4+PiAweDAKPj4+IGxv
Y2FsaG9zdCB+ICMgY2F0Cj4+PiAvc3lzL2J1cy9hbWJhL2RldmljZXMvNmIwNjAwMC5yZXBsaWNh
dG9yL3JlcGxpY2F0b3IxL21nbXQvaWRmaWx0ZXIxCj4+PiAweDAKPj4+IAo+Pj4gbG9jYWxob3N0
IH4gIyBjYXQKPj4+IC9zeXMvYnVzL2FtYmEvZGV2aWNlcy82MDQ2MDAwLnJlcGxpY2F0b3IvcmVw
bGljYXRvcjAvbWdtdC9pZGZpbHRlcjAKPj4+IDB4ZmYKPj4+IGxvY2FsaG9zdCB+ICMgY2F0Cj4+
PiAvc3lzL2J1cy9hbWJhL2RldmljZXMvNjA0NjAwMC5yZXBsaWNhdG9yL3JlcGxpY2F0b3IwL21n
bXQvaWRmaWx0ZXIxCj4+PiAweGZmCj4+PiAKPj4gCj4+IExvb2tpbmcgbW9yZSBpbnRvIHJlcGxp
Y2F0b3IxKHN3YW9fcmVwbGljYXRvcikgdmFsdWVzIGFzIDB4MCBldmVuIAo+PiBhZnRlciByZXBs
aWNhdG9yX3Jlc2V0KCkKPj4gaW4gcmVwbGljYXRvciBwcm9iZSwgSSBhZGRlZCBkeW5hbWljX3Jl
cGxpY2F0b3JfcmVzZXQgaW4gCj4+IGR5bmFtaWNfcmVwbGljYXRvcl9lbmFibGUoKQo+PiBhbmQg
YW0gbm90IHNlZWluZyBhbnkgaGFyZGxvY2t1cC4gQWxzbyBJIGFkZGVkIHNvbWUgcHJpbnRzIHRv
IGNoZWNrIAo+PiB0aGUgaWRmaWx0ZXIKPj4gdmFsdWVzIGJlZm9yZSBhbmQgYWZ0ZXIgcmVzZXQg
YW5kIGZvdW5kIHRoYXQgaXRzIG5vdCBzZXQgdG8gMHhmZiBldmVuIAo+PiBhZnRlciByZXBsaWNh
dG9yX3Jlc2V0KCkKPj4gaW4gcmVwbGljYXRvciBwcm9iZSwgSSBkb24ndCBzZWUgYW55IG90aGVy
IHBhdGggc2V0dGluZyBpdCB0byAweDAuCj4+IAo+PiBBZnRlciBwcm9iZToKPj4gCj4+IFvCoMKg
wqAgOC40Nzc2NjldIGZ1bmMgcmVwbGljYXRvcl9wcm9iZSBiZWZvcmUgcmVzZXQgcmVwbGljYXRv
ciAKPj4gcmVwbGljYXRvcjEgUkVQTElDQVRPUl9JREZJTFRFUjA9MHgwIFJFUExJQ0FUT1JfSURG
SUxURVIxPTB4MAo+PiBbwqDCoMKgIDguNDg5NDcwXSBmdW5jIHJlcGxpY2F0b3JfcHJvYmUgYWZ0
ZXIgcmVzZXQgcmVwbGljYXRvciAKPj4gcmVwbGljYXRvcjEgUkVQTElDQVRPUl9JREZJTFRFUjA9
MHhmZiBSRVBMSUNBVE9SX0lERklMVEVSMT0weGZmCj4gCj4gQUZBSUNTLCBhZnRlciB0aGUgcmVz
ZXQgYm90aCBvZiB0aGVtIGFyZSBzZXQgdG8gMHhmZi4KClllcyBJIHNlZSB0aGlzIHRvbyBhcyB3
ZSBjYWxsIHJlcGxpY2F0b3JfcmVzZXQoKSBpbiBwcm9iZS4gV2hhdCBJIHdhbnRlZCAKdG8gaGln
aGxpZ2h0IHdhcyB0aGUgYmVsb3cgcGFydCB3aGVyZSBpdCBpcyBzZXQgdG8gMHgwIGJlZm9yZSBl
bmFibGluZyAKZHluYW1pYyByZXBsaWNhdG9yLgoKPiAKPj4gW8KgwqDCoCA4LjUwMjczOF0gZnVu
YyByZXBsaWNhdG9yX3Byb2JlIGJlZm9yZSByZXNldCByZXBsaWNhdG9yIAo+PiByZXBsaWNhdG9y
MCBSRVBMSUNBVE9SX0lERklMVEVSMD0weDAgUkVQTElDQVRPUl9JREZJTFRFUjE9MHgwCj4+IFvC
oMKgwqAgOC41MTUyMTRdIGZ1bmMgcmVwbGljYXRvcl9wcm9iZSBhZnRlciByZXNldCByZXBsaWNh
dG9yIAo+PiByZXBsaWNhdG9yMCBSRVBMSUNBVE9SX0lERklMVEVSMD0weGZmIFJFUExJQ0FUT1Jf
SURGSUxURVIxPTB4ZmYKPiAKPiAKPiAKPj4gbG9jYWxob3N0IH4gIwo+PiBsb2NhbGhvc3QgfiAj
Cj4+IGxvY2FsaG9zdCB+ICMgZWNobyAxID4gL3N5cy9idXMvY29yZXNpZ2h0L2RldmljZXMvdG1j
X2V0cjAvZW5hYmxlX3NpbmsKPj4gbG9jYWxob3N0IH4gIwo+PiBsb2NhbGhvc3QgfiAjIGVjaG8g
MSA+IC9zeXMvYnVzL2NvcmVzaWdodC9kZXZpY2VzL2V0bTAvZW5hYmxlX3NvdXJjZQo+PiBbwqDC
oCA1OC40OTA0ODVdIGZ1bmMgZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZSBiZWZvcmUgcmVzZXQg
cmVwbGljYXRvciAKPj4gcmVwbGljYXRvcjAgUkVQTElDQVRPUl9JREZJTFRFUjA9MHhmZiBSRVBM
SUNBVE9SX0lERklMVEVSMT0weGZmCj4+IFvCoMKgIDU4LjUwMzI0Nl0gZnVuYyBkeW5hbWljX3Jl
cGxpY2F0b3JfZW5hYmxlIGFmdGVyIHJlc2V0IHJlcGxpY2F0b3IgCj4+IHJlcGxpY2F0b3IwIFJF
UExJQ0FUT1JfSURGSUxURVIwPTB4ZmYgUkVQTElDQVRPUl9JREZJTFRFUjE9MHhmZgo+PiBbwqDC
oCA1OC41MjA5MDJdIGZ1bmMgZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZSBiZWZvcmUgcmVzZXQg
cmVwbGljYXRvciAKPj4gcmVwbGljYXRvcjEgUkVQTElDQVRPUl9JREZJTFRFUjA9MHgwIFJFUExJ
Q0FUT1JfSURGSUxURVIxPTB4MAo+IAo+IFlvdSBuZWVkIHRvIGZpbmQgd2hhdCBpcyByZXNldHRp
bmcgdGhlIElERklMVEVScyB0byAwIGZvciByZXBsaWNhdG9yMS4KPiAKClRoYXQgaXMgcmlnaHQu
Cgo+PiBbwqDCoCA1OC41MzM1MDBdIGZ1bmMgZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZSBhZnRl
ciByZXNldCByZXBsaWNhdG9yIAo+PiByZXBsaWNhdG9yMSBSRVBMSUNBVE9SX0lERklMVEVSMD0w
eGZmIFJFUExJQ0FUT1JfSURGSUxURVIxPTB4ZmYKPj4gbG9jYWxob3N0IH4gIwo+PiAKPj4gQ2Fu
IHdlIGhhdmUgYSByZXBsaWNhdG9yX3Jlc2V0IGluIGR5bmFtaWNfcmVwbGljYXRvcl9lbmFibGU/
Cj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdo
dC1yZXBsaWNhdG9yLmMgCj4+IGIvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdo
dC1yZXBsaWNhdG9yLmMKPj4gaW5kZXggZTdkYzFjMzFkMjBkLi43OTRmOGU0YzA0OWYgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcmVwbGljYXRv
ci5jCj4+ICsrKyBiL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcmVwbGlj
YXRvci5jCj4+IEBAIC02OCw2ICs2OCw4IEBAIHN0YXRpYyBpbnQgZHluYW1pY19yZXBsaWNhdG9y
X2VuYWJsZShzdHJ1Y3QgCj4+IHJlcGxpY2F0b3JfZHJ2ZGF0YSAqZHJ2ZGF0YSwKPj4gIMKgwqDC
oMKgwqDCoMKgIGludCByYyA9IDA7Cj4+ICDCoMKgwqDCoMKgwqDCoCB1MzIgcmVnOwo+PiAKPj4g
K8KgwqDCoMKgwqDCoCBkeW5hbWljX3JlcGxpY2F0b3JfcmVzZXQoZHJ2ZGF0YSk7Cj4+ICsKPiAK
PiBBZ2FpbiB5b3UgYXJlIHRyeWluZyB0byBtYXNrIGFuIGlzc3VlIHdpdGggdGhpcy4gSXMgdGhl
IGZpcm13YXJlCj4gdXNpbmcgdGhlIHJlcGxpY2F0b3IgZm9yIGFueXRoaW5nID8gSWYgc28sIHRo
aXMgbmVlZHMgdG8gYmUgY2xhaW1lZAo+IHRvIHByZXZlbnQgdXMgZnJvbSB1c2luZyBpdC4KPiAK
Ckkgd2FzIHRyeWluZyB0byBuYXJyb3cgZG93biBmdXJ0aGVyIGFzIHlvdSBzdWdnZXN0ZWQuIFRo
ZXJlIGFyZSBvdGhlciAKRVRNcyBsaWtlIEFPUCBFVE0gd2hpY2ggdXNlIHRoaXMgcmVwbGljYXRv
ciwgd2lsbCBuZWVkIHRvIGNoZWNrIHdpdGggdGhlIApmaXJtd2FyZSB0ZWFtIGZvciBkZXRhaWxz
LgoKVGhhbmtzLApTYWkKCi0tIApRVUFMQ09NTSBJTkRJQSwgb24gYmVoYWxmIG9mIFF1YWxjb21t
IElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgCm1lbWJlcgpvZiBDb2RlIEF1cm9yYSBGb3J1
bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
