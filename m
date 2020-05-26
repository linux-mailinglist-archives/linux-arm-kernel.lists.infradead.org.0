Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECA01E239D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PB8flKD85KOlO8ntquEG5cfd6IOWFq/zKe7LdVR2T7k=; b=tLcwiVCF3zMBYI
	PToowtZIcmw5OPLm2x7+QCMlrS8AJ6hHjCww26J+tIXqtx/Lyp1L9OsiPHDZBpiMWuR+aGQsuZ+sz
	55+S8evfH26HZ/9IAIB8Jh83tjrj3mAUjmkPWf7oZ2XhYwfLG2yemJIJPqFczbtMD7+tY4cQdMQ0u
	Fe9pAHmQ+WAbPS90EJWirsq1L9TlakVymA976NRbXfIAttjZLvgnhf/vIZB/a1GCrBBHQnv3hfBLc
	9QeFwz9nXHTfr8WagtkskNq0j07MfLtZyhJ2rPIwVX5zgbRyZAV2GswUgtsd5TvvbjnBk7Ve6dFnx
	c9Rv2GJ9gxKQk08miAzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdaBu-00029R-8N; Tue, 26 May 2020 14:04:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdaBj-000289-6d
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:04:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 552661FB;
 Tue, 26 May 2020 07:04:12 -0700 (PDT)
Received: from [10.163.78.28] (unknown [10.163.78.28])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D8103F6C4;
 Tue, 26 May 2020 07:04:09 -0700 (PDT)
Subject: Re: [PATCH V2] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1590500353-28082-1-git-send-email-anshuman.khandual@arm.com>
 <0726a5b9-fff6-a15c-e705-db7abd4b1abd@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <6886ec2e-c2e4-c2d2-faaa-b46ef69cc226@arm.com>
Date: Tue, 26 May 2020 19:33:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <0726a5b9-fff6-a15c-e705-db7abd4b1abd@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_070415_332884_05030311 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, broonie@kernel.org,
 will@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNS8yNi8yMDIwIDA3OjM0IFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1
LzI2LzIwMjAgMDI6MzkgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBUaGVyZSBpcyBu
byB3YXkgdG8gcHJvY2VlZCB3aGVuIHJlcXVlc3RlZCByZWdpc3RlciBjb3VsZCBub3QgYmUgc2Vh
cmNoZWQgaW4KPj4gYXJtNjRfZnRyX3JlZ1tdLiBSZXF1ZXN0aW5nIGZvciBhIG5vbiBwcmVzZW50
IHJlZ2lzdGVyIHdvdWxkIGJlIGFuIGVycm9yIGFzCj4+IHdlbGwuIEhlbmNlIGxldHMganVzdCBX
QVJOX09OKCkgd2hlbiBzZWFyY2ggZmFpbHMgaW4gZ2V0X2FybTY0X2Z0cl9yZWcoKQo+PiByYXRo
ZXIgdGhhbiBjaGVja2luZyBmb3IgcmV0dXJuIHZhbHVlIGFuZCBkb2luZyBhIEJVR19PTigpIGlu
c3RlYWQgaW4gc29tZQo+PiBpbmRpdmlkdWFsIGNhbGxlcnMuIEJ1dCB0aGVyZSBhcmUgYWxzbyBj
YWxsZXIgaW5zdGFuY2VzIHRoYXQgZG9udCBlcnJvciBvdXQKPj4gd2hlbiByZWdpc3RlciBzZWFy
Y2ggZmFpbHMuIEFkZCBhIG5ldyBoZWxwZXIgZ2V0X2FybTY0X2Z0cl9yZWdfbm93YXJuKCkgZm9y
Cj4+IHN1Y2ggY2FzZXMuCj4+Cj4+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5h
c0Bhcm0uY29tPgo+PiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4gQ2M6IFN1
enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4+IENjOiBNYXJrIEJyb3du
IDxicm9vbmllQGtlcm5lbC5vcmc+Cj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4gU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gS2hhbmR1YWwgPGFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20+Cj4+IC0t
LQo+PiBDaGFuZ2VzIGluIFYyOgo+Pgo+PiAtIEFkZGVkIGdldF9hcm02NF9mdHJfcmVnX25vd2Fy
bigpIHBlciBXaWxsCj4+IC0gcmVhZF9zYW5pdGlzZWRfZnRyX3JlZygpIHJldHVybnMgMCB3aGVu
IHJlZ2lzdGVyIHNlYXJjaCBmYWlscyBwZXIgQ2F0YWxpbgo+Pgo+PiBDaGFuZ2VzIGluIFYxOiAo
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTU1OTA4My8pCj4+Cj4+IMKgIGFy
Y2gvYXJtNjQva2VybmVsL2NwdWZlYXR1cmUuYyB8IDQyICsrKysrKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDEzIGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVy
ZS5jIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+IGluZGV4IGJjNTA0OGYxNTJj
MS4uZjQ1NTViOWQxNDVjIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0
dXJlLmMKPj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+IEBAIC01NDgs
MTYgKzU0OCwxNiBAQCBzdGF0aWMgaW50IHNlYXJjaF9jbXBfZnRyX3JlZyhjb25zdCB2b2lkICpp
ZCwgY29uc3Qgdm9pZCAqcmVncCkKPj4gwqAgfQo+PiDCoCAKPiAKPiAuLi4KPiAKPj4gwqAgc3Rh
dGljIHU2NCBhcm02NF9mdHJfc2V0X3ZhbHVlKGNvbnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyAq
ZnRycCwgczY0IHJlZywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzNjQgZnRyX3ZhbCkKPj4gwqAgewo+PiBAQCAtNjMyLDggKzY1NCw2IEBAIHN0YXRpYyB2b2lk
IF9faW5pdCBpbml0X2NwdV9mdHJfcmVnKHUzMiBzeXNfcmVnLCB1NjQgbmV3KQo+PiDCoMKgwqDC
oMKgIGNvbnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyAqZnRycDsKPj4gwqDCoMKgwqDCoCBzdHJ1
Y3QgYXJtNjRfZnRyX3JlZyAqcmVnID0gZ2V0X2FybTY0X2Z0cl9yZWcoc3lzX3JlZyk7Cj4+IMKg
IC3CoMKgwqAgQlVHX09OKCFyZWcpOwo+PiAtCj4+IMKgwqDCoMKgwqAgZm9yIChmdHJwID0gcmVn
LT5mdHJfYml0czsgZnRycC0+d2lkdGg7IGZ0cnArKykgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
dTY0IGZ0cl9tYXNrID0gYXJtNjRfZnRyX21hc2soZnRycCk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBzNjQgZnRyX25ldyA9IGFybTY0X2Z0cl92YWx1ZShmdHJwLCBuZXcpOwo+PiBAQCAtNzYyLDcg
Kzc4Miw2IEBAIHN0YXRpYyBpbnQgY2hlY2tfdXBkYXRlX2Z0cl9yZWcodTMyIHN5c19pZCwgaW50
IGNwdSwgdTY0IHZhbCwgdTY0IGJvb3QpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgYXJt
NjRfZnRyX3JlZyAqcmVncCA9IGdldF9hcm02NF9mdHJfcmVnKHN5c19pZCk7Cj4+IMKgIC3CoMKg
wqAgQlVHX09OKCFyZWdwKTsKPj4gwqDCoMKgwqDCoCB1cGRhdGVfY3B1X2Z0cl9yZWcocmVncCwg
dmFsKTsKPj4gwqDCoMKgwqDCoCBpZiAoKGJvb3QgJiByZWdwLT5zdHJpY3RfbWFzaykgPT0gKHZh
bCAmIHJlZ3AtPnN0cmljdF9tYXNrKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+
PiBAQCAtNzc2LDkgKzc5NSw2IEBAIHN0YXRpYyB2b2lkIHJlbGF4X2NwdV9mdHJfcmVnKHUzMiBz
eXNfaWQsIGludCBmaWVsZCkKPj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgYXJtNjRfZnRyX2Jp
dHMgKmZ0cnA7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGFybTY0X2Z0cl9yZWcgKnJlZ3AgPSBnZXRf
YXJtNjRfZnRyX3JlZyhzeXNfaWQpOwo+PiDCoCAtwqDCoMKgIGlmIChXQVJOX09OKCFyZWdwKSkK
Pj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gLQo+IAo+IFlvdSBuZWVkIHRvIHJldHVybiBo
ZXJlLCBvbiAhcmVncC4gUmVzdCBsb29rcyBmaW5lIHRvIG1lLgoKQ2F0YWxpbiBoYWQgc3VnZ2Vz
dGVkIGFuZCBhZ3JlZWQgb24gZm9yIHRoaXMgY2hhbmdlIGluIGJlaGF2aW9yIGhlcmUuCklmIHRo
ZSByZWdpc3RlciBpcyBub3QgZm91bmQsIHRoZXJlIGlzIGFscmVhZHkgc29tZSBwcm9ibGVtLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
