Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EE414BEB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 18:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1odTOUfHhyOLt1QBEjL5KSfnW3kC8JFKQJeOJtXXDH4=; b=dJEOuubwyRm8Lf
	WjfV5TdE5cTrIib6XQGiRooy9OfWIA+zma9uiT/9H67z/jSOnmtj7pcBHGFoiv3OSxO+GsklV4Xee
	TpJYeT3pFhXbtYohTqaztesx8w1wzvOCFuy2t4ysuRe8nV+/bfAuCttLhJVZCDrnSWhnkVVN/Ij+O
	D1xB5XF39MOiEhkgAZ5zQS7as3/3jT7v+ifSwRpTtbfxsJGGrwUzXeGjae4v4WDV3sznW+3flV5q/
	oGPwdl1nGltvW5D3Dne1XzdViQJJ7e1hCHBlvZvvaAmFoEF//lfAp35FEwY3elxITd4MNqphkeHob
	9YuCz400uSiUD4Ehdtbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUnf-0006nd-St; Tue, 28 Jan 2020 17:37:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUnW-0006nG-Nj
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 17:37:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 688F0328;
 Tue, 28 Jan 2020 09:37:08 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A65B3F52E;
 Tue, 28 Jan 2020 09:37:06 -0800 (PST)
Subject: Re: [PATCH v2 3/6] arm64/kvm: disable access to AMU registers from
 kvm guests
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>,
 Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org, sudeep.holla@arm.com,
 dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-4-ionela.voinescu@arm.com>
 <bc3f582c-9aed-8052-d0cb-b39c76c8ce73@arm.com>
 <0690745f-fa38-f623-30a5-42d0eadfb668@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <5de3d3c7-2d78-9d18-f3ca-7cb6cf9ce36c@arm.com>
Date: Tue, 28 Jan 2020 17:37:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0690745f-fa38-f623-30a5-42d0eadfb668@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_093710_820128_D7F276CC 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMjgvMDEvMjAyMCAxNzoyNiwgU3V6dWtpIEt1cnVwcGFzc2VyeSBQb3Vs
b3NlIHdyb3RlOgo+PiBTbywgcHJvdmlkaW5nIEkgZGlkbid0IGdldCBjb21wbGV0ZWx5IGxvc3Qg
b24gdGhlIHdheSwgSSBoYXZlIHRvIGFzazoKPj4gd2h5IGRvIHdlIHVzZSBDUEFDUl9FTDEgaGVy
ZT8gQ291bGRuJ3Qgd2UgdXNlIENQVFJfRUwyIGRpcmVjdGx5Pwo+IAo+IFBhcnQgb2YgdGhlIHJl
YXNvbiBpcywgQ1BUUl9FTDIgaGFzIGRpZmZlcmVudCBsYXlvdXQgZGVwZW5kaW5nIG9uCj4gd2hl
dGhlciBIQ1JfRUwyLkUySCA9PSAxLiBlLmcsIENQVFJfRUwyLlRUQSBtb3ZlIGZyb20gQml0WzI4
XSB0byBCaXRbMjBdLgo+IAo+IFNvLCB0byBrZWVwIGl0IHNpbXBsZSwgQ1BUUl9FTDIgaXMgdXNl
ZCBmb3Igbm9uLVZIRSBjb2RlIHdpdGggdGhlIHNoaWZ0cwo+IGFzIGRlZmluZWQgYnkgdGhlICJD
UFRSX0VMMiB3aGVuIEUySD0wIgo+IAo+IGlmIEUySCA9PSAxLCBDUFRSX0VMMiB0YWtlcyB0aGUg
bGF5b3V0IG9mIENQQUNSX0VMMSBhbmQgIm92ZXJyaWRlcyIgc29tZQo+IG9mIHRoZSBSRVMwIGJp
dHMgaW4gQ1BBQ1JfRUwxIHdpdGggRUwyIGNvbnRyb2xzIChlLmc6IFRBTSwgVENQQUMpLgo+IFRo
dXMgd2UgdXNlIENQQUNSX0VMMSB0byBrZWVwIHRoZSAic2hpZnRzIiBub24tY29uZmxpY3Rpbmcg
KGUuZywgWkVOKQo+IGFuZCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uCj4gCj4gSXQgaXMgYSBi
aXQgY29uZnVzaW5nLCBidXQgd2UgYXJlIGRvaW5nIHRoZSByaWdodCB0aGluZy4gTWF5IGJlIHdl
IGNvdWxkIGltcHJvdmUgdGhlIGNvbW1lbnQgbGlrZSA6Cj4gCj4gwqDCoMKgwqAvKgo+IMKgwqDC
oMKgICogV2l0aCBWSEUgKEhDUi5FMkggPT0gMSksIENQVFJfRUwyIGhhcyB0aGUgc2FtZSBsYXlv
dXQgYXMKPiDCoMKgwqDCoCAqIENQQUNSX0VMMSwgZXhjZXB0IGZvciBzb21lIG1pc3NpbmcgY29u
dHJvbHMsIHN1Y2ggYXMgVEFNLgo+IMKgwqDCoMKgICogQW5kIGFjY2Vzc2VzIHRvIENQQUNSX0VM
MSBhcmUgcm91dGVkIHRvIENQVFJfRUwyLgo+IMKgwqDCoMKgICogQWxzbyBDUFRSX0VMMi5UQU0g
aGFzIHRoZSBzYW1lIHBvc2l0aW9uIHdpdGggb3Igd2l0aG91dAo+IMKgwqDCoMKgICogSENSLkUy
SCA9PSAxLiBUaGVyZWZvcmUsIHVzZSBDUFRSX0VMMi5UQU0gaGVyZSBmb3IKPiDCoMKgwqDCoCAq
IHRyYXBwaW5nIHRoZSBBTVUgYWNjZXNzZXMuCj4gwqDCoMKgwqAgKi8KPiAKClRoYW5rcyBmb3Ig
Y2xlYXJpbmcgdGhpcyB1cCEgSSBhbHNvIGJvdGhlcmVkIE1hcmNaIGluIHRoZSBtZWFudGltZSB3
aG8KYWxzbyBjbGVhcmVkIHVwIHNvbWUgb2YgbXkgY29uZnVzaW9uIChpbmNsdWRpbmcgd2hpY2gg
bGF5b3V0IHRha2VzIGVmZmVjdCkuCgpTbyB5ZWFoLCBJIHRoaW5rIHdoYXQgd2Ugd2FudCBoZXJl
IGlzIHRvIGtlZXAgdXNpbmcgQ1BUUl9FTDJfVEFNIGJ1dCBoYXZlIGEKY29tbWVudCB0aGF0IGV4
cGxhaW5zIHdoeSAod2hpY2ggeW91IGp1c3QgcHJvdmlkZWQhKS4KCj4gU3V6dWtpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
