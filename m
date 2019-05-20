Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDE9242C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 23:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xtoL8w+3Jht6RykgCK19pYUuzlU2r+BjbrSqS0ZGxM=; b=JCoecC5YHgy+Jd
	kSq4RCfMNvmPoVCXqcfXZUNBDxesL+kXhigT0jEfgNSFuQmaqPn3uYaUrdSq4+tkMyfHjqisyXM2O
	/664zlBU53AyrIALF6klbJq1PShHjJWj7l2VjojU6NOeu256SCoEMwW29bsimImgf9zRyZ8SHfEg4
	DHzmjaW+U9iNVhHZXUASOTTQdMy25ReL9YbOrPxVT+iUmYwpR2LgcTahp0ICXwlmP2LnLlXSeGrtD
	jOwlHavQkSzcnF2WLcdk52ieKtzk9PZPOxjHtRff6/27ZpAwt/fQEhzXy+XDX65sWzWXCWGvV/MOp
	M0XnqXKj3Hom9JGD6F3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSpkx-00042B-RQ; Mon, 20 May 2019 21:23:39 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSpkq-00041T-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 21:23:34 +0000
Received: by mail-it1-x144.google.com with SMTP id t184so1465445itf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 14:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nOkJzLKyCI/W8fuopzDIMnbGuxkwQsHCMqTJ6kkCpPM=;
 b=FpleFIPYsNw0MpvUnTfK2Qi3gOgwp+kxp6Kl2y1X9RMamUYkWrBDZY0lHb1yW8umIF
 zoHKvCKRsw52CeID2Fhbx6nfXdCDlf2rdqWKj2IyskmR0sI6ySsqz0dctkSEWet7mam+
 wca0T1uriusnq8SQ9hNLO40oHz8lhbJGimgnlKIuzeBbvbh33ljjWdQKRdRP5KNZYJhc
 GkzbK5GhVpj+QI+VdqDxSJP4E/ITb2qBv0hcoITsXKRyJUjP62kJkKEPhUxpz1NzUvAo
 wLxjD8W4TcdnApbwGKQ+66NIdIkUTvGkaByCGTheJWKlc06dPX0QslcrPmayxO0/TKic
 y7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nOkJzLKyCI/W8fuopzDIMnbGuxkwQsHCMqTJ6kkCpPM=;
 b=hyqnYhhTyDqALECIygQTRnocWBqqptWK7a2V2SdCBY9qW8hVjaaHAQsNGlEiCo13Zr
 a5Qe+dagrphfmNCLrp67VFbn3KBptSxi4PggLdNOJ42r8P5XMFDeHgyhPP2SLyKcvUpt
 04Or67zXK2NvH8qlle3lynwuoemtHe4RInVRkFUYfFnPiHtLr8jThDLTmMAuPybF9b8r
 mjLnBnMFyNDTAtiMwfOQG++xDUWMNNhFSyZ+UCZ9My1X0TmkDARpAiWkabxMmdGMvf4g
 zBxhowVse2iOOp+5e9JDBXtW2Ae5toTUbLAyzlwjSqD0DFL/YYOZ3c9E3HZN0TGT30WU
 M6tw==
X-Gm-Message-State: APjAAAV+VENWwoLPCgiRXwLuu1XhFF8kidM5zdHjbCd4zJwkyddwTsbv
 2vJuhNOBSa2cHtXFNmfRVU9Sfw==
X-Google-Smtp-Source: APXvYqyuWKfuF4pl19MX2Hjx3MvenfjGOM4mF47wYdhXdTq7PfbQtjHzVAnYM9QfcT4RecS+smrpbw==
X-Received: by 2002:a02:62ce:: with SMTP id d197mr3658837jac.91.1558387410957; 
 Mon, 20 May 2019 14:23:30 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id i13sm423199itb.9.2019.05.20.14.23.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 14:23:30 -0700 (PDT)
Subject: Re: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-2-elder@linaro.org>
 <b0edef36555877350cfbab2248f8baac@codeaurora.org>
From: Alex Elder <elder@linaro.org>
Message-ID: <81fd1e01-b8e3-f86a-fcc9-2bcbc51bd679@linaro.org>
Date: Mon, 20 May 2019 16:23:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b0edef36555877350cfbab2248f8baac@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_142332_795846_F3A13573 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 davem@davemloft.net, cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yMC8xOSAzOjExIFBNLCBTdWJhc2ggQWJoaW5vdiBLYXNpdmlzd2FuYXRoYW4gd3JvdGU6
Cj4gT24gMjAxOS0wNS0yMCAwNzo1MywgQWxleCBFbGRlciB3cm90ZToKPj4gVGhlIEMgYml0LWZp
ZWxkcyBpbiB0aGUgZmlyc3QgYnl0ZSBvZiB0aGUgcm1uZXRfbWFwX2hlYWRlciBzdHJ1Y3R1cmUK
Pj4gYXJlIGRlZmluZWQgaW4gdGhlIHdyb25nIG9yZGVyLsKgIFRoZSBmaXJzdCBieXRlIHNob3Vs
ZCBiZSBmb3JtYXR0ZWQKPj4gdGhpcyB3YXk6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICstLS0tLS0tIHJlc2VydmVkX2JpdAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8ICstLS0tLSBjZF9iaXQKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCB8Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHYgdgo+PiDCoMKgwqAg
Ky0tLS0tLS0tLS0tKy0rLSsKPj4gwqDCoMKgIHzCoCBwYWRfbGVuwqAgfFJ8Q3wKPj4gwqDCoMKg
ICstLS0tLS0tLS0tLSstKy0rCj4+IMKgwqDCoMKgIDcgNiA1IDQgMyAyIDEgMMKgIDwtLSBiaXQg
cG9zaXRpb24KPj4KPj4gQnV0IHRoZSBDIGJpdC1maWVsZHMgdGhhdCBkZWZpbmUgdGhlIGZpcnN0
IGJ5dGUgYXJlIGRlZmluZWQgdGhpcyB3YXk6Cj4+IMKgwqDCoCB1OCBwYWRfbGVuOjY7Cj4+IMKg
wqDCoCB1OCByZXNlcnZlZF9iaXQ6MTsKPj4gwqDCoMKgIHU4IGNkX2JpdDoxOwo+Pgo+IAo+IElm
IHRoZSBhYm92ZSBpbGx1c3RyYXRpb24gaXMgc3VwcG9zZWQgdG8gYmUgaW4gbmV0d29yayBieXRl
IG9yZGVyLAo+IHRoZW4gaXQgaXMgd3JvbmcuIFRoZSBkb2N1bWVudGF0aW9uIGhhcyB0aGUgZGVm
aW5pdGlvbiBmb3IgdGhlIE1BUAo+IHBhY2tldC4KCk5ldHdvcmsgKmJpdCogb3JkZXIgaXMgaXJy
ZWxldmFudCB0byB0aGUgaG9zdC4gIEhvc3QgbWVtb3J5IGlzCmJ5dGUgYWRkcmVzc2FibGUgb25s
eSwgYW5kIGJpdCAwIGlzIHRoZSBsb3ctb3JkZXIgYml0LgoKPiBQYWNrZXQgZm9ybWF0IC0KPiAK
PiBCaXTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAx
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMi03wqDCoMKgwqDCoCA4IC0gMTXCoMKgwqDCoMKgwqDCoMKg
wqDCoCAxNiAtIDMxCj4gRnVuY3Rpb27CoMKgIENvbW1hbmQgLyBEYXRhwqDCoCBSZXNlcnZlZMKg
wqDCoMKgIFBhZMKgwqAgTXVsdGlwbGV4ZXIgSUTCoMKgwqAgUGF5bG9hZCBsZW5ndGgKPiBCaXTC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDMyIC0geAo+IEZ1bmN0aW9uwqDCoMKgwqAgUmF3wqAgQnl0
ZXMKCkkgZG9uJ3Qga25vdyBob3cgdG8gaW50ZXJwcmV0IHRoaXMuICBBcmUgeW91IHNheWluZyB0
aGF0IHRoZSBsb3ctCm9yZGVyIGJpdCBvZiB0aGUgZmlyc3QgYnl0ZSBpcyB0aGUgY29tbWFuZC9k
YXRhIGZsYWc/ICBPciBpcyBpdAp0aGUgaGlnaC1vcmRlciBiaXQgb2YgdGhlIGZpcnN0IGJ5dGU/
CgpJJ20gc2F5aW5nIHRoYXQgd2hhdCBJIG9ic2VydmVkIHdoZW4gYnVpbGRpbmcgdGhlIGNvZGUg
d2FzIHRoYXQKYXMgb3JpZ2luYWxseSBkZWZpbmVkLCB0aGUgY2RfYml0IGZpZWxkIHdhcyB0aGUg
aGlnaC1vcmRlciBiaXQKKGJpdCA3KSBvZiB0aGUgZmlyc3QgYnl0ZSwgd2hpY2ggSSB1bmRlcnN0
YW5kIHRvIGJlIHdyb25nLgoKSWYgeW91IGFyZSB0ZWxsaW5nIG1lIHRoYXQgdGhlIGNvbW1hbmQv
ZGF0YSBmbGFnIHJlc2lkZXMgYXQgYml0Cjcgb2YgdGhlIGZpcnN0IGJ5dGUsIEkgd2lsbCB1cGRh
dGUgdGhlIGZpZWxkIG1hc2tzIGluIGEgbGF0ZXIKcGF0Y2ggaW4gdGhpcyBzZXJpZXMgdG8gcmVm
bGVjdCB0aGF0LgoKPiBUaGUgZHJpdmVyIHdhcyB3cml0dGVuIGFzc3VtaW5nIHRoYXQgdGhlIGhv
c3Qgd2FzIHJ1bm5pbmcgQVJNNjQsIHNvCj4gdGhlIHN0cnVjdHMgYXJlIGxpdHRsZSBlbmRpYW4u
IChJIHNob3VsZCBoYXZlIG1hZGUgaXQgY29tcGF0aWJsZQo+IHdpdGggYmlnIGFuZCBsaXR0bGUg
ZW5kaWFuIGVhcmxpZXIgc28gdGhhdCBpcyBteSBmYXVsdCkuCgpMaXR0bGUgZW5kaWFuIGFuZCBi
aWcgZW5kaWFuIGhhdmUgbm8gYmVhcmluZyBvbiB0aGUgaG9zdCdzCmludGVycHJldGF0aW9uIG9m
IGJpdHMgd2l0aGluIGEgYnl0ZS4KClBsZWFzZSBjbGFyaWZ5LiAgSSB3YW50IHRoZSBwYXRjaGVz
IHRvIGJlIGNvcnJlY3QsIGFuZCB3aGF0CnlvdSdyZSBleHBsYWluaW5nIGRvZXNuJ3QgcmVhbGx5
IHN0cmFpZ2h0ZW4gdGhpbmdzIG91dCBmb3IgbWUuCgoJCQkJCS1BbGV4Cgo+IEluIGFueSBjYXNl
LCB0aGlzIHBhdGNoIG9uIGl0cyBvd24gd2lsbCBicmVhayB0aGUgZGF0YSBvcGVyYXRpb24gb24K
PiBBUk02NCwgc28gaXQgbmVlZHMgdG8gYmUgZm9sZGVkIHdpdGggb3RoZXIgcGF0Y2hlcy4KPiAK
Pj4gQW5kIGFsdGhvdWdoIHRoaXMgaXNuJ3QgcG9ydGFibGUsIEkgY2FuIHN0YXRlIHRoYXQgd2hl
biBJIGJ1aWxkIGl0Cj4+IHRoZSByZXN1bHQgcHV0cyB0aGUgYml0LWZpZWxkcyBpbiB0aGUgd3Jv
bmcgbG9jYXRpb24gKGUuZy4sIHRoZQo+PiBjZF9iaXQgaXMgaW4gYml0IHBvc2l0aW9uIDcsIHdo
ZW4gaXQgc2hvdWxkIGJlIHBvc2l0aW9uIDApLgo+Pgo+PiBGaXggdGhpcyBieSByZW9yZGVyaW5n
IHRoZSBkZWZpbml0aW9ucyBvZiB0aGVzZSBzdHJ1Y3QgbWVtYmVycy4KPj4gVXBjb21pbmcgcGF0
Y2hlcyB3aWxsIHJlaW1wbGVtZW50IHRoZXNlIGRlZmluaXRpb25zIHBvcnRhYmx5Lgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBBbGV4IEVsZGVyIDxlbGRlckBsaW5hcm8ub3JnPgo+PiAtLS0KPj4gwqBk
cml2ZXJzL25ldC9ldGhlcm5ldC9xdWFsY29tbS9ybW5ldC9ybW5ldF9tYXAuaCB8IDQgKystLQo+
PiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9xdWFsY29tbS9ybW5ldC9ybW5ldF9t
YXAuaAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3F1YWxjb21tL3JtbmV0L3JtbmV0X21hcC5o
Cj4+IGluZGV4IDg4NGYxZjUyZGNjMi4uYjFhZTk0OTljMGIyIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9xdWFsY29tbS9ybW5ldC9ybW5ldF9tYXAuaAo+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9xdWFsY29tbS9ybW5ldC9ybW5ldF9tYXAuaAo+PiBAQCAtNDAsOSAr
NDAsOSBAQCBlbnVtIHJtbmV0X21hcF9jb21tYW5kcyB7Cj4+IMKgfTsKPj4KPj4gwqBzdHJ1Y3Qg
cm1uZXRfbWFwX2hlYWRlciB7Cj4+IC3CoMKgwqAgdTjCoCBwYWRfbGVuOjY7Cj4+IC3CoMKgwqAg
dTjCoCByZXNlcnZlZF9iaXQ6MTsKPj4gwqDCoMKgwqAgdTjCoCBjZF9iaXQ6MTsKPj4gK8KgwqDC
oCB1OMKgIHJlc2VydmVkX2JpdDoxOwo+PiArwqDCoMKgIHU4wqAgcGFkX2xlbjo2Owo+PiDCoMKg
wqDCoCB1OMKgIG11eF9pZDsKPj4gwqDCoMKgwqAgX19iZTE2IHBrdF9sZW47Cj4+IMKgfcKgIF9f
YWxpZ25lZCgxKTsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
