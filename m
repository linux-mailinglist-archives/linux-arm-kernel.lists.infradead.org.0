Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7729C1A0EB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 15:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oo4Cy92fMbKVdHKoc2qscT/YD2BccZ+A/3UXMHMh2bk=; b=KhWmo9lKmXBOrgaZOYtEcU7ey
	CKObwngfMh7lEbivNbQ26eWeOIreRLIC61pqlu9qLm2A6SW9Dnc/l/T6ovnpjdsir3mImPXJCheFT
	25tBA9mBkHPWaizBq5WCvrAMeAdTv3vbb2ci5aJu7wCEqT6Gzkcpl5VSjwr4A3pNZKKz/f5Iyx3Lj
	wMBDDGjcvKNVrPfkK/g1QaXiCgvv0eg0bpH6jUr5v7+cIG8MXd9u85+V4w+xfzKZDin+eEwz1uDUm
	MisDghM2JKhNgbFZWhqrPuMTvC/YovZvsDeL2oUWE+cXzp6YisVjWDQ1nCCxU9Lg8s41IY3FdD/Nq
	eIxK/Oz3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLoj1-0006XU-My; Tue, 07 Apr 2020 13:57:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLoiq-0006Vv-Pg
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 13:57:06 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586267824; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=TE4hZov0rkOV4uqiyW/RcPjnKoFTB49aSNaOcciKWeo=;
 b=fygPOOyzMKhpLAuSfwzstJZcD8lZAsuvHuUfo6mCzuWTWFNqnZz/ist5FwVact0Eri+52dg/
 wmvzLF+vm0uUfi3VacFF7jGkJ6cpmSudwi3rEyWfdiZc27IBwOG5i5tM6LoG2/fFWOpX7Juo
 XrczFxLy1Gh3fE1OQIwn9UK+ZIo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8c869f.7f5edabfea78-smtp-out-n01;
 Tue, 07 Apr 2020 13:56:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0921CC43637; Tue,  7 Apr 2020 13:56:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1B6B7C433F2;
 Tue,  7 Apr 2020 13:56:45 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 07 Apr 2020 19:26:45 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
In-Reply-To: <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
 <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
Message-ID: <bd05b31c2391edfff5044f22f2f83edf@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_065704_857300_3B8DA0E4 
X-CRM114-Status: GOOD (  18.73  )
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

SGkgU3V6dWtpLAoKT24gMjAyMC0wNC0wNyAxODozOCwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBPbiAwNC8wNy8yMDIwIDEyOjI5IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+IEhp
IFN1enVraSwKPj4gCj4+IFRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMgaXNzdWUuCj4+IAo+
PiBPbiAyMDIwLTA0LTA3IDE1OjU0LCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+Pj4gT24gMDQv
MDcvMjAyMCAxMDo0NiBBTSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+Pj4gCj4+PiBUaGVy
ZSBzZWVtcyB0byBiZSB0d28gcmVwbGljYXRvcnMgYmFjayB0byBiYWNrIGhlcmUuIFdoYXQgaXMg
Cj4+PiBjb25uZWN0ZWQKPj4+IHRvIHRoZSBvdGhlciBvdXRwdXQgb2YgYm90aCBvZiB0aGVtID8g
QXJlIHRoZXJlIGFueSBUUElVcyA/IFdoYXQgCj4+PiBoYXBwZW5zCj4+PiBpZiB5b3UgY2hvb3Nl
IGEgc2luayBvbiB0aGUgb3RoZXIgZW5kIG9mICJzd2FvX3JlcGxpY2F0b3IiIChFVEIgPykKPj4+
IAo+PiAKPj4gVGhlIG90aGVyIG91dHBvcnQgb2Ygc3dhbyByZXBsaWNhdG9yIGlzIGNvbm5lY3Rl
ZCB0byBFVUQgd2hpY2ggaXMgYQo+PiBRQ09NIHNwZWNpZmljIEhXIHdoaWNoIGNhbiBiZSB1c2Vk
IGFzIGEgc2luayBsaWtlIFVTQi4KPj4gQW5kIHRoZSBvdGhlciBvdXRwb3J0IG9mIG90aGVyIHJl
cGxpY2F0b3IocmVwbGljYXRvcl9vdXQpIGlzIGNvbm5lY3RlZCAKPj4gdG8KPj4gVFBJVS4KPj4g
Cj4+PiBBZnRlciBib290LCB3aGF0IGRvIHRoZSBpZGZpbHRlciByZWdpc3RlcnMgcmVhZCBmb3Ig
Ym90aCB0aGUgCj4+PiByZXBsaWNhdG9ycyA/Cj4+PiAKPj4gCj4+IEFkZGVkIHNvbWUgcHJpbnRz
IGluIHJlcGxpY2F0b3JfcHJvYmUuCj4+IAo+PiAgwqByZXBsaWNhdG9yIHByb2JlIHJldD0tNTE3
IGRldm5hbWU9NjA0NjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVyMD0weDAgCj4+IGlkZmlsdGVyMT0w
eDAKPj4gIMKgcmVwbGljYXRvciBwcm9iZSByZXQ9MCBkZXZuYW1lPTZiMDYwMDAucmVwbGljYXRv
ciBpZGZpbHRlcjA9MHhmZiAKPj4gaWRmaWx0ZXIxPTB4ZmYKPj4gIMKgcmVwbGljYXRvciBwcm9i
ZSByZXQ9MCBkZXZuYW1lPTYwNDYwMDAucmVwbGljYXRvciBpZGZpbHRlcjA9MHhmZiAKPj4gaWRm
aWx0ZXIxPTB4ZmYKPiAKPiBDdXJpb3VzIHRvIHNlZSBob3cgdGhlIGlkZmlsdGVyWCBpcyBzZXQg
dG8gMDoKPiAJIGlmIHRoYXQgaXMgbmV2ZXIgdXNlZC4KPiAJCU9yCj4gCSBpZiB0aGUgdXNlciBk
b2Vzbid0IHJlc2V0IGl0IGJhY2sgdG8gMHhmZi4KPiAKCkZvciBib3RoIHJlcGxpY2F0b3JzLCB0
aGUgZGVmYXVsdCB2YWx1ZSBzZWVtcyB0byBiZSAweDAuCgogIHJlcGxpY2F0b3IgcHJvYmUgaW4g
cmVzIHJldD0wIGRldm5hbWU9NjA0NjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVyMD0weDAgCmlkZmls
dGVyMT0weDAKICByZXBsaWNhdG9yIHByb2JlIHJldD0tNTE3IGRldm5hbWU9NjA0NjAwMC5yZXBs
aWNhdG9yIGlkZmlsdGVyMD0weDAgCmlkZmlsdGVyMT0weDAKICByZXBsaWNhdG9yIHByb2JlIGlu
IHJlcyByZXQ9MCBkZXZuYW1lPTZiMDYwMDAucmVwbGljYXRvciBpZGZpbHRlcjA9MHgwIAppZGZp
bHRlcjE9MHgwCiAgcmVwbGljYXRvciBwcm9iZSByZXQ9MCBkZXZuYW1lPTZiMDYwMDAucmVwbGlj
YXRvciBpZGZpbHRlcjA9MHhmZiAKaWRmaWx0ZXIxPTB4ZmYKICByZXBsaWNhdG9yIHByb2JlIGlu
IHJlcyByZXQ9MCBkZXZuYW1lPTYwNDYwMDAucmVwbGljYXRvciBpZGZpbHRlcjA9MHgwIAppZGZp
bHRlcjE9MHgwCiAgcmVwbGljYXRvciBwcm9iZSByZXQ9MCBkZXZuYW1lPTYwNDYwMDAucmVwbGlj
YXRvciBpZGZpbHRlcjA9MHhmZiAKaWRmaWx0ZXIxPTB4ZmYKCj4gRG9lcyB5b3VyIHRlc3QgZXZl
ciB0b3VjaCBFVUQgKGVuYWJsZSB0aGUgcG9ydCBmb3IgRVVEIGF0Cj4gc3dhby1yZXBsaWNhdG9y
KSA/IFdoYXQgYXJlIHRoZSB2YWx1ZXMgYmVmb3JlIHlvdSBydW4geW91ciB0ZXN0ID8KPiAKPiAK
Ck5vLCB3ZSBkbyBub3QgdXNlIEVVRCwgZG93bnN0cmVhbSBpdCBpcyB1c2VkIGFzIGR1bW15IHNp
bmsuCkFuZCBJIGp1c3QgdHJ5IHRvIHNlbGVjdCB0aGUgRVRSIGFzIHRoZSBzaW5rIGFuZCBlbmFi
bGUgRVRNMCBhcyB0aGUgCnRyYWNlIHNvdXJjZS4KCmVjaG8gMSA+IC9zeXMvYnVzL2NvcmVzaWdo
dC9kZXZpY2VzL3RtY19ldHIwL2VuYWJsZV9zaW5rCmVjaG8gMSA+IC9zeXMvYnVzL2NvcmVzaWdo
dC9kZXZpY2VzL2V0bTAvZW5hYmxlX3NvdXJjZQoKQWxzbyBJIHNlZSB0aGUgS0FTQU4gd2Fybmlu
ZyBidXQgdGhhdCBzZWVtcyBsaWtlIHNvbWUgb3RoZXIgaXNzdWUuCgpbICA1MjYuMTEwNDAxXSAK
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09ClsgIDUyNi4xMTc5ODhdIEJVRzogS0FTQU46IHNsYWItb3V0LW9mLWJvdW5kcyBp
biAKZnVubmVsX2VuYWJsZSsweDU0LzB4MWIwClsgIDUyNi4xMjQ3MDZdIFJlYWQgb2Ygc2l6ZSA0
IGF0IGFkZHIgZmZmZmZmODEzNWY5NTQ5YyBieSB0YXNrIGJhc2gvMTExNApbICA1MjYuMTMxMzI0
XQpbICA1MjYuMTMyODg2XSBDUFU6IDMgUElEOiAxMTE0IENvbW06IGJhc2ggVGFpbnRlZDogRyBT
ICAgICAgICAgICAgICAgIAo1LjQuMjUgIzIzMgpbICA1MjYuMTQwMzk3XSBIYXJkd2FyZSBuYW1l
OiBRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gU0M3MTgwIElEUCAKKERUKQpbICA1MjYuMTQ3
MTEzXSBDYWxsIHRyYWNlOgpbICA1MjYuMTQ5NjUzXSAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MTg4
ClsgIDUyNi4xNTM0MzFdICBzaG93X3N0YWNrKzB4MjAvMHgyYwpbICA1MjYuMTU2ODUyXSAgZHVt
cF9zdGFjaysweGRjLzB4MTQ0ClsgIDUyNi4xNjAzNzBdICBwcmludF9hZGRyZXNzX2Rlc2NyaXB0
aW9uKzB4M2MvMHg0OTQKWyAgNTI2LjE2NTIxMV0gIF9fa2FzYW5fcmVwb3J0KzB4MTQ0LzB4MTY4
ClsgIDUyNi4xNjkxNzBdICBrYXNhbl9yZXBvcnQrMHgxMC8weDE4ClsgIDUyNi4xNzI3NjldICBj
aGVja19tZW1vcnlfcmVnaW9uKzB4MWE0LzB4MWI0ClsgIDUyNi4xNzcxNjRdICBfX2thc2FuX2No
ZWNrX3JlYWQrMHgxOC8weDI0ClsgIDUyNi4xODEyOTJdICBmdW5uZWxfZW5hYmxlKzB4NTQvMHgx
YjAKWyAgNTI2LjE4NTA3Ml0gIGNvcmVzaWdodF9lbmFibGVfcGF0aCsweDEwNC8weDE5OApbICA1
MjYuMTg5NjQ5XSAgY29yZXNpZ2h0X2VuYWJsZSsweDExOC8weDI2YwpbICA1MjYuMTkzNzc4XSAg
ZW5hYmxlX3NvdXJjZV9zdG9yZSsweDY0LzB4YTgKWyAgNTI2LjE5ODAwN10gIGRldl9hdHRyX3N0
b3JlKzB4NDAvMHg1OApbICA1MjYuMjAxNzg4XSAgc3lzZnNfa2Zfd3JpdGUrMHg0Yy8weDY0Clsg
IDUyNi4yMDU1NjddICBrZXJuZnNfZm9wX3dyaXRlKzB4MTZjLzB4MjEwClsgIDUyNi4yMDk3MDBd
ICBfX3Zmc193cml0ZSsweDU0LzB4MWE4ClsgIDUyNi4yMTMyOTddICB2ZnNfd3JpdGUrMHhlNC8w
eDFhNApbICA1MjYuMjE2NzE0XSAga3N5c193cml0ZSsweDg0LzB4ZWMKWyAgNTI2LjIyMDEzMV0g
IF9fYXJtNjRfc3lzX3dyaXRlKzB4MjAvMHgyYwpbICA1MjYuMjI0MTc5XSAgZWwwX3N2Y19jb21t
b24rMHhhOC8weDE2MApbICA1MjYuMjI4MDQwXSAgZWwwX3N2Y19jb21wYXRfaGFuZGxlcisweDJj
LzB4MzgKWyAgNTI2LjIzMjUzM10gIGVsMF9zdmNfY29tcGF0KzB4OC8weDEwClsgIDUyNi4yMzYy
MjVdClsgIDUyNi4yMzc3ODJdIEFsbG9jYXRlZCBieSB0YXNrIDI4MDoKWyAgNTI2LjI0MTI5OF0g
IF9fa2FzYW5fa21hbGxvYysweGYwLzB4MWFjClsgIDUyNi4yNDUyNDldICBrYXNhbl9rbWFsbG9j
KzB4Yy8weDE0ClsgIDUyNi4yNDg4NDldICBfX2ttYWxsb2MrMHgyOGMvMHgzYjQKWyAgNTI2LjI1
MjM2MV0gIGNvcmVzaWdodF9yZWdpc3RlcisweDg4LzB4MjUwClsgIDUyNi4yNTY1ODddICBmdW5u
ZWxfcHJvYmUrMHgxNWMvMHgyMjgKWyAgNTI2LjI2MDM2NV0gIGR5bmFtaWNfZnVubmVsX3Byb2Jl
KzB4MjAvMHgyYwpbICA1MjYuMjY0Njc5XSAgYW1iYV9wcm9iZSsweGJjLzB4MTU4ClsgIDUyNi4y
NjgxOTNdICByZWFsbHlfcHJvYmUrMHgxNDQvMHg0MDgKWyAgNTI2LjI3MTk3MF0gIGRyaXZlcl9w
cm9iZV9kZXZpY2UrMHg3MC8weDE0MApbICA1MjYuMjc2MjgyXSAgX19kZXZpY2VfYXR0YWNoX2Ry
aXZlcisweDljLzB4MTEwClsgIDUyNi4yODA4NjFdICBidXNfZm9yX2VhY2hfZHJ2KzB4OTAvMHhk
OApbICA1MjYuMjg0ODIyXSAgX19kZXZpY2VfYXR0YWNoKzB4YjQvMHgxNjQKWyAgNTI2LjI4ODc3
Ml0gIGRldmljZV9pbml0aWFsX3Byb2JlKzB4MjAvMHgyYwpbICA1MjYuMjkzMDgxXSAgYnVzX3By
b2JlX2RldmljZSsweDM0LzB4OTQKWyAgNTI2LjI5NzAzMF0gIGRlZmVycmVkX3Byb2JlX3dvcmtf
ZnVuYysweGE0LzB4MTAwClsgIDUyNi4zMDE3OTRdICBwcm9jZXNzX29uZV93b3JrKzB4MzNjLzB4
NjQwClsgIDUyNi4zMDU5MjJdICB3b3JrZXJfdGhyZWFkKzB4MmEwLzB4NDcwClsgIDUyNi4zMDk3
ODZdICBrdGhyZWFkKzB4MTI4LzB4MTM4ClsgIDUyNi4zMTMxMTldICByZXRfZnJvbV9mb3JrKzB4
MTAvMHgxOApbICA1MjYuMzE2ODEwXQpbICA1MjYuMzE4MzY0XSBGcmVlZCBieSB0YXNrIDA6Clsg
IDUyNi4zMjEzNDRdIChzdGFjayBpcyBub3QgYXZhaWxhYmxlKQpbICA1MjYuMzI1MDI0XQpbICA1
MjYuMzI2NTgwXSBUaGUgYnVnZ3kgYWRkcmVzcyBiZWxvbmdzIHRvIHRoZSBvYmplY3QgYXQgCmZm
ZmZmZjgxMzVmOTU0ODAKWyAgNTI2LjMyNjU4MF0gIHdoaWNoIGJlbG9uZ3MgdG8gdGhlIGNhY2hl
IGttYWxsb2MtMTI4IG9mIHNpemUgMTI4ClsgIDUyNi4zMzk0MzldIFRoZSBidWdneSBhZGRyZXNz
IGlzIGxvY2F0ZWQgMjggYnl0ZXMgaW5zaWRlIG9mClsgIDUyNi4zMzk0MzldICAxMjgtYnl0ZSBy
ZWdpb24gW2ZmZmZmZjgxMzVmOTU0ODAsIGZmZmZmZjgxMzVmOTU1MDApClsgIDUyNi4zNTEzOTld
IFRoZSBidWdneSBhZGRyZXNzIGJlbG9uZ3MgdG8gdGhlIHBhZ2U6ClsgIDUyNi4zNTYzNDJdIHBh
Z2U6ZmZmZmZmZmYwNGI3ZTUwMCByZWZjb3VudDoxIG1hcGNvdW50OjAgCm1hcHBpbmc6ZmZmZmZm
ODE0YjAwYzM4MCBpbmRleDoweDAgY29tcG91bmRfbWFwY291bnQ6IDAKWyAgNTI2LjM2NjcxMV0g
ZmxhZ3M6IDB4NDAwMDAwMDAwMDAxMDIwMChzbGFifGhlYWQpClsgIDUyNi4zNzE0NzVdIHJhdzog
NDAwMDAwMDAwMDAxMDIwMCBmZmZmZmZmZjA1MDM0MDA4IGZmZmZmZmZmMDUwMWViMDggCmZmZmZm
ZjgxNGIwMGMzODAKWyAgNTI2LjM3OTQzNV0gcmF3OiAwMDAwMDAwMDAwMDAwMDAwIDAwMDAwMDAw
MDAxOTAwMTkgMDAwMDAwMDFmZmZmZmZmZiAKMDAwMDAwMDAwMDAwMDAwMApbICA1MjYuMzg3Mzkz
XSBwYWdlIGR1bXBlZCBiZWNhdXNlOiBrYXNhbjogYmFkIGFjY2VzcyBkZXRlY3RlZApbICA1MjYu
MzkzMTI4XQpbICA1MjYuMzk0NjgxXSBNZW1vcnkgc3RhdGUgYXJvdW5kIHRoZSBidWdneSBhZGRy
ZXNzOgpbICA1MjYuMzk5NjE5XSAgZmZmZmZmODEzNWY5NTM4MDogZmMgZmMgZmMgZmMgZmMgZmMg
ZmMgZmMgZmMgZmMgZmMgZmMgZmMgCmZjIGZjIGZjClsgIDUyNi40MDcwNDZdICBmZmZmZmY4MTM1
Zjk1NDAwOiBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyAKZmMgZmMgZmMK
WyAgNTI2LjQxNDQ3M10gPmZmZmZmZjgxMzVmOTU0ODA6IDA0IGZjIGZjIGZjIGZjIGZjIGZjIGZj
IGZjIGZjIGZjIGZjIGZjIApmYyBmYyBmYwpbICA1MjYuNDIxOTAwXSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXgpbICA1MjYuNDI2MDI5XSAgZmZmZmZmODEzNWY5NTUwMDogZmMgZmMgZmMg
ZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMgCmZjIGZjIGZjClsgIDUyNi40MzM0NTZdICBm
ZmZmZmY4MTM1Zjk1NTgwOiBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyBmYyAK
ZmMgZmMgZmMKWyAgNTI2LjQ0MDg4M10gCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKVGhhbmtzLApTYWkKCi0tIApRVUFM
Q09NTSBJTkRJQSwgb24gYmVoYWxmIG9mIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMu
IGlzIGEgCm1lbWJlcgpvZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBG
b3VuZGF0aW9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
