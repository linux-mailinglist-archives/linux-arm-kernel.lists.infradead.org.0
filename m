Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE86614DA42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 12:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzzDG8dXETOfvmx6a/mr3WS8x6D+yJHgyvWuP8MT5NU=; b=JHUUzhbpV3fDFi
	9uYSy8yvp8BCn0WfoJT7O5UIS0rlHOa1n8VVdBcsolCB/Zl700adHXmLSjnaGnoQJROc9/uEgVK/S
	FE7evzN5Qi/dJ1bYp4bKyRNgHDojUYN/axDIlZ9ev2nsyQ7RFb1CEUzT24oHdNKe603/9FbahBYtj
	wP39vtl0G+UDfZlmohRK1sv8zVChroCECoAHCrlGsHfcXv5aqqPAXSGmxFQa8cegGTZmVCAe4L+zy
	/FWROl/3Q1MPcxHdb+odtECiedFUIQXDRn2/ETWiIP7o8AKwTHro+KDfwr2E0tSa94Ts1OO48L5Bf
	0JFqfSymYS61N1i5FbPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix8Su-00088w-Qs; Thu, 30 Jan 2020 11:58:32 +0000
Received: from plasma4.jpberlin.de ([80.241.57.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix8Sk-00087j-BI
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 11:58:24 +0000
Received: from spamfilter03.heinlein-hosting.de
 (spamfilter03.heinlein-hosting.de [80.241.56.117])
 by plasma.jpberlin.de (Postfix) with ESMTP id 2232AA08D9;
 Thu, 30 Jan 2020 12:58:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id FJPO_7sVnhlF; Thu, 30 Jan 2020 12:58:10 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 7743DBBC29;
 Thu, 30 Jan 2020 12:58:09 +0100 (CET)
Received: from [10.25.40.95] (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 30 Jan
 2020 12:58:12 +0100
Subject: Re: [PATCH V5] firmware: arm_scmi: Make scmi core independent of the
 transport type
To: Sudeep Holla <sudeep.holla@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>
References: <f170b33989b426ac095952634fcd1bf45b86a7a3.1580208329.git.viresh.kumar@linaro.org>
 <20200128173524.GB36496@bogus>
From: Peter Hilber <peter.hilber@opensynergy.com>
Autocrypt: addr=peter.hilber@opensynergy.com; prefer-encrypt=mutual; keydata=
 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
 lbekkuPTQs/m
Message-ID: <b970542b-0c05-5401-46be-5f585bdafb09@opensynergy.com>
Date: Thu, 30 Jan 2020 12:58:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200128173524.GB36496@bogus>
Content-Language: en-US
X-Originating-IP: [10.25.255.1]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_035822_697641_58F82D2E 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.241.57.33 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjguMDEuMjAgMTg6MzUsIFN1ZGVlcCBIb2xsYSB3cm90ZToKPiBPdGhlcndpc2UgbG9va3Mg
Z29vZC4gU2luY2Ugd2UgYXJlIG5vdCBhZGRpbmcgbW9kdWxlIHN1cHBvcnQsIEkgYW0gZmluZQo+
IGV2ZW4gaWYgd2UgaGF2ZSB0byBtYWtlIGNoYW5nZXMgdG8gdHJhbnNwb3J0IG9wcyBiaXQgbGF0
ZXIgaWYgcmVxdWlyZWQKPiBhbmQgcmVhbGlzZWQgd2hlbiBhZGRpbmcgbmV3IHRyYW5zcG9ydC4g
TGV0IHVzIHNlZSBpZiBQZXRlciBoYXMgYW55IG1ham9yCj4gb2JqZWN0aW9ucy4KCkkgaGF2ZSBu
byBvYmplY3Rpb25zLiBMb29rcyBnb29kLiBPbmUgcmVtYXJrOgoKPiArc3RydWN0IHNjbWlfdHJh
bnNwb3J0X29wcyB7Cj4gKyAgICAgYm9vbCAoKmNoYW5fYXZhaWxhYmxlKShzdHJ1Y3QgZGV2aWNl
ICpkZXYsIGludCBpZHgpOwo+ICsgICAgIGludCAoKmNoYW5fc2V0dXApKHN0cnVjdCBzY21pX2No
YW5faW5mbyAqY2luZm8sIHN0cnVjdCBkZXZpY2UgKmRldiwgYm9vbCB0eCk7Cj4gKyAgICAgaW50
ICgqY2hhbl9mcmVlKShpbnQgaWQsIHZvaWQgKnAsIHZvaWQgKmRhdGEpOwo+ICsgICAgIGludCAo
KnNlbmRfbWVzc2FnZSkoc3RydWN0IHNjbWlfY2hhbl9pbmZvICpjaW5mbywgc3RydWN0IHNjbWlf
eGZlciAqeGZlcik7Cj4gKyAgICAgdm9pZCAoKm1hcmtfdHhkb25lKShzdHJ1Y3Qgc2NtaV9jaGFu
X2luZm8gKmNpbmZvLCBpbnQgcmV0KTsKPiArICAgICB2b2lkICgqZmV0Y2hfcmVzcG9uc2UpKHN0
cnVjdCBzY21pX2NoYW5faW5mbyAqY2luZm8sIHN0cnVjdCBzY21pX3hmZXIgKnhmZXIpOwo+ICsg
ICAgIGJvb2wgKCpwb2xsX2RvbmUpKHN0cnVjdCBzY21pX2NoYW5faW5mbyAqY2luZm8sIHN0cnVj
dCBzY21pX3hmZXIgKnhmZXIpOwo+ICt9OwoKTWF5YmUgdGhlIG1hcmtfdHhkb25lLCBmZXRjaF9y
ZXNwb25zZSwgYW5kIHBvbGxfZG9uZSBvcHMgc2hvdWxkIGFsc28gZ2V0CmEgYHUzMiBtc2dfaGRy
JyBwYXJhbWV0ZXI/IEkgdGhvdWdodCBpdCBjb3VsZCBiZSByZXF1aXJlZCBpbiBjYXNlIG9mCmNv
bmN1cnJlbnQgeGZlcnMsIG9yIG1heWJlIEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgaW1wb3NlZCBj
b25jdXJyZW5jeQpsaW1pdGF0aW9ucyBwcm9wZXJseS4KCkJlc3QgcmVnYXJkcywKClBldGVyCgpQ
bGVhc2UgbWluZCBvdXIgcHJpdmFjeSBub3RpY2U8aHR0cHM6Ly93d3cub3BlbnN5bmVyZ3kuY29t
L2RhdGVuc2NodXR6ZXJrbGFlcnVuZy9wcml2YWN5LW5vdGljZS1mb3ItYnVzaW5lc3MtcGFydG5l
cnMtcHVyc3VhbnQtdG8tYXJ0aWNsZS0xMy1vZi10aGUtZ2VuZXJhbC1kYXRhLXByb3RlY3Rpb24t
cmVndWxhdGlvbi1nZHByLz4gcHVyc3VhbnQgdG8gQXJ0LiAxMyBHRFBSLiAvLyBVbnNlcmUgSGlu
d2Vpc2UgenVtIERhdGVuc2NodXR6IGdlbS4gQXJ0LiAxMyBEU0dWTyBmaW5kZW4gU2llIGhpZXIu
PGh0dHBzOi8vd3d3Lm9wZW5zeW5lcmd5LmNvbS9kZS9kYXRlbnNjaHV0emVya2xhZXJ1bmcvZGF0
ZW5zY2h1dHpoaW53ZWlzZS1mdWVyLWdlc2NoYWVmdHNwYXJ0bmVyLWdlbS1hcnQtMTMtZHNndm8v
PgoKClt0ZWNoX2RheXNfbXVuY2hlbl0KCk9wZW5TeW5lcmd5IFRlY2hEYXkgTcO8bmNoZW4KCmFt
IDExLiBGZWJydWFyIDIwMjAsIGFiIDEyOjAwVWhyLCBpbSBTdHVkaW8gQmFsYW4sIE1vb3NhY2hl
cnN0ci4gODYuCgpBbm1lbGR1bmcgYml0dGUgaGllcjxtYWlsdG86c2FiaW5lLm11dHVtYmFAb3Bl
bnN5bmVyZ3kuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
